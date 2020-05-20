unit zestawy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,main, Spin, Buttons, Grids, ExtCtrls, Gauges;

type
  TForm6 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton8: TSpeedButton;
    SB_pamietaj: TSpeedButton;
    Label5: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    StringGrid1: TStringGrid;
    StringGrid3: TStringGrid;
    Panel1: TPanel;
    ComboBox1: TComboBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBox2: TComboBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    CheckBox3: TCheckBox;
    StringGrid2: TStringGrid;
    GroupBox2: TGroupBox;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Shape1: TShape;
    Gauge1: TGauge;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure StringGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid3SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure ComboBox2Change(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }

    // zapisuje zestawy do pliku
    procedure zapiszPlik();

    // pyta czy zapisac i ewentualnie tworzy plik
    procedure zapiszPlikZmieniony(pytanie : boolean);

    // czysci tabele
    procedure wyczysc();

    // ustawia tytul okna 'Zestawy [plik]'
    procedure ustawTytul(nazwaPliku : String; zmieniony : boolean = false);

    // otwiera plik
    procedure otworzPlik();

    // wyswietlenie zestawow
    procedure wyswieltZestawy();

    // usuwa zestaw z pakietu
    procedure usunZestaw(index : integer);

    // usuwa wszystkie zestawy
    procedure usunWszystkieZestawy();

    // oblicza
    procedure oblicz(od_,do_:word);

    // pokazuje ilosci i oczekiwania
    procedure pokaz();

    // ustawia widok na trzech tabelach na ten sam wiersz
    procedure ustawWidok(index : integer; src : byte);

    // zwraca ilosc oczekiwanych losowan
    function oczekuje(od_,do_,nrzestawu,ileliczb,ile:integer):integer;

    // zwraca liczbe identyfikujaca format pliku 0000000 lub 0,0,0,0
    function format_linii(linia:string):byte;

  public

    // zamyka plik, czysci tabele, ustawia zmienne
    procedure nowyPlik();

    // dodaje zestaw liczb do pakietu
    function dodajZestaw(var liczby : array of word; ile : byte) : boolean;

    { Public declarations }
  end;

  PZestaw = ^TZestaw;

  TZestaw = packed record
    liczby : array [1..12] of byte;
    ilosc : array[1..10] of word;
    oczekuje : array [1..10] of word;
  end;


var
  Form6: TForm6;

  // nowe

  zmieniony : boolean; // czy plik/zestawy zostaly zmienione
  pakiet : array of TZestaw; // tablica z zestawami
  ilosc_zestawow : word; // ilosc zestawow
  plik_nazwa : String; // nazwa pliku
  plik_sciezka : String; // sciezka do pliku
  plik_nowy : boolean; // czy plik jest nowy czy otwarty
  ilosc_liczb_zestawu : byte; // ilosc liczb w zestawie
  tab_temp:array[1..10] of word; // przechowuje liczby podane w oknie Podaj liczby

  od2, do2 : integer; // kopie przeznaczone do wpisania w tytule okna

  przesuwaj : boolean = true; // czy okno ma wywolac funkcje do ustawienia tabel

  zaznaczony : integer = 0; // numer zaznaczonego wiersza w tabeli z raportem, sluzy do ustawiania kolumny sygnalizujacej ktory wiersz jest wybrany 

  ostatni_zaznacz, ostatni_czeka : byte; // zapamietuje ostatnie ustawienia combobox'ow

  //-/ nowe

  tab_zest:array[1..20,1..10] of byte;
  tab_true:array[1..20] of boolean;

  tab_dane:array[1..20,1..11]of word;
  tab_ocze:array[1..20,1..10]of word;
  czy_zestawy:boolean;

  czy_zestaw:boolean;
  ilosc_liczb9:byte;
  anuluj:boolean;
  ilosc_los:word;
  start:word;
  policzone:boolean;
  zaz:integer;
  kolor1:TColor;

implementation
  uses
    podajliczby, Addins, Stale;

{$R *.DFM}

{ DONE : zapisanie ustawien }
procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
  var
    help1 : byte;
begin
  zapisz_opcje('zestawy', 'pamietaj_ustawienia_' + prefiks_gry, SB_pamietaj.down);
  zapisz_opcje('zestawy', 'pokazuj_zera_' + prefiks_gry, checkbox1.checked);
  zapisz_opcje('zestawy', 'zaznacz_' + prefiks_gry, checkbox2.checked);
  zapisz_opcje('zestawy', 'sumuj_' + prefiks_gry, checkbox3.checked);

  if radiobutton1.Checked then help1 := 1 else help1 := 2;
  zapisz_opcje('zestawy', 'zaznacz_co_' + prefiks_gry, help1);

  zapisz_opcje('zestawy', 'kolor_' + prefiks_gry, Integer(kolor1));

  zapisz_opcje('zestawy', 'od_' + prefiks_gry, spinedit1.value);
  zapisz_opcje('zestawy', 'do_' + prefiks_gry, spinedit2.value);

  // zapisanie zmienionyc zestawow
  if zmieniony then zapiszPlikZmieniony(true);

  Action := caFree;
  Form6 := nil;
end;

{ DONE : wczytanie ustawien }
procedure TForm6.FormCreate(Sender: TObject);
  var
    help1, help2 : integer;
    pamietaj : boolean;
begin
  zaz := 1;
  kolor1 := claqua;
  policzone := false;
  combobox1.ItemIndex := 0;
  combobox2.itemindex := 0;
  czy_zestaw:=false;
  ilosc_liczb9:=0;
  anuluj:=false;

czy_zestawy:=false;
ilosc_liczb_zestawu:=0;

for help1:=1 to 20 do for help2:=1 to 10 do tab_zest[help1,help2]:=0;
for help1:=1 to 20 do tab_true[help1]:=false;
for help1:=1 to 10 do tab_temp[help1]:=0;

  stringgrid1.Cells[1, 0]:='Zestaw';
  stringgrid1.Cells[0, 0]:='Lp.';
  stringgrid1.ColWidths[0] := 32;

stringgrid2.ColCount:=losowan;

stringgrid3.Cells[0,0]:='10';
stringgrid3.Cells[1,0]:='9';
stringgrid3.Cells[2,0]:='8';
stringgrid3.Cells[3,0]:='7';
stringgrid3.Cells[4,0]:='6';
stringgrid3.Cells[5,0]:='5';
stringgrid3.Cells[6,0]:='4';
stringgrid3.Cells[7,0]:='3';
stringgrid3.Cells[8,0]:='2';
stringgrid3.Cells[9,0]:='1';
stringgrid3.Cells[10,0]:='C';

pamietaj:=wczytaj_opcje('zestawy','pamietaj_ustawienia_'+prefiks_gry,false);
SB_pamietaj.Down:=pamietaj;

if pamietaj then
 begin
  checkbox1.Checked:=wczytaj_opcje('zestawy','pokazuj_zera_'+prefiks_gry,false);
  checkbox2.Checked:=wczytaj_opcje('zestawy','zaznacz_'+prefiks_gry,false);
  checkbox3.checked:=wczytaj_opcje('zestawy','sumuj_'+prefiks_gry,false);

  help1:=wczytaj_opcje('zestawy','zaznacz_co_'+prefiks_gry,1);
  if help1=1 then radiobutton1.Checked:=true else radiobutton2.Checked:=true;

  kolor1:=TColor(wczytaj_opcje('zestawy','kolor_'+prefiks_gry,Integer(kolor1)));
 end;

help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

if pamietaj then
 begin
  help1:=wczytaj_opcje('zestawy','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('zestawy','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

  spinedit1.Value:=help1;
  spinedit2.Value:=help2;
  spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));


  Shape1.Brush.Color := kolor1;
  zmieniony := false;
  nowyPlik();
end;

procedure TForm6.SpinEdit1Change(Sender: TObject);
begin
  spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm6.SpinEdit2Change(Sender: TObject);
begin
  spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

{ DONE : uzupelnic/zmienic - oblicz(word, word) }
// stara + nowa
procedure TForm6.oblicz(od_, do_: word);
  var
    help1, help2, help3, traf : integer;
    i, j : integer;
    zero : boolean;
begin
  GroupBox1.Enabled := false;
  SpeedButton1.Visible := false;
  Gauge1.Visible := true;
  Gauge1.Progress := 0;
  Gauge1.MaxValue := ilosc_zestawow;
  ilosc_los := do_ - od_ + 1;
  od2 := od_;
  do2 := do_;
  stringgrid2.ColCount := ilosc_los + 1;
  StringGrid2.RowCount := high(pakiet) + 1;
  start := od_;
  zaz := combobox2.itemindex+1;

  for i := low(pakiet) to high(pakiet) do for j := 1 to ilosc_liczb_zestawu do pakiet[i].ilosc[j] := 0;

  zero := checkbox1.Checked;

  for i := low(pakiet) to high(pakiet) do
  begin
    for j := od_ to do_ do
    begin
      traf := 0;
      for help3 := 1 to ilosc_liczb_zestawu do if wylosowane[j, pakiet[i].liczby[help3]] then inc(traf);
      inc(pakiet[i].ilosc[traf]);
      stringgrid2.Cells[help2,help1] := '';
      if zero then stringgrid2.Cells[j - od_ + 1, i] := IntToStr(traf) else if traf > 0 then stringgrid2.Cells[j - od_ + 1, i] := IntToStr(traf);
    end;
    Gauge1.Progress := i + 1;
    Application.ProcessMessages();
  end;

  stringgrid3.ColCount := ilosc_liczb_zestawu + 1;
  for i := 0 to ilosc_liczb_zestawu - 1 do StringGrid3.Cells[i, 0] := IntToStr(ilosc_liczb_zestawu - i);
  stringgrid3.cells[ilosc_liczb_zestawu, 0] := 'C';

  for i := low(pakiet) to high(pakiet) do
    for j := 1 to ilosc_liczb_zestawu do pakiet[i].oczekuje[j] := oczekuje(od_, do_, i, j, ilosc_liczb_zestawu);

  stringgrid2.Row := 0;
  stringgrid2.Col := ilosc_los;
  stringgrid1.Row := 1;
  stringgrid3.Row := 1;
  stringgrid3.RowCount := StringGrid1.RowCount;
  policzone := true;
  pokaz();
  combobox1change(combobox1);

  stringgrid2.Visible := true;
  stringgrid3.Visible := true;

  ustawTytul(plik_nazwa, zmieniony);

  SpeedButton1.Visible := true;
  Gauge1.Visible := false;
  GroupBox1.Enabled := true;
end;

procedure TForm6.SpeedButton1Click(Sender: TObject);
begin
  if pakiet <> nil then
    begin
      if (spinedit1.Value < spinedit2.Value) then oblicz(spinedit1.Value, spinedit2.Value);
      if (spinedit1.Value > spinedit2.Value) then oblicz(spinedit2.value, spinedit1.value);
    end;
end;

procedure TForm6.StringGrid2SelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
  var
    str : String;
begin
  if stringgrid2.cells[acol, arow] = '' then str := '0' else str := stringgrid2.cells[acol, arow];
  stringgrid2.Hint := 'Losowanie nr: ' + IntToStr(start + acol - 1) + ' (' + IntToStr(losowanie[start + acol - 1, 21]) + '.' + IntToStr(losowanie[start + acol - 1, 22]) + '.' + IntToStr(losowanie[start + acol - 1, 23]) + ') -> ' + str;
  StringGrid2.cells[0, zaznaczony] := '';
  zaznaczony := arow;
  StringGrid2.cells[0, zaznaczony] := '#';
  if przesuwaj then ustawWidok(arow, 2);
end;

// stara + nowa
function TForm6.oczekuje(od_, do_, nrzestawu, ileliczb, ile: integer): integer;
  var
    help5, help2, help3, help4 : integer;
begin
  help3 := do_ + 1;
  help5 := 0;
  repeat
    help3 := help3 - 1;
    help4 := 0;
    for help2 := 1 to ile do if wylosowane[help3, pakiet[nrzestawu].liczby[help2]] then inc(help4);
    if help4 < ileliczb then inc(help5);
  until (help4 >= ileliczb) or (help3 = od_);
  result := help5;
end;

procedure TForm6.StringGrid3SelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  stringgrid3.Hint := stringgrid3.cells[acol, arow];
  if przesuwaj then ustawWidok(arow - 1, 3);
end;

procedure TForm6.SpeedButton4Click(Sender: TObject);
begin
  if zmieniony then zapiszPlikZmieniony(false) else zapiszPlik();
end;

procedure TForm6.SpeedButton5Click(Sender: TObject);
begin
  if zmieniony then zapiszPlikZmieniony(true) else zapiszPlik();
  otworzPlik();
end;

procedure TForm6.CheckBox2Click(Sender: TObject);
begin
  combobox2.Enabled:=checkbox2.Checked;
  radiobutton1.Enabled:=checkbox2.Checked;
  radiobutton2.Enabled:=checkbox2.Checked;
  label4.Enabled:=checkbox2.Checked;
  zaz:=combobox2.ItemIndex+1;
  stringgrid2.Repaint;
  speedbutton8.Enabled:=checkbox2.Checked;
end;

procedure TForm6.StringGrid2DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  R: TRect;
  S: String;
  Wyrownanie: Integer;
  Wysokosc: Integer;
  help1:integer;
begin
  //if formatuj_tabele then
  begin

    R := Rect;
    S := StringGrid2.Cells[aCol,aRow];
    with StringGrid2.Canvas do
    begin

      if (policzone) and (checkbox2.checked) and (s <> '') and (s <> '#') then help1:=StrToInt(s) else help1:=0;
      wyrownanie:=DT_NOPREFIX;

      if gdSelected in State then
      begin
        // nadanie odpowiedniego koloru komórkom
        if radiobutton1.Checked then if help1>=zaz then brush.color:=clyellow else brush.color:=clwhite;
        if radiobutton2.Checked then if help1=zaz then brush.color:=clyellow else brush.color:=clwhite;
      end
      else
      begin
        if aRow > StringGrid2.FixedRows -1 then // wszystkie wiersze edytowalne
        if radiobutton1.Checked then if help1>=zaz then brush.color:=kolor1 else brush.color:=clwhite;
        if radiobutton2.Checked then if help1=zaz then brush.color:=kolor1 else brush.color:=clwhite;
      end;

      {po ustawieniu kolorów wype³nij pole komórki }
      if gdFixed in State then
      begin
        Font.Color := clblack;
        Brush.Color := StringGrid2.FixedColor;
        FillRect( R );
        DrawEdge(Handle, R, BDR_RAISEDINNER, BF_BOTTOMRIGHT or BF_TOPLEFT)
      end
      else
      begin
        {czcionka bêdzie mia³a kolor negatywny wzglêdem t³a danej komórki }
        Font.Color := Brush.Color xor $FFFFFF;
        FillRect( R );
      end;

      { zmniejsz prostok¹t przed napisaniem tekstu }
      InflateRect(R, -4, -2 );

      { zmieñ wysokoœæ wiersza jeœli jest zbyt ma³a }
      Wysokosc := DrawText( Handle, PChar( S ), -1, R, Wyrownanie or DT_CALCRECT );
      if ( Wysokosc > (StringGrid2.RowHeights[aRow] - 2) ) then
      begin
        StringGrid2.RowHeights[aRow] := Wysokosc + 4;
      end;

      { napisz tekst }
      DrawText( Handle, PChar( S ), -1, R, Wyrownanie );

    end;
  end;
end;

procedure TForm6.ComboBox2Change(Sender: TObject);
begin
  checkbox2.OnClick(sender);
  ostatni_zaznacz := ComboBox2.ItemIndex;
end;

procedure TForm6.SpeedButton8Click(Sender: TObject);
begin
  form1.ColorDialog1.color:=kolor1;
  if form1.ColorDialog1.Execute then kolor1:=form1.ColorDialog1.color;
  Shape1.Brush.Color := kolor1;
  if policzone then stringgrid2.Repaint;
end;

// stara + nowa
function TForm6.format_linii(linia: string): byte;
  var
    i:word;
begin
// zwraca 1 dla 010203...
// zwraca 2 dla 1, 2, 3 ...
  result := 1;
  i := 1;
  while (i < length(linia)) do
  begin
    if not czy_liczba(linia[i]) then result := 2;
    inc(i);
  end;
end;

// stara + nowa
procedure TForm6.ComboBox1Change(Sender: TObject);
  var
    i : byte;
begin
  if policzone then for i := low(pakiet) to high(pakiet) do stringgrid3.Cells[ilosc_liczb_zestawu, i + 1] := IntToStr(pakiet[i].oczekuje[combobox1.itemindex + 1]);
  ostatni_czeka := ComboBox1.ItemIndex;
end;

// stara + nowa
procedure TForm6.pokaz;
  var
    help1, help2, help3, help5 : integer;
    tab : array[1..10] of integer;
begin
  if policzone then
    begin
      if checkbox3.Checked then
      begin
        for help1 := low(pakiet) to high(pakiet) do
        begin
          for help2 := 1 to 10 do tab[help2] := 0;
          for help2 := 1 to ilosc_liczb_zestawu do
            for help3 := help2 to ilosc_liczb_zestawu do inc(tab[help2], pakiet[help1].ilosc[help3]);
          for help5 := 1 to ilosc_liczb_zestawu do if tab[help5] <> 0 then stringgrid3.Cells[ilosc_liczb_zestawu - help5, help1 + 1] := IntToStr(tab[help5]) else stringgrid3.Cells[ilosc_liczb_zestawu - help5, help1 + 1] := '-';
        end;
      end else
      begin
        for help1 := low(pakiet) to high(pakiet) do
        begin
          for help5 := 1 to ilosc_liczb_zestawu do if pakiet[help1].ilosc[help5] <> 0 then stringgrid3.Cells[ilosc_liczb_zestawu - help5, help1 + 1] := IntToStr(pakiet[help1].ilosc[help5]) else stringgrid3.Cells[ilosc_liczb_zestawu - help5, help1 + 1] := '-';
        end;
      end;
    end;
end;

// stara + nowa
procedure TForm6.CheckBox3Click(Sender: TObject);
begin
  pokaz();
end;

{ DONE : uzupelnic }
// nowa
procedure TForm6.zapiszPlikZmieniony(pytanie : boolean);
  var
    ok : boolean;
begin
  ok := false;
  if pytanie then if (Application.MessageBox('Plik zestawów zosta³ zmieniony. Zapisaæ zmiany ?', 'Pytanie', MB_YESNO + MB_ICONINFORMATION) = ID_YES) then ok := true;
  if (not pytanie) or (ok) then
  begin
    ok := true;
    form1.SaveDialog2.InitialDir := plik_sciezka;
    if plik_nowy then
      if form1.SaveDialog2.Execute then
      begin
        plik_nazwa := ExtractFileName(form1.SaveDialog2.FileName);
        plik_sciezka := ExtractFilePath(form1.SaveDialog2.FileName)
      end else ok := false;
    if ok then zapiszPlik() else ShowMessage('Plik nie zostanie zapisany.');
  end;
end;

{ DONE : uzupelnic }
// nowa
procedure TForm6.nowyPlik;
begin
  if zmieniony then zapiszPlikZmieniony(true);
  wyczysc();
  zmieniony := false;
  policzone := false;
  pakiet := nil;
  ilosc_zestawow := 0;
  ilosc_liczb_zestawu := 0;
  plik_nazwa := 'NowyZestaw.zes';
  plik_sciezka := SCIEZKA_PROGRAM + 'zestawy\';
  plik_nowy := true;
  ustawTytul(plik_nazwa, false);
end;

{ DONE : uzupelnic }
// nowa
procedure TForm6.wyczysc;
begin
  policzone := false;
  stringgrid1.Cells[1, 1] := '';
  stringgrid1.RowCount := 2;
  stringgrid2.Visible := false;
  stringgrid3.Visible := false;
  combobox1.Items.Clear;
  combobox2.Items.Clear;
end;

// nowa
procedure TForm6.ustawTytul(nazwaPliku: String; zmieniony: boolean);
begin
  if zmieniony then nazwaPliku := nazwaPliku + '*';
  if policzone then form6.Caption := 'Zestawy... ' + IntToStr(od2) + '-' + IntToStr(do2) + '  [' + nazwaPliku + ' (' + IntToStr(ilosc_zestawow) + ')' + ']' else form6.Caption := 'Zestawy...  [' + nazwaPliku + ' (' + IntToStr(ilosc_zestawow) + ')' + ']';
end;          

// nowa
procedure TForm6.zapiszPlik;
  var
    strl : TStringList;
    linia : String;
    i, j : integer;
begin
  if pakiet <> nil then
  begin
    try
      strl := TStringList.Create;
      for i := low(pakiet) to high(pakiet) do
      begin
        linia := '';
        for j := 1 to ilosc_liczb_zestawu do linia := linia + IntToStr(pakiet[i].liczby[j]) + ', ';
        strl.Add(linia);
      end;
      strl.SaveToFile(plik_sciezka + plik_nazwa);
      ustawTytul(plik_nazwa, false);
      zmieniony := false;
    finally
      strl.Free;
    end;
  end;// else ShowMessage('Brak zestawów do zapisu.');
end;

{ DONE : otworzPlik() }
// nowa
procedure TForm6.otworzPlik();
  var
    i, j, k, m, ilosc, format : integer;
    linia : string;
    liczby : array[1..10] of string[2];
    plik_zestaw : TStringList;
    temp : array [1..10] of word;
begin
  try
    plik_zestaw := TStringList.Create;
    form1.OpenDialog1.InitialDir := SCIEZKA_PROGRAM+'zestawy';
    if form1.OpenDialog1.Execute then
    begin
      plik_zestaw.LoadFromFile(form1.OpenDialog1.FileName);
      if plik_zestaw.Count > 0 then
      begin
        SetLength(pakiet, plik_zestaw.Count);
        i := 0;
        ilosc := 0;
        while ((i < plik_zestaw.Count) and (ilosc <= C_MAX_ILOSC_ZESTAWOW)) do
        begin
          linia := trim(plik_zestaw.Strings[i]);
          if (linia <> '') then
          begin
            if ilosc = 0 then
            begin
              format := format_linii(linia);
              if format = 1 then ilosc_liczb_zestawu := length(linia) div 2 else ilosc_liczb_zestawu := ile_liczb(linia, 1, ilosc_liczb_gry);
            end;
            if (ilosc_liczb_zestawu > 0) and (ilosc_liczb_zestawu < 11) then
            begin
              if format = 1 then
              begin
                for j := 1 to ilosc_liczb_zestawu do liczby[j] := linia[j * 2 - 1] + linia[j * 2];
                if liczby[1]<>'' then
                begin
                  for j := 1 to ilosc_liczb_zestawu do pakiet[ilosc].liczby[j] := StrToInt(liczby[j]);
                  inc(ilosc);
                end;
              end else
              begin
                if wyciagnij_liczby(linia, temp, 1, ilosc_liczb_gry) then
                begin
                  for j := 1 to ilosc_liczb_zestawu do pakiet[ilosc].liczby[j] := temp[j];
                  inc(ilosc);
                end;
              end;
            end;
          end;
          inc(i);
        end;

        setlength(pakiet, ilosc);

        if ilosc = 0 then showmessage('Plik nie zawiera ¿adnych zestawów.');
        if (ilosc = C_MAX_ILOSC_ZESTAWOW) and (plik_zestaw.Count > C_MAX_ILOSC_ZESTAWOW) then showmessage('Plik zawiera³ ponad ' + IntToStr(C_MAX_ILOSC_ZESTAWOW) + ' zestawów. Zosta³o wczytanych tylko ' + IntToStr(C_MAX_ILOSC_ZESTAWOW) + ' pierwszych zestawów.');

      end else ShowMessage('Wybrany plik jest pusty.');

      wyczysc();
      zmieniony := false;
      ilosc_zestawow := ilosc; // ShowMessage(IntToStr(ilosc));
      plik_nazwa := ExtractFileName(form1.OpenDialog1.FileName);
      plik_sciezka := ExtractFilePath(form1.OpenDialog1.FileName);
      plik_nowy := false;
      ustawTytul(plik_nazwa, false);

      {
      for i := 1 to ilosc_liczb_zestawu do combobox1.Items.Add(IntToStr(i));
      if (czekal <= (ilosc_liczb_zestawu - 1)) then
      begin
        ComboBox1.ItemIndex := czekal;
      end;

      for i := 1 to ilosc_liczb_zestawu do combobox2.Items.Add(IntToStr(i));
      if (zaznaczal <= (ilosc_liczb_zestawu - 1)) then
      begin
        ComboBox2.ItemIndex := zaznaczal;
      end;
      }
      wyswieltZestawy();

    end;
    policzone := false;
    plik_zestaw.Free;
  except
    Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  end;
end;

// nowa
procedure TForm6.wyswieltZestawy;
  var
    i, j : integer;
    linia : String;
begin
  if pakiet <> nil then
  begin
    stringgrid1.RowCount := high(pakiet) + 2;
    for i := low(pakiet) to high(pakiet) do
    begin
      linia := '';
      for j := 1 to ilosc_liczb_zestawu - 1 do linia := linia + Format('%2u,', [pakiet[i].liczby[j]]);
      linia := linia + Format('%2u', [pakiet[i].liczby[ilosc_liczb_zestawu]]);
      stringgrid1.Cells[1, i + 1] := linia;
      stringgrid1.Cells[0, i + 1] := Format('%4d', [i + 1]);
    end;
    combobox1.Clear;
    combobox2.Clear;

    for i := 1 to ilosc_liczb_zestawu do combobox1.Items.Add(IntToStr(i));
    if (ostatni_czeka <= (ilosc_liczb_zestawu - 1)) then
    begin
      ComboBox1.ItemIndex := ostatni_czeka;
    end;

    for i := 1 to ilosc_liczb_zestawu do combobox2.Items.Add(IntToStr(i));
    if (ostatni_zaznacz <= (ilosc_liczb_zestawu - 1)) then
    begin
      ComboBox2.ItemIndex := ostatni_zaznacz;
    end;
  end else wyczysc();
end;

// nowa
procedure TForm6.SpeedButton7Click(Sender: TObject);
begin
  nowyPlik();
end;

// nowa
function TForm6.dodajZestaw(var liczby: array of word; ile: byte): boolean;
  var
    i : integer;
begin
  result := true;
  if (pakiet = nil) then if (ile > 0) and (ile < 11) then ilosc_liczb_zestawu := ile else result := false;
  if (pakiet <> nil) then if (ilosc_liczb_zestawu <> ile) then result := false;
  if result and (ilosc_zestawow < C_MAX_ILOSC_ZESTAWOW) then
  begin
    if pakiet = nil then SetLength(pakiet, 1) else SetLength(pakiet, high(pakiet) + 2);
    for i := 0 to ilosc_liczb_zestawu - 1 do pakiet[high(pakiet)].liczby[i + 1] := liczby[i];
    inc(ilosc_zestawow);
    wyswieltZestawy();
    zmieniony := true;
    ustawTytul(plik_nazwa, zmieniony);
  end else result := false;
end;

// nowa
procedure TForm6.SpeedButton9Click(Sender: TObject);
  var
    ok : boolean;
begin
  if ilosc_zestawow < C_MAX_ILOSC_ZESTAWOW then
  begin
    liczby_dla_opcji := 9;
    Application.CreateForm(TForm16,form16);
    form16.Showmodal;
    if not anuluj then
    begin
      ok := false;
      if (pakiet <> nil) and (ilosc_liczb9 = ilosc_liczb_zestawu) then ok := true;
      if (pakiet = nil) and ((ilosc_liczb9 > 0) and (ilosc_liczb9 < 11)) then ok := true;
      if ok then dodajZestaw(tab_temp, ilosc_liczb9);
    end;
  end else ShowMessage('Max. iloœæ zestawów to ' + IntToStr(C_MAX_ILOSC_ZESTAWOW) + '.');
end;

// nowa
procedure TForm6.SpeedButton10Click(Sender: TObject);
begin
  if (pakiet <> nil) then usunZestaw(StringGrid1.Row - 1);
end;

{ DONE : uzupelnic usunZestaw(integer) }
// nowa
procedure TForm6.usunZestaw(index: integer);
  var
    i, j : integer;
    rec : TZestaw;
begin
  if (index <= high(pakiet)) then
  begin
    for i := index to high(pakiet) - 1 do
    begin
      for j := 1 to 10 do
      begin
        pakiet[i].liczby[j] := pakiet[i + 1].liczby[j];
        pakiet[i].ilosc[j] := pakiet[i + 1].ilosc[j];
        pakiet[i].oczekuje[j] := pakiet[i + 1].oczekuje[j];
      end;
    end;
    SetLength(pakiet, High(pakiet));
    dec(ilosc_zestawow);
    zmieniony := true;
    ustawTytul(plik_nazwa, true);
    wyswieltZestawy();
    if policzone then
    begin
      for i := index to StringGrid2.RowCount - 2 do
        for j := 0 to StringGrid2.ColCount - 1 do StringGrid2.Cells[j, i] := StringGrid2.Cells[j, i + 1];
      StringGrid2.RowCount := StringGrid2.RowCount - 1;
      for i := index + 1 to StringGrid3.RowCount - 2 do
        for j := 0 to StringGrid3.ColCount - 1 do StringGrid3.Cells[j, i] := StringGrid3.Cells[j, i + 1];
      StringGrid3.RowCount := StringGrid3.RowCount - 1;
    end;
  end;
end;

// nowa
procedure TForm6.usunWszystkieZestawy;
begin
  pakiet := nil;
  zmieniony := true;
  ilosc_zestawow := 0;
  ustawTytul(plik_nazwa, true);
  wyczysc();
  policzone := false;
end;

// nowa
procedure TForm6.SpeedButton11Click(Sender: TObject);
begin
  if pakiet <> nil then if (Application.MessageBox('Czy napewno chcesz usun¹æ wszystkie zestawy ?', 'Pytanie', MB_YESNO + MB_ICONINFORMATION) = ID_YES) then usunWszystkieZestawy();
end;

procedure TForm6.ustawWidok(index: integer; src : byte);
begin
  if (policzone) and (stringgrid1.RowCount > index + 1) and (stringgrid2.RowCount > index) and (stringgrid3.RowCount > index + 1) then
  begin
    przesuwaj := false;
    if src <> 1 then stringgrid1.Row := index + 1;
    if src <> 2 then stringgrid2.Row := index;
    if src <> 3 then stringgrid3.Row := index + 1;
    przesuwaj := true;
  end;
end;

procedure TForm6.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  if przesuwaj then ustawWidok(arow - 1, 1);
end;

end.
