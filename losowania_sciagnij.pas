unit losowania_sciagnij;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Gauges, Download;

type
  Tlosowania_sciagnij_form = class(TForm)
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    Gauge1: TGauge;
    Gauge2: TGauge;
    Gauge3: TGauge;
    Button2: TSpeedButton;
    Button1: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure mlProgress(Sender: TObject; TotalSize, Readed: Integer);
    procedure dlProgress(Sender: TObject; TotalSize, Readed: Integer);
    procedure elProgress(Sender: TObject; TotalSize, Readed: Integer);
    procedure DoneFile(numer_gry : byte; plik, plik_wyniki, nazwa_gry : string);

  private
    { Private declarations }
    iloscPrac : integer;
    procedure ZakonczylSciaganie();

    procedure OnEnd(Sender: TObject);
    procedure OnError(Sender: TObject; Error: String);
    procedure OnStatus(Sender: TObject; Status: String);
  public
    { Public declarations }
  end;

var
  losowania_sciagnij_form: Tlosowania_sciagnij_form;

implementation

uses main, Stale;


var
  is_working : boolean = false;

  down : Downloader;

{$R *.dfm}

procedure Tlosowania_sciagnij_form.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  down.Free();
  Action := caFree;
  losowania_sciagnij_form := nil;
end;

procedure Tlosowania_sciagnij_form.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := (iloscPrac <= 0);// is_working;
end;

procedure Tlosowania_sciagnij_form.Button1Click(Sender: TObject);
begin
  Close();
end;

procedure Tlosowania_sciagnij_form.CheckBox3Click(Sender: TObject);
begin
  Button2.Enabled := (CheckBox1.Checked or CheckBox2.Checked or CheckBox3.Checked);
end;

procedure Tlosowania_sciagnij_form.FormCreate(Sender: TObject);
begin
  CheckBox1.Checked := Sets.Load('sciagnij', 'ml', false);
  CheckBox2.Checked := Sets.Load('sciagnij', 'dl', false);
  CheckBox3.Checked := Sets.Load('sciagnij', 'el', false);
  if Gra.Numer = 1 then
  begin
    CheckBox1.Font.Style := [fsBold];
  end;
  if Gra.Numer = 2 then
  begin
    CheckBox2.Font.Style := [fsBold];
  end;
  if Gra.Numer = 3 then
  begin
    CheckBox3.Font.Style := [fsBold];
  end;
  Button2.Enabled := (CheckBox1.Checked) or (CheckBox2.Checked) or (CheckBox3.Checked);
  down := Downloader.Create();
  down.OnDownloadedEvent := Self.OnEnd;
  down.OnErrorEvent := Self.OnError;
  down.OnChangeStatusEvent := Self.OnStatus;
end;

procedure Tlosowania_sciagnij_form.Button2Click(Sender: TObject);
var
  url : string;
begin
  CheckBox1.Enabled := false;
  CheckBox2.Enabled := false;
  CheckBox3.Enabled := false;
  Button1.Enabled := false;
  Button2.Enabled := false;
  SpeedButton1.Enabled := false;
  SpeedButton2.Enabled := false;
  SpeedButton3.Enabled := false;
  Sets.Save('sciagnij', 'ml', CheckBox1.Checked);
  Sets.Save('sciagnij', 'dl', CheckBox2.Checked);
  Sets.Save('sciagnij', 'el', CheckBox3.Checked);
  iloscPrac := 0;
  if (CheckBox1.Checked) then
  begin
    url := Sets.Load('ml', 'url', '');
    if (Length(url) > 0) then
    begin
      inc(iloscPrac);
      down.URL := url;
      down.Plik := TEMP + 'ml.txt';
      down.OnProgressEvent := mlProgress;
      SpeedButton1.Enabled := true;
      if (down.Start()) then
      begin
        DoneFile(C_MULTI_LOTEK, down.Plik, Sets.Load('ml', 'katalog_wyniki', SCIEZKA_PROGRAM) + 'ml.txt', 'MultiLotek');
      end
      else
      begin
        Application.MessageBox(PChar('Wyst¹pi³ b³¹d podczas œci¹gania wyników MultiLotka: ' + down.LastError()), 'B³¹d', MB_OK + MB_ICONERROR);
        ZakonczylSciaganie();
      end;
      SpeedButton1.Enabled := false;
    end
    else
    begin
      Application.MessageBox('Nie mo¿na œci¹gn¹æ wyników MultiLotka z powodu braku adresu pliku z wynikami.', 'Uwaga', MB_OK + MB_ICONWARNING);
    end;
  end;
  if (CheckBox2.Checked) then
  begin
    url := Sets.Load('dl', 'url', '');
    if (Length(url) > 0) then
    begin
      inc(iloscPrac);
      down.URL := url;
      down.Plik := TEMP + 'dl.txt';
      down.OnProgressEvent := dlProgress;
      SpeedButton2.Enabled := true;
      if (down.Start()) then
      begin
        DoneFile(C_DUZY_LOTEK, down.Plik, Sets.Load('dl', 'katalog_wyniki', SCIEZKA_PROGRAM) + 'dl.txt', 'Du¿yLotek');
      end
      else
      begin
        Application.MessageBox(PChar('Wyst¹pi³ b³¹d podczas œci¹gania wyników Du¿egoLotka: ' + down.LastError()), 'B³¹d', MB_OK + MB_ICONERROR);
        ZakonczylSciaganie();
      end;
      SpeedButton2.Enabled := false;
    end
    else
    begin
      Application.MessageBox('Nie mo¿na œci¹gn¹æ wyników Du¿egoLotka z powodu braku adresu pliku z wynikami.', 'Uwaga', MB_OK + MB_ICONWARNING);
    end;
  end;
  if (CheckBox3.Checked) then
  begin
    url := Sets.Load('el', 'url', '');
    if (Length(url) > 0) then
    begin
      inc(iloscPrac);
      down.URL := url;
      down.Plik := TEMP + 'el.txt';
      down.OnProgressEvent := elProgress;
      SpeedButton3.Enabled := true;
      if (down.Start()) then
      begin
        DoneFile(C_EXPRESS_LOTEK, down.Plik, Sets.Load('el', 'katalog_wyniki', SCIEZKA_PROGRAM) + 'el.txt', 'ExpressLotek');
      end
      else
      begin
        Application.MessageBox(PChar('Wyst¹pi³ b³¹d podczas œci¹gania wyników ExpressLotka: ' + down.LastError()), 'B³¹d', MB_OK + MB_ICONERROR);
        ZakonczylSciaganie();
      end;
      SpeedButton3.Enabled := false;
    end
    else
    begin
      Application.MessageBox('Nie mo¿na œci¹gn¹æ wyników ExpressLotka z powodu braku adresu pliku z wynikami.', 'Uwaga', MB_OK + MB_ICONWARNING);
    end;
  end;
  ZakonczylSciaganie();
end;

procedure Tlosowania_sciagnij_form.ZakonczylSciaganie;
begin
  dec(iloscPrac);
  if (iloscPrac <= 0) then
  begin
    Close();
  end;
end;

procedure Tlosowania_sciagnij_form.mlProgress(Sender: TObject; TotalSize, Readed: Integer);
begin
  Gauge1.MaxValue := TotalSize;
  Gauge1.Progress := Readed;
  Application.ProcessMessages();
end;

procedure Tlosowania_sciagnij_form.dlProgress(Sender: TObject; TotalSize, Readed: Integer);
begin
  Gauge2.MaxValue := TotalSize;
  Gauge2.Progress := Readed;
  Application.ProcessMessages();
end;

procedure Tlosowania_sciagnij_form.elProgress(Sender: TObject; TotalSize, Readed: Integer);
begin
  Gauge3.MaxValue := TotalSize;
  Gauge3.Progress := Readed;
  Application.ProcessMessages();
end;

procedure Tlosowania_sciagnij_form.DoneFile(numer_gry : byte; plik, plik_wyniki, nazwa_gry : string);
var
  str : TStringList;
begin
  str := TStringList.Create();
  str.LoadFromFile(plik);
  if (str.Count > 0) then
  begin
    if Application.MessageBox(PChar('Ostatnie losowanie w pobranej bazie gry ' + nazwa_gry + ' to:' + #13 + #13 + str.Strings[str.Count - 1] + #13 + #13 + 'Czy zapisaæ t¹ bazê?'), 'Pytanie', MB_YESNO + MB_ICONINFORMATION)= ID_YES then
    begin
      str.SaveToFile(plik_wyniki);
      if (numer_gry = Gra.Numer) then
      begin
        if Application.MessageBox('Czy wczytaæ now¹ bazê losowañ ?', 'Pytanie', MB_YESNO + MB_ICONINFORMATION)= ID_YES then form1.WczytajGre(numer_gry);// .wczytaj_dane();
      end;
    end;
  end
  else
  begin
    Application.MessageBox(PChar('Œci¹gniêta baza gry ' + nazwa_gry + ' jest pusta.'), 'Uwaga', MB_OK + MB_ICONWARNING);
  end;
  str.Free();
  ZakonczylSciaganie();
end;


procedure Tlosowania_sciagnij_form.SpeedButton1Click(Sender: TObject);
begin
  if (down.Downloading()) then
  begin
    down.Stop();
  end;
end;

procedure Tlosowania_sciagnij_form.SpeedButton2Click(Sender: TObject);
begin
  if (down.Downloading()) then
  begin
    down.Stop();
  end;
end;

procedure Tlosowania_sciagnij_form.SpeedButton3Click(Sender: TObject);
begin
  if (down.Downloading()) then
  begin
    down.Stop();
  end;
end;

procedure Tlosowania_sciagnij_form.OnEnd(Sender: TObject);
begin
end;
procedure Tlosowania_sciagnij_form.OnError(Sender: TObject; Error: String);
begin
end;
procedure Tlosowania_sciagnij_form.OnStatus(Sender: TObject; Status: String);
begin
end;

end.
