unit forum;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, main, ForumXML, Download, ExtCtrls;

type
  Tforum_form = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    wiadomosc_memo: TMemo;
    wiadomosci_lista: TListView;
    GroupBox3: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    status: TListBox;
    Splitter1: TSplitter;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure wiadomosci_listaSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure Button4Click(Sender: TObject);
    procedure forum_getError(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
    procedure WczytajWiadomosci();
    procedure PokazWiadomosc(index : integer);
    procedure SciagajPliki();

    procedure Log(text : string);

    procedure Sortuj();

    function OdczytajDate(data : string) : TDateTime;

    procedure OnError(Sender: TObject; Error: String);
    procedure OnDone(Sender: TObject);
    procedure OnProgress(Sender: TObject; TotalSize, Readed: Integer);
    procedure OnStatus(Sender: TObject; Status: String);
  public
    { Public declarations }
    procedure UstawPrzyciski(stan : boolean);
  end;

  // deklaracje modulu

  TWiadomosc = packed record
    Data :  TDateTime;
    ID : int64;
    Autor : string[255];
    Temat : string[255];
    Plik : string[255];
  end;

  function SprawdzForum() : integer;


var
  forum_form: Tforum_form;

  Wiadomosci : array of TWiadomosc;
  IloscWiadomosci : integer = 0;
  WyslaneZapytanie : boolean = false;
  PlikiDoSciagniecia : TStringList;

  katalog : string;

  forum_down : Downloader;

  SelectedIndex : integer = -1;
  LastID : int64 = 0;

  OstatnioWyslano : TTimeStamp;


implementation

uses DateUtils, forum_wiadomosc, Addins, Stale;

{$R *.dfm}

////////////////////////////////////////////////////////////////////////////
// procedury i funckje modulu
////////////////////////////////////////////////////////////////////////////
function SprawdzForum() : integer;
begin
  

  result := 0;
end;

////////////////////////////////////////////////////////////////////////////
// procedury i funckje klasy
////////////////////////////////////////////////////////////////////////////

procedure Tforum_form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if forum_nowa_wiadomosc <> nil then
  begin
    forum_nowa_wiadomosc.Close();
  end;
  PlikiDoSciagniecia.Free();
  forum_down.Destroy();
  Action := caFree;
  forum_form := nil;
end;

procedure Tforum_form.FormCreate(Sender: TObject);
begin
  OstatnioWyslano.Time := -1;
  forum_down := Downloader.Create();
  forum_down.OnErrorEvent := OnError;
  forum_down.OnProgressEvent := OnProgress;
  forum_down.OnDownloadedEvent := OnDone;
  forum_down.OnChangeStatusEvent := OnStatus;
  katalog := main.SCIEZKA_PROGRAM + 'forum\';
  PlikiDoSciagniecia := TStringList.Create();
  WczytajWiadomosci();
end;

function Tforum_form.OdczytajDate(data: string): TDateTime;
begin
  try
    result := StrToDateTime(data);    
  except
    result := Now();
  end;
end;

procedure Tforum_form.PokazWiadomosc(index: integer);
var
  content : string;
  wiadomosc : ForumWiadomoscXML;
begin
  wiadomosc_memo.Clear();
  if (index >= 0) and (index < IloscWiadomosci) then
  begin
    wiadomosc_memo.Lines.Add('Data:  ' + DateTimeToStr(Wiadomosci[index].Data));
    wiadomosc_memo.Lines.Add('Autor: ' + Wiadomosci[index].Autor);
    wiadomosc_memo.Lines.Add('Temat: ' + Wiadomosci[index].Temat);
    wiadomosc := ForumWiadomoscXML.Create(katalog + Wiadomosci[index].Plik);
    wiadomosc_memo.Lines.Add('--------------------------------------------------------------------------------');
    content := wiadomosc.GetElement('content');
    content := StringReplace(content, #10, #13#10, [rfReplaceAll]);
    content := StringReplace(content, '&lt;', '<', [rfReplaceAll]);
    content := StringReplace(content, '&gt;', '>', [rfReplaceAll]);
    wiadomosc_memo.Lines.Add(content);
    wiadomosc_memo.SelStart := 0;
    wiadomosc_memo.SelLength := 0;
    wiadomosc.Destroy();
  end;
end;

procedure Tforum_form.WczytajWiadomosci;
var
  szukany_plik: TSearchRec;
  Found : Integer;
  i : integer;
  wiadomosc : TWiadomosc;
  listItem : TListItem;
  wiadomoscXML : ForumWiadomoscXML;
begin
  Wiadomosci := nil;
  SetLength(Wiadomosci, 0);
  IloscWiadomosci := 0;

  Found := FindFirst(katalog + '*.xml', faAnyFile, szukany_plik);
  while (Found = 0) do
  begin
    try
      wiadomoscXML := ForumWiadomoscXML.Create(katalog + szukany_plik.Name);
      wiadomosc.ID := StrToInt64Def(wiadomoscXML.GetElement('id'), 0);
      wiadomosc.Data := OdczytajDate(wiadomoscXML.GetElement('date'));
      wiadomosc.Autor := wiadomoscXML.GetElement('author');
      wiadomosc.Temat := wiadomoscXML.GetElement('subject');
      wiadomosc.Plik := szukany_plik.Name;
      SetLength(Wiadomosci, IloscWiadomosci + 1);
      Wiadomosci[IloscWiadomosci] := wiadomosc;
      inc(IloscWiadomosci);
    except

    end;
    Found := FindNext(szukany_plik); // kontynuuj przeszukiwanie
  end;

  SelectedIndex := -1;
  wiadomosc_memo.Clear();
  wiadomosci_lista.Items.Clear();

  LastID := Sets.Load('forum', 'lastID', 0);

  { DONE : sortowanie }
  listItem := nil;
  if IloscWiadomosci > 0 then
  begin
    Sortuj();
    for i := 0 to IloscWiadomosci - 1 do
    begin
      listItem := wiadomosci_lista.Items.Add();
      listItem.Caption := Format('%10d', [i + 1]);
      listItem.SubItems.Add(DateTimeToStr(Wiadomosci[i].Data));
      listItem.SubItems.Add(Wiadomosci[i].Autor);
      listItem.SubItems.Add(Wiadomosci[i].Temat);
    end;
    //wiadomosci_lista.ItemIndex := IloscWiadomosci - 1;
    if (listItem <> nil) then
    begin
      wiadomosci_listaSelectItem(self, listItem, true);
      wiadomosci_lista.ItemFocused := listItem;
      wiadomosci_lista.ItemFocused.Selected := true;
    end;
    if Wiadomosci[IloscWiadomosci - 1].ID > lastID then
    begin
      LastID := Wiadomosci[IloscWiadomosci - 1].ID;
      Sets.Save('forum', 'lastID', LastID);
    end;
  end;

  Log('Wczytano ' + IntToStr(IloscWiadomosci) + ' wiadomoœci.');
end;

procedure Tforum_form.wiadomosci_listaSelectItem(Sender: TObject; Item: TListItem; Selected: Boolean);
begin
  if Selected and not WyslaneZapytanie then
  begin
    SelectedIndex := Item.Index;
    PokazWiadomosc(Item.Index);
  end;
end;

procedure Tforum_form.Button4Click(Sender: TObject);
var
  str : TStringList;
  result : string;
  i : integer;
begin
  if not WyslaneZapytanie then
  begin
    i := (DateTimeToTimeStamp(Now).Time - OstatnioWyslano.Time);
    if (i < 30000) and (OstatnioWyslano.Time <> -1) then
    begin
      Log('Aby ponownie wys³aæ zapytanie nale¿y odczekaæ 30 sekund od poprzedniego. Pozosta³o ' + IntToStr(30 - Round(i / 1000)) + ' s.');
      Exit;
    end;

    forum_down.URL := C_CHAT_URL + '?app_name=' + UpperCase(C_PROGRAM_NAZWA) + '&action=getlist&last=' + IntToStr(LastID);
    forum_down.Plik := GetTempFilePath();
    //forum_get.PostQuery := 'action=getlist&last=' + IntToStr(LastID);
    //forum_get.GetString();
    Log('Wys³ano zapytanie o nowe wiadomoœci.');
    WyslaneZapytanie := true;
    if (forum_down.Start()) then
    begin
      try
        if (not FileExists(forum_down.Plik)) then
        begin
          raise EFilerError.Create('');
        end;
        str := TStringList.Create();
        str.Clear();
        str.LoadFromFile(forum_down.Plik);
        try
          DeleteFile(forum_down.Plik);
        except
        end;
        result := str.Text;
        str.Clear();
        if (Length(result) > 0) and (ExtractStrings([';'], [], PChar(Result), str) > 0) then
        begin
          if (UpperCase(str[0]) = 'NEWMSGS') then
          begin
            PlikiDoSciagniecia.Clear();
            i := 1;
            while (i < str.Count) do
            begin
              PlikiDoSciagniecia.Add(str[i]);
              inc(i);
            end;
            Log('Iloœæ nowych wiadomoœci: ' + IntToStr(PlikiDoSciagniecia.Count));
            if (PlikiDoSciagniecia.Count > 0) then
            begin
              SciagajPliki();
            end
            else
            begin
              OstatnioWyslano := DateTimeToTimeStamp(Now);
              WyslaneZapytanie := false;
            end;
          end else
          if (UpperCase(str[0]) = 'ERROR') then
          begin
            Log('Wyst¹pi³ b³¹d: ' + str[1]);
            WyslaneZapytanie := false;
          end else
          if (UpperCase(str[0]) = 'SYSTEM') then
          begin
            Log('Wiadomoœæ systemowa: ' + str[1]);
            WyslaneZapytanie := false;
          end else
          begin
            Log('Odebrano niepoprawn¹ odpowiedŸ od serwera.');
            WyslaneZapytanie := false;
          end;
        end
        else
        begin
          Log('Odebrano niepoprawn¹ odpowiedŸ od serwera.');
          WyslaneZapytanie := false;
        end;
        str.Free();
      except
        Log('Wyst¹pi³ b³¹d podczas odczytu odpowiedzi serwera');
        WyslaneZapytanie := false;
      end;
    end
    else
    begin
      Log('Zapytanie nie zosta³o wys³ane - sprawdŸ po³¹czenie z internetem.');
      WyslaneZapytanie := false;
    end;                     
  end
  else
  begin
    Log('Zapytanie zosta³o ju¿ wys³ane. Zaczekaj do zakoñczenia zapytania.');
  end;
end;

procedure Tforum_form.forum_getError(Sender: TObject);
begin
  Log('Wyst¹pi³ b³¹d podczas wysy³ania zapytania. SprawdŸ po³¹czenie z Internetem.');
  WyslaneZapytanie := false;
end;

procedure Tforum_form.SciagajPliki;
begin
  if (PlikiDoSciagniecia.Count > 0) then
  begin
    while (forum_down.Downloading) do Sleep(100);
    forum_down.URL := C_CHAT_URL + '?app_name=' + UpperCase(C_PROGRAM_NAZWA) + '&action=getfile&name=' + PlikiDoSciagniecia[0];
    forum_down.Plik := katalog + PlikiDoSciagniecia[0] + '.xml';
    if (forum_down.Start()) then
    begin
      Log('Odebrano now¹ wiadomoœæ. Pozosta³o do œci¹gniêcia ' + IntToStr(PlikiDoSciagniecia.Count - 1) + ' wiadomoœci.');
      PlikiDoSciagniecia.Delete(0);
      SciagajPliki();
    end
    else
    begin
      Log('Nie mo¿na odebraæ wiadomoœci z serwera.');
      PlikiDoSciagniecia.Clear();
      SciagajPliki();
    end;
  end
  else
  begin
    OstatnioWyslano := DateTimeToTimeStamp(Now);
    WyslaneZapytanie := false;
    WczytajWiadomosci();
  end;
end;

procedure Tforum_form.Button1Click(Sender: TObject);
begin
  if forum_nowa_wiadomosc = nil then
  begin
    forum_wiadomosc.Temat := '';
    forum_wiadomosc.Wiadomosc := '';
    Application.CreateForm(Tforum_nowa_wiadomosc, forum_nowa_wiadomosc);
    forum_nowa_wiadomosc.Show();
  end
  else
  begin
    forum_nowa_wiadomosc.BringToFront();
  end;
end;

procedure Tforum_form.Log(text: string);
begin
  status.Items.Add(TimeToStr(Now()) + ' : ' + text);
  status.ItemIndex := status.Count - 1;
end;

procedure Tforum_form.Sortuj;
 procedure sortuj_wgore(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 rec : TWiadomosc;
  begin
   i:=lewy;
   j:=prawy;
   X:=Wiadomosci[(lewy+prawy) div 2].ID;
   Repeat
    While Wiadomosci[i].ID<x do inc(i);
    While x<Wiadomosci[j].ID do dec(j);
     if i<=j Then
      Begin
       rec := Wiadomosci[i];
       Wiadomosci[i] := Wiadomosci[j];
       Wiadomosci[j] := rec;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore(lewy,j);
   if i<prawy Then sortuj_wgore(i,prawy);
  end;
begin
 sortuj_wgore(0, IloscWiadomosci - 1);
end;

procedure Tforum_form.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := not WyslaneZapytanie;
end;

procedure Tforum_form.Button3Click(Sender: TObject);
var
  i : integer;
begin
  if (SelectedIndex > -1) and (SelectedIndex < IloscWiadomosci) then
  begin
    if (DeleteFile(katalog + Wiadomosci[SelectedIndex].Plik)) then
    begin
      wiadomosc_memo.Clear();
      for i := SelectedIndex to High(Wiadomosci) - 1 do
      begin
        Wiadomosci[i] := Wiadomosci[i + 1];
      end;
      dec(IloscWiadomosci);
      SetLength(Wiadomosci, IloscWiadomosci);
      WczytajWiadomosci();
      Log('Usuniêto wiadomoœæ.');
    end
    else
    begin
      ShowMessage('Nie mo¿na usun¹æ wybranej wiadomoœci z nieznanej przyczyny.');
    end;
  end;
end;

procedure Tforum_form.Button2Click(Sender: TObject);
var
  str : string;
  i : integer;
begin
  if forum_nowa_wiadomosc <> nil then
  begin
    forum_nowa_wiadomosc.BringToFront();
    exit;
  end;
  if (SelectedIndex > -1) and (SelectedIndex < IloscWiadomosci) then
  begin
    str := 'Dnia ' + DateTimeToStr(Wiadomosci[SelectedIndex].Data) + ' u¿ytkownik ' + Wiadomosci[SelectedIndex].Autor + ' napisa³:' + #13#10;
    for i := 1 to wiadomosc_memo.Lines.Count do
    begin
      str := str + '> ' + wiadomosc_memo.Lines[i] + #13#10;
    end;    
    forum_wiadomosc.Temat := Wiadomosci[SelectedIndex].Temat;
    forum_wiadomosc.Wiadomosc := str;
    if forum_nowa_wiadomosc = nil then
    begin
      Application.CreateForm(Tforum_nowa_wiadomosc, forum_nowa_wiadomosc);
      forum_nowa_wiadomosc.Show();
    end;
  end;
end;

procedure Tforum_form.UstawPrzyciski(stan: boolean);
begin
  button1.Enabled := stan;
  button2.Enabled := stan;
end;


procedure Tforum_form.OnProgress(Sender: TObject; TotalSize, Readed: Integer);
begin
end;

procedure Tforum_form.OnStatus(Sender: TObject; Status: String);
begin
end;

procedure Tforum_form.OnError(Sender: TObject; Error: String);
begin
end;

procedure Tforum_form.OnDone(Sender: TObject);
begin
end;


end.
