unit analizalos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, main,
  StdCtrls, Spin, ComCtrls, Buttons, Grids, Gauges;

type
  TForm19 = class(TForm)
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    StringGrid1: TStringGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    SpeedButton2: TSpeedButton;
    Gauge1: TGauge;
    SpinEdit2: TSpinEdit;
    Label11: TLabel;
    RadioButton5: TRadioButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    CheckBox1: TCheckBox;
    SB_pamietaj: TSpeedButton;
    SpinEdit9: TSpinEdit;
    CheckBox3: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpinEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Private declarations }
    procedure sortuj();
  public
    procedure analizuj(nr,od_:word);
    procedure sortuj_liczby(pozycja,wdol:word);
    procedure sortuj_pary(pozycja,wdol:word);
    procedure sortuj_trojki(pozycja,wdol:word);
    function oczekuje1(nr_los,od_,liczba: integer):integer;
    function oczekuje2(nr_los,od_,nrzestawu:integer):integer;
    function oczekuje3(nr_los,od_,nrzestawu:integer):integer;
    { Public declarations }
  end;

var
  Form19: TForm19;
  liczby:array[1..80]of integer;
  pary:array[1..80,1..80]of word;
  liczby_ost:array[1..20,1..5]of integer;
  pary_ost:array[1..190,1..6]of integer;
  trojki_ost:array[1..1140,1..6]of integer;
  czy_analiza:boolean;

  ilosc_par,ilosc_trojek:integer;
  ilosc_par2,ilosc_trojek2:integer;

  temp_trojek:boolean;
  zak1,zak2:word;

implementation

uses Addins;

{$R *.DFM}

procedure TForm19.FormClose(Sender: TObject; var Action: TCloseAction);
var help1:integer;
begin
// zapisanie opcji
zapisz_opcje('analiza_losowania','nr_losowania_'+prefiks_gry,spinedit1.value);
zapisz_opcje('analiza_losowania','od_losowania_'+prefiks_gry,spinedit2.value);
zapisz_opcje('analiza_losowania','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);

if radiobutton1.Checked then help1:=1 else
 if radiobutton2.Checked then help1:=2 else help1:=3;
zapisz_opcje('analiza_losowania','sortuj_wedlug_'+prefiks_gry,help1);

if radiobutton3.Checked then help1:=1 else help1:=2;
zapisz_opcje('analiza_losowania','sortuj_'+prefiks_gry,help1);

zapisz_opcje('analiza_losowania','kazda_liczba_tylko_'+prefiks_gry,checkbox1.Checked);

zapisz_opcje('analiza_losowania','kazda_liczba_razy_'+prefiks_gry,spinedit9.value);

// usuniecie formy z pamieci
Action := caFree;
Form19:=nil;
end;

procedure TForm19.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
spinedit2.MaxValue:=spinedit1.Value-1;
if spinedit2.Value>=spinedit1.Value then spinedit2.Value:=spinedit1.Value-1;
end;

procedure TForm19.FormCreate(Sender: TObject);
var
help1:integer;
pamietaj:boolean;
begin
speedbutton3.Enabled:=false;
speedbutton4.Enabled:=false;
speedbutton6.Enabled:=false;
speedbutton7.Enabled:=false;
speedbutton8.Enabled:=false;
if Gra.Numer=1 then
 begin
  ilosc_par:=190;
  ilosc_par2:=3160;
  ilosc_trojek:=1140;
  ilosc_trojek2:=82160;
  stringgrid3.RowCount:=21;
  stringgrid4.RowCount:=191;
  stringgrid5.RowCount:=1141;
  stringgrid1.Cells[0,0]:='Przedzia³';
  stringgrid1.cells[0,1]:='1-40';
  stringgrid1.cells[0,2]:='41-80';
  stringgrid1.Cells[0,3]:='1-10';
  stringgrid1.Cells[0,4]:='11-20';
  stringgrid1.cells[0,5]:='21-30';
  stringgrid1.cells[0,6]:='31-40';
  stringgrid1.cells[0,7]:='41-50';
  stringgrid1.cells[0,8]:='51-60';
  stringgrid1.cells[0,9]:='61-70';
  stringgrid1.cells[0,10]:='71-80';
 end;

if Gra.Numer=2 then
 begin
  ilosc_par:=15;
  ilosc_par2:=1176;
  ilosc_trojek:=20;
  ilosc_trojek2:=18424;
  stringgrid3.RowCount:=7;
  stringgrid4.RowCount:=16;
  stringgrid5.RowCount:=21;
  stringgrid1.Cells[0,0]:='Przedzia³';
  stringgrid1.cells[0,1]:='1-24';
  stringgrid1.cells[0,2]:='25-49';
  stringgrid1.Cells[0,3]:='1-10';
  stringgrid1.Cells[0,4]:='11-20';
  stringgrid1.cells[0,5]:='21-30';
  stringgrid1.cells[0,6]:='31-40';
  stringgrid1.cells[0,7]:='41-49';
  stringgrid1.cells[0,8]:='-----';
  stringgrid1.cells[0,9]:='-----';
  stringgrid1.cells[0,10]:='-----';
 end;

if Gra.Numer=3 then
 begin
  ilosc_par:=10;
  ilosc_par2:=861;
  ilosc_trojek:=10;
  ilosc_trojek2:=11480;
  stringgrid3.RowCount:=6;
  stringgrid4.RowCount:=11;
  stringgrid5.RowCount:=11;
  stringgrid1.Cells[0,0]:='Przedzia³';
  stringgrid1.cells[0,1]:='1-21';
  stringgrid1.cells[0,2]:='22-42';
  stringgrid1.Cells[0,3]:='1-10';
  stringgrid1.Cells[0,4]:='11-20';
  stringgrid1.cells[0,5]:='21-30';
  stringgrid1.cells[0,6]:='31-42';
  stringgrid1.cells[0,7]:='-----';
  stringgrid1.cells[0,8]:='-----';
  stringgrid1.cells[0,9]:='-----';
  stringgrid1.cells[0,10]:='-----';
 end;

stringgrid1.cells[1,0]:='Iloœæ';
stringgrid1.Cells[2,0]:='Koñcówka';
stringgrid1.cells[2,1]:='-0';
stringgrid1.cells[2,2]:='-1';
stringgrid1.cells[2,3]:='-2';
stringgrid1.cells[2,4]:='-3';
stringgrid1.cells[2,5]:='-4';
stringgrid1.cells[2,6]:='-5';
stringgrid1.cells[2,7]:='-6';
stringgrid1.cells[2,8]:='-7';
stringgrid1.cells[2,9]:='-8';
stringgrid1.cells[2,10]:='-9';
stringgrid1.Cells[3,0]:='Iloœæ';

stringgrid2.cells[0,0]:='Pozycja (l)';
stringgrid2.Cells[1,0]:='Czeka³a';

stringgrid3.ColWidths[0]:=22;
stringgrid3.ColWidths[4]:=36;
stringgrid3.cells[0,0]:='Lp.';
stringgrid3.cells[1,0]:='Liczba';
stringgrid3.Cells[2,0]:='Iloœæ';
stringgrid3.cells[3,0]:='Czeka³a';
stringgrid3.cells[4,0]:='Temp.';
for help1:=1 to ilosc_liczb_los do stringgrid3.cells[0,help1]:=IntToStr(help1);

stringgrid4.ColWidths[0]:=24;
stringgrid4.ColWidths[4]:=36;
stringgrid4.cells[0,0]:='Lp.';
stringgrid4.cells[1,0]:='Dwójka';
stringgrid4.Cells[2,0]:='Iloœæ';
stringgrid4.cells[3,0]:='Czeka³a';
stringgrid4.cells[4,0]:='Temp.';
for help1:=1 to ilosc_par do stringgrid4.cells[0,help1]:=IntToStr(help1);

stringgrid5.ColWidths[0]:=30;
stringgrid5.cells[0,0]:='Lp.';
stringgrid5.cells[1,0]:='Trójka';
stringgrid5.colwidths[1]:=56;
stringgrid5.Cells[2,0]:='Iloœæ';
stringgrid5.cells[3,0]:='Czeka³a';
stringgrid5.cells[4,0]:='Temp.';
for help1:=1 to ilosc_trojek do stringgrid5.cells[0,help1]:=IntToStr(help1);

pamietaj:=wczytaj_opcje('analiza_losowania','pamietaj_ustawienia_'+prefiks_gry,false);
SB_pamietaj.Down:=pamietaj;
if pamietaj then help1:=wczytaj_opcje('analiza_losowania','sortuj_wedlug_'+prefiks_gry,1) else help1:=1;

if help1=1 then radiobutton1.Checked:=true else
 if help1=2 then radiobutton2.checked:=true else radiobutton5.Checked:=true;

if pamietaj then help1:=wczytaj_opcje('analiza_losowania','sortuj_'+prefiks_gry,1) else help1:=1;

if help1=1 then radiobutton3.Checked:=true else radiobutton4.Checked:=true;

if pamietaj then checkbox1.Checked:=wczytaj_opcje('analiza_losowania','kazda_liczba_tylko_'+prefiks_gry,false);
if pamietaj then spinedit9.Value:=wczytaj_opcje('analiza_losowania','kazda_liczba_razy_'+prefiks_gry,1);


if pamietaj then help1:=wczytaj_opcje('analiza_losowania','nr_losowania_'+prefiks_gry,losowan) else help1:=losowan;
if (help1<1) or (help1>losowan) then help1:=losowan;
spinedit1.MinValue:=2;
spinedit1.MaxValue:=losowan;
spinedit1.Value:=help1;
spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));

if pamietaj then help1:=wczytaj_opcje('analiza_losowania','od_losowania_'+prefiks_gry,1) else help1:=1;
if (help1<1) or (help1>=losowan) then help1:=1;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=spinedit1.Value-1;
if (help1 > spinedit2.MaxValue) then help1:=spinedit2.MaxValue;
spinedit2.Value:=help1;
spinedit2.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23])); 

czy_analiza:=false;
end;

procedure TForm19.analizuj(nr,od_: word);
var
help1,help2,help3,help4,help5,parzyste,nieparzyste,help6,help7,powt:integer;
l1_40,l41_80,l1_10,l11_20,l21_30,l31_40,l41_50,l51_60,l61_70,l71_80:integer;
l1_24,l25_49,l41_49,l1_21,l22_42,l31_42:integer;
liczba:string;
koncowki:array[0..9]of integer;
pozycje:array[1..20,1..4]of integer;
ilosc_:int64;
srednia:integer;
begin
form1.stoper_start;
zak1:=od_;
zak2:=nr;
gauge1.Progress:=0;
gauge1.MaxValue:=7;

//przedzia³y
l1_40:=0;
l41_80:=0;
l1_10:=0;
l11_20:=0;
l21_30:=0;
l31_40:=0;
l41_50:=0;
l51_60:=0;
l61_70:=0;
l71_80:=0;

l1_24:=0;
l25_49:=0;
l1_10:=0;
l11_20:=0;
l21_30:=0;
l31_40:=0;
l41_49:=0;

l1_21:=0;
l22_42:=0;
l1_10:=0;
l11_20:=0;
l21_30:=0;
l31_42:=0;

if Gra.Numer=1 then
 begin
  for help2:=1 to 20 do
   begin
    if losowanie[nr,help2]<=40 then l1_40:=l1_40+1 else l41_80:=l41_80+1;
    if losowanie[nr,help2]<=10 then l1_10:=l1_10+1 else
     if losowanie[nr,help2]<=20 then l11_20:=l11_20+1 else
      if losowanie[nr,help2]<=30 then l21_30:=l21_30+1 else
       if losowanie[nr,help2]<=40 then l31_40:=l31_40+1 else
        if losowanie[nr,help2]<=50 then l41_50:=l41_50+1 else
         if losowanie[nr,help2]<=60 then l51_60:=l51_60+1 else
          if losowanie[nr,help2]<=70 then l61_70:=l61_70+1 else l71_80:=l71_80+1;
   end;


  stringgrid1.cells[1,1]:=IntToStr(l1_40);
  stringgrid1.cells[1,2]:=IntToStr(l41_80);
  stringgrid1.cells[1,3]:=IntToStr(l1_10);
  stringgrid1.cells[1,4]:=IntToStr(l11_20);
  stringgrid1.cells[1,5]:=IntToStr(l21_30);
  stringgrid1.cells[1,6]:=IntToStr(l31_40);
  stringgrid1.cells[1,7]:=IntToStr(l41_50);
  stringgrid1.cells[1,8]:=IntToStr(l51_60);
  stringgrid1.cells[1,9]:=IntToStr(l61_70);
  stringgrid1.cells[1,10]:=IntToStr(l71_80);

  gauge1.Progress:=1;

 end;

if Gra.Numer=2 then
 begin
  for help2:=1 to 6 do
   begin
     if losowanie[nr,help2]<=24 then inc(l1_24) else inc(l25_49);
      if losowanie[nr,help2]<=10 then inc(l1_10) else
       if losowanie[nr,help2]<=20 then inc(l11_20) else
        if losowanie[nr,help2]<=30 then inc(l21_30) else
         if losowanie[nr,help2]<=40 then inc(l31_40) else inc(l41_49);
   end;

  stringgrid1.cells[1,1]:=IntToStr(l1_24);
  stringgrid1.cells[1,2]:=IntToStr(l25_49);
  stringgrid1.cells[1,3]:=IntToStr(l1_10);
  stringgrid1.cells[1,4]:=IntToStr(l11_20);
  stringgrid1.cells[1,5]:=IntToStr(l21_30);
  stringgrid1.cells[1,6]:=IntToStr(l31_40);
  stringgrid1.cells[1,7]:=IntToStr(l41_49);
  stringgrid1.cells[1,8]:='-----';
  stringgrid1.cells[1,9]:='-----';
  stringgrid1.cells[1,10]:='-----';

  gauge1.Progress:=1;

 end;

if Gra.Numer=3 then
 begin
  for help2:=1 to 5 do
   begin
     if losowanie[nr,help2]<=21 then inc(l1_21) else inc(l22_42);
      if losowanie[nr,help2]<=10 then inc(l1_10) else
       if losowanie[nr,help2]<=20 then inc(l11_20) else
        if losowanie[nr,help2]<=30 then inc(l21_30) else inc(l31_42);
   end;

  stringgrid1.cells[1,1]:=IntToStr(l1_21);
  stringgrid1.cells[1,2]:=IntToStr(l22_42);
  stringgrid1.cells[1,3]:=IntToStr(l1_10);
  stringgrid1.cells[1,4]:=IntToStr(l11_20);
  stringgrid1.cells[1,5]:=IntToStr(l21_30);
  stringgrid1.cells[1,6]:=IntToStr(l31_42);
  stringgrid1.cells[1,7]:='-----';
  stringgrid1.cells[1,8]:='-----';
  stringgrid1.cells[1,9]:='-----';
  stringgrid1.cells[1,10]:='-----';

  gauge1.Progress:=1;

 end;

//koñcówki
for help1:=0 to 9 do koncowki[help1]:=0;

 for help2:=1 to ilosc_liczb_los do
  begin
   if losowanie[nr,help2]<10 then inc(koncowki[losowanie[nr,help2]]) else
    begin
     liczba:=IntToStr(losowanie[nr,help2]);
     inc(koncowki[StrToInt(liczba[length(liczba)])]);
    end;
  end;


for help1:=0 to 9 do
 begin
  stringgrid1.cells[3,help1+1]:=IntToStr(koncowki[help1]);
 end;

gauge1.Progress:=2;

//parzyste i nieparzyste
parzyste:=0;
for help2:=1 to ilosc_liczb_los do if losowanie[nr,help2] mod 2 = 0 then inc(parzyste);
nieparzyste:=ilosc_liczb_los-parzyste;
label5.caption:=IntToStr(parzyste);
label6.caption:=IntToStr(nieparzyste);


gauge1.Progress:=3;

//powtórzenia
if nr<>1 then
 begin
  powt:=0;
  for help1:=1 to ilosc_liczb_los do if wylosowane[nr-1,losowanie[nr,help1]] {czy_byla_liczba(losowanie[nr,help1],nr-1)=true} then inc(powt);
  label7.Caption:=IntToStr(powt);
  if powt<>0 then stringgrid2.RowCount:=powt+1 else stringgrid2.RowCount:=2;
  if powt>0 then
   begin
    for help1:=1 to ilosc_liczb_los do for help2:=1 to 4 do pozycje[help1,help2]:=0;
    help2:=0;
    for help1:=1 to ilosc_liczb_los do if wylosowane[nr,losowanie[nr-1,help1]] {czy_byla_liczba(losowanie[nr-1,help1],nr)=true} then
     begin
      inc(help2);
      pozycje[help2,1]:=help1;
      pozycje[help2,2]:=losowanie[nr-1,help1];
     end;
    for help1:=1 to powt do stringgrid2.cells[0,help1]:=(IntToStr(pozycje[help1,1])+' ('+IntToStr(pozycje[help1,2])+')');
    for help1:=1 to powt do
     begin
      //help3:=-1;
      for help2:=nr-1 downto od_ do
       begin
        help3:=help2-1+1;
        if (wylosowane[help2,losowanie[help2-1,pozycje[help1,1]]] {czy_byla_liczba(losowanie[help2-1,pozycje[help1,1]],help2)=true}) and (pozycje[help1,4]=0) then
         begin
          pozycje[help1,3]:=nr-help3-1;
          pozycje[help1,4]:=1;
         end;
       end;
     end;
    for help1:=1 to powt do stringgrid2.cells[1,help1]:=IntToStr(pozycje[help1,3]);
   end else if powt=0 then
    begin
     label7.caption:='0';
     stringgrid2.RowCount:=2;
     stringgrid2.Cells[0,1]:='-';
     stringgrid2.cells[1,1]:='-';
    end;
 end else
  begin
   label7.Caption:='?';
   for help1:=1 to stringgrid2.RowCount-1 do
    begin
     stringgrid2.Cells[0,help1]:='';
     stringgrid2.cells[1,help1]:='';
    end;
  end;


gauge1.Progress:=4;

for help1:=1 to ilosc_liczb_gry do liczby[help1]:=0;

if nr>1 then for help2:=nr-1 downto od_ do for help1:=1 to ilosc_liczb_los do inc(liczby[losowanie[help2,help1]]);
ilosc_:=0;
srednia:=0;
for help1:=1 to ilosc_liczb_gry do ilosc_:=liczby[help1]+ilosc_;
if ilosc_<>0 then srednia:=round(ilosc_/ilosc_liczb_gry) else srednia:=0;

//showmessage(IntToStr(srednia));

//ostatnie liczby
for help1:=1 to ilosc_liczb_los do for help2:=1 to 5 do liczby_ost[help1,help2]:=0;
for help1:=1 to ilosc_liczb_los do liczby_ost[help1,1]:=losowanie[nr,help1];
if nr>1 then
 begin
  for help1:=1 to ilosc_liczb_los do for help2:=nr-1 downto od_ do if wylosowane[help2,liczby_ost[help1,1]] {czy_byla_liczba(liczby_ost[help1,1],help2)=true} then inc(liczby_ost[help1,2]);
  for help1:=1 to ilosc_liczb_los do liczby_ost[help1,3]:=oczekuje1(nr-1,od_,liczby_ost[help1,1]);
 end;

if srednia<>0 then for help1:=1 to ilosc_liczb_los do liczby_ost[help1,4]:=(srednia-liczby_ost[help1,2])+liczby_ost[help1,3];

if radiobutton1.Checked then if radiobutton3.Checked then sortuj_liczby(2,1) else sortuj_liczby(2,0);
if radiobutton2.Checked then if radiobutton3.Checked then sortuj_liczby(3,1) else sortuj_liczby(3,0);
if radiobutton5.checked then if radiobutton3.Checked then sortuj_liczby(4,1) else sortuj_liczby(4,0);

//showmessage(IntToStr(liczby_ost[10,1])+', '+IntToStr(liczby_ost[10,2])+', '+IntToStr(liczby_ost[10,3])+', '+IntToStr(liczby_ost[10,4]));


for help1:=1 to ilosc_liczb_los do
 begin
  stringgrid3.cells[1,help1]:=IntToStr(liczby_ost[help1,1]);
  stringgrid3.cells[2,help1]:=IntToStr(liczby_ost[help1,2]);
  stringgrid3.Cells[3,help1]:=IntToStr(liczby_ost[help1,3]);
  if liczby_ost[help1,4]>0 then stringgrid3.Cells[4,help1]:='+'+IntToStr(liczby_ost[help1,4]) else stringgrid3.Cells[4,help1]:=IntToStr(liczby_ost[help1,4]);
 end;


gauge1.Progress:=5;

//ostatnie pary
for help1:=1 to ilosc_par do for help2:=1 to 5 do pary_ost[help1,help2]:=0;

help3:=0;
for help1:=1 to ilosc_liczb_los do
 for help2:=help1+1 to ilosc_liczb_los do
  begin
   help3:=help3+1;
   pary_ost[help3,1]:=losowanie[nr,help1];
   pary_ost[help3,2]:=losowanie[nr,help2];
   pary_ost[help3,6]:=0;
  end;

//help3:=0;
for help1:=1 to ilosc_liczb_gry do
 for help2:=help1+1 to ilosc_liczb_gry do
  begin
   pary[help1,help2]:=0;
  end;

if nr>1 then for help1:=nr-1 downto od_ do for help2:=1 to ilosc_liczb_los do for help3:=help2+1 to ilosc_liczb_los do inc(pary[losowanie[help1,help2],losowanie[help1,help3]]);

ilosc_:=0;
srednia:=0;
for help1:=1 to ilosc_liczb_gry do for help2:=help1+1 to ilosc_liczb_gry do ilosc_:=pary[help1,help2]+ilosc_;
if ilosc_<>0 then srednia:=round(ilosc_/ilosc_par2) else srednia:=0;

//showmessage(IntToStr(ilosc_));

if nr>1 then
 begin
  for help1:=1 to ilosc_par do
   for help2:=nr-1 downto od_ do if (wylosowane[help2,pary_ost[help1,1]] {czy_byla_liczba(pary_ost[help1,1],help2)=true}) and (wylosowane[help2,pary_ost[help1,2]] {czy_byla_liczba(pary_ost[help1,2],help2)=true}) then inc(pary_ost[help1,3]);
   //help2:=0;
   for help1:=1 to ilosc_par do pary_ost[help1,4]:=oczekuje2(nr-1,od_,help1);
 end;

if srednia<>0 then for help1:=1 to ilosc_par do pary_ost[help1,6]:=(srednia-pary_ost[help1,3])+pary_ost[help1,4];

if radiobutton1.Checked then if radiobutton3.Checked then sortuj_pary(3,1) else sortuj_pary(3,0);
if radiobutton2.Checked then if radiobutton3.Checked then sortuj_pary(4,1) else sortuj_pary(4,0);
if radiobutton5.checked then if radiobutton3.Checked then sortuj_pary(6,1) else sortuj_pary(6,0);

for help1:=1 to ilosc_par do
 begin
  stringgrid4.cells[1,help1]:=(IntToStr(pary_ost[help1,1])+', '+IntToStr(pary_ost[help1,2]));
  stringgrid4.cells[2,help1]:=IntToStr(pary_ost[help1,3]);
  stringgrid4.Cells[3,help1]:=IntToStr(pary_ost[help1,4]);
  if pary_ost[help1,6]>0 then stringgrid4.Cells[4,help1]:='+'+IntToStr(pary_ost[help1,6]) else stringgrid4.Cells[4,help1]:=IntToStr(pary_ost[help1,6]);
 end;


gauge1.Progress:=6;

//ostatnie trójki
for help1:=1 to ilosc_trojek do for help2:=1 to 7 do trojki_ost[help1,help2]:=0;

help4:=0;
for help1:=1 to ilosc_liczb_los do
 for help2:=help1+1 to ilosc_liczb_los do
  for help3:=help2+1 to ilosc_liczb_los do
   begin
    help4:=help4+1;
    trojki_ost[help4,1]:=losowanie[nr,help1];
    trojki_ost[help4,2]:=losowanie[nr,help2];
    trojki_ost[help4,3]:=losowanie[nr,help3];
   end;

if nr>1 then
 begin
  for help1:=1 to ilosc_trojek do
   for help2:=nr-1 downto od_ do if (wylosowane[help2,trojki_ost[help1,1]] ) and (wylosowane[help2,trojki_ost[help1,2]] ) and (wylosowane[help2,trojki_ost[help1,3]] ) then inc(trojki_ost[help1,4]);
   //help2:=0;
   for help1:=1 to ilosc_trojek do trojki_ost[help1,5]:=oczekuje3(nr-1,od_,help1);
 end;

ilosc_:=0;

temp_trojek:=true;


  if nr>1 then
   begin
    ilosc_:=(nr-od_)*ilosc_trojek;
  {  for help1:=1 to ilosc_liczb_gry do
     for help2:=help1+1 to ilosc_liczb_gry do
      for help3:=help2+1 to ilosc_liczb_gry do
       for help4:=od_ to nr-1 do
        begin
         if (wylosowane[help4,help1]) and (wylosowane[help4,help2]) and (wylosowane[help4,help3]) then inc(ilosc_);
        end;
   }end;

  //showmessage('Iloœæ: '+IntToStr(ilosc_));
  srednia:=0;
  if ilosc_<>0 then srednia:=round(ilosc_/ilosc_trojek2) else srednia:=0;
  if srednia<>0 then for help1:=1 to ilosc_trojek do trojki_ost[help1,6]:=(srednia-trojki_ost[help1,4])+trojki_ost[help1,5];

  //showmessage('Œrednia: '+IntToStr(srednia));



if radiobutton1.Checked then if radiobutton3.Checked then sortuj_trojki(4,1) else sortuj_trojki(4,0);
if radiobutton2.Checked then if radiobutton3.Checked then sortuj_trojki(5,1) else sortuj_trojki(5,0);
if radiobutton5.checked and temp_trojek then if radiobutton3.Checked then sortuj_trojki(6,1) else sortuj_trojki(6,0);


for help1:=1 to ilosc_trojek do
 begin
  stringgrid5.cells[1,help1]:=(IntToStr(trojki_ost[help1,1])+', '+IntToStr(trojki_ost[help1,2])+', '+IntToStr(trojki_ost[help1,3]));
  stringgrid5.cells[2,help1]:=IntToStr(trojki_ost[help1,4]);
  stringgrid5.Cells[3,help1]:=IntToStr(trojki_ost[help1,5]);
  if trojki_ost[help1,6]>0 then stringgrid5.Cells[4,help1]:='+'+IntToStr(trojki_ost[help1,6]) else stringgrid5.Cells[4,help1]:=IntToStr(trojki_ost[help1,6]);
 end;


gauge1.Progress:=7;
czy_analiza:=true;
form19.Caption:='Analiza losowania... '+IntToStr(nr)+'   '+form1.stoper_stop;

speedbutton3.Enabled:=true;
speedbutton4.Enabled:=true;
speedbutton6.Enabled:=true;
speedbutton7.Enabled:=true;
speedbutton8.Enabled:=true;

end;

procedure TForm19.SpeedButton1Click(Sender: TObject);
begin
analizuj(spinedit1.value,spinedit2.Value);
end;

procedure TForm19.sortuj_liczby(pozycja, wdol: word);
var
i,j,temp1,temp2,temp3,temp4:integer;
begin
if wdol=0 then
 begin
    for i:=2 to ilosc_liczb_los do
     begin
      for j:=ilosc_liczb_los DownTo i Do
       if liczby_ost[j-1,pozycja]<liczby_ost[j,pozycja] Then
        begin
         temp1:=liczby_ost[j-1,1];
         temp2:=liczby_ost[j-1,2];
         temp3:=liczby_ost[j-1,3];
         temp4:=liczby_ost[j-1,4];
         liczby_ost[j-1,1]:=liczby_ost[j,1];
         liczby_ost[j-1,2]:=liczby_ost[j,2];
         liczby_ost[j-1,3]:=liczby_ost[j,3];
         liczby_ost[j-1,4]:=liczby_ost[j,4];
         liczby_ost[j,1]:=temp1;
         liczby_ost[j,2]:=temp2;
         liczby_ost[j,3]:=temp3;
         liczby_ost[j,4]:=temp4;
         End;
     end;
 end else
  begin
    for i:=2 to ilosc_liczb_los do
     begin
      for j:=ilosc_liczb_los DownTo i Do
       if liczby_ost[j-1,pozycja]>liczby_ost[j,pozycja] Then
        begin
         temp1:=liczby_ost[j-1,1];
         temp2:=liczby_ost[j-1,2];
         temp3:=liczby_ost[j-1,3];
         temp4:=liczby_ost[j-1,4];
         liczby_ost[j-1,1]:=liczby_ost[j,1];
         liczby_ost[j-1,2]:=liczby_ost[j,2];
         liczby_ost[j-1,3]:=liczby_ost[j,3];
         liczby_ost[j-1,4]:=liczby_ost[j,4];
         liczby_ost[j,1]:=temp1;
         liczby_ost[j,2]:=temp2;
         liczby_ost[j,3]:=temp3;
         liczby_ost[j,4]:=temp4;
         End;
     end;
  end;
end;

procedure TForm19.sortuj_pary(pozycja, wdol: word);
var
i,j,temp1,temp2,temp3,temp4,temp6:integer;
begin
if wdol=0 then
 begin
    for i:=2 to ilosc_par do
     begin
      for j:=ilosc_par DownTo i Do
       if pary_ost[j-1,pozycja]<pary_ost[j,pozycja] Then
        begin
         temp1:=pary_ost[j-1,1];
         temp2:=pary_ost[j-1,2];
         temp3:=pary_ost[j-1,3];
         temp4:=pary_ost[j-1,4];
         temp6:=pary_ost[j-1,6];
         pary_ost[j-1,1]:=pary_ost[j,1];
         pary_ost[j-1,2]:=pary_ost[j,2];
         pary_ost[j-1,3]:=pary_ost[j,3];
         pary_ost[j-1,4]:=pary_ost[j,4];
         pary_ost[j-1,6]:=pary_ost[j,6];
         pary_ost[j,1]:=temp1;
         pary_ost[j,2]:=temp2;
         pary_ost[j,3]:=temp3;
         pary_ost[j,4]:=temp4;
         pary_ost[j,6]:=temp6;
         End;
     end;
 end else
  begin
    for i:=2 to ilosc_par do
     begin
      for j:=ilosc_par DownTo i Do
       if pary_ost[j-1,pozycja]>pary_ost[j,pozycja] Then
        begin
         temp1:=pary_ost[j-1,1];
         temp2:=pary_ost[j-1,2];
         temp3:=pary_ost[j-1,3];
         temp4:=pary_ost[j-1,4];
         temp6:=pary_ost[j-1,6];
         pary_ost[j-1,1]:=pary_ost[j,1];
         pary_ost[j-1,2]:=pary_ost[j,2];
         pary_ost[j-1,3]:=pary_ost[j,3];
         pary_ost[j-1,4]:=pary_ost[j,4];
         pary_ost[j-1,6]:=pary_ost[j,6];
         pary_ost[j,1]:=temp1;
         pary_ost[j,2]:=temp2;
         pary_ost[j,3]:=temp3;
         pary_ost[j,4]:=temp4;
         pary_ost[j,6]:=temp6;
         End;
     end;
  end;

end;

procedure TForm19.sortuj_trojki(pozycja, wdol: word);
var
i,j,temp1,temp2,temp3,temp4,temp5,temp6:integer;
begin
if wdol=0 then
 begin
    for i:=2 to ilosc_trojek do
     begin
      for j:=ilosc_trojek DownTo i Do
       if trojki_ost[j-1,pozycja]<trojki_ost[j,pozycja] Then
        begin
         temp1:=trojki_ost[j-1,1];
         temp2:=trojki_ost[j-1,2];
         temp3:=trojki_ost[j-1,3];
         temp4:=trojki_ost[j-1,4];
         temp5:=trojki_ost[j-1,5];
         temp6:=trojki_ost[j-1,6];
         trojki_ost[j-1,1]:=trojki_ost[j,1];
         trojki_ost[j-1,2]:=trojki_ost[j,2];
         trojki_ost[j-1,3]:=trojki_ost[j,3];
         trojki_ost[j-1,4]:=trojki_ost[j,4];
         trojki_ost[j-1,5]:=trojki_ost[j,5];
         trojki_ost[j-1,6]:=trojki_ost[j,6];
         trojki_ost[j,1]:=temp1;
         trojki_ost[j,2]:=temp2;
         trojki_ost[j,3]:=temp3;
         trojki_ost[j,4]:=temp4;
         trojki_ost[j,5]:=temp5;
         trojki_ost[j,6]:=temp6;
        End;
     end;
 end else
  begin
    for i:=2 to ilosc_trojek do
     begin
      for j:=ilosc_trojek DownTo i Do
       if trojki_ost[j-1,pozycja]>trojki_ost[j,pozycja] Then
        begin
         temp1:=trojki_ost[j-1,1];
         temp2:=trojki_ost[j-1,2];
         temp3:=trojki_ost[j-1,3];
         temp4:=trojki_ost[j-1,4];
         temp5:=trojki_ost[j-1,5];
         temp6:=trojki_ost[j-1,6];
         trojki_ost[j-1,1]:=trojki_ost[j,1];
         trojki_ost[j-1,2]:=trojki_ost[j,2];
         trojki_ost[j-1,3]:=trojki_ost[j,3];
         trojki_ost[j-1,4]:=trojki_ost[j,4];
         trojki_ost[j-1,5]:=trojki_ost[j,5];
         trojki_ost[j-1,6]:=trojki_ost[j,6];
         trojki_ost[j,1]:=temp1;
         trojki_ost[j,2]:=temp2;
         trojki_ost[j,3]:=temp3;
         trojki_ost[j,4]:=temp4;
         trojki_ost[j,5]:=temp5;
         trojki_ost[j,6]:=temp6;
        End;
     end;
  end;


end;

procedure TForm19.SpeedButton2Click(Sender: TObject);
var
  help1 : integer;
begin
  if checkbox3.Checked and czy_analiza and (stringgrid4.RowCount < 100) then
  begin
  // SORTOWANIE LICZB
    if radiobutton1.Checked then if radiobutton3.Checked then sortuj_liczby(2,1) else sortuj_liczby(2,0);
    if radiobutton2.Checked then if radiobutton3.Checked then sortuj_liczby(3,1) else sortuj_liczby(3,0);
    if radiobutton5.Checked then if radiobutton3.Checked then sortuj_liczby(4,1) else sortuj_liczby(4,0);

    for help1 := 1 to ilosc_liczb_los do
    begin
      stringgrid3.cells[1,help1]:=IntToStr(liczby_ost[help1,1]);
      stringgrid3.cells[2,help1]:=IntToStr(liczby_ost[help1,2]);
      stringgrid3.Cells[3,help1]:=IntToStr(liczby_ost[help1,3]);
      if liczby_ost[help1,4]>0 then stringgrid3.Cells[4,help1]:='+'+IntToStr(liczby_ost[help1,4]) else stringgrid3.Cells[4,help1]:=IntToStr(liczby_ost[help1,4]);
    end;

  // SORTOWANIE PAR
    if radiobutton1.Checked then if radiobutton3.Checked then sortujStringGrid(stringgrid4, 2) else sortujStringGrid(stringgrid4, 2, false);
    if radiobutton2.Checked then if radiobutton3.Checked then sortujStringGrid(stringgrid4, 3) else sortujStringGrid(stringgrid4, 3, false);
    if radiobutton5.Checked then if radiobutton3.Checked then sortujStringGrid(stringgrid4, 4) else sortujStringGrid(stringgrid4, 4, false);

  // SORTOWANIE TROJEK
    if radiobutton1.Checked then if radiobutton3.Checked then sortujStringGrid(stringgrid5, 2) else sortujStringGrid(stringgrid5, 2, false);
    if radiobutton2.Checked then if radiobutton3.Checked then sortujStringGrid(stringgrid5, 3) else sortujStringGrid(stringgrid5, 3, false);
    if radiobutton5.Checked then if radiobutton3.Checked then sortujStringGrid(stringgrid5, 4) else sortujStringGrid(stringgrid5, 4, false);

    
  end else sortuj();
end;

function TForm19.oczekuje1(nr_los,od_, liczba: integer): integer;
var
help1,help2:integer;
begin
help1:=nr_los+1;
help2:=-1;
//help3:=0;
repeat
 help1:=help1-1;
 inc(help2);
until (wylosowane[help1,liczba] {czy_byla_liczba(liczba,help1)=true}) or (help1=od_);
oczekuje1:=help2;
end;

function TForm19.oczekuje2(nr_los,od_, nrzestawu: integer): integer;
var
help1,help3:integer;
begin
help1:=-1;
help3:=nr_los+1;
repeat
 help3:=help3-1;
 inc(help1);
until (((wylosowane[help3,pary_ost[nrzestawu,1]] {czy_byla_liczba(pary_ost[nrzestawu,1],help3)=true}) and (wylosowane[help3,pary_ost[nrzestawu,2]] {czy_byla_liczba(pary_ost[nrzestawu,2],help3)=true}))) or (help3=od_);
oczekuje2:=help1;
end;

function TForm19.oczekuje3(nr_los,od_, nrzestawu: integer): integer;
var
help1,help3:integer;
begin
help1:=-1;
help3:=nr_los+1;
repeat
 help3:=help3-1;
 inc(help1);
until (((wylosowane[help3,trojki_ost[nrzestawu,1]] {czy_byla_liczba(trojki_ost[nrzestawu,1],help3)=true}) and (wylosowane[help3,trojki_ost[nrzestawu,2]] {czy_byla_liczba(trojki_ost[nrzestawu,2],help3)=true}) and (wylosowane[help3,trojki_ost[nrzestawu,3]] {czy_byla_liczba(trojki_ost[nrzestawu,3],help3)=true}))) or (help3=od_);
oczekuje3:=help1;

end;

procedure TForm19.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));

end;

procedure TForm19.SpeedButton3Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='AnalizaLosowaniaPK';
if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid1.rowcount-1 do writeln(filename,stringgrid1.cells[0,help1]+';'+stringgrid1.cells[1,help1]+';'+stringgrid1.cells[2,help1]+';'+stringgrid1.cells[3,help1]);
  closefile(filename);
 end else form1.zapiszHTML(form19.stringgrid1,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Analiza Losowania','Przedzia³y i Koñcówki',1,zak2,zak2);
end;

procedure TForm19.SpeedButton4Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='AnalizaLosowaniaP';
if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid2.rowcount-1 do writeln(filename,stringgrid2.cells[0,help1]+';'+stringgrid2.cells[1,help1]);
  closefile(filename);
 end else form1.zapiszHTML(form19.stringgrid2,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Analiza Losowania','Powtórzenia',1,zak2,zak2);
end;

procedure TForm19.SpeedButton6Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='AnalizaLosowaniaLiczby';
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm|Plik zestawu liczb (*.zes)|*.zes';

if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid3.rowcount-1 do writeln(filename,stringgrid3.cells[0,help1]+';'+stringgrid3.cells[1,help1]+';'+stringgrid3.cells[2,help1]+';'+stringgrid3.cells[3,help1]+';'+stringgrid3.cells[4,help1]);
  closefile(filename);
 end else if form1.savedialog1.filterindex=2 then form1.zapiszHTML(form19.stringgrid3,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Analiza Losowania','Ostatnie Liczby',1,zak1,zak2) else zapisz_tablice_zestawow(form19.stringgrid3,1,form1.savedialog1.filename);
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

procedure TForm19.SpeedButton7Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='AnalizaLosowaniaDwójki';
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm|Plik zestawu liczb (*.zes)|*.zes';
if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid4.rowcount-1 do writeln(filename,stringgrid4.cells[0,help1]+';'+stringgrid4.cells[1,help1]+';'+stringgrid4.cells[2,help1]+';'+stringgrid4.cells[3,help1]+';'+stringgrid4.cells[4,help1]);
  closefile(filename);
 end else if form1.savedialog1.filterindex=2 then form1.zapiszHTML(form19.stringgrid4,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Analiza Losowania','Ostatnie Pary',1,zak1,zak2) else zapisz_tablice_zestawow(form19.stringgrid4,1,form1.savedialog1.filename);
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

procedure TForm19.SpeedButton8Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='AnalizaLosowaniaTrójki';
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm|Plik zestawu liczb (*.zes)|*.zes';
if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid5.rowcount-1 do writeln(filename,stringgrid5.cells[0,help1]+';'+stringgrid5.cells[1,help1]+';'+stringgrid5.cells[2,help1]+';'+stringgrid5.cells[3,help1]+';'+stringgrid5.cells[4,help1]);
  closefile(filename);
 end else if form1.savedialog1.filterindex=2 then form1.zapiszHTML(form19.stringgrid5,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Analiza Losowania','Ostatnie Trójki',1,zak2,zak2) else zapisz_tablice_zestawow(form19.stringgrid5,1,form1.savedialog1.filename);
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

procedure TForm19.sortuj;
var
help1,help2,help3,help4,help5,help6:integer;
liczba:array[1..80] of byte;
ile_razy:byte;
begin
if czy_analiza then
 begin

// #######################################################################################################
//                                      LICZBY

  if radiobutton1.Checked then if radiobutton3.Checked then sortuj_liczby(2,1) else sortuj_liczby(2,0);
  if radiobutton2.Checked then if radiobutton3.Checked then sortuj_liczby(3,1) else sortuj_liczby(3,0);
  if radiobutton5.Checked then if radiobutton3.Checked then sortuj_liczby(4,1) else sortuj_liczby(4,0);

  for help1:=1 to ilosc_liczb_los do
   begin
    stringgrid3.cells[1,help1]:=IntToStr(liczby_ost[help1,1]);
    stringgrid3.cells[2,help1]:=IntToStr(liczby_ost[help1,2]);
    stringgrid3.Cells[3,help1]:=IntToStr(liczby_ost[help1,3]);
    if liczby_ost[help1,4]>0 then stringgrid3.Cells[4,help1]:='+'+IntToStr(liczby_ost[help1,4]) else stringgrid3.Cells[4,help1]:=IntToStr(liczby_ost[help1,4]);
   end;

// #######################################################################################################
//                                      PARY

  if radiobutton1.Checked then if radiobutton3.Checked then sortuj_pary(3,1) else sortuj_pary(3,0);
  if radiobutton2.Checked then if radiobutton3.Checked then sortuj_pary(4,1) else sortuj_pary(4,0);
  if radiobutton5.checked then if radiobutton3.Checked then sortuj_pary(6,1) else sortuj_pary(6,0);

  if checkbox1.Checked then
   begin

    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=0;

    ile_razy:=spinedit9.Value;
    
    help1:=ilosc_liczb_los*ile_razy div 2;
    help2:=ilosc_liczb_los*ile_razy mod 2;

    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ilosc_par then stringgrid4.RowCount:=ilosc_par+1 else stringgrid4.rowcount:=help1+help6+1;

    help3:=0;
    help4:=0;

     while (help3<help1) and (help4<ilosc_par) do
      begin
       inc(help4);
        if (liczba[pary_ost[help4,1]]<ile_razy) and (liczba[pary_ost[help4,2]]<ile_razy) then
         begin
          inc(help3);
          stringgrid4.cells[1,help3]:=IntToStr(pary_ost[help4,1])+' , '+IntToStr(pary_ost[help4,2]);
          stringgrid4.cells[2,help3]:=IntToStr(pary_ost[help4,3]);
          stringgrid4.cells[3,help3]:=IntToStr(pary_ost[help4,4]);
          if pary_ost[help4,6]>0 then stringgrid4.Cells[4,help3]:='+'+IntToStr(pary_ost[help4,6]) else stringgrid4.Cells[4,help3]:=IntToStr(pary_ost[help4,6]);
          inc(liczba[pary_ost[help4,1]]);
          inc(liczba[pary_ost[help4,2]]);
         end;
      end;

     if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_par) do
        begin
         inc(help4);
         help5:=0;
         if (liczba[pary_ost[help4,1]]<ile_razy) then inc(help5);
         if (liczba[pary_ost[help4,2]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            stringgrid4.cells[1,help3]:=IntToStr(pary_ost[help4,1])+' , '+IntToStr(pary_ost[help4,2]);
            stringgrid4.cells[2,help3]:=IntToStr(pary_ost[help4,3]);
            stringgrid4.cells[3,help3]:=IntToStr(pary_ost[help4,4]);
            if pary_ost[help4,6]>0 then stringgrid4.Cells[4,help3]:='+'+IntToStr(pary_ost[help4,6]) else stringgrid4.Cells[4,help3]:=IntToStr(pary_ost[help4,6]);
            inc(liczba[pary_ost[help4,1]]);
            inc(liczba[pary_ost[help4,2]]);
           end;
        end;
     end;
    if (help4=ilosc_par) and (help3<help1+help6) then stringgrid4.RowCount:=help3+1;    
   end else
   begin
    stringgrid4.rowcount:=ilosc_par+1;
    for help1:=1 to ilosc_par do
     begin
      stringgrid4.cells[1,help1]:=(IntToStr(pary_ost[help1,1])+', '+IntToStr(pary_ost[help1,2]));
      stringgrid4.cells[2,help1]:=IntToStr(pary_ost[help1,3]);
      stringgrid4.Cells[3,help1]:=IntToStr(pary_ost[help1,4]);
      if pary_ost[help1,6]>0 then stringgrid4.Cells[4,help1]:='+'+IntToStr(pary_ost[help1,6]) else stringgrid4.Cells[4,help1]:=IntToStr(pary_ost[help1,6]);
     end;
   end;

// #######################################################################################################
//                                      TROJKI

  if radiobutton1.Checked then if radiobutton3.Checked then sortuj_trojki(4,1) else sortuj_trojki(4,0);
  if radiobutton2.Checked then if radiobutton3.Checked then sortuj_trojki(5,1) else sortuj_trojki(5,0);
  if radiobutton5.Checked and temp_trojek then if radiobutton3.Checked then sortuj_trojki(6,1) else sortuj_trojki(6,0);

  if checkbox1.checked then
   begin

    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=0;

    ile_razy:=spinedit9.Value;
    
    help1:=ilosc_liczb_los*ile_razy div 3;
    help2:=ilosc_liczb_los*ile_razy mod 3;

    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ilosc_trojek then stringgrid5.RowCount:=ilosc_trojek+1 else stringgrid5.rowcount:=help1+help6+1;

    help3:=0;
    help4:=0;

     while (help3<help1) and (help4<ilosc_trojek) do
      begin
       inc(help4);
        if (liczba[trojki_ost[help4,1]]<ile_razy) and (liczba[trojki_ost[help4,2]]<ile_razy) and (liczba[trojki_ost[help4,3]]<ile_razy) then
         begin
          inc(help3);

          stringgrid5.cells[1,help3]:=(IntToStr(trojki_ost[help4,1])+', '+IntToStr(trojki_ost[help4,2])+', '+IntToStr(trojki_ost[help4,3]));
          stringgrid5.cells[2,help3]:=IntToStr(trojki_ost[help4,4]);
          stringgrid5.Cells[3,help3]:=IntToStr(trojki_ost[help4,5]);
          if trojki_ost[help4,6]>0 then stringgrid5.Cells[4,help3]:='+'+IntToStr(trojki_ost[help4,6]) else stringgrid5.Cells[4,help3]:=IntToStr(trojki_ost[help4,6]);

          inc(liczba[trojki_ost[help4,1]]);
          inc(liczba[trojki_ost[help4,2]]);
          inc(liczba[trojki_ost[help4,3]]);
         end;
      end;


    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_trojek) do
        begin
         inc(help4);
         help5:=0;
         if (liczba[trojki_ost[help4,1]]<ile_razy) then inc(help5);
         if (liczba[trojki_ost[help4,2]]<ile_razy) then inc(help5);
         if (liczba[trojki_ost[help4,3]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);

            stringgrid5.cells[1,help3]:=(IntToStr(trojki_ost[help4,1])+', '+IntToStr(trojki_ost[help4,2])+', '+IntToStr(trojki_ost[help4,3]));
            stringgrid5.cells[2,help3]:=IntToStr(trojki_ost[help4,4]);
            stringgrid5.Cells[3,help3]:=IntToStr(trojki_ost[help4,5]);
            if trojki_ost[help4,6]>0 then stringgrid5.Cells[4,help3]:='+'+IntToStr(trojki_ost[help4,6]) else stringgrid5.Cells[4,help3]:=IntToStr(trojki_ost[help4,6]);

            inc(liczba[trojki_ost[help4,1]]);
            inc(liczba[trojki_ost[help4,2]]);
            inc(liczba[trojki_ost[help4,3]]);
           end;
        end;
     end;
    if (help4=ilosc_trojek) and (help3<help1+help6) then stringgrid5.RowCount:=help3+1;
   end else
   begin
    stringgrid5.rowcount:=ilosc_trojek+1;
    for help1:=1 to ilosc_trojek do
     begin
      stringgrid5.cells[1,help1]:=(IntToStr(trojki_ost[help1,1])+', '+IntToStr(trojki_ost[help1,2])+', '+IntToStr(trojki_ost[help1,3]));
      stringgrid5.cells[2,help1]:=IntToStr(trojki_ost[help1,4]);
      stringgrid5.Cells[3,help1]:=IntToStr(trojki_ost[help1,5]);
      if trojki_ost[help1,6]>0 then stringgrid5.Cells[4,help1]:='+'+IntToStr(trojki_ost[help1,6]) else stringgrid5.Cells[4,help1]:=IntToStr(trojki_ost[help1,6]);
     end;
   end;

 end;
end;

procedure TForm19.CheckBox1Click(Sender: TObject);
begin
  checkbox3.Enabled := checkbox1.Checked;
end;

procedure TForm19.CheckBox3Click(Sender: TObject);
begin
  checkbox1.Enabled := not checkbox3.Checked;
end;

end.
