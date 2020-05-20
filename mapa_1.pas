unit mapa_1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls, Spin, Buttons, Menus;

type
  Tmapa1form = class(TForm)
    StringGrid1: TStringGrid;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    SpeedButton1: TSpeedButton;
    Shape1: TShape;
    SpeedButton5: TSpeedButton;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    SpinEdit15: TSpinEdit;
    SB_pamietaj: TSpeedButton;
    PopupMenu1: TPopupMenu;
    gdh1: TMenuItem;
    Pole8x81: TMenuItem;
    Pole10x101: TMenuItem;
    Pole12x121: TMenuItem;
    Pole16x161: TMenuItem;
    Pole18x181: TMenuItem;
    Pole20x201: TMenuItem;
    Shape2: TShape;
    CheckBox1: TCheckBox;
    ComboBox4: TComboBox;
    SpinEdit1: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Pole8x81Click(Sender: TObject);
    procedure Pole10x101Click(Sender: TObject);
    procedure Pole12x121Click(Sender: TObject);
    procedure Pole16x161Click(Sender: TObject);
    procedure Pole18x181Click(Sender: TObject);
    procedure Pole20x201Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Shape1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Shape2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox1Click(Sender: TObject);
  private
    { Private declarations }
    
    procedure ustaw_siatke(wys, szer : byte);

    procedure pokaz_mape_liczb; overload;
    procedure pokaz_mape_pozycji; overload;

    procedure pokaz_mape_liczb(skok:byte); overload;
    procedure pokaz_mape_pozycji(skok:byte); overload;

    function oczekuje_liczba(liczba,do_:integer):integer; overload;
    function oczekuje_liczba(liczba,do_,skok:integer):integer; overload;
    function oczekuje_pozycja(pozycja,do_:integer):integer; overload;
    function oczekuje_pozycja(pozycja,do_,skok:integer):integer; overload;
  public
    { Public declarations }
  end;

var
  mapa1form : Tmapa1form;

  kolor_komorki : TColor;
  kolor_tla : TColor;

implementation

uses Addins, main;

{$R *.dfm}

{ TODO : przerobic na nowa obsluge ustawien }
procedure Tmapa1form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // zapisanie opcji
  zapisz_opcje('mapa_1', 'pamietaj_ustawienia_' + prefiks_gry, SB_pamietaj.down);
  zapisz_opcje('mapa_1', 'mapa_' + prefiks_gry, combobox1.Itemindex + 1);
  zapisz_opcje('mapa_1', 'skok_' + prefiks_gry, spinedit15.value);
  zapisz_opcje('mapa_1', 'tryb_' + prefiks_gry, combobox2.Itemindex + 1);
  zapisz_opcje('mapa_1', 'wyswietlaj_' + prefiks_gry, combobox3.Itemindex + 1);
  zapisz_opcje('mapa_1', 'kolor_komorki_' + prefiks_gry, Integer(kolor_komorki));
  zapisz_opcje('mapa_1', 'kolor_tla_' + prefiks_gry, Integer(kolor_tla));

  Action := caFree;
  mapa1form := nil;
end;


procedure Tmapa1form.StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
var
  pos : TPoint;
begin
  GetCursorPos(pos);
  popupmenu1.Popup(pos.x, pos.y);
end;

procedure Tmapa1form.ustaw_siatke(wys, szer: byte);
begin
  stringgrid1.DefaultColWidth := szer;
  stringgrid1.DefaultRowHeight := wys;
  stringgrid1.ColWidths[0] := 50;
end;

procedure Tmapa1form.Pole8x81Click(Sender: TObject);
begin
  Pole8x81.Checked := true;
  ustaw_siatke(10, 10);
  zapisz_opcje('mapa_1', 'rozmiar_komorki', 1);
end;

procedure Tmapa1form.Pole10x101Click(Sender: TObject);
begin
  Pole10x101.Checked := true;
  ustaw_siatke(12, 12);
  zapisz_opcje('mapa_1', 'rozmiar_komorki', 2);
end;

procedure Tmapa1form.Pole12x121Click(Sender: TObject);
begin
  Pole12x121.Checked := true;
  ustaw_siatke(14, 14);
  zapisz_opcje('mapa_1', 'rozmiar_komorki', 3);
end;

procedure Tmapa1form.Pole16x161Click(Sender: TObject);
begin
  Pole16x161.Checked := true;
  ustaw_siatke(16, 16);
  zapisz_opcje('mapa_1', 'rozmiar_komorki', 4);
end;

procedure Tmapa1form.Pole18x181Click(Sender: TObject);
begin
  Pole18x181.Checked := true;
  ustaw_siatke(18, 18);
  zapisz_opcje('mapa_1', 'rozmiar_komorki', 5);
end;

procedure Tmapa1form.Pole20x201Click(Sender: TObject);
begin
  Pole20x201.Checked := true;
  ustaw_siatke(20, 20);
  zapisz_opcje('mapa_1', 'rozmiar_komorki', 6);
end;

procedure Tmapa1form.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
  stringgrid1.Hint:='['+stringgrid1.cells[0,arow]+' # '+stringgrid1.cells[acol,0]+']  '+stringgrid1.cells[acol,arow];
end;

procedure Tmapa1form.FormCreate(Sender: TObject);
var
  help1 : integer;
  pamietaj : boolean;
begin
  pamietaj := wczytaj_opcje('mapa_1', 'pamietaj_ustawienia_'+prefiks_gry, false);
  SB_pamietaj.Down := pamietaj;

  kolor_komorki := clWhite;
  kolor_tla := clWhite;

  stringgrid1.rowcount := losowan;
  stringgrid1.ColWidths[0] := 50;
  stringgrid1.cells[0,0] := 'Data';

  StringGrid1.ColCount := ilosc_liczb_gry + 1;
  for help1 := 1 to ilosc_liczb_gry do StringGrid1.Cells[help1, 0] := IntToStr(help1);

  combobox1.ItemIndex := 0;
  combobox2.ItemIndex := 0;
  combobox3.ItemIndex := 0;

  if pamietaj then
  begin
    help1 := wczytaj_opcje('mapa_1', 'mapa_' + prefiks_gry, 1);
    if (help1 < 1) or (help1 > 2) then help1 := 1;
    combobox1.ItemIndex := help1 - 1;

    help1 := wczytaj_opcje('mapa_1', 'skok_' + prefiks_gry, 1);
    if (help1 < 1) or (help1 > 100) then help1 := 1;
    spinedit15.Value := help1;

    help1 := wczytaj_opcje('mapa_1', 'tryb_' + prefiks_gry, 1);
    if (help1 < 1) or (help1 > 2) then help1 := 1;
    combobox2.ItemIndex := help1 - 1;

    help1 := wczytaj_opcje('mapa_1', 'wyswietlaj_' + prefiks_gry, 1);
    if (help1 < 1) or (help1 > 2) then help1 := 1;
    combobox3.ItemIndex := help1 - 1;

    kolor_komorki := TColor(wczytaj_opcje('mapa_1', 'kolor_komorki_' + prefiks_gry, Integer(clWhite)));
    shape1.Brush.Color := kolor_komorki;

    kolor_tla := TColor(wczytaj_opcje('mapa_1', 'kolor_tla_' + prefiks_gry, Integer(clWhite)));
    shape2.Brush.Color := kolor_tla;

    help1 := wczytaj_opcje('mapa_1', 'rozmiar_komorki', 3);

    case help1 of
      1 : Pole8x81.Checked := true;
      2 : Pole10x101.Checked := true;
      3 : Pole12x121.Checked := true;
      4 : Pole16x161.Checked := true;
      5 : Pole18x181.Checked := true;
      6 : Pole20x201.Checked := true;
    end;
    ustaw_siatke(10 + ((help1 - 1) * 2), 10 + ((help1 - 1) * 2));
  end;

  ComboBox2Change(Sender);
  ComboBox1Change(Sender);
end;

procedure Tmapa1form.ComboBox1Change(Sender: TObject);
begin
  SpinEdit15.Enabled := not (ComboBox1.ItemIndex = 0);
end;

procedure Tmapa1form.ComboBox2Change(Sender: TObject);
var
  help1 : byte;
begin
  help1 := combobox3.ItemIndex;
  if combobox2.ItemIndex = 1 then combobox3.Items.Strings[0] := 'Pozycje' else combobox3.Items.Strings[0] := 'Liczbe';
  combobox3.ItemIndex := help1;
end;

procedure Tmapa1form.Shape1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  form1.ColorDialog1.color := kolor_komorki;
  if form1.ColorDialog1.Execute then kolor_komorki := form1.ColorDialog1.color;
  shape1.Brush.Color := kolor_komorki;
  stringgrid1.Repaint;
end;

procedure Tmapa1form.StringGrid1DrawCell(Sender: TObject; ACol,  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  R: TRect;
  S: String;
  Wyrownanie: Integer;
  help1 : boolean;
begin
  R := Rect;
  S := StringGrid1.Cells[aCol, aRow];
  with StringGrid1.Canvas do
  begin

    if (speedbutton5.Enabled) and (acol>0) and (arow>0) and (s<>'') then help1:=true else help1:=false;
    wyrownanie:=DT_NOPREFIX;

    if gdSelected in State then
    begin
      if help1 then brush.color:=clyellow else brush.color:=clwhite;
    end
    else
    begin
      if aRow > StringGrid1.FixedRows -1 then
        if help1 then brush.color:= kolor_komorki else brush.color:=kolor_tla;
    end;

    if gdFixed in State then
    begin
      Font.Color := clblack;
      Brush.Color := StringGrid1.FixedColor;
      FillRect( R );
      DrawEdge(Handle, R, BDR_RAISEDINNER, BF_BOTTOMRIGHT or BF_TOPLEFT)
    end
    else
    begin
      Font.Color := Brush.Color xor $FFFFFF;
      FillRect( R );
    end;

    InflateRect(R, -2, -2 );
    DrawText( Handle, PAnsiChar( S ), -1, R, Wyrownanie );

  end;
end;

procedure Tmapa1form.SpeedButton5Click(Sender: TObject);
var
  help1, help2 : integer;
  filename : textfile;
begin
  form1.SaveDialog1.FileName := 'MapaRozk³adów';

  if form1.savedialog1.Execute then
    if form1.SaveDialog1.FilterIndex = 1 then
    begin
      assignfile(filename, form1.savedialog1.filename);
      rewrite(filename);
      for help1 := 0 to stringgrid1.rowcount - 1 do
      begin
        for help2 := 0 to stringgrid1.ColCount - 2 do write(filename, stringgrid1.cells[help2, help1] + ';');
        write(filename, stringgrid1.cells[stringgrid1.colcount - 1, help1] + #13);
      end;
      closefile(filename);
    end else form1.zapiszHTML2(mapa1form.stringgrid1, form1.savedialog1.filename, ExtractFileName(form1.savedialog1.filename), 'Mapa rozk³adów', 1);
end;

procedure Tmapa1form.SpeedButton1Click(Sender: TObject);
begin
  if combobox1.ItemIndex = 0 then
  begin
    if combobox2.ItemIndex = 0 then pokaz_mape_liczb() else pokaz_mape_pozycji();
  end else
  begin
    if combobox2.ItemIndex = 0 then pokaz_mape_liczb(spinedit15.value) else pokaz_mape_pozycji(spinedit15.value);
  end;
end;

// pokazuje mape liczb ze skokiem 0
procedure Tmapa1form.pokaz_mape_liczb;
var
  help1,help2:integer;
begin
  for help1:=1 to losowan do
    for help2:=1 to ilosc_liczb_gry do if stringgrid1.Cells[help2,help1]<>'' then stringgrid1.Cells[help2,help1]:='';

  if combobox3.ItemIndex=0 then
  begin
    stringgrid1.Rowcount:=losowan+1;
    stringgrid1.ColCount:=ilosc_liczb_gry+1;
    for help1:=1 to losowan do
    begin
      stringgrid1.cells[0,help1]:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
      for help2:=1 to ilosc_liczb_los do stringgrid1.cells[losowanie[help1,help2],help1]:=IntToStr(losowanie[help1,help2]);
    end;
    //stringgrid1.TopRow:=losowan-16;
  end;

  if combobox3.ItemIndex=1 then
  begin
    stringgrid1.Rowcount:=losowan+1;
    stringgrid1.ColCount:=ilosc_liczb_gry+1;
    for help1:=1 to losowan do
    begin
      stringgrid1.cells[0,help1]:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
      for help2:=1 to ilosc_liczb_los do stringgrid1.cells[losowanie[help1,help2],help1]:=IntToStr(oczekuje_liczba(losowanie[help1,help2],help1));
    end;
    //stringgrid1.TopRow:=losowan-16;
  end;

  speedbutton5.Enabled:=true;
end;

// pokazuje mape liczb ze skokiem > 0
procedure Tmapa1form.pokaz_mape_liczb(skok: byte);
var
  help1, help2 : integer;
begin
  for help1 := 1 to losowan do
    for help2 := 1 to ilosc_liczb_gry do if stringgrid1.Cells[help2, help1] <> '' then stringgrid1.Cells[help2, help1] := '';

  if skok > losowan then skok := losowan - 1;

  if combobox3.ItemIndex = 0 then
  begin
    stringgrid1.Rowcount := losowan - skok + 1;
    stringgrid1.ColCount := ilosc_liczb_gry + 1;
    for help1 := skok + 1 to losowan do
    begin
      stringgrid1.cells[0, help1 - skok] := (IntToStr(losowanie[help1, 21]) + '.' + IntToStr(losowanie[help1, 22]) + '.' + IntToStr(losowanie[help1, 23]));
      for help2 := 1 to ilosc_liczb_los do if wylosowane[help1 - skok, losowanie[help1, help2]] then  stringgrid1.cells[losowanie[help1, help2], help1 - skok] := IntToStr(losowanie[help1, help2]);
    end;
    //stringgrid1.TopRow := losowan - 16 - skok;
  end;

  if combobox3.ItemIndex = 1 then
  begin
    stringgrid1.Rowcount := losowan - skok + 1;
    stringgrid1.ColCount := ilosc_liczb_gry + 1;
    for help1 := skok + 1 to losowan do
    begin
      stringgrid1.cells[0, help1 - skok] := (IntToStr(losowanie[help1, 21]) + '.' + IntToStr(losowanie[help1, 22]) + '.' + IntToStr(losowanie[help1, 23]));
      for help2 := 1 to ilosc_liczb_los do if wylosowane[help1 - skok, losowanie[help1, help2]] then stringgrid1.cells[losowanie[help1, help2], help1 - skok] := IntToStr(oczekuje_liczba(losowanie[help1, help2], help1, skok));
    end;
    //stringgrid1.TopRow := losowan - 16 - skok;
  end;

  speedbutton5.Enabled := true;
end;

// pokazuje mape pozycji ze skokiem 0
procedure Tmapa1form.pokaz_mape_pozycji;
var
  help1,help2:integer;
begin
  for help1:=1 to losowan do
    for help2:=1 to ilosc_liczb_los do if stringgrid1.Cells[help2,help1]<>'' then stringgrid1.Cells[help2,help1]:='';

  if combobox3.ItemIndex=0 then
  begin
    stringgrid1.Rowcount:=losowan;
    stringgrid1.ColCount:=ilosc_liczb_los+1;
    for help1:=2 to losowan do
    begin
      stringgrid1.cells[0,help1-1]:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
      for help2:=1 to ilosc_liczb_los do if wylosowane[help1,losowanie[help1-1,help2]] then stringgrid1.cells[help2,help1-1]:=IntToStr(help2);
    end;
    //stringgrid1.TopRow:=losowan-18;
  end;

  if combobox3.ItemIndex=1 then
  begin
    stringgrid1.Rowcount:=losowan;
    stringgrid1.ColCount:=ilosc_liczb_los+1;
    for help1:=2 to losowan do
    begin
      stringgrid1.cells[0,help1-1]:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
      for help2:=1 to ilosc_liczb_los do if wylosowane[help1,losowanie[help1-1,help2]] then stringgrid1.cells[help2,help1-1]:=IntToStr(oczekuje_pozycja(help2,help1));
    end;
    //stringgrid1.TopRow:=losowan-18;
  end;

  speedbutton5.Enabled:=true;
end;

// pokazuje mape pozycji ze skokiem > 0
procedure Tmapa1form.pokaz_mape_pozycji(skok: byte);
var
  help1, help2 : integer;
begin
  for help1 := 1 to losowan do
    for help2 := 1 to ilosc_liczb_gry do if stringgrid1.Cells[help2, help1] <> '' then stringgrid1.Cells[help2, help1] := '';

  if skok > losowan then skok := losowan - 1;

  if combobox3.ItemIndex = 0 then
  begin
    stringgrid1.Rowcount:=losowan-skok+1;
    stringgrid1.ColCount:=ilosc_liczb_los+1;
    for help1:=skok+1 to losowan do
    begin
      stringgrid1.cells[0,help1-skok]:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
      for help2:=1 to ilosc_liczb_los do if wylosowane[help1, losowanie[help1-skok,help2]] then  stringgrid1.cells[help2,help1-skok]:=IntToStr(help2);
    end;
    //stringgrid1.TopRow:=losowan-17-skok;
  end;

  if combobox3.ItemIndex=1 then
  begin
    stringgrid1.Rowcount:=losowan-skok+1;
    stringgrid1.ColCount:=ilosc_liczb_los+1;
    for help1:=skok+1 to losowan do
    begin
      stringgrid1.cells[0,help1-skok]:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
      for help2:=1 to ilosc_liczb_los do if wylosowane[help1, losowanie[help1-skok,help2]] then  stringgrid1.cells[help2,help1-skok]:=IntToStr(oczekuje_pozycja(help2,help1,skok));
    end;
    //stringgrid1.TopRow:=losowan-17-skok;
  end;

  speedbutton5.Enabled:=true;
end;

{ TODO : przeniesc do innego pliku z funkcjami dotyczacymi losowan }
function Tmapa1form.oczekuje_liczba(liczba, do_, skok: integer): integer;
var
  help5,help1:integer;
begin
  help1:=do_;
  help5:=-1;
  repeat
    dec(help1);
    inc(help5);
  until ((wylosowane[help1,liczba]) and (wylosowane[help1-skok,liczba])) or (help1=skok);
  if do_=1 then help5:=0;
  oczekuje_liczba:=help5;
end;

{ TODO : przeniesc do innego pliku z funkcjami dotyczacymi losowan }
function Tmapa1form.oczekuje_liczba(liczba, do_: integer): integer;
var
  help5,help1:integer;
begin
  help1:=do_;
  help5:=-1;
  repeat
    dec(help1);
    inc(help5);
  until (wylosowane[help1,liczba]=true) or (help1=0);
  if do_=1 then help5:=0;
  oczekuje_liczba:=help5;
end;

{ TODO : przeniesc do innego pliku z funkcjami dotyczacymi losowan }
function Tmapa1form.oczekuje_pozycja(pozycja, do_, skok: integer): integer;
var
  help5,help1:integer;
begin
  help1:=do_;
  help5:=-1;
  repeat
    dec(help1);
    inc(help5);
  until (wylosowane[help1,losowanie[help1-skok,pozycja]])  or (help1=skok);
  if do_=1 then help5:=0;
  oczekuje_pozycja:=help5;
end;

{ TODO : przeniesc do innego pliku z funkcjami dotyczacymi losowan }
function Tmapa1form.oczekuje_pozycja(pozycja, do_: integer): integer;
var
  help5,help1:integer;
begin
  help1:=do_;
  help5:=-1;
  repeat
    dec(help1);
    inc(help5);
  until (wylosowane[help1,losowanie[help1-1,pozycja]]=true) or (help1=0);
  if do_=1 then help5:=0;
  oczekuje_pozycja:=help5;
end;

procedure Tmapa1form.Shape2MouseUp(Sender: TObject; Button: TMouseButton;  Shift: TShiftState; X, Y: Integer);
begin
  form1.ColorDialog1.color := kolor_tla;
  if form1.ColorDialog1.Execute then kolor_tla := form1.ColorDialog1.color;
  shape2.Brush.Color := kolor_tla;
  stringgrid1.Repaint;
end;

procedure Tmapa1form.CheckBox1Click(Sender: TObject);
begin
  combobox4.Enabled := checkbox1.Checked;
  SpinEdit1.Enabled := CheckBox1.Checked;
end;

end.
