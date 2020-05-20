unit losowania;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,main, Grids, Buttons,URLMon, Gauges, Spin, Menus, Eksport;


type
  TForm2 = class(TForm)
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    StringGrid1: TStringGrid;
    ListBox1: TListBox;
    SpeedButton1: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton7: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
    opis : TFunction;
  public
    procedure pokaz_wyniki;
    { Public declarations }
  end;

var
  Form2: TForm2;
  
  zmienna2 : integer;
  wczytane : boolean;
  wybrane : integer;

implementation

uses dodajlos, zakres, losowania_sciagnij, Stale, WynikiIDodatki;

{$R *.DFM}

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Form2 := nil;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  opis.Nazwa := 'Wyniki losowañ';
  opis.Opis := 'Tabela wyników losowañ';
  opis.NazwaPliku := 'Wyniki' + Gra.Skrot;
  opis.Naglowki := true;

  wczytane := false;
  speedbutton6.Enabled := false;
  stringgrid1.colwidths[0] := 44;
  stringgrid1.colwidths[1] := 90;
  stringgrid1.ColWidths[2] := 563;
  stringgrid1.cells[0,0] := 'Numer';
  stringgrid1.cells[1,0] := 'Data';
  stringgrid1.cells[2,0] := 'Wylosowane liczby';
  stringgrid1.RowCount := LOSOWAN + 1;
end;

// TO DO
procedure TForm2.SpeedButton3Click(Sender: TObject);
var
  start, stop : integer;
begin
  if form26 = nil then
  begin
    start := Gra.ZakresOd; //wspolne[Gra.Numer, 1];
    stop := Gra.ZakresDo; //wspolne[Gra.Numer, 2];
    Application.CreateForm(TForm26, form26);
    form26.ShowModal();
    if ((wczytane) and ((start <> Gra.ZakresOd) or (stop <> Gra.ZakresDo))) then
    begin
      if Application.MessageBox('Zakres losowañ zmieni³ siê, czy zaktualizowaæ widok tabeli z wynikami ?', 'Pytanie', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON1) = ID_YES then pokaz_wyniki();
    end;
  end;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
  pokaz_wyniki();
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  if form8 = nil then
  begin
    dodajlos.OpcjaLosowan := C_LOSOWANIE_DODAJ;
    Application.CreateForm(TForm8, form8);
    form8.ShowModal();
  end;
end;

procedure TForm2.pokaz_wyniki;
var
  help1 : integer;
  count : integer;
begin
  count := 0;
  for help1 := Gra.ZakresOd to Gra.ZakresDo do
  begin
    inc(count);
    stringgrid1.cells[0, count] := Format(' %4d', [help1]);
    stringgrid1.cells[1, count] := Format(' %2d.%2d.%4d', [_Losowanie[help1].Dzien, _Losowanie[help1].Miesiac, _Losowanie[help1].Rok]);
    if Gra.Numer = C_MULTI_LOTEK then stringgrid1.cells[2, count] := Format(' %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d', [_Losowanie[help1].Liczba[1], _Losowanie[help1].Liczba[2], _Losowanie[help1].Liczba[3], _Losowanie[help1].Liczba[4], _Losowanie[help1].Liczba[5], _Losowanie[help1].Liczba[6], _Losowanie[help1].Liczba[7], _Losowanie[help1].Liczba[8], _Losowanie[help1].Liczba[9], _Losowanie[help1].Liczba[10], _Losowanie[help1].Liczba[11], _Losowanie[help1].Liczba[12], _Losowanie[help1].Liczba[13], _Losowanie[help1].Liczba[14], _Losowanie[help1].Liczba[15], _Losowanie[help1].Liczba[16], _Losowanie[help1].Liczba[17], _Losowanie[help1].Liczba[18], _Losowanie[help1].Liczba[19], _Losowanie[help1].Liczba[20]]);
    if Gra.Numer = C_DUZY_LOTEK then stringgrid1.cells[2, count] := Format(' %2d, %2d, %2d, %2d, %2d, %2d', [_Losowanie[help1].Liczba[1], _Losowanie[help1].Liczba[2], _Losowanie[help1].Liczba[3], _Losowanie[help1].Liczba[4], _Losowanie[help1].Liczba[5], _Losowanie[help1].Liczba[6]]);
    if Gra.Numer = C_EXPRESS_LOTEK then stringgrid1.cells[2, count] := Format(' %2d, %2d, %2d, %2d, %2d', [_Losowanie[help1].Liczba[1], _Losowanie[help1].Liczba[2], _Losowanie[help1].Liczba[3], _Losowanie[help1].Liczba[4], _Losowanie[help1].Liczba[5]]);
  end;
  stringgrid1.RowCount := count + 1;
  if count > 10 then stringgrid1.TopRow := count - 9;
  label5.Caption := IntToStr(count);
  wczytane := true;
  speedbutton6.Enabled := true;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
  opis.Ustawienia := IntToStr(Gra.ZakresOd) + ' [' + DataLosowania(Gra.ZakresOd) + ']' + ' - ' + IntToStr(Gra.ZakresDo) + ' [' + DataLosowania(Gra.ZakresDo) + ']';
  Eksport.Eksportuj(Self.StringGrid1, opis);
end;

procedure TForm2.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  if wczytane then
  begin
    label7.Caption := IntToStr(arow + (Gra.ZakresOd - 1));
    wybrane := arow + (Gra.ZakresOd {wspolne[Gra.Numer, 1]} - 1);
    speedbutton8.Enabled := true;
    speedbutton9.Enabled := true;
  end;
end;

procedure TForm2.SpeedButton9Click(Sender: TObject);
var
  error : string;
begin
  if Application.MessageBox('Czy napewno chcesz usun¹æ wybrane losowanie ?', 'Pytanie', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2)= ID_YES then
  begin
    if (UsunLosowanie(wybrane, error)) then
    begin
      Application.MessageBox('Losowanie zosta³o usuniête.', 'Informacja', MB_OK + MB_ICONINFORMATION);
      form1.WczytajGre(Gra.Numer);
      if wczytane then pokaz_wyniki();
    end
    else
    begin
      Application.MessageBox(PChar(error), 'Wyst¹pi³ b³¹d podczas usuwania losowania', MB_OK + MB_ICONERROR);
    end;
 end;
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
  if form8=nil then
  begin
    dodajlos.OpcjaLosowan := C_LOSOWANIE_EDYTUJ;
    dodajlos.WybraneLosowanie := wybrane;
    Application.CreateForm(TForm8,form8);
    form8.ShowModal;
  end;
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
  if losowania_sciagnij_form = nil then
  begin
    Application.CreateForm(Tlosowania_sciagnij_form, losowania_sciagnij_form);
    losowania_sciagnij_form.ShowModal();
  end;
end;

end.
