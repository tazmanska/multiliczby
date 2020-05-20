unit forum_wiadomosc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tforum_nowa_wiadomosc = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    wiadomosc_memo: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    procedure SprawdzOdpowiedz(result : string);

    function DodajRe(temat : string) : string;
  public
    { Public declarations }

  end;

var
  forum_nowa_wiadomosc: Tforum_nowa_wiadomosc;

    Temat : string;
    Wiadomosc : string;

implementation

uses main, forum, Addins, Stale;

{$R *.dfm}

procedure Tforum_nowa_wiadomosc.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  zapisz_opcje('forum', 'nazwa_uzytkownika', Edit1.Text);
  if forum_form <> nil then
  begin
    forum_form.UstawPrzyciski(true);
  end;
  Action := caFree;
  forum_nowa_wiadomosc := nil;
end;

procedure Tforum_nowa_wiadomosc.FormShow(Sender: TObject);
var
  str : TStringList;

begin
  if (Temat = '') then
  begin
    self.Caption := 'Nowa wiadomoœæ na forum';
  end
  else
  begin
    self.Caption := 'Odpowiedz na forum';
    // dodanie RE[X]:
    Temat := DodajRe(Temat);
  end;
  edit1.Text := wczytaj_opcje('forum', 'nazwa_uzytkownika', main.UZYTKWONIK_IMIE + ' ' + main.UZYTKOWNIK_NAZWISKO);
  edit2.Text := Temat;
  if Length(wiadomosc) > 0 then
  begin
    wiadomosc_memo.Lines.Add(Wiadomosc);
  end;
  // dodanie stopki
  wiadomosc_memo.Lines.Add('');
  wiadomosc_memo.Lines.Add('');
  str := TStringList.Create();
  str.LoadFromFile(main.SCIEZKA_PROGRAM + '\forum\podpis.txt');
  wiadomosc_memo.Lines.AddStrings(str);
  wiadomosc_memo.SelStart := 0;
  str.Free;
end;

procedure Tforum_nowa_wiadomosc.Button1Click(Sender: TObject);
begin
  self.Close();
end;

procedure Tforum_nowa_wiadomosc.Button2Click(Sender: TObject);
var
  input, output : TStringStream;
begin
  if (edit2.Text <> '') then
  begin
    if (Length(wiadomosc_memo.Lines.Text) > 0) then
    begin
      try
        GroupBox1.Enabled := false;
        Button2.Enabled := false;
        input := TStringStream.Create('');
        output := TStringStream.Create('');
        input.WriteString(Format('app_name=' + UpperCase(C_PROGRAM_NAZWA) + '&action=sendpost&author=%s&subject=%s&message=%s', [edit1.Text, edit2.Text, wiadomosc_memo.Lines.Text]));
        //forum_msg.Post(C_CHAT_URL, input, output);
        SprawdzOdpowiedz(output.DataString);
      except
        ShowMessage('Wyst¹pi³ nieoczekiwany b³¹d.');
      end;
    end
    else
    begin
      ShowMessage('Nie wpisa³eœ treœci wiadomoœci.');
      wiadomosc_memo.SetFocus();
    end;
  end
  else
  begin
    ShowMessage('Nie poda³eœ tematu wiadomoœci.');
    edit2.SetFocus();
  end;
end;



procedure Tforum_nowa_wiadomosc.FormCreate(Sender: TObject);
begin
  //forum_msg.Request.UserAgent := C_PROGRAM_NAZWA + ' ' + C_PROGRAM_WERSJA;
end;

procedure Tforum_nowa_wiadomosc.SprawdzOdpowiedz(result: string);
var
  str : TStringList;
begin
  str := TStringList.Create();
  if (Length(result) > 0) and (ExtractStrings([';'], [], PChar(Result), str) > 0) then
  begin
    if (UpperCase(str[0]) = 'SENDPOSTOK') then
    begin
      ShowMessage('Wiadomoœæ zosta³a pomyœlnie wys³ana na forum.');
      self.Close();
    end else
    if (UpperCase(str[0]) = 'ERROR') then
    begin
      ShowMessage('Wyst¹pi³ b³¹d: ' + str[1]);
    end else
    if (UpperCase(str[0]) = 'SYSTEM') then
    begin
      ShowMessage('Wiadomoœæ systemowa: ' + str[1]);
    end else
    begin
      ShowMessage('Odebrano niepoprawn¹ odpowiedŸ od serwera.');
    end;
  end
  else
  begin
    ShowMessage('Odebrano niepoprawn¹ odpowiedŸ od serwera.');
  end;
  str.Free();
  GroupBox1.Enabled := true;
  Button2.Enabled := true;
end;

procedure Tforum_nowa_wiadomosc.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = '&') then Key := chr(0);
end;

function Tforum_nowa_wiadomosc.DodajRe(temat: string): string;
var
  line : string;
  koncowka : string;
  i : integer;
  stop : integer;
begin
  result := temat;
  temat := trim(temat);
  i := Pos(']', temat);
  koncowka := Copy(temat, Pos(':', temat) + 2, Length(temat) - Pos(':', temat));
  if i > 0 then
  begin
    line := Copy(temat, 0, i);
    stop := i;
    i := Pos('RE[', line);
    if i > 0 then
    begin
      line := Copy(line, 0, 3);
      if line = 'RE[' then
      begin
        line := Copy(Temat, 4, stop - 4);
        i := StrToIntDef(line, 1);
        result := 'RE[' + IntToStr(i + 1) + ']: ' + koncowka;
      end;
    end;
  end
  else
  begin
    result := 'RE[1]: ' + temat;
  end;
end;

end.
