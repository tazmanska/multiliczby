unit mapa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids,main, ComCtrls, Buttons, StdCtrls, Spin, ExtCtrls, Menus;

type
  TForm9 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    TabSheet3: TTabSheet;
    SpeedButton6: TSpeedButton;
    TabSheet4: TTabSheet;
    Label40: TLabel;
    Label41: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    StringGrid3: TStringGrid;
    ScrollBox1: TScrollBox;
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    Label18: TLabel;
    Label19: TLabel;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    TabSheet5: TTabSheet;
    Label28: TLabel;
    Label29: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    StringGrid2: TStringGrid;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    GroupBox1: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SpinEdit3: TSpinEdit;
    Image2: TImage;
    SpeedButton11: TSpeedButton;
    TabSheet6: TTabSheet;
    GroupBox5: TGroupBox;
    Label20: TLabel;
    SpinEdit8: TSpinEdit;
    SpeedButton10: TSpeedButton;
    SpeedButton3: TSpeedButton;
    GroupBox6: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    SpinEdit9: TSpinEdit;
    SpinEdit10: TSpinEdit;
    SpeedButton12: TSpeedButton;
    Image3: TImage;
    GroupBox7: TGroupBox;
    Label21: TLabel;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpinEdit11: TSpinEdit;
    GroupBox8: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    SpeedButton15: TSpeedButton;
    SpinEdit12: TSpinEdit;
    SpinEdit13: TSpinEdit;
    Image4: TImage;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    SpeedButton20: TSpeedButton;
    CheckBox3: TCheckBox;
    SpinEdit14: TSpinEdit;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    SpeedButton21: TSpeedButton;
    SB_pamietaj: TSpeedButton;
    GroupBox3: TGroupBox;
    Label46: TLabel;
    SpeedButton1: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SpinEdit5Change(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpinEdit6Change(Sender: TObject);
    procedure SpinEdit7Change(Sender: TObject);
    procedure SpinEdit8Change(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpinEdit9Change(Sender: TObject);
    procedure SpinEdit10Change(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpinEdit11Change(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpinEdit12Change(Sender: TObject);
    procedure SpinEdit13Change(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure tworz_mape(ilosc,start:word);
  procedure tworz_mape2;
  procedure tworz_mape_dl;
  procedure tworz_mape_el;

  procedure tworz_mapy_ml;

  procedure pokaz_los(nr:word);
  procedure pokaz_los_dl(nr:word);
  procedure pokaz_los_el(nr:word);
  procedure pokaz_los_ml(nr:word);
  procedure zaznacz_liczbe(liczba:byte);
  procedure zaznacz_liczbe_dl(liczba:byte);
  procedure zaznacz_liczbe_el(liczba:byte);
  procedure zaznacz_liczbe_ml(liczba:byte);

  procedure pokaz_wiele_los_ml(od_,do_:integer);
  procedure pokaz_wiele_los_ml2(od_,do_:integer);
  procedure pokaz_wiele_los_dl(od_,do_:integer);
  procedure pokaz_wiele_los_el(od_,do_:integer);

  procedure pokaz_mape(od_,do_:integer);//rysuje mape
  procedure rysuj_liczbe(liczba,wiersz:integer);
  procedure czysc_mape;
  procedure pokaz_mape2(od_,do_:word);
  procedure pokaz_mape3(od_,do_:word);

  procedure rysuj_siatke_ml;
  procedure rysuj_siatke_dl;
  procedure rysuj_siatke_el;

  function oczekuje_liczba(liczba,do_:integer):integer; overload;
  function oczekuje_liczba(liczba,do_,skok:integer):integer; overload;
  function oczekuje_pozycja(pozycja,do_:integer):integer; overload;
  function oczekuje_pozycja(pozycja,do_,skok:integer):integer; overload;
  function oczekiwal(zestaw,ilosc,naile,od_,do_:integer):integer;

  function oczekiwal2(ilosc,naile,od_,do_:integer):integer;
    { Public declarations }
  end;

var
  Form9: TForm9;
  aktual_los,dzielnik:integer;
  czy_mapa:boolean;
  czy_mapa2:boolean;
  mapa_liczby:array[1..10]of byte;
  mapa_liczby2:array[1..20]of byte;
  ilosc_liczb1:byte;
  ilosc_liczb2:byte;

  kolor1,kolor2,kolor3:tcolor;
  mapa1_kolor:tcolor = clwhite;
const ostatnich=500;

implementation

uses podajliczby, Addins, mapa_1;

{$R *.DFM}

procedure TForm9.FormClose(Sender: TObject; var Action: TCloseAction);
var help1:byte;
begin
//ogolne
zapisz_opcje('mapa','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
zapisz_opcje('mapa','zakladka_'+prefiks_gry,PageControl1.ActivePageIndex);



//mapa 2
zapisz_opcje('mapa','mapa2_od_'+prefiks_gry,spinedit6.value);
zapisz_opcje('mapa','mapa2_do_'+prefiks_gry,spinedit7.value);
zapisz_opcje('mapa','mapa2_kolor_'+prefiks_gry,Integer(kolor2));
zapisz_opcje('mapa','mapa2_siatka_'+prefiks_gry,checkbox2.checked);

//mapa 3
zapisz_opcje('mapa','mapa3_losowanie_'+prefiks_gry,spinedit8.value);
zapisz_opcje('mapa','mapa3_kolor_'+prefiks_gry,Integer(kolor1));
zapisz_opcje('mapa','mapa3_siatka_'+prefiks_gry,checkbox1.checked);
zapisz_opcje('mapa','mapa3_pokazGZOP_'+prefiks_gry,checkbox3.checked);
zapisz_opcje('mapa','mapa3_z_losowan_'+prefiks_gry,spinedit14.value);
zapisz_opcje('mapa','mapa3_od_'+prefiks_gry,spinedit9.value);
zapisz_opcje('mapa','mapa3_do_'+prefiks_gry,spinedit10.value);

//mapa 4
if Gra.Numer=1 then
 begin
  zapisz_opcje('mapa','mapa4_losowanie_'+prefiks_gry,spinedit11.value);
  zapisz_opcje('mapa','mapa4_kolor_'+prefiks_gry,Integer(kolor3));
  zapisz_opcje('mapa','mapa4_od_'+prefiks_gry,spinedit12.value);
  zapisz_opcje('mapa','mapa4_do_'+prefiks_gry,spinedit13.value);
 end;

//mapa 5
zapisz_opcje('mapa','mapa5_od_'+prefiks_gry,spinedit4.value);
zapisz_opcje('mapa','mapa5_do_'+prefiks_gry,spinedit5.value);

//mapa 6
if radiobutton1.Checked then help1:=1 else help1:=2;
zapisz_opcje('mapa','mapa6_srednia_'+prefiks_gry,help1);
zapisz_opcje('mapa','mapa6_od_'+prefiks_gry,spinedit1.value);
zapisz_opcje('mapa','mapa6_do_'+prefiks_gry,spinedit2.value);

  if mapa1form <> nil then
  begin
    mapa1form.Close();
  end;

Action := caFree;
Form9:=nil;
end;

procedure TForm9.FormCreate(Sender: TObject);
var
help1,help2:integer;
pamietaj:boolean;
begin
pamietaj:=wczytaj_opcje('mapa','pamietaj_ustawienia_'+prefiks_gry,false);
SB_pamietaj.Down:=pamietaj;

kolor1:=clred;
kolor2:=clred;
kolor3:=clred;

//ogolne

tworz_mape(losowan,1);
if Gra.Numer=1 then tworz_mape2;
if Gra.Numer=1 then tworz_mapy_ml;
if Gra.Numer=2 then tworz_mape_dl;
if Gra.Numer=3 then tworz_mape_el;


speedbutton20.Enabled:=false;
speedbutton21.Enabled:=false;
//mapa uniwersalna
stringgrid2.Cells[0,0]:='Numer';
for help1:=1 to 10 do stringgrid2.cells[13+help1,0]:=IntToStr(help1);
for help1:=1 to 10 do stringgrid2.cells[11-help1,0]:=IntToStr(help1);
stringgrid2.cells[11,0]:='Il.';
stringgrid2.cells[12,0]:='?';
stringgrid2.cells[13,0]:='Il.';
stringgrid2.RowCount:=losowan+1;
stringgrid2.ColWidths[0]:=46;
stringgrid2.ColWidths[11]:=18;
stringgrid2.ColWidths[12]:=14;
stringgrid2.ColWidths[13]:=18;
stringgrid2.colwidths[24]:=27;
stringgrid2.Cells[24,0]:='Ocz.';

stringgrid3.cells[0,0]:='Numer';
stringgrid3.RowCount:=losowan+1;
stringgrid3.ColWidths[0]:=46;
stringgrid3.colwidths[22]:=40;
for help1:=1 to 20 do stringgrid3.cells[help1,0]:='?';
stringgrid3.cells[21,0]:='Ile';
stringgrid3.cells[22,0]:='Ocz.';


// mapa 2
help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit6.MinValue:=1;
spinedit6.MaxValue:=losowan;
spinedit7.MinValue:=1;
spinedit7.MaxValue:=losowan;

if pamietaj then
 begin
  help1:=wczytaj_opcje('mapa','mapa2_od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('mapa','mapa2_do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

spinedit6.Value:=help1;
spinedit7.Value:=help2;
spinedit6.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
spinedit7.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

if pamietaj then kolor2:=TColor(wczytaj_opcje('mapa','mapa2_kolor_'+prefiks_gry,Integer(clred)));
if pamietaj then checkbox2.Checked:=wczytaj_opcje('mapa','mapa2_siatka_'+prefiks_gry,false);


// mapa 3
if pamietaj then help1:=wczytaj_opcje('mapa','mapa3_losowanie_'+prefiks_gry,wspolne[Gra.Numer,2]) else help1:=wspolne[Gra.Numer,2];
spinedit8.MinValue:=1;
spinedit8.MaxValue:=losowan;
spinedit8.Value:=help1;
spinedit8.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));

if pamietaj then kolor1:=TColor(wczytaj_opcje('mapa','mapa3_kolor_'+prefiks_gry,Integer(clRed)));
if pamietaj then checkbox1.Checked:=wczytaj_opcje('mapa','mapa3_siatka_'+prefiks_gry,false);
if pamietaj then checkbox3.Checked:=wczytaj_opcje('mapa','mapa3_pokazGZOP_'+prefiks_gry,false);
if pamietaj then help1:=wczytaj_opcje('mapa','mapa3_z_losowan_'+prefiks_gry,10) else help1:=10;
if (help1<5) or (help1>1000) then help1:=10;
spinedit14.Value:=help1;

help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit9.MinValue:=1;
spinedit9.MaxValue:=losowan;
spinedit10.MinValue:=1;
spinedit10.MaxValue:=losowan;

if pamietaj then
 begin
  help1:=wczytaj_opcje('mapa','mapa3_od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('mapa','mapa3_do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

spinedit9.Value:=help1;
spinedit10.Value:=help2;
spinedit9.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
spinedit10.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

// mapa 4
if Gra.Numer=1 then
 begin
  if pamietaj then help1:=wczytaj_opcje('mapa','mapa4_losowanie_'+prefiks_gry,wspolne[Gra.Numer,2]) else help1:=wspolne[Gra.Numer,2];
  if not czy_dobre_losowanie(help1) then help1:=wspolne[Gra.Numer,2];
  spinedit11.MinValue:=1;
  spinedit11.MaxValue:=losowan;
  spinedit11.Value:=help1;
  spinedit11.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));

  if pamietaj then kolor3:=TColor(wczytaj_opcje('mapa','mapa4_kolor_'+prefiks_gry,Integer(clRed)));

  help1:=wspolne[Gra.Numer,1];
  help2:=wspolne[Gra.Numer,2];
  spinedit12.MinValue:=1;
  spinedit12.MaxValue:=losowan;
  spinedit13.MinValue:=1;
  spinedit13.MaxValue:=losowan;

  if pamietaj then
   begin
    help1:=wczytaj_opcje('mapa','mapa4_od_'+prefiks_gry,1);
    help2:=wczytaj_opcje('mapa','mapa4_do_'+prefiks_gry,losowan);
    if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
   end;

  spinedit12.Value:=help1;
  spinedit13.Value:=help2;
  spinedit12.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit13.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));
 end;

// mapa 5
help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit4.MinValue:=1;
spinedit4.MaxValue:=losowan;
spinedit5.MinValue:=1;
spinedit5.MaxValue:=losowan;

if pamietaj then
 begin
  help1:=wczytaj_opcje('mapa','mapa5_od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('mapa','mapa5_do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

spinedit4.Value:=help1;
spinedit5.Value:=help2;
spinedit4.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
spinedit5.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

// mapa 6
if pamietaj then
 begin
  help1:=wczytaj_opcje('mapa','mapa6_srednia_'+prefiks_gry,help1);
  if help1=1 then radiobutton1.Checked:=true else radiobutton2.Checked;
 end;


help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

if pamietaj then
 begin
  help1:=wczytaj_opcje('mapa','mapa6_od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('mapa','mapa6_do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

spinedit1.Value:=help1;
spinedit2.Value:=help2;
spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));


// reszta
if pamietaj then PageControl1.ActivePageIndex:=wczytaj_opcje('mapa','zakladka_'+prefiks_gry,0);

czy_mapa:=false;
czy_mapa2:=false;

radiobutton1.Checked;
spinedit3.Enabled:=false;
end;

procedure TForm9.pokaz_mape(od_, do_: integer);
var
help1,help2,help3,help4:integer;
begin
help2:=od_+34;
//czysc_mape;
image1.Canvas.Pen.Color:=clblue;
image1.Canvas.brush.Color:=clblue;
image1.Canvas.Brush.Style:=bssolid;
help4:=0;
for help1:=od_ to help2 do
 begin
  help4:=help4+1;
  for help3:=1 to 20 do rysuj_liczbe(losowanie[help1,help3],help4);
 end;

image1.Repaint;
end;

procedure TForm9.rysuj_liczbe(liczba, wiersz: integer);
var
x,y:integer;
begin
x:=liczba*7+44;
y:=wiersz*7+1;
if liczba<>0 then
 with image1.Canvas do
  begin
   begin
    rectangle(x,y,x+6,y+6);
   end;
  end;
end;

procedure TForm9.SpeedButton3Click(Sender: TObject);
begin
if Gra.Numer=1 then pokaz_los(spinedit8.Value);
if Gra.Numer=2 then pokaz_los_dl(spinedit8.value);
if Gra.Numer=3 then pokaz_los_el(spinedit8.value);
end;

procedure TForm9.SpeedButton2Click(Sender: TObject);
var
help1,help2,help3:integer;
begin
image1.Canvas.Pen.Color:=kolor2;
image1.Canvas.brush.Color:=kolor2;
image1.Canvas.Brush.Style:=bssolid;

if losowan<=ostatnich then help3:=1 else help3:=losowan-ostatnich+1;

  for help1:=help3 to losowan do
   for help2:=1 to 20 do rysuj_liczbe(losowanie[help1,help2],help1-help3);
if checkbox2.Checked then
 begin
  image1.canvas.pen.color:=clsilver;
 end else image1.canvas.pen.color:=clwhite;

for help1:=1 to 80 do
 begin
  image1.canvas.MoveTo(43+(help1*7),0);
  image1.canvas.LineTo(43+(help1*7),image1.Height);
 end;
end;

procedure TForm9.czysc_mape;
var
help1:integer;
begin
image1.Canvas.pen.color:=clSilver;
image1.Canvas.Rectangle(0,0,576,264);
with image1.Canvas do
 begin
  pen.Color:=clBlack;
  pen.Style:=psSolid;
  rectangle(8,10,569,256);
  pen.color:=clblack;
  help1:=10;
  repeat
   help1:=help1+7;
   moveto(9,help1);
   lineto(568,help1);
  until help1=255;
  help1:=10;
  repeat
   help1:=help1+35;
   moveto(3,help1);
   lineto(10,help1);
  until help1=255;
  help1:=-27;
  pen.color:=clgray;
  repeat
   help1:=help1+35;
   moveto(help1,255);
   lineto(help1,3);
  until help1=568;
  moveto(3,10);
  lineto(9,10);
 end;

end;



procedure TForm9.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm9.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm9.SpeedButton8Click(Sender: TObject);
var help1:byte;
begin
liczby_dla_opcji:=2;
Application.CreateForm(TForm16,form16);
form16.Showmodal;
label35.caption:=IntToStr(ilosc_liczb1);
label33.Caption:='';
for help1:=1 to ilosc_liczb1 do label33.caption:=(label33.caption+IntToStr(mapa_liczby[help1])+', ');
if (ilosc_liczb1>1) and (ilosc_liczb1<11) then czy_mapa:=true else czy_mapa:=false;
if (ilosc_liczb1>1) and (ilosc_liczb1<11) then
 begin
  if spinedit3.Value>ilosc_liczb1 then spinedit3.Value:=ilosc_liczb1;
  spinedit3.MaxValue:=ilosc_liczb1;
 end;
end;

procedure TForm9.SpeedButton7Click(Sender: TObject);
begin
if czy_mapa=true then
 begin
  if spinedit1.Value<spinedit2.Value then pokaz_mape2(spinedit1.value,spinedit2.value);
  if spinedit1.Value>spinedit2.Value then pokaz_mape2(spinedit2.value,spinedit1.value);
 end;
end;

procedure TForm9.pokaz_mape2(od_, do_: word);
var
help1,help2,help3,help4,help5,trafionych1,trafionych,max,min:word;
srednia:real;
begin
//help2:=0;
//srednia:=0.5;
trafionych1:=0;
max:=0;
min:=ilosc_liczb1;

for help1:=1 to losowan do
 for help2:=0 to 24 do stringgrid2.cells[help2,help1]:='';

for help1:=od_ to do_ do
 begin
  trafionych:=0;
  for help2:=1 to ilosc_liczb1 do if wylosowane[help1,mapa_liczby[help2]] {czy_byla_liczba(mapa_liczby[help2],help1)=true} then trafionych:=trafionych+1;
  if trafionych>max then max:=trafionych;
  if trafionych<min then min:=trafionych;
  trafionych1:=trafionych1+trafionych;
 end;

label38.Caption:=IntToStr(max);
label39.Caption:=IntToStr(min);

srednia:=trafionych1/(do_-od_+1);
label26.caption:=FormatFloat('0.00',srednia);
label32.caption:=IntToStr(trafionych1);
if radiobutton2.Checked then srednia:=spinedit3.Value;
help2:=0;

for help1:=od_ to do_ do
 begin
  help2:=help2+1;
  trafionych1:=0;
  for help3:=1 to ilosc_liczb1 do if wylosowane[help1,mapa_liczby[help3]] {czy_byla_liczba(mapa_liczby[help3],help1)=true} then trafionych1:=trafionych1+1;
  if trafionych1<>0 then
   begin
    stringgrid2.cells[12,help2]:='+';
    if trafionych1<srednia then
     begin
      stringgrid2.cells[11,help2]:=IntToStr(trafionych1);
      help5:=0;
      for help4:=1 to ilosc_liczb1 do if wylosowane[help1,mapa_liczby[help4]] then
       begin
        help5:=help5+1;
        stringgrid2.cells[11-help5,help2]:=IntToStr(mapa_liczby[help4]);
       end;
     end
      else
       begin
        stringgrid2.cells[13,help2]:=IntToStr(trafionych1);
        stringgrid2.cells[24,help2]:=IntToStr(oczekiwal2(ilosc_liczb1,trafionych1,od_,help1-1));
        help5:=0;
        for help4:=1 to ilosc_liczb1 do if wylosowane[help1,mapa_liczby[help4]] then
         begin
          help5:=help5+1;
          stringgrid2.cells[13+help5,help2]:=IntToStr(mapa_liczby[help4]);
         end;
       end;
   end else stringgrid2.cells[12,help2]:='-';
  stringgrid2.cells[0,help2]:=IntToStr(help1);
 end;

stringgrid2.rowcount:=help2+1;
if stringgrid2.rowcount>10 then stringgrid2.TopRow:=help2-9;

speedbutton20.Enabled:=true;
end;


procedure TForm9.RadioButton1Click(Sender: TObject);
begin
if radiobutton1.Checked then spinedit3.Enabled:=false;
end;

procedure TForm9.RadioButton2Click(Sender: TObject);
begin
if radiobutton2.Checked then spinedit3.Enabled:=true;
end;

procedure TForm9.SpinEdit4Change(Sender: TObject);
begin
spinedit4.Hint:=(IntToStr(losowanie[spinedit4.Value,21])+'.'+IntToStr(losowanie[spinedit4.Value,22])+'.'+IntToStr(losowanie[spinedit4.Value,23]));
end;

procedure TForm9.SpinEdit5Change(Sender: TObject);
begin
spinedit5.Hint:=(IntToStr(losowanie[spinedit5.Value,21])+'.'+IntToStr(losowanie[spinedit5.Value,22])+'.'+IntToStr(losowanie[spinedit5.Value,23]));
end;

procedure TForm9.pokaz_mape3(od_, do_: word);
var
help1,help2,help3,trafionych:word;
begin
help2:=0;
for help1:=1 to losowan do
 for help3:=0 to 22 do stringgrid3.cells[help3,help1]:='';

for help1:=od_ to do_ do
 begin
  help2:=help2+1;
  trafionych:=0;
  for help3:=1 to ilosc_liczb2 do if wylosowane[help1,mapa_liczby2[help3]] then
   begin
    stringgrid3.cells[help3,help2]:=IntToStr(mapa_liczby2[help3]);
    trafionych:=trafionych+1;
   end;
  stringgrid3.cells[0,help2]:=IntToStr(help1);
  stringgrid3.cells[21,help2]:=IntToStr(trafionych);
  if (trafionych<>0) and (help1>1) then stringgrid3.cells[22,help2]:=IntToStr(oczekiwal(0,ilosc_liczb2,trafionych,od_,help1-1)) else stringgrid3.cells[22,help2]:='0';
 end;

stringgrid3.rowcount:=help2+1;
if stringgrid3.rowcount>10 then stringgrid3.TopRow:=help2-9;
speedbutton21.Enabled:=true;
end;

procedure TForm9.SpeedButton9Click(Sender: TObject);
var help1:byte;
begin
liczby_dla_opcji:=3;
Application.CreateForm(TForm16,form16);
form16.Showmodal;
for help1:=1 to ilosc_liczb2 do stringgrid3.cells[help1,0]:=IntToStr(mapa_liczby2[help1]);
for help1:=ilosc_liczb2+1 to 20 do stringgrid3.cells[help1,0]:='?';
if (ilosc_liczb2>1) and (ilosc_liczb1<21) then czy_mapa2:=true else czy_mapa2:=false;

end;

procedure TForm9.SpeedButton4Click(Sender: TObject);
begin
if czy_mapa2=true then
 begin
  if spinedit4.Value<spinedit5.Value then pokaz_mape3(spinedit4.value,spinedit5.value);
  if spinedit4.Value>spinedit5.Value then pokaz_mape3(spinedit5.value,spinedit4.value);
 end;
end;

procedure TForm9.tworz_mape(ilosc,start:word);
var
help1,help2,help3,help4,help5,ilosc2:integer;
begin
if losowan<=ostatnich then image1.Height:=losowan*7 else image1.Height:=ostatnich*7;
image1.Width:=620;
image1.Canvas.Pen.Color:=clsilver;
help2:=0;
help1:=15;

if losowan<=ostatnich then help4:=0 else help4:=losowan-ostatnich;

with image1.Canvas do
 begin
  repeat
   inc(help2);
   help1:=help1+35;
   moveto(help1,0);
   lineto(help1,image1.Height);
  until help2=ilosc_liczb_gry;

  help1:=-7;
  help2:=0;
  if losowan<=ostatnich then ilosc2:=1+losowan else ilosc2:=1+ostatnich;
  repeat
   inc(help2);
   help1:=help1+7;
   if help1 mod 35 = 0 then
    begin
     help3:=45;
    // textout(20,help1,'____');
    // pen.Color:=clblack;
     help5:=help2+help4;     {
     if (help2+help4<10) then textout(38,help1,IntToStr(help2+help4));
     if (help2+help4<100) and (help2>9) then textout(32,help1,IntToStr(help2+help4));
     if (help2+help4<1000) and (help2>99) then textout(26,help1,IntToStr(help2+help4));
     if (help2+help4>999) then textout(20,help1,IntToStr(help2+help4));
    // pen.Color:=clsilver;   }
     if (help5<10) then textout(38,help1,IntToStr(help5)) else
      if (help5<100) then textout(32,help1,IntToStr(help5)) else
       if (help5<1000) then textout(26,help1,IntToStr(help5)) else textout(20,help1,IntToStr(help5));

    end else help3:=50;
   moveto(help3,help1);
   lineto(611,help1);
  until help2=ilosc2+2;
 end;

//image1.Height:=image1.Height+10;


end;




procedure TForm9.SpinEdit6Change(Sender: TObject);
begin
spinedit6.Hint:=(IntToStr(losowanie[spinedit6.Value,21])+'.'+IntToStr(losowanie[spinedit6.Value,22])+'.'+IntToStr(losowanie[spinedit6.Value,23]));

end;

procedure TForm9.SpinEdit7Change(Sender: TObject);
begin
spinedit7.Hint:=(IntToStr(losowanie[spinedit7.Value,21])+'.'+IntToStr(losowanie[spinedit7.Value,22])+'.'+IntToStr(losowanie[spinedit7.Value,23]));

end;

procedure TForm9.tworz_mape2;
var
help1,help2,help3:integer;
begin
with image2.Canvas do
 begin
  pen.color:=clblack;
  pen.style:=pssolid;
  brush.Color:=clwhite;
  brush.style:=bssolid;
  rectangle(0,0,301,300);

  help1:=0;
  help2:=-30;
   repeat
    inc(help1);
    help2:=help2+30;
    moveto(0,help2);
    lineto(300,help2);
   until help1=9;
  help1:=0;
  help2:=-30;
   repeat
    inc(help1);
    help2:=help2+30;
    moveto(help2,0);
    lineto(help2,300);
   until help1=11;
  font.Size:=14;
  //help1:=0;
  //help2:=-14;
  help3:=0;
  for help1:=1 to 8 do
   for help2:=1 to 10 do
    begin
     inc(help3);
     textout(help2*30-26,help1*30-26,IntToStr(help3));
    end;
 end;

end;

procedure TForm9.SpinEdit8Change(Sender: TObject);
begin
spinedit8.Hint:=(IntToStr(losowanie[spinedit8.Value,21])+'.'+IntToStr(losowanie[spinedit8.Value,22])+'.'+IntToStr(losowanie[spinedit8.Value,23]));

end;

procedure TForm9.pokaz_los(nr: word);
var
help1,help2,help3,help4,i,j,temp1,temp2,temp3:integer;
liczba:array[1..80,1..3] of word;
kol1:tcolor;
begin
tworz_mape2;
image2.Canvas.Pen.Color:=kolor1;
image2.Canvas.brush.Color:=kolor1;
image2.Canvas.Brush.Style:=bssolid;

if checkbox3.Checked then
 begin
  for help1:=1 to 80 do
   begin
    liczba[help1,1]:=help1;
    liczba[help1,2]:=0;
    liczba[help1,3]:=0;
   end;

  for help1:=nr-spinedit14.Value to nr-1 do for help2:=1 to 20 do inc(liczba[losowanie[help1,help2],2]);

  for help1:=1 to 80 do
   begin
    help2:=-1;
    help3:=nr;
    help4:=0;
     repeat
      inc(help2);
      dec(help3);
       if wylosowane[help3,liczba[help1,1]] then inc(help4);
     until (help3=nr-spinedit14.Value) or (help4=1);
    liczba[help1,3]:=help2;
   end;


    for i:=2 to 80 do
     begin
      for j:=80 DownTo i Do
       if liczba[j-1,2]<liczba[j,2] Then
        begin
         temp1:=liczba[j-1,1];
         temp2:=liczba[j-1,2];
         temp3:=liczba[j-1,3];
         liczba[j-1,1]:=liczba[j,1];
         liczba[j-1,2]:=liczba[j,2];
         liczba[j-1,3]:=liczba[j,3];
         liczba[j,1]:=temp1;
         liczba[j,2]:=temp2;
         liczba[j,3]:=temp3;
         End;
     end;

  for help1:=1 to 20 do
   begin
    help2:=losowanie[nr,help1];
    help3:=0;
     for help4:=1 to 80 do if liczba[help4,1]=help2 then help3:=help4;

    kol1:=clwhite;
    if (help3<27) and (liczba[help3,3]>3) then kol1:=cllime;   //pewne
    if (help3<41) and (liczba[help3,3]<4) then kol1:=clred;    //gorace
    if (help3>40) and (liczba[help3,3]>3) then kol1:=clyellow;   //zimne
    if kol1=clwhite then kol1:=claqua;                       //oczekiwane



    image2.Canvas.Pen.Color:=kol1;
    image2.Canvas.brush.Color:=kol1;
    zaznacz_liczbe(help2);

    //showmessage('Liczba: '+IntToStr(help2)+' -> G: '+IntToStr(liczba[help3,2])+', O: '+IntToStr(liczba[help3,3]));
   end;

  image2.Canvas.Pen.Color:=kolor1;
  image2.Canvas.brush.Color:=kolor1;
 end else
  begin
   for help1:=1 to 20 do zaznacz_liczbe(losowanie[nr,help1]);
  end;

if checkbox1.Checked then rysuj_siatke_ml;

end;

procedure TForm9.zaznacz_liczbe(liczba: byte);
var
x,y,help1,help2:integer;
begin
image2.Canvas.Brush.Style:=bssolid;

help2:=(liczba mod 10);
help1:= liczba div 10;


if help2<>0 then x:=help2-1 else x:=9;
y:=help1;
if x=9 then y:=y-1;


image2.Canvas.Rectangle(x*30+1,y*30+1,x*30+30,y*30+30);

  image2.canvas.pen.color:=clblack;
  image2.canvas.pen.style:=pssolid;
  image2.canvas.brush.Color:=clwhite;
  image2.canvas.brush.style:=bsclear;
  image2.canvas.textout((x+1)*30-26,(y+1)*30-26,IntToStr(liczba));

image2.Canvas.Pen.Color:=kolor1;
image2.Canvas.brush.Color:=kolor1;
image2.Canvas.Brush.Style:=bssolid;
end;

procedure TForm9.SpeedButton10Click(Sender: TObject);
begin
form1.ColorDialog1.color:=kolor1;
if form1.ColorDialog1.Execute then kolor1:=form1.ColorDialog1.color;
end;

procedure TForm9.SpeedButton11Click(Sender: TObject);
begin
form1.ColorDialog1.color:=kolor2;
if form1.ColorDialog1.Execute then kolor2:=form1.ColorDialog1.color;
end;

function TForm9.oczekuje_liczba(liczba, do_: integer): integer;
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

function TForm9.oczekuje_pozycja(pozycja, do_: integer): integer;
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

function TForm9.oczekiwal(zestaw, ilosc, naile, od_, do_: integer): integer;
var
help5,help2,help3,help4:integer;
begin
//help1:=-1;
help3:=do_+1;
help5:=0;
repeat
 help3:=help3-1;
 help4:=0;
 for help2:=1 to ilosc do if wylosowane[help3,mapa_liczby2[help2]] then inc(help4);
 if help4<naile then inc(help5);
until (help4>=naile) or (help3=od_);

oczekiwal:=help5;
end;

procedure TForm9.tworz_mape_dl;
var
help1,help2,help3:integer;
begin
image2.Width:=211;
image2.Height:=210;
with image2.Canvas do
 begin
  pen.color:=clblack;
  pen.style:=pssolid;
  brush.Color:=clwhite;
  brush.style:=bssolid;
  rectangle(0,0,211,210);

  help1:=0;
  help2:=-30;
   repeat
    inc(help1);
    help2:=help2+30;
    moveto(0,help2);
    lineto(210,help2);
   until help1=6;
  help1:=0;
  help2:=-30;
  moveto(0,180);
  lineto(210,180);
   repeat
    inc(help1);
    help2:=help2+30;
    moveto(help2,0);
    lineto(help2,210);
   until help1=8;
  font.Size:=14;
  //help1:=0;
  //help2:=-14;
  help3:=0;
  for help1:=1 to 7 do
   for help2:=1 to 7 do
    begin
     inc(help3);
     textout(help2*30-26,help1*30-26,IntToStr(help3));
    end;
 end;

end;

procedure TForm9.tworz_mape_el;
var
help1,help2,help3:integer;
begin
image2.Width:=211;
image2.Height:=180;
with image2.Canvas do
 begin
  pen.color:=clblack;
  pen.style:=pssolid;
  brush.Color:=clwhite;
  brush.style:=bssolid;
  rectangle(0,0,211,180);

  help1:=0;
  help2:=-30;
   repeat
    inc(help1);
    help2:=help2+30;
    moveto(0,help2);
    lineto(210,help2);
   until help1=5;
  help1:=0;
  help2:=-30;
  moveto(0,150);
  lineto(210,150);
   repeat
    inc(help1);
    help2:=help2+30;
    moveto(help2,0);
    lineto(help2,210);
   until help1=7;
  font.Size:=14;
  //help1:=0;
  //help2:=-14;
  help3:=0;
  for help1:=1 to 6 do
   for help2:=1 to 7 do
    begin
     inc(help3);
     textout(help2*30-26,help1*30-26,IntToStr(help3));
    end;
 end;

end;

procedure TForm9.pokaz_los_dl(nr: word);
var
help1,help2,help3,help4,i,j,temp1,temp2,temp3:integer;
liczba:array[1..49,1..3] of word;
kol1:tcolor;
begin
tworz_mape_dl;
image2.Canvas.Pen.Color:=kolor1;
image2.Canvas.brush.Color:=kolor1;
image2.Canvas.Brush.Style:=bssolid;

kol1:=kolor1;

if checkbox3.Checked then
 begin
  for help1:=1 to 49 do
   begin
    liczba[help1,1]:=help1;
    liczba[help1,2]:=0;
    liczba[help1,3]:=0;
   end;

  for help1:=nr-spinedit14.Value to nr-1 do for help2:=1 to 6 do inc(liczba[losowanie[help1,help2],2]);

  for help1:=1 to 49 do
   begin
    help2:=-1;
    help3:=nr;
    help4:=0;
     repeat
      inc(help2);
      dec(help3);
       if wylosowane[help3,liczba[help1,1]] then inc(help4);
     until (help3=nr-spinedit14.Value) or (help4=1);
    liczba[help1,3]:=help2;
   end;


    for i:=2 to 49 do
     begin
      for j:=49 DownTo i Do
       if liczba[j-1,2]<liczba[j,2] Then
        begin
         temp1:=liczba[j-1,1];
         temp2:=liczba[j-1,2];
         temp3:=liczba[j-1,3];
         liczba[j-1,1]:=liczba[j,1];
         liczba[j-1,2]:=liczba[j,2];
         liczba[j-1,3]:=liczba[j,3];
         liczba[j,1]:=temp1;
         liczba[j,2]:=temp2;
         liczba[j,3]:=temp3;
         End;
     end;

  for help1:=1 to 6 do
   begin
    help2:=losowanie[nr,help1];
    help3:=0;
     for help4:=1 to 49 do if liczba[help4,1]=help2 then help3:=help4;

    kolor1:=clwhite;
    if (help3<16) and (liczba[help3,3]>7) then kolor1:=cllime;   //pewne
    if (help3<25) and (liczba[help3,3]<8) then kolor1:=clred;    //gorace
    if (help3>24) and (liczba[help3,3]>7) then kolor1:=clyellow;   //oczekiwane
    if kolor1=clwhite then kolor1:=claqua;                       //zimne



    image2.Canvas.Pen.Color:=kol1;
    image2.Canvas.brush.Color:=kol1;
    zaznacz_liczbe_dl(help2);

    //showmessage('Liczba: '+IntToStr(help2)+' -> G: '+IntToStr(liczba[help3,2])+', O: '+IntToStr(liczba[help3,3]));
   end;

  kolor1:=kol1;
 end else
  begin
   for help1:=1 to 6 do zaznacz_liczbe_dl(losowanie[nr,help1]);
  end;
if checkbox1.Checked then rysuj_siatke_dl;
end;

procedure TForm9.pokaz_los_el(nr: word);
var
help1,help2,help3,help4,i,j,temp1,temp2,temp3:integer;
liczba:array[1..42,1..3] of word;
kol1:tcolor;
begin
tworz_mape_el;
image2.Canvas.Pen.Color:=kolor1;
image2.Canvas.brush.Color:=kolor1;
image2.Canvas.Brush.Style:=bssolid;
kol1:=kolor1;

if checkbox3.Checked then
 begin
  for help1:=1 to 42 do
   begin
    liczba[help1,1]:=help1;
    liczba[help1,2]:=0;
    liczba[help1,3]:=0;
   end;

  for help1:=nr-spinedit14.Value to nr-1 do for help2:=1 to 5 do inc(liczba[losowanie[help1,help2],2]);

  for help1:=1 to 42 do
   begin
    help2:=-1;
    help3:=nr;
    help4:=0;
     repeat
      inc(help2);
      dec(help3);
       if wylosowane[help3,liczba[help1,1]] then inc(help4);
     until (help3=nr-spinedit14.Value) or (help4=1);
    liczba[help1,3]:=help2;
   end;


    for i:=2 to 42 do
     begin
      for j:=42 DownTo i Do
       if liczba[j-1,2]<liczba[j,2] Then
        begin
         temp1:=liczba[j-1,1];
         temp2:=liczba[j-1,2];
         temp3:=liczba[j-1,3];
         liczba[j-1,1]:=liczba[j,1];
         liczba[j-1,2]:=liczba[j,2];
         liczba[j-1,3]:=liczba[j,3];
         liczba[j,1]:=temp1;
         liczba[j,2]:=temp2;
         liczba[j,3]:=temp3;
         End;
     end;

  for help1:=1 to 5 do
   begin
    help2:=losowanie[nr,help1];
    help3:=0;
     for help4:=1 to 42 do if liczba[help4,1]=help2 then help3:=help4;

    kolor1:=clwhite;
    if (help3<15) and (liczba[help3,3]>7) then kolor1:=cllime;   //pewne
    if (help3<22) and (liczba[help3,3]<8) then kolor1:=clred;    //gorace
    if (help3>21) and (liczba[help3,3]>7) then kolor1:=clyellow;   //oczekiwane
    if kolor1=clwhite then kolor1:=claqua;                       //zimne


    zaznacz_liczbe_el(help2);

    //showmessage('Liczba: '+IntToStr(help2)+' -> G: '+IntToStr(liczba[help3,2])+', O: '+IntToStr(liczba[help3,3]));
   end;
  kolor1:=kol1;
 end else
  begin
   for help1:=1 to 5 do zaznacz_liczbe_el(losowanie[nr,help1]);
  end;
  if checkbox1.Checked then rysuj_siatke_el;
end;

procedure TForm9.zaznacz_liczbe_dl(liczba: byte);
var
x,y,help1,help2:integer;
begin
image2.Canvas.Pen.Color:=kolor1;
image2.Canvas.brush.Color:=kolor1;
image2.Canvas.Brush.Style:=bssolid;
help2:=(liczba mod 7);
help1:= liczba div 7;


if help2<>0 then x:=help2-1 else x:=6;
y:=help1;
if x=6 then y:=y-1;


image2.Canvas.Rectangle(x*30+1,y*30+1,x*30+30,y*30+30);

  image2.canvas.pen.color:=clblack;
  image2.canvas.pen.style:=pssolid;
  image2.canvas.brush.Color:=clwhite;
  image2.canvas.brush.style:=bsclear;
  image2.canvas.textout((x+1)*30-26,(y+1)*30-26,IntToStr(liczba));

image2.Canvas.Pen.Color:=kolor1;
image2.Canvas.brush.Color:=kolor1;
image2.Canvas.Brush.Style:=bssolid;

end;

procedure TForm9.zaznacz_liczbe_el(liczba: byte);
var
x,y,help1,help2:integer;
begin
image2.Canvas.Pen.Color:=kolor1;
image2.Canvas.brush.Color:=kolor1;
image2.Canvas.Brush.Style:=bssolid;

help2:=(liczba mod 7);
help1:= liczba div 7;


if help2<>0 then x:=help2-1 else x:=6;
y:=help1;
if x=6 then y:=y-1;


image2.Canvas.Rectangle(x*30+1,y*30+1,x*30+30,y*30+30);

  image2.canvas.pen.color:=clblack;
  image2.canvas.pen.style:=pssolid;
  image2.canvas.brush.Color:=clwhite;
  image2.canvas.brush.style:=bsclear;
  image2.canvas.textout((x+1)*30-26,(y+1)*30-26,IntToStr(liczba));

image2.Canvas.Pen.Color:=kolor1;
image2.Canvas.brush.Color:=kolor1;
image2.Canvas.Brush.Style:=bssolid;
end;

procedure TForm9.SpinEdit9Change(Sender: TObject);
begin
spinedit9.Hint:=(IntToStr(losowanie[spinedit9.Value,21])+'.'+IntToStr(losowanie[spinedit9.Value,22])+'.'+IntToStr(losowanie[spinedit9.Value,23]));

end;

procedure TForm9.SpinEdit10Change(Sender: TObject);
begin
spinedit10.Hint:=(IntToStr(losowanie[spinedit10.Value,21])+'.'+IntToStr(losowanie[spinedit10.Value,22])+'.'+IntToStr(losowanie[spinedit10.Value,23]));
end;

procedure TForm9.pokaz_wiele_los_ml(od_, do_: integer);
var
help1,help2,help3:integer;
liczby:array[1..80]of integer;
wspolczynnik:real;
kol:tcolor;
begin
kol:=kolor1;
kolor1:=rgb(0,0,255);
for help1:=1 to 80 do liczby[help1]:=0;

for help1:=od_ to do_ do for help2:=1 to 20 do inc(liczby[losowanie[help1,help2]]);
help2:=0;
for help1:=1 to 80 do if liczby[help1]>help2 then help2:=liczby[help1];
help3:=help2;
for help1:=1 to 80 do if liczby[help1]<help3 then help3:=liczby[help1];
wspolczynnik:=255/(help2-help3);

for help1:=1 to 80 do
 begin
  kolor1:=rgb(255-round(wspolczynnik*(liczby[help1]-help3)),255-round(wspolczynnik*(liczby[help1]-help3)),255-round(wspolczynnik*(liczby[help1]-help3)));
  image2.Canvas.Pen.Color:=kolor1;
  image2.Canvas.brush.Color:=kolor1;
  zaznacz_liczbe(help1);
 end;

kolor1:=kol;
end;

procedure TForm9.SpeedButton12Click(Sender: TObject);
begin
if spinedit9.value<spinedit10.Value then
 begin
  if Gra.Numer=1 then pokaz_wiele_los_ml(spinedit9.value,spinedit10.value);
  if Gra.Numer=2 then pokaz_wiele_los_dl(spinedit9.value,spinedit10.value);
  if Gra.Numer=3 then pokaz_wiele_los_el(spinedit9.value,spinedit10.value);
 end;

if spinedit9.value>spinedit10.Value then
 begin
  if Gra.Numer=1 then pokaz_wiele_los_ml(spinedit10.value,spinedit9.value);
  if Gra.Numer=2 then pokaz_wiele_los_dl(spinedit10.value,spinedit9.value);
  if Gra.Numer=3 then pokaz_wiele_los_el(spinedit10.value,spinedit9.value);
 end;

end;

procedure TForm9.pokaz_wiele_los_dl(od_, do_: integer);
var
help1,help2,help3:integer;
liczby:array[1..49]of integer;
wspolczynnik:real;
kol:tcolor;
begin
kol:=kolor1;
kolor1:=rgb(0,0,255);
for help1:=1 to 49 do liczby[help1]:=0;

for help1:=od_ to do_ do for help2:=1 to 6 do inc(liczby[losowanie[help1,help2]]);
help2:=0;
for help1:=1 to 49 do if liczby[help1]>help2 then help2:=liczby[help1];
help3:=help2;
for help1:=1 to 49 do if liczby[help1]<help3 then help3:=liczby[help1];
wspolczynnik:=255/(help2-help3);

for help1:=1 to 49 do
 begin
  kolor1:=rgb(255-round(wspolczynnik*(liczby[help1]-help3)),255-round(wspolczynnik*(liczby[help1]-help3)),255-round(wspolczynnik*(liczby[help1]-help3)));
  zaznacz_liczbe_dl(help1);
 end;

kolor1:=kol;

end;

procedure TForm9.pokaz_wiele_los_el(od_, do_: integer);
var
help1,help2,help3:integer;
liczby:array[1..42]of integer;
wspolczynnik:real;
kol:tcolor;
begin
kol:=kolor1;
kolor1:=rgb(0,0,255);
for help1:=1 to 42 do liczby[help1]:=0;

for help1:=od_ to do_ do for help2:=1 to 5 do inc(liczby[losowanie[help1,help2]]);
help2:=0;
for help1:=1 to 42 do if liczby[help1]>help2 then help2:=liczby[help1];
help3:=help2;
for help1:=1 to 42 do if liczby[help1]<help3 then help3:=liczby[help1];
wspolczynnik:=255/(help2-help3);

for help1:=1 to 42 do
 begin
  kolor1:=rgb(255-round(wspolczynnik*(liczby[help1]-help3)),255-round(wspolczynnik*(liczby[help1]-help3)),255-round(wspolczynnik*(liczby[help1]-help3)));
  zaznacz_liczbe_el(help1);
 end;

kolor1:=kol;

end;

procedure TForm9.tworz_mapy_ml;
var
help1,help2,help3:integer;
begin
image3.Width:=401;
image3.Height:=81;
with image3.Canvas do
 begin
  pen.color:=clblack;
  pen.style:=pssolid;
  brush.Color:=clwhite;
  brush.style:=bssolid;
  rectangle(0,0,401,81);

  help1:=0;
  help2:=-20;
   repeat
    inc(help1);
    help2:=help2+20;
    moveto(0,help2);
    lineto(400,help2);
   until help1=4;
  help1:=0;
  help2:=-20;
  {moveto(0,150);
  lineto(210,150);}
   repeat
    inc(help1);
    help2:=help2+20;
    moveto(help2,0);
    lineto(help2,400);
   until help1=20;
  font.Size:=8;
  //help1:=0;
  //help2:=-14;
  help3:=0;
  for help1:=1 to 4 do
   for help2:=1 to 20 do
    begin
     inc(help3);
     textout(help2*20-16,help1*20-16,IntToStr(help3));
    end;
 end;

image4.Width:=321;
image4.Height:=101;
with image4.Canvas do
 begin
  pen.color:=clblack;
  pen.style:=pssolid;
  brush.Color:=clwhite;
  brush.style:=bssolid;
  rectangle(0,0,321,101);

  help1:=0;
  help2:=-20;
   repeat
    inc(help1);
    help2:=help2+20;
    moveto(0,help2);
    lineto(400,help2);
   until help1=5;
  help1:=0;
  help2:=-20;
  {moveto(0,150);
  lineto(210,150);}
   repeat
    inc(help1);
    help2:=help2+20;
    moveto(help2,0);
    lineto(help2,400);
   until help1=16;
  font.Size:=8;
  //help1:=0;
  //help2:=-14;
  help3:=0;
  for help1:=1 to 5 do
   for help2:=1 to 16 do
    begin
     inc(help3);
     textout(help2*20-16,help1*20-16,IntToStr(help3));
    end;
 end;

end;

procedure TForm9.SpinEdit11Change(Sender: TObject);
begin
spinedit11.Hint:=(IntToStr(losowanie[spinedit11.Value,21])+'.'+IntToStr(losowanie[spinedit11.Value,22])+'.'+IntToStr(losowanie[spinedit11.Value,23]));
end;

procedure TForm9.SpeedButton13Click(Sender: TObject);
begin
form1.ColorDialog1.color:=kolor3;
if form1.ColorDialog1.Execute then kolor3:=form1.ColorDialog1.color;
end;

procedure TForm9.SpinEdit12Change(Sender: TObject);
begin
spinedit12.Hint:=(IntToStr(losowanie[spinedit12.Value,21])+'.'+IntToStr(losowanie[spinedit12.Value,22])+'.'+IntToStr(losowanie[spinedit12.Value,23]));
end;

procedure TForm9.SpinEdit13Change(Sender: TObject);
begin
spinedit13.Hint:=(IntToStr(losowanie[spinedit13.Value,21])+'.'+IntToStr(losowanie[spinedit13.Value,22])+'.'+IntToStr(losowanie[spinedit13.Value,23]));
end;

procedure TForm9.pokaz_los_ml(nr: word);
var
help1:integer;
begin
image3.Canvas.Pen.Color:=kolor3;
image3.Canvas.brush.Color:=kolor3;
image3.Canvas.Brush.Style:=bssolid;
image4.Canvas.Pen.Color:=kolor3;
image4.Canvas.brush.Color:=kolor3;
image4.Canvas.Brush.Style:=bssolid;
tworz_mapy_ml;
for help1:=1 to 20 do zaznacz_liczbe_ml(losowanie[nr,help1]);
end;

procedure TForm9.zaznacz_liczbe_ml(liczba: byte);
var
x,y,help1,help2:integer;
begin
image3.Canvas.Pen.Color:=kolor3;
image3.Canvas.brush.Color:=kolor3;
image3.Canvas.Brush.Style:=bssolid;

image4.Canvas.Pen.Color:=kolor3;
image4.Canvas.brush.Color:=kolor3;
image4.Canvas.Brush.Style:=bssolid;

help2:=(liczba mod 20);
help1:=liczba div 20;
if help2<>0 then x:=help2-1 else x:=19;
y:=help1;
if x=19 then y:=y-1;
image3.Canvas.Rectangle(x*20+1,y*20+1,x*20+20,y*20+20);
image3.canvas.pen.color:=clblack;
image3.canvas.pen.style:=pssolid;
image3.canvas.brush.Color:=clwhite;
image3.canvas.brush.style:=bsclear;
image3.canvas.textout((x+1)*20-16,(y+1)*20-16,IntToStr(liczba));

help2:=(liczba mod 16);
help1:=liczba div 16;
if help2<>0 then x:=help2-1 else x:=15;
y:=help1;
if x=15 then y:=y-1;
image4.Canvas.Rectangle(x*20+1,y*20+1,x*20+20,y*20+20);
image4.canvas.pen.color:=clblack;
image4.canvas.pen.style:=pssolid;
image4.canvas.brush.Color:=clwhite;
image4.canvas.brush.style:=bsclear;
image4.canvas.textout((x+1)*20-16,(y+1)*20-16,IntToStr(liczba));
end;

procedure TForm9.SpeedButton14Click(Sender: TObject);
begin
pokaz_los_ml(spinedit11.Value);
end;

procedure TForm9.pokaz_wiele_los_ml2(od_, do_: integer);
var
help1,help2,help3:integer;
liczby:array[1..80]of integer;
wspolczynnik:real;
kol:tcolor;
begin
kol:=kolor3;
kolor3:=rgb(0,0,255);
for help1:=1 to 80 do liczby[help1]:=0;

for help1:=od_ to do_ do for help2:=1 to 20 do inc(liczby[losowanie[help1,help2]]);
help2:=0;
for help1:=1 to 80 do if liczby[help1]>help2 then help2:=liczby[help1];
help3:=help2;
for help1:=1 to 80 do if liczby[help1]<help3 then help3:=liczby[help1];
wspolczynnik:=255/(help2-help3);

for help1:=1 to 80 do
 begin
  kolor3:=rgb(255-round(wspolczynnik*(liczby[help1]-help3)),255-round(wspolczynnik*(liczby[help1]-help3)),255-round(wspolczynnik*(liczby[help1]-help3)));
  zaznacz_liczbe_ml(help1);
 end;

kolor3:=kol;

end;

procedure TForm9.SpeedButton15Click(Sender: TObject);
begin
if spinedit12.Value<spinedit13.value then pokaz_wiele_los_ml2(spinedit12.value,spinedit13.value);
if spinedit12.Value>spinedit13.value then pokaz_wiele_los_ml2(spinedit13.value,spinedit12.value);
end;

procedure TForm9.SpeedButton16Click(Sender: TObject);
begin
if spinedit8.Value>1 then
 begin
  spinedit8.Value:=spinedit8.Value-1;
  speedbutton3.Click;
 end;
end;

procedure TForm9.SpeedButton17Click(Sender: TObject);
begin
if spinedit8.Value<spinedit8.MaxValue then
 begin
  spinedit8.Value:=spinedit8.Value+1;
  speedbutton3.Click;
 end;
end;

procedure TForm9.SpeedButton18Click(Sender: TObject);
begin
if spinedit11.Value>1 then
 begin
  spinedit11.Value:=spinedit11.Value-1;
  speedbutton14.Click;
 end;
end;

procedure TForm9.SpeedButton19Click(Sender: TObject);
begin
if spinedit11.Value<spinedit11.MaxValue then
 begin
  spinedit11.Value:=spinedit11.Value+1;
  speedbutton14.Click;
 end;
end;

procedure TForm9.rysuj_siatke_ml;
begin
  image2.canvas.pen.color:=clblack;
  image2.canvas.pen.style:=pssolid;
  image2.canvas.brush.Color:=clwhite;
  image2.canvas.brush.style:=bsclear;
  image2.Canvas.Rectangle(29,29,272,212);
  image2.Canvas.Rectangle(31,31,270,210);
  image2.canvas.MoveTo(149,0);
  image2.canvas.LineTo(149,240);
  image2.canvas.MoveTo(151,0);
  image2.canvas.LineTo(151,240);
  image2.canvas.MoveTo(0,119);
  image2.canvas.LineTo(300,119);
  image2.canvas.MoveTo(0,121);
  image2.canvas.LineTo(300,121);

end;

procedure TForm9.rysuj_siatke_dl;
begin
  image2.canvas.pen.color:=clblack;
  image2.canvas.pen.style:=pssolid;
  image2.canvas.brush.Color:=clwhite;
  image2.canvas.brush.style:=bsclear;

  image2.canvas.MoveTo(89,0);
  image2.canvas.LineTo(89,210);
  image2.canvas.MoveTo(91,0);
  image2.canvas.LineTo(91,210);

  image2.canvas.MoveTo(119,0);
  image2.canvas.LineTo(119,210);
  image2.canvas.MoveTo(121,0);
  image2.canvas.LineTo(121,210);

  image2.canvas.MoveTo(0,89);
  image2.canvas.LineTo(210,89);
  image2.canvas.MoveTo(0,91);
  image2.canvas.LineTo(210,91);

  image2.canvas.MoveTo(0,119);
  image2.canvas.LineTo(210,119);
  image2.canvas.MoveTo(0,121);
  image2.canvas.LineTo(210,121);
end;

procedure TForm9.rysuj_siatke_el;
begin
  image2.canvas.pen.color:=clblack;
  image2.canvas.pen.style:=pssolid;
  image2.canvas.brush.Color:=clwhite;
  image2.canvas.brush.style:=bsclear;

  image2.canvas.MoveTo(89,0);
  image2.canvas.LineTo(89,210);
  image2.canvas.MoveTo(91,0);
  image2.canvas.LineTo(91,210);

  image2.canvas.MoveTo(119,0);
  image2.canvas.LineTo(119,210);
  image2.canvas.MoveTo(121,0);
  image2.canvas.LineTo(121,210);

  image2.canvas.MoveTo(0,89);
  image2.canvas.LineTo(210,89);
  image2.canvas.MoveTo(0,91);
  image2.canvas.LineTo(210,91);

end;


function TForm9.oczekiwal2(ilosc, naile, od_, do_: integer): integer;
var
help5,help2,help3,help4:integer;
begin
//help1:=-1;
help3:=do_+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 for help2:=1 to ilosc do if wylosowane[help3,mapa_liczby[help2]] then inc(help4);
 if help4<naile then inc(help5);
until (help4>=naile) or (help3=od_);
if od_>=do_ then help5:=0;
oczekiwal2:=help5;
end;

procedure TForm9.SpeedButton20Click(Sender: TObject);
var
help1,help2:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='Mapa U-2';

if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid2.rowcount-1 do
   begin
    for help2:=0 to stringgrid2.ColCount-2 do write(filename,stringgrid2.cells[help2,help1]+';');
    write(filename,stringgrid2.cells[stringgrid2.colcount-1,help1]+#13);
   end;
  closefile(filename);
 end else form1.zapiszHTML2(form9.stringgrid2,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Mapa U-2',1);
end;

procedure TForm9.CheckBox3Click(Sender: TObject);
begin
if checkbox3.Checked then
 begin
  spinedit14.Enabled:=true;
  speedbutton10.Enabled:=false;
 end else
  begin
   spinedit14.Enabled:=false;
   speedbutton10.Enabled:=true;
  end;
end;

procedure TForm9.SpeedButton21Click(Sender: TObject);
var
help1,help2:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='Mapa U-1';

if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid3.rowcount-1 do
   begin
    for help2:=0 to stringgrid3.ColCount-2 do if stringgrid3.cells[help2,0]<>'?' then write(filename,stringgrid3.cells[help2,help1]+';');
    write(filename,stringgrid3.cells[stringgrid3.colcount-1,help1]+#13);
   end;
  closefile(filename);
 end else form1.zapiszHTML2(form9.stringgrid3,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Mapa U-1',1);
end;

function TForm9.oczekuje_liczba(liczba, do_, skok: integer): integer;
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

function TForm9.oczekuje_pozycja(pozycja, do_, skok: integer): integer;
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

procedure TForm9.Button1Click(Sender: TObject);
begin
if mapa1form = nil then
  begin
    Application.CreateForm(Tmapa1form, mapa1form);
    mapa1form.Show();
  end
  else
  begin
    mapa1form.BringToFront();
  end;
end;

end.

