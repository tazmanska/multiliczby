unit dodajlos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,main, Buttons, Spin;

type
  TForm8 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label8: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    CheckBox50: TCheckBox;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    CheckBox53: TCheckBox;
    CheckBox54: TCheckBox;
    CheckBox55: TCheckBox;
    CheckBox56: TCheckBox;
    CheckBox57: TCheckBox;
    CheckBox58: TCheckBox;
    CheckBox59: TCheckBox;
    CheckBox60: TCheckBox;
    CheckBox61: TCheckBox;
    CheckBox62: TCheckBox;
    CheckBox63: TCheckBox;
    CheckBox64: TCheckBox;
    CheckBox65: TCheckBox;
    CheckBox66: TCheckBox;
    CheckBox67: TCheckBox;
    CheckBox68: TCheckBox;
    CheckBox69: TCheckBox;
    CheckBox70: TCheckBox;
    CheckBox71: TCheckBox;
    CheckBox72: TCheckBox;
    CheckBox73: TCheckBox;
    CheckBox74: TCheckBox;
    CheckBox75: TCheckBox;
    CheckBox76: TCheckBox;
    CheckBox77: TCheckBox;
    CheckBox78: TCheckBox;
    CheckBox79: TCheckBox;
    CheckBox80: TCheckBox;
    Edit1: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton3: TSpeedButton;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    roki: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    SpeedButton4: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure rokiChange(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
      { Private declarations }

    procedure ile_zaznaczonych(liczba : integer);
    procedure dopisz_losowanie();
    procedure zapisz_losowanie();
    procedure pokaz_zaznaczone();
    procedure zaznacz_liczbe(liczba : word; stan : boolean = true);
    procedure enabled_liczbe(liczba : word; stan : boolean = true);

  public
      { Public declarations }

  end;

var
  Form8: TForm8;

  WybraneLosowanie : integer;
  OpcjaLosowan : byte;

  zaznaczonych : integer = 0;
  zaznaczone : array[1..80] of boolean;
  wprowadzone : array[1..80] of boolean;
  wprowadzone_ile : byte = 0;

implementation

uses losowania, Addins, Stale;

{$R *.DFM}

procedure TForm8.FormCreate(Sender: TObject);
var
  miesiac : string;
  Present : TDateTime;
  Year, Month, Day : Word;
  help1 : integer;
begin
  for help1 := Gra.IloscLiczbGry + 1 to 80 do enabled_liczbe(help1, false);

  case OpcjaLosowan of
    C_LOSOWANIE_DODAJ :
      begin
        form8.Caption := 'Dodaj nowe losowanie...';
        miesiac := NazwaMiesiaca(_Losowanie[LOSOWAN].Miesiac);
        label2.caption := (IntToStr(_Losowanie[LOSOWAN].Dzien) + ' ' + miesiac + ' ' + IntToStr(_Losowanie[LOSOWAN].Rok));
        label9.caption := '';
        edit1.text := '';
        Present := Now;
        DecodeDate(Present, Year, Month, Day);
        combobox1.ItemIndex := Day - 1;
        combobox2.ItemIndex := Month - 1;
        roki.Value := year;
        zaznaczonych := 0;
        ile_zaznaczonych(zaznaczonych);
        speedbutton1.Enabled := false;
        SpeedButton3.Click();
      end;
    C_LOSOWANIE_EDYTUJ :
      begin
        form8.Caption := 'Edytuj wybrane losowanie...';
        miesiac := NazwaMiesiaca(_Losowanie[WybraneLosowanie].Miesiac);
        label1.Caption := 'Data losowania:';
        SpeedButton3.Click();
        label2.caption := (IntToStr(_Losowanie[WybraneLosowanie].Dzien) + ' ' + miesiac + ' ' + IntToStr(_Losowanie[WybraneLosowanie].Rok));
        combobox1.ItemIndex := _Losowanie[WybraneLosowanie].Dzien - 1;
        combobox2.ItemIndex := _Losowanie[WybraneLosowanie].Miesiac - 1;
        roki.Value :=  _Losowanie[WybraneLosowanie].Rok;
        for help1 := 1 to Gra.IloscLiczbLosowanych do zaznacz_liczbe(_Losowanie[WybraneLosowanie].Liczba[help1]);
        for help1 := 1 to Gra.IloscLiczbLosowanych do zaznaczone[_Losowanie[WybraneLosowanie].Liczba[help1]] := true;
        zaznaczonych := Gra.IloscLiczbLosowanych;
        ile_zaznaczonych(zaznaczonych);
        speedbutton1.Enabled := false;
      end;
  else
    Application.MessageBox('Nieznany rozkaz zwi¹zany z wynikami losowañ.', 'B³¹d', MB_OK + MB_ICONERROR);
  end;
end;

procedure TForm8.SpeedButton2Click(Sender: TObject);
begin
  close();
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Form8 := nil;
end;

procedure TForm8.ile_zaznaczonych(liczba: integer);
begin
  label7.caption := IntToStr(liczba);
  if liczba = Gra.IloscLiczbLosowanych then
  begin
    speedbutton1.Enabled := true;
    label7.Font.color := clRed;
    label9.Font.Color := clred;
  end else
  begin
    speedbutton1.Enabled := false;
    label7.font.Color := clBlack;
    label9.Font.Color := clblue;
  end;
  pokaz_zaznaczone();
end;                

procedure TForm8.CheckBox1Click(Sender: TObject);
var
  numer : byte;
begin
  numer := StrToInt(Tcheckbox(sender).caption);
  if Tcheckbox(sender).checked then
  begin
    zaznaczone[numer] := true;
    inc(zaznaczonych);
    ile_zaznaczonych(zaznaczonych);
    Tcheckbox(sender).Font.Style := Tcheckbox(sender).Font.Style + [fsBold];
  end else
  begin
    zaznaczone[numer] := false;
    dec(zaznaczonych);
    ile_zaznaczonych(zaznaczonych);
    Tcheckbox(sender).Font.Style := Tcheckbox(sender).Font.Style - [fsBold];
  end;
end;


procedure TForm8.SpeedButton1Click(Sender: TObject);
begin
  case OpcjaLosowan of
    C_LOSOWANIE_DODAJ :
      begin
        dopisz_losowanie();
      end;
    C_LOSOWANIE_EDYTUJ :
      begin
        zapisz_losowanie();
      end;
  else
    Application.MessageBox('Nieznany rozkaz zwi¹zany z wynikami losowañ.', 'B³¹d', MB_OK + MB_ICONERROR);
  end;
end;

procedure TForm8.dopisz_losowanie;
var
tablica:array[1..23]of word;
dzien,miesiac,rok:integer;
help1,help2:integer;
begin
help2:=0;
for help1:=1 to ilosc_liczb_gry do if zaznaczone[help1] then
 begin
  inc(help2);
  tablica[help2]:=help1;
 end;
dzien:=combobox1.ItemIndex+1;
miesiac:=combobox2.ItemIndex+1;
rok:=roki.Value;

  tablica[21]:=dzien;
  tablica[22]:=miesiac;
  tablica[23]:=rok;

if Application.MessageBox('Czy zapisaæ losowanie do bazy?', 'Pytanie', MB_YESNO + MB_ICONINFORMATION)= ID_YES then
  TRY                                                                       
     for help1:=1 to 23 do losowanie[losowan+1,help1]:=tablica[help1];
     inc(losowan);
     //form1.zapisz_losowania;
     Application.MessageBox('Losowanie zosta³o dopisane pomyœlnie.', 'Informacja', MB_OK + MB_ICONINFORMATION);
     if wczytane then Form2.SpeedButton4.Click;
     form8.close;
   EXCEPT
    Application.MessageBox('Wyst¹pi³ b³¹d!'+#13+'Jeœli b³¹d siê powtarza, skontaktuj siê z autorem programu.', 'Uwaga', MB_OK + MB_ICONERROR);
   END;

end;

procedure TForm8.zapisz_losowanie;
var
tablica:array[1..23]of word;
dzien,miesiac,rok:integer;
help1,help2:integer;
begin
help2:=0;
for help1:=1 to ilosc_liczb_gry do if zaznaczone[help1] then
 begin
  inc(help2);
  tablica[help2]:=help1;
 end;
dzien:=combobox1.ItemIndex+1;
miesiac:=combobox2.ItemIndex+1;
rok:=roki.Value;

  tablica[21]:=dzien;
  tablica[22]:=miesiac;
  tablica[23]:=rok;

if Application.MessageBox('Czy zapisaæ zmiany do bazy?', 'Pytanie', MB_YESNO + MB_ICONINFORMATION)= ID_YES then
  TRY                                                                       
     for help1:=1 to 23 do losowanie[wybrane,help1]:=tablica[help1];
     //form1.zapisz_losowania;
     Application.MessageBox('Zmiany zosta³y zapisane pomyœlnie.', 'Informacja', MB_OK + MB_ICONINFORMATION);
     if wczytane then Form2.SpeedButton4.Click;
     form8.close;
   EXCEPT
    Application.MessageBox('Wyst¹pi³ b³¹d!'+#13+'Jeœli b³¹d siê powtarza, skontaktuj siê z autorem programu.', 'Uwaga', MB_OK + MB_ICONERROR);
   END;
end;

procedure TForm8.pokaz_zaznaczone;
var
  help1 : integer;
  linia : string;
begin
  linia := '';
  for help1 := 1 to Gra.IloscLiczbGry do if zaznaczone[help1] then linia := linia + IntToStr(help1) + ', ';
  label9.Caption := linia;
end;

procedure TForm8.zaznacz_liczbe(liczba : word; stan : boolean);
var
  i : integer;
begin
  for i := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i] is TCheckBox) then
    begin
      if (TCheckBox(self.Components[i]).Tag = liczba) then
      begin
        TCheckBox(self.Components[i]).checked := stan;
        Exit;
      end;
    end;
  end;
end; 

procedure TForm8.Edit1KeyPress(Sender: TObject; var Key: Char);
var
  i : byte;
  linia : string;
begin
  if key = chr(13) then
  begin
    linia := '';
    for i := 1 to Gra.IloscLiczbGry do
      if wprowadzone[i] then
      begin
        linia := linia + IntToStr(i) + ', ';
        zaznacz_liczbe(i);
      end;
    edit1.Text := linia;
    edit1.SelStart := Length(linia);
  end;
end;

procedure TForm8.Edit1Change(Sender: TObject);
begin
  wprowadzone_ile := odczytaj_liczby2(wprowadzone, edit1.Text, 1, Gra.IloscLiczbGry);
  label8.Caption := IntToStr(wprowadzone_ile);
end;

procedure TForm8.SpeedButton3Click(Sender: TObject);
var
  help1 : byte;
begin
  for help1 := 1 to Gra.IloscLiczbGry do
  begin
    wprowadzone[help1] := false;
    zaznaczone[help1] := false;
    zaznacz_liczbe(help1, false);
  end;
  zaznaczonych := 0;
  ile_zaznaczonych(zaznaczonych);
  speedbutton1.Enabled := false;
  edit1.text := '';
  label8.Caption := '0';
end;

procedure TForm8.enabled_liczbe(liczba: word; stan: boolean);
var
  i : integer;
begin
  for i := 0 to self.ComponentCount - 1 do
  begin
    if (self.Components[i] is TCheckBox) then
    begin
      if (TCheckBox(self.Components[i]).Tag = liczba) then
      begin
        TCheckBox(self.Components[i]).Enabled := stan;
        Exit;
      end;
    end;
  end;
end;

procedure TForm8.rokiChange(Sender: TObject);
begin
  ile_zaznaczonych(zaznaczonych);
end;

procedure TForm8.SpeedButton4Click(Sender: TObject);
var
  znak : Char;
begin
  znak := #13;
  Edit1KeyPress(Sender, znak);
end;

end.
