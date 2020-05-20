unit inne;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,main, ComCtrls, Spin, Buttons, Grids, Gauges;

type
  TForm5 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton5: TSpeedButton;
    StringGrid7: TStringGrid;
    StringGrid8: TStringGrid;
    Gauge1: TGauge;
    StringGrid4: TStringGrid;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    SB_pamietaj: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure StringGrid5SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid6SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
  private
    { Private declarations }
  public


  procedure inne_statystyki(od_,do_:integer);
  procedure pokaz_mapke1(od_,do_,numer:integer);//pokazuje mape rozk³adów dla przedzia³ów
  procedure pokaz_mapke2(od_,do_,numer:integer);//pokazuje mape rozk³adów dla koñcówek

    { Public declarations }
  end;

var
  Form5: TForm5;
  czy_byly_inne:boolean;
  zak1,zak2:word;

  powt_pozycji:array[1..20,1..4] of real;

implementation

uses Addins;

{$R *.DFM}

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
zapisz_opcje('inne','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
zapisz_opcje('inne','od_'+prefiks_gry,spinedit1.value);
zapisz_opcje('inne','do_'+prefiks_gry,spinedit2.value);
zapisz_opcje('inne','zakladka_'+prefiks_gry,PageControl1.ActivePageIndex);
Action := caFree;
Form5:=nil;
end;

procedure TForm5.FormCreate(Sender: TObject);
var
help1,help2:integer;
pamietaj:boolean;
begin
czy_byly_inne:=false;

help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

pamietaj:=wczytaj_opcje('inne','pamietaj_ustawienia_'+prefiks_gry,false);
SB_pamietaj.Down:=pamietaj;
if pamietaj then
 begin
  help1:=wczytaj_opcje('inne','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('inne','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

  spinedit1.Value:=help1;
  spinedit2.Value:=help2;
  spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

if Gra.Numer=1 then
 begin
  stringgrid4.RowCount:=21;
  stringgrid5.RowCount:=11;
  stringgrid5.cells[0,0]:='Przedzia³';
  stringgrid5.cells[1,0]:='Iloœæ';
  stringgrid5.cells[2,0]:='Œrednio';
  stringgrid5.cells[3,0]:='Ostatnio';
  stringgrid5.cells[0,1]:='1-40';
  stringgrid5.cells[0,2]:='41-80';
  stringgrid5.cells[0,3]:='1-10';
  stringgrid5.cells[0,4]:='11-20';
  stringgrid5.cells[0,5]:='21-30';
  stringgrid5.cells[0,6]:='31-40';
  stringgrid5.cells[0,7]:='41-50';
  stringgrid5.cells[0,8]:='51-60';
  stringgrid5.cells[0,9]:='61-70';
  stringgrid5.cells[0,10]:='71-80';
 end;

if Gra.Numer=2 then
 begin
  stringgrid4.RowCount:=7;
  stringgrid5.RowCount:=8;
  stringgrid5.cells[0,0]:='Przedzia³';
  stringgrid5.cells[1,0]:='Iloœæ';
  stringgrid5.cells[2,0]:='Œrednio';
  stringgrid5.cells[3,0]:='Ostatnio';
  stringgrid5.cells[0,1]:='1-24';
  stringgrid5.cells[0,2]:='25-49';
  stringgrid5.cells[0,3]:='1-10';
  stringgrid5.cells[0,4]:='11-20';
  stringgrid5.cells[0,5]:='21-30';
  stringgrid5.cells[0,6]:='31-40';
  stringgrid5.cells[0,7]:='41-49';
 end;

if Gra.Numer=3 then
 begin
  stringgrid4.RowCount:=6;
  stringgrid5.RowCount:=7;
  stringgrid5.cells[0,0]:='Przedzia³';
  stringgrid5.cells[1,0]:='Iloœæ';
  stringgrid5.cells[2,0]:='Œrednio';
  stringgrid5.cells[3,0]:='Ostatnio';
  stringgrid5.cells[0,1]:='1-21';
  stringgrid5.cells[0,2]:='22-42';
  stringgrid5.cells[0,3]:='1-10';
  stringgrid5.cells[0,4]:='11-20';
  stringgrid5.cells[0,5]:='21-30';
  stringgrid5.cells[0,6]:='31-42';
 end;



//parzyste i nieparzyste
stringgrid1.cells[0,0]:='Nr. losowania';
stringgrid1.cells[1,0]:='Data';
stringgrid1.cells[2,0]:='Parzystych';
stringgrid1.cells[3,0]:='Nieparzystych';
stringgrid1.ColWidths[0]:=76;
stringgrid1.ColWidths[1]:=76;
stringgrid1.ColWidths[2]:=76;
stringgrid1.ColWidths[3]:=76;
stringgrid1.RowCount:=losowan;
//dane do parzystych i nieparzystych
stringgrid2.Ctl3D:=false;
stringgrid2.ColWidths[0]:=100;
stringgrid2.ColWidths[1]:=62;
stringgrid2.cells[0,0]:='Parzystych';
stringgrid2.cells[0,1]:='Nieparzystych';
stringgrid2.cells[0,2]:='Max. parzystych';
stringgrid2.cells[0,3]:='Max. nieparzystych';
stringgrid2.cells[0,4]:='Min. parzystych';
stringgrid2.cells[0,5]:='Min. nieparzystych';
stringgrid2.cells[0,6]:='Œr. parzystych';
stringgrid2.cells[0,7]:='Œr. nieparzystych';
//powtórzenia
stringgrid3.cells[0,0]:='Nr. losowania';
stringgrid3.cells[1,0]:='Data';
stringgrid3.cells[2,0]:='Powtórzeñ';
stringgrid3.ColWidths[0]:=76;
stringgrid3.ColWidths[1]:=76;
stringgrid3.ColWidths[2]:=76;
stringgrid3.RowCount:=losowan;
//suma
stringgrid4.cells[0,0]:='Nr. losowania';
stringgrid4.cells[1,0]:='Data';
stringgrid4.cells[2,0]:='Suma';
stringgrid4.ColWidths[0]:=76;
stringgrid4.ColWidths[1]:=76;
stringgrid4.ColWidths[2]:=76;
stringgrid4.RowCount:=losowan;
//koñcówki
stringgrid6.cells[0,0]:='Koñcówka';
stringgrid6.cells[1,0]:='Iloœæ';
stringgrid6.cells[2,0]:='Œrednio';
stringgrid6.cells[3,0]:='Ostatnio';
stringgrid6.cells[0,1]:='-0';
stringgrid6.cells[0,2]:='-1';
stringgrid6.cells[0,3]:='-2';
stringgrid6.cells[0,4]:='-3';
stringgrid6.cells[0,5]:='-4';
stringgrid6.cells[0,6]:='-5';
stringgrid6.cells[0,7]:='-6';
stringgrid6.cells[0,8]:='-7';
stringgrid6.cells[0,9]:='-8';
stringgrid6.cells[0,10]:='-9';

stringgrid7.ColWidths[1]:=22;
stringgrid7.ColWidths[2]:=12;
stringgrid7.ColWidths[3]:=22;
stringgrid7.RowCount:=losowan;
stringgrid7.cells[0,0]:='Losowanie';
stringgrid7.cells[1,0]:='?';
stringgrid7.cells[2,0]:='-';
stringgrid7.cells[3,0]:='?';

stringgrid8.ColWidths[1]:=22;
stringgrid8.ColWidths[2]:=12;
stringgrid8.ColWidths[3]:=22;
stringgrid8.RowCount:=losowan;
stringgrid8.cells[0,0]:='Losowanie';
stringgrid8.cells[1,0]:='';
stringgrid8.cells[2,0]:='-';
stringgrid8.cells[3,0]:='?';

if pamietaj then PageControl1.ActivePageIndex:=wczytaj_opcje('inne','zakladka_'+prefiks_gry,0);

czy_byly_inne:=false;
speedbutton5.Enabled:=false;
end;

procedure TForm5.inne_statystyki(od_, do_: integer);
var
help1,help2,help3,help4,help5,parzyste,nieparzyste,help6,help7:integer;
l1_40,l41_80,l1_10,l11_20,l21_30,l31_40,l41_50,l51_60,l61_70,l71_80:integer;
l1_24,l25_49,l41_49,l1_21,l22_42,l31_42:integer;
pomoc1,pomoc2:real;
temp,temp1,temp2,temp3,skok:integer;
liczba:string;
koncowki:array[0..9]of integer;
tablica:array[1..5000,1..2] of integer;
pozycje:array[1..20,1..3]of integer;
suma,suma_max,suma_min:integer;
begin
form1.stoper_start;
zak1:=od_;
zak2:=do_;
gauge1.Progress:=0;
gauge1.MaxValue:=17;
//parzyste i nieparzyste
for help1:=1 to losowan do
 begin
  tablica[help1,1]:=0;
  tablica[help1,2]:=0;
 end;
help4:=0;
help5:=0;
for help1:=od_ to do_ do
 begin
  parzyste:=0;
  for help2:=1 to ilosc_liczb_los do
    begin
      if losowanie[help1,help2] mod 2 = 0 then inc(parzyste);
      nieparzyste:=ilosc_liczb_los-parzyste;
      tablica[help1,1]:=parzyste;
      tablica[help1,2]:=nieparzyste;
    end;
  end;
gauge1.Progress:=1;
//wypisanie parzystych i nieparzystych

help6:=0;
help7:=0;

temp:=do_-od_+1;
temp1:=-1;
for help1:=1 to temp do
 begin
  inc(temp1);
  stringgrid1.cells[0,help1]:=IntToStr(od_+temp1);
  stringgrid1.cells[1,help1]:=(IntToStr(losowanie[od_+temp1,21])+'.'+IntToStr(losowanie[od_+temp1,22])+'.'+IntToStr(losowanie[od_+temp1,23]));
  stringgrid1.cells[2,help1]:=IntToStr(tablica[od_+temp1,1]);
  stringgrid1.cells[3,help1]:=IntToStr(tablica[od_+temp1,2]);
  help4:=help4+tablica[od_+temp1,1];
  help5:=help5+tablica[od_+temp1,2];
  if tablica[od_+temp1,1]>help6 then help6:=tablica[od_+temp1,1];
  if tablica[od_+temp1,2]>help7 then help7:=tablica[od_+temp1,2];
 end;
gauge1.Progress:=2;

stringgrid1.rowcount:=temp+1;
if temp>10 then stringgrid1.TopRow:=temp-9;
stringgrid2.cells[1,0]:=IntToStr(help4); //ilosc parzystych
stringgrid2.cells[1,1]:=IntToStr(help5); //ilosc nieparzystych
stringgrid2.cells[1,2]:=IntToStr(help6);     //max nieparzystych
stringgrid2.cells[1,3]:=IntToStr(help7);  //min nieparzystych
stringgrid2.cells[1,4]:=IntToStr(ilosc_liczb_los-help7);     //max parzystych
stringgrid2.cells[1,5]:=IntToStr(ilosc_liczb_los-help6);  //min parzystych
pomoc1:=help4/temp;
stringgrid2.cells[1,6]:=FormatFloat('0.00', pomoc1);//srednio nieparzystych
pomoc1:=help5/temp;
stringgrid2.cells[1,7]:=FormatFloat('0.00', pomoc1);//srednio parzystych
gauge1.Progress:=3;

//powtórzenia
for help1:=1 to losowan do
 begin
  tablica[help1,1]:=0;
  tablica[help1,2]:=0;
 end;
gauge1.Progress:=4;
help5:=0;
if od_<2 then temp3:=2 else temp3:=od_;

for help1:=temp3 to do_ do
 begin
  for help2:=1 to ilosc_liczb_los do
   begin
    for help3:=1 to ilosc_liczb_los do
     if losowanie[help1,help2]=losowanie[help1-1,help3] then inc(tablica[help1-1,1]);
   end;
 end;
gauge1.Progress:=5;

help6:=0;
help7:=100;
temp1:=0;
help5:=0;
temp2:=20;

for help1:=2 to temp do
 begin
  temp1:=temp1+1;
  stringgrid3.cells[0,help1-1]:=IntToStr(od_+temp1);
  stringgrid3.cells[1,help1-1]:=(IntToStr(losowanie[od_+temp1,21])+'.'+IntToStr(losowanie[od_+temp1,22])+'.'+IntToStr(losowanie[od_+temp1,23]));
  stringgrid3.cells[2,help1-1]:=IntToStr(tablica[od_+temp1-1,1]);
  help5:=help5+tablica[od_+temp1-1,1];
  if tablica[od_+temp1-1,1]>help6 then help6:=tablica[od_+temp1-1,1];
  if temp2>tablica[od_+temp1-1,1] then temp2:=tablica[od_+temp1-1,1];
 end;
gauge1.Progress:=6;

stringgrid3.rowcount:=temp;
if temp>10 then stringgrid3.TopRow:=temp-10;
pomoc1:=help5/(do_-od_);
label6.caption:=FormatFloat('0.00', pomoc1);     //srednio
label7.caption:=IntToStr(help6);                 //max
label8.caption:=IntToStr(temp2);                 //min
gauge1.Progress:=7;

if Gra.Numer=1 then
 begin
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
  for help1:=od_ to do_ do
   for help2:=1 to 20 do
    begin
     if losowanie[help1,help2]<=40 then l1_40:=l1_40+1 else l41_80:=l41_80+1;
     if losowanie[help1,help2]<=10 then l1_10:=l1_10+1 else
      if losowanie[help1,help2]<=20 then l11_20:=l11_20+1 else
       if losowanie[help1,help2]<=30 then l21_30:=l21_30+1 else
        if losowanie[help1,help2]<=40 then l31_40:=l31_40+1 else
         if losowanie[help1,help2]<=50 then l41_50:=l41_50+1 else
          if losowanie[help1,help2]<=60 then l51_60:=l51_60+1 else
           if losowanie[help1,help2]<=70 then l61_70:=l61_70+1 else l71_80:=l71_80+1;
    end;
  gauge1.Progress:=8;
  stringgrid5.cells[1,1]:=IntToStr(l1_40);
  stringgrid5.cells[1,2]:=IntToStr(l41_80);
  stringgrid5.cells[1,3]:=IntToStr(l1_10);
  stringgrid5.cells[1,4]:=IntToStr(l11_20);
  stringgrid5.cells[1,5]:=IntToStr(l21_30);
  stringgrid5.cells[1,6]:=IntToStr(l31_40);
  stringgrid5.cells[1,7]:=IntToStr(l41_50);
  stringgrid5.cells[1,8]:=IntToStr(l51_60);
  stringgrid5.cells[1,9]:=IntToStr(l61_70);
  stringgrid5.cells[1,10]:=IntToStr(l71_80);
  gauge1.Progress:=9;
  pomoc2:=0;
  pomoc1:=l1_40/temp;
  stringgrid5.cells[2,1]:=FormatFloat('0.00', pomoc1);
  pomoc1:=l41_80/temp;
  stringgrid5.cells[2,2]:=FormatFloat('0.00', pomoc1);
  pomoc1:=l1_10/temp;
  stringgrid5.cells[2,3]:=FormatFloat('0.00', pomoc1);
  pomoc1:=l11_20/temp;
  stringgrid5.cells[2,4]:=FormatFloat('0.00', pomoc1);
  pomoc1:=l21_30/temp;
  stringgrid5.cells[2,5]:=FormatFloat('0.00', pomoc1);
  pomoc1:=l31_40/temp;
  stringgrid5.cells[2,6]:=FormatFloat('0.00', pomoc1);
  pomoc1:=l41_50/temp;
  stringgrid5.cells[2,7]:=FormatFloat('0.00', pomoc1);
  pomoc1:=l51_60/temp;
  stringgrid5.cells[2,8]:=FormatFloat('0.00', pomoc1);
  pomoc1:=l61_70/temp;
  stringgrid5.cells[2,9]:=FormatFloat('0.00', pomoc1);
  pomoc1:=l71_80/temp;
  stringgrid5.cells[2,10]:=FormatFloat('0.00', pomoc1);
  gauge1.Progress:=10;
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

  for help2:=1 to 20 do
   begin
    if losowanie[do_,help2]<=40 then l1_40:=l1_40+1 else l41_80:=l41_80+1;
     if losowanie[do_,help2]<=10 then l1_10:=l1_10+1 else
      if losowanie[do_,help2]<=20 then l11_20:=l11_20+1 else
       if losowanie[do_,help2]<=30 then l21_30:=l21_30+1 else
        if losowanie[do_,help2]<=40 then l31_40:=l31_40+1 else
         if losowanie[do_,help2]<=50 then l41_50:=l41_50+1 else
          if losowanie[do_,help2]<=60 then l51_60:=l51_60+1 else
           if losowanie[do_,help2]<=70 then l61_70:=l61_70+1 else l71_80:=l71_80+1;
   end;

  gauge1.Progress:=11;

  stringgrid5.cells[3,1]:=IntToStr(l1_40);
  stringgrid5.cells[3,2]:=IntToStr(l41_80);
  stringgrid5.cells[3,3]:=IntToStr(l1_10);
  stringgrid5.cells[3,4]:=IntToStr(l11_20);
  stringgrid5.cells[3,5]:=IntToStr(l21_30);
  stringgrid5.cells[3,6]:=IntToStr(l31_40);
  stringgrid5.cells[3,7]:=IntToStr(l41_50);
  stringgrid5.cells[3,8]:=IntToStr(l51_60);
  stringgrid5.cells[3,9]:=IntToStr(l61_70);
  stringgrid5.cells[3,10]:=IntToStr(l71_80);

  gauge1.Progress:=12;
 end;

if Gra.Numer=2 then
 begin
  l1_24:=0;
  l25_49:=0;
  l1_10:=0;
  l11_20:=0;
  l21_30:=0;
  l31_40:=0;
  l41_49:=0;
  for help1:=od_ to do_ do
   for help2:=1 to 6 do
    begin
     if losowanie[help1,help2]<=24 then inc(l1_24) else inc(l25_49);
      if losowanie[help1,help2]<=10 then inc(l1_10) else
       if losowanie[help1,help2]<=20 then inc(l11_20) else
        if losowanie[help1,help2]<=30 then inc(l21_30) else
         if losowanie[help1,help2]<=40 then inc(l31_40) else inc(l41_49);
    end;
  gauge1.Progress:=8;
  stringgrid5.cells[1,1]:=IntToStr(l1_24);
  stringgrid5.cells[1,2]:=IntToStr(l25_49);
  stringgrid5.cells[1,3]:=IntToStr(l1_10);
  stringgrid5.cells[1,4]:=IntToStr(l11_20);
  stringgrid5.cells[1,5]:=IntToStr(l21_30);
  stringgrid5.cells[1,6]:=IntToStr(l31_40);
  stringgrid5.cells[1,7]:=IntToStr(l41_49);
  gauge1.Progress:=9;
  pomoc2:=0;
  stringgrid5.cells[2,1]:=FormatFloat('0.00',l1_24/temp);
  stringgrid5.cells[2,2]:=FormatFloat('0.00',l25_49/temp);
  stringgrid5.cells[2,3]:=FormatFloat('0.00',l1_10/temp);
  stringgrid5.cells[2,4]:=FormatFloat('0.00',l11_20/temp);
  stringgrid5.cells[2,5]:=FormatFloat('0.00',l21_30/temp);
  stringgrid5.cells[2,6]:=FormatFloat('0.00',l31_40/temp);
  stringgrid5.cells[2,7]:=FormatFloat('0.00',l41_49/temp);
  gauge1.Progress:=10;
  l1_24:=0;
  l25_49:=0;
  l1_10:=0;
  l11_20:=0;
  l21_30:=0;
  l31_40:=0;
  l41_49:=0;

  for help2:=1 to 6 do
   begin
     if losowanie[do_,help2]<=24 then inc(l1_24) else inc(l25_49);
      if losowanie[do_,help2]<=10 then inc(l1_10) else
       if losowanie[do_,help2]<=20 then inc(l11_20) else
        if losowanie[do_,help2]<=30 then inc(l21_30) else
         if losowanie[do_,help2]<=40 then inc(l31_40) else inc(l41_49);
   end;

  gauge1.Progress:=11;

  stringgrid5.cells[3,1]:=IntToStr(l1_24);
  stringgrid5.cells[3,2]:=IntToStr(l25_49);
  stringgrid5.cells[3,3]:=IntToStr(l1_10);
  stringgrid5.cells[3,4]:=IntToStr(l11_20);
  stringgrid5.cells[3,5]:=IntToStr(l21_30);
  stringgrid5.cells[3,6]:=IntToStr(l31_40);
  stringgrid5.cells[3,7]:=IntToStr(l41_49);

  gauge1.Progress:=12;
 end;

if Gra.Numer=3 then
 begin
  l1_21:=0;
  l22_42:=0;
  l1_10:=0;
  l11_20:=0;
  l21_30:=0;
  l31_42:=0;
  for help1:=od_ to do_ do
   for help2:=1 to 5 do
    begin
     if losowanie[help1,help2]<=21 then inc(l1_21) else inc(l22_42);
      if losowanie[help1,help2]<=10 then inc(l1_10) else
       if losowanie[help1,help2]<=20 then inc(l11_20) else
        if losowanie[help1,help2]<=30 then inc(l21_30) else inc(l31_42);
    end;
  gauge1.Progress:=8;
  stringgrid5.cells[1,1]:=IntToStr(l1_21);
  stringgrid5.cells[1,2]:=IntToStr(l22_42);
  stringgrid5.cells[1,3]:=IntToStr(l1_10);
  stringgrid5.cells[1,4]:=IntToStr(l11_20);
  stringgrid5.cells[1,5]:=IntToStr(l21_30);
  stringgrid5.cells[1,6]:=IntToStr(l31_42);
  gauge1.Progress:=9;
  pomoc2:=0;
  stringgrid5.cells[2,1]:=FormatFloat('0.00',l1_21/temp);
  stringgrid5.cells[2,2]:=FormatFloat('0.00',l22_42/temp);
  stringgrid5.cells[2,3]:=FormatFloat('0.00',l1_10/temp);
  stringgrid5.cells[2,4]:=FormatFloat('0.00',l11_20/temp);
  stringgrid5.cells[2,5]:=FormatFloat('0.00',l21_30/temp);
  stringgrid5.cells[2,6]:=FormatFloat('0.00',l31_42/temp);
  gauge1.Progress:=10;
  l1_21:=0;
  l22_42:=0;
  l1_10:=0;
  l11_20:=0;
  l21_30:=0;
  l31_42:=0;

  for help2:=1 to 5 do
   begin
     if losowanie[do_,help2]<=21 then inc(l1_21) else inc(l22_42);
      if losowanie[do_,help2]<=10 then inc(l1_10) else
       if losowanie[do_,help2]<=20 then inc(l11_20) else
        if losowanie[do_,help2]<=30 then inc(l21_30) else inc(l31_42);
   end;

  gauge1.Progress:=11;

  stringgrid5.cells[3,1]:=IntToStr(l1_21);
  stringgrid5.cells[3,2]:=IntToStr(l22_42);
  stringgrid5.cells[3,3]:=IntToStr(l1_10);
  stringgrid5.cells[3,4]:=IntToStr(l11_20);
  stringgrid5.cells[3,5]:=IntToStr(l21_30);
  stringgrid5.cells[3,6]:=IntToStr(l31_42);

  gauge1.Progress:=12;
 end;


for help1:=0 to 9 do koncowki[help1]:=0;


for help1:=od_ to do_ do
 for help2:=1 to ilosc_liczb_los do
  begin
   if losowanie[help1,help2]<10 then inc(koncowki[losowanie[help1,help2]]){:=koncowki[losowanie[help1,help2]]+1} else
    begin
     liczba:=IntToStr(losowanie[help1,help2]);
     inc(koncowki[StrToInt(liczba[length(liczba)])]);//:=koncowki[StrToInt(liczba[length(liczba)])]+1;
    end;
  end;

gauge1.Progress:=13;

for help1:=0 to 9 do
 begin
  stringgrid6.cells[1,help1+1]:=IntToStr(koncowki[help1]);
  pomoc1:=koncowki[help1]/temp;
  stringgrid6.cells[2,help1+1]:=FormatFloat('0.00', pomoc1);
 end;

gauge1.Progress:=14;

for help1:=0 to 9 do koncowki[help1]:=0;

 for help2:=1 to ilosc_liczb_los do
  begin
   if losowanie[do_,help2]<10 then koncowki[losowanie[do_,help2]]:=koncowki[losowanie[do_,help2]]+1 else
    begin
     liczba:=IntToStr(losowanie[do_,help2]);
     koncowki[StrToInt(liczba[length(liczba)])]:=koncowki[StrToInt(liczba[length(liczba)])]+1;
    end;
  end;

gauge1.Progress:=15;

for help1:=0 to 9 do
 begin
  stringgrid6.cells[3,help1+1]:=IntToStr(koncowki[help1]);
 end;

gauge1.Progress:=16;

// suma

temp:=do_-od_+1;
stringgrid4.RowCount:=temp+1;
suma_max:=0;
suma_min:=5000;
suma:=0;
for help1:=od_ to do_ do
 begin
  help2:=0;
  for help3:=1 to ilosc_liczb_los do help2:=help2+losowanie[help1,help3];
  stringgrid4.cells[0,help1-od_+1]:=IntToStr(help1);
  stringgrid4.cells[1,help1-od_+1]:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  stringgrid4.cells[2,help1-od_+1]:=IntToStr(help2);
  if help2<suma_min then suma_min:=help2;
  if help2>suma_max then suma_max:=help2;
  suma:=suma+help2;
 end;

if temp>10 then stringgrid4.TopRow:=temp-9; 

label12.Caption:=FormatFloat('0.00',suma/temp)+'  ('+IntToStr(suma)+')';
label13.Caption:=IntToStr(suma_max);
label14.caption:=IntToStr(suma_min);



gauge1.Progress:=17;
czy_byly_inne:=true;
speedbutton5.Enabled:=true;

form5.Caption:='Inne statystyki... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
end;

procedure TForm5.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm5.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm5.SpeedButton1Click(Sender: TObject);
begin
if (spinedit1.Value<spinedit2.Value) then inne_statystyki(spinedit1.Value,spinedit2.Value);
if (spinedit1.Value>spinedit2.Value) then inne_statystyki(spinedit2.value,spinedit1.value);
end;


procedure TForm5.SpeedButton5Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
case pagecontrol1.ActivePageIndex of
  0:form1.SaveDialog1.FileName:='ParzysteNieparzyste';
  1:form1.SaveDialog1.FileName:='Powtórzenia';
  2:form1.SaveDialog1.FileName:='PowtórzeniaPozycji';
  3:form1.SaveDialog1.FileName:='Przedzia³y';
  4:form1.SaveDialog1.FileName:='Koñcówki';
end;

if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
   case pagecontrol1.ActivePageIndex of
    0:for help1:=0 to stringgrid1.rowcount-1 do writeln(filename,stringgrid1.cells[0,help1]+';'+stringgrid1.cells[1,help1]+';'+stringgrid1.cells[2,help1]+';'+stringgrid1.cells[3,help1]+';'+stringgrid1.cells[4,help1]);
    1:for help1:=0 to stringgrid3.rowcount-1 do writeln(filename,stringgrid3.cells[0,help1]+';'+stringgrid3.cells[1,help1]+';'+stringgrid3.cells[2,help1]+';'+stringgrid3.cells[3,help1]);
    2:for help1:=0 to stringgrid4.rowcount-1 do writeln(filename,stringgrid4.cells[0,help1]+';'+stringgrid4.cells[1,help1]+';'+stringgrid4.cells[2,help1]+';'+stringgrid4.cells[3,help1]);
    3:for help1:=0 to stringgrid5.rowcount-1 do writeln(filename,stringgrid5.cells[0,help1]+';'+stringgrid5.cells[1,help1]+';'+stringgrid5.cells[2,help1]+';'+stringgrid5.cells[3,help1]);
    4:for help1:=0 to stringgrid6.rowcount-1 do writeln(filename,stringgrid6.cells[0,help1]+';'+stringgrid6.cells[1,help1]+';'+stringgrid6.cells[2,help1]+';'+stringgrid6.cells[3,help1]);
   end;
  closefile(filename);
 end else
 begin
   case pagecontrol1.ActivePageIndex of
    0:form1.zapiszHTML(form5.stringgrid1,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Inne','Parzyste Nieparzyste',1,zak1,zak2);
    1:form1.zapiszHTML(form5.stringgrid3,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Inne','Powtórzenia',1,zak1,zak2);
    2:form1.zapiszHTML(form5.stringgrid4,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Inne','Powtórzenia Pozycji',1,zak1,zak2);
    3:form1.zapiszHTML(form5.stringgrid5,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Inne','Przedzia³y',1,zak1,zak2);
    4:form1.zapiszHTML(form5.stringgrid6,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Inne','Koñcówki',1,zak1,zak2);
   end;
 end;
end;



procedure TForm5.pokaz_mapke1(od_, do_, numer: integer);
var
help1,help2,help3,help4:integer;
l1_40,l41_80,l1_10,l11_20,l21_30,l31_40,l41_50,l51_60,l61_70,l71_80:integer;
l1_24,l25_49,l41_49,l1_21,l22_42,l31_42:integer;
zmienna:real;
begin
help3:=0;
for help1:=1 to do_-od_+1 do
 begin
  stringgrid7.cells[1,help1]:='';
  stringgrid7.cells[2,help1]:='';
  stringgrid7.cells[3,help1]:='';
 end;
stringgrid7.RowCount:=do_-od_+2;



if numer=1 then
 begin
  if Gra.Numer=1 then
   begin
    zmienna:=StrToFloat(stringgrid5.cells[2,1]);
    stringgrid7.cells[1,0]:='1';
    stringgrid7.cells[3,0]:='40';
    for help1:=od_ to do_ do
     begin
      inc(help3);
      stringgrid7.cells[0,help3]:=IntToStr(help1);
      l1_40:=0;
      for help2:=1 to 20 do if losowanie[help1,help2]<=40 then inc(l1_40);
      if l1_40<zmienna then
       begin
        stringgrid7.cells[2,help3]:='+';
        if l1_40<>0 then stringgrid7.cells[1,help3]:=IntToStr(l1_40) else stringgrid7.cells[2,help3]:='-';
       end else
        begin
         stringgrid7.cells[2,help3]:='+';
         stringgrid7.cells[3,help3]:=IntToStr(l1_40);
        end;
     end;
   end else if Gra.Numer=2 then
   begin
    zmienna:=StrToFloat(stringgrid5.cells[2,1]);
    stringgrid7.cells[1,0]:='1';
    stringgrid7.cells[3,0]:='24';
    for help1:=od_ to do_ do
     begin
      inc(help3);
      stringgrid7.cells[0,help3]:=IntToStr(help1);
      l1_24:=0;
      for help2:=1 to 6 do if losowanie[help1,help2]<=24 then inc(l1_24);
      if l1_24<zmienna then
       begin
        stringgrid7.cells[2,help3]:='+';
        if l1_24<>0 then stringgrid7.cells[1,help3]:=IntToStr(l1_24) else stringgrid7.cells[2,help3]:='-';
       end else
        begin
         stringgrid7.cells[2,help3]:='+';
         stringgrid7.cells[3,help3]:=IntToStr(l1_24);
        end;
     end;
   end else if Gra.Numer=3 then
   begin
    zmienna:=StrToFloat(stringgrid5.cells[2,1]);
    stringgrid7.cells[1,0]:='1';
    stringgrid7.cells[3,0]:='21';
    for help1:=od_ to do_ do
     begin
      inc(help3);
      stringgrid7.cells[0,help3]:=IntToStr(help1);
      l1_21:=0;
      for help2:=1 to 5 do if losowanie[help1,help2]<=21 then inc(l1_21);
      if l1_21<zmienna then
       begin
        stringgrid7.cells[2,help3]:='+';
        if l1_21<>0 then stringgrid7.cells[1,help3]:=IntToStr(l1_21) else stringgrid7.cells[2,help3]:='-';
       end else
        begin
         stringgrid7.cells[2,help3]:='+';
         stringgrid7.cells[3,help3]:=IntToStr(l1_21);
        end;
     end;
   end;
 end;

if numer=2 then
 begin
  if Gra.Numer=1 then
   begin
    zmienna:=StrToFloat(stringgrid5.cells[2,2]);
    stringgrid7.cells[1,0]:='41';
    stringgrid7.cells[3,0]:='80';
    for help1:=od_ to do_ do
     begin
      inc(help3);
      stringgrid7.cells[0,help3]:=IntToStr(help1);
      l41_80:=0;
      for help2:=1 to 20 do if losowanie[help1,help2]>40 then inc(l41_80);
      if l41_80<zmienna then
       begin
        stringgrid7.cells[2,help3]:='+';
        if l41_80<>0 then stringgrid7.cells[1,help3]:=IntToStr(l41_80) else stringgrid7.cells[2,help3]:='-';
       end else
        begin
         stringgrid7.cells[2,help3]:='+';
         stringgrid7.cells[3,help3]:=IntToStr(l41_80);
        end;
     end;
   end else if Gra.Numer=2 then
   begin
    zmienna:=StrToFloat(stringgrid5.cells[2,2]);
    stringgrid7.cells[1,0]:='25';
    stringgrid7.cells[3,0]:='49';
    for help1:=od_ to do_ do
     begin
      inc(help3);
      stringgrid7.cells[0,help3]:=IntToStr(help1);
      l25_49:=0;
      for help2:=1 to 6 do if losowanie[help1,help2]>24 then inc(l25_49);
      if l25_49<zmienna then
       begin
        stringgrid7.cells[2,help3]:='+';
        if l25_49<>0 then stringgrid7.cells[1,help3]:=IntToStr(l25_49) else stringgrid7.cells[2,help3]:='-';
       end else
        begin
         stringgrid7.cells[2,help3]:='+';
         stringgrid7.cells[3,help3]:=IntToStr(l25_49);
        end;
     end;
   end else if Gra.Numer=3 then
   begin
    zmienna:=StrToFloat(stringgrid5.cells[2,2]);
    stringgrid7.cells[1,0]:='22';
    stringgrid7.cells[3,0]:='42';
    for help1:=od_ to do_ do
     begin
      inc(help3);
      stringgrid7.cells[0,help3]:=IntToStr(help1);
      l22_42:=0;
      for help2:=1 to 5 do if losowanie[help1,help2]>21 then inc(l22_42);
      if l22_42<zmienna then
       begin
        stringgrid7.cells[2,help3]:='+';
        if l22_42<>0 then stringgrid7.cells[1,help3]:=IntToStr(l22_42) else stringgrid7.cells[2,help3]:='-';
       end else
        begin
         stringgrid7.cells[2,help3]:='+';
         stringgrid7.cells[3,help3]:=IntToStr(l22_42);
        end;
     end;
   end;
 end;

if numer=3 then
 begin
  zmienna:=StrToFloat(stringgrid5.cells[2,3]);
  stringgrid7.cells[1,0]:='1';
  stringgrid7.cells[3,0]:='10';
  for help1:=od_ to do_ do
   begin
    inc(help3);
    stringgrid7.cells[0,help3]:=IntToStr(help1);
    l1_10:=0;
    for help2:=1 to ilosc_liczb_los do if losowanie[help1,help2]<=10 then inc(l1_10);
    if l1_10<zmienna then
     begin
      stringgrid7.cells[2,help3]:='+';
      if l1_10<>0 then stringgrid7.cells[1,help3]:=IntToStr(l1_10) else stringgrid7.cells[2,help3]:='-';
     end else
      begin
       stringgrid7.cells[2,help3]:='+';
       stringgrid7.cells[3,help3]:=IntToStr(l1_10);
      end;
   end;
 end;

if numer=4 then
 begin
  zmienna:=StrToFloat(stringgrid5.cells[2,4]);
  stringgrid7.cells[1,0]:='11';
  stringgrid7.cells[3,0]:='20';
  for help1:=od_ to do_ do
   begin
    inc(help3);
    stringgrid7.cells[0,help3]:=IntToStr(help1);
    l11_20:=0;
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]>10) and (losowanie[help1,help2]<=20) then inc(l11_20);
    if l11_20<zmienna then
     begin
      stringgrid7.cells[2,help3]:='+';
      if l11_20<>0 then stringgrid7.cells[1,help3]:=IntToStr(l11_20) else stringgrid7.cells[2,help3]:='-';
     end else
      begin
       stringgrid7.cells[2,help3]:='+';
       stringgrid7.cells[3,help3]:=IntToStr(l11_20);
      end;
   end;
 end;

if numer=5 then
 begin
  zmienna:=StrToFloat(stringgrid5.cells[2,5]);
  stringgrid7.cells[1,0]:='21';
  stringgrid7.cells[3,0]:='30';
  for help1:=od_ to do_ do
   begin
    inc(help3);
    stringgrid7.cells[0,help3]:=IntToStr(help1);
    l21_30:=0;
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]>20) and (losowanie[help1,help2]<=30) then inc(l21_30);
    if l21_30<zmienna then
     begin
      stringgrid7.cells[2,help3]:='+';
      if l21_30<>0 then stringgrid7.cells[1,help3]:=IntToStr(l21_30) else stringgrid7.cells[2,help3]:='-';
     end else
      begin
       stringgrid7.cells[2,help3]:='+';
       stringgrid7.cells[3,help3]:=IntToStr(l21_30);
      end;
   end;
 end;

if numer=6 then
 begin
  if (Gra.Numer=1) or (Gra.Numer=2) then
   begin
    zmienna:=StrToFloat(stringgrid5.cells[2,6]);
    stringgrid7.cells[1,0]:='31';
    stringgrid7.cells[3,0]:='40';
    for help1:=od_ to do_ do
     begin
      inc(help3);
      stringgrid7.cells[0,help3]:=IntToStr(help1);
      l31_40:=0;
      for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]>30) and (losowanie[help1,help2]<=40) then inc(l31_40);
      if l31_40<zmienna then
       begin
        stringgrid7.cells[2,help3]:='+';
        if l31_40<>0 then stringgrid7.cells[1,help3]:=IntToStr(l31_40) else stringgrid7.cells[2,help3]:='-';
       end else
        begin
         stringgrid7.cells[2,help3]:='+';
         stringgrid7.cells[3,help3]:=IntToStr(l31_40);
        end;
     end;
   end else if Gra.Numer=3 then
   begin
    zmienna:=StrToFloat(stringgrid5.cells[2,6]);
    stringgrid7.cells[1,0]:='31';
    stringgrid7.cells[3,0]:='42';
    for help1:=od_ to do_ do
     begin
      inc(help3);
      stringgrid7.cells[0,help3]:=IntToStr(help1);
      l31_42:=0;
      for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]>30) then inc(l31_42);
      if l31_42<zmienna then
       begin
        stringgrid7.cells[2,help3]:='+';
        if l31_42<>0 then stringgrid7.cells[1,help3]:=IntToStr(l31_42) else stringgrid7.cells[2,help3]:='-';
       end else
        begin
         stringgrid7.cells[2,help3]:='+';
         stringgrid7.cells[3,help3]:=IntToStr(l31_42);
        end;
     end;
   end;
 end;

if numer=7 then
 begin
  if Gra.Numer=1 then
   begin
    zmienna:=StrToFloat(stringgrid5.cells[2,7]);
    stringgrid7.cells[1,0]:='41';
    stringgrid7.cells[3,0]:='50';
    for help1:=od_ to do_ do
     begin
      inc(help3);
      stringgrid7.cells[0,help3]:=IntToStr(help1);
      l41_50:=0;
      for help2:=1 to 20 do if (losowanie[help1,help2]>40) and (losowanie[help1,help2]<=50) then inc(l41_50);
      if l41_50<zmienna then
       begin
        stringgrid7.cells[2,help3]:='+';
        if l41_50<>0 then stringgrid7.cells[1,help3]:=IntToStr(l41_50) else stringgrid7.cells[2,help3]:='-';
       end else
        begin
         stringgrid7.cells[2,help3]:='+';
         stringgrid7.cells[3,help3]:=IntToStr(l41_50);
        end;
     end;
   end else if Gra.Numer=2 then
   begin
    zmienna:=StrToFloat(stringgrid5.cells[2,7]);
    stringgrid7.cells[1,0]:='41';
    stringgrid7.cells[3,0]:='49';
    for help1:=od_ to do_ do
     begin
      inc(help3);
      stringgrid7.cells[0,help3]:=IntToStr(help1);
      l41_49:=0;
      for help2:=1 to 6 do if (losowanie[help1,help2]>40) then inc(l41_49);
      if l41_49<zmienna then
       begin
        stringgrid7.cells[2,help3]:='+';
        if l41_49<>0 then stringgrid7.cells[1,help3]:=IntToStr(l41_49) else stringgrid7.cells[2,help3]:='-';
       end else
        begin
         stringgrid7.cells[2,help3]:='+';
         stringgrid7.cells[3,help3]:=IntToStr(l41_49);
        end;
     end;
   end;
 end;

if numer=8 then
 begin
  zmienna:=StrToFloat(stringgrid5.cells[2,8]);
  stringgrid7.cells[1,0]:='51';
  stringgrid7.cells[3,0]:='60';
  for help1:=od_ to do_ do
   begin
    inc(help3);
    stringgrid7.cells[0,help3]:=IntToStr(help1);
    l51_60:=0;
    for help2:=1 to 20 do if (losowanie[help1,help2]>50) and (losowanie[help1,help2]<=60) then inc(l51_60);
    if l51_60<zmienna then
     begin
      stringgrid7.cells[2,help3]:='+';
      if l51_60<>0 then stringgrid7.cells[1,help3]:=IntToStr(l51_60) else stringgrid7.cells[2,help3]:='-';
     end else
      begin
       stringgrid7.cells[2,help3]:='+';
       stringgrid7.cells[3,help3]:=IntToStr(l51_60);
      end;
   end;
 end;

if numer=9 then
 begin
  zmienna:=StrToFloat(stringgrid5.cells[2,9]);
  stringgrid7.cells[1,0]:='61';
  stringgrid7.cells[3,0]:='70';
  for help1:=od_ to do_ do
   begin
    inc(help3);
    stringgrid7.cells[0,help3]:=IntToStr(help1);
    l61_70:=0;
    for help2:=1 to 20 do if (losowanie[help1,help2]>60) and (losowanie[help1,help2]<=70) then inc(l61_70);
    if l61_70<zmienna then
     begin
      stringgrid7.cells[2,help3]:='+';
      if l61_70<>0 then stringgrid7.cells[1,help3]:=IntToStr(l61_70) else stringgrid7.cells[2,help3]:='-';
     end else
      begin
       stringgrid7.cells[2,help3]:='+';
       stringgrid7.cells[3,help3]:=IntToStr(l61_70);
      end;
   end;
 end;

if numer=10 then
 begin
  zmienna:=StrToFloat(stringgrid5.cells[2,10]);
  stringgrid7.cells[1,0]:='71';
  stringgrid7.cells[3,0]:='80';
  for help1:=od_ to do_ do
   begin
    inc(help3);
    stringgrid7.cells[0,help3]:=IntToStr(help1);
    l71_80:=0;
    for help2:=1 to 20 do if losowanie[help1,help2]>70 then inc(l71_80);
    if l71_80<zmienna then
     begin
      stringgrid7.cells[2,help3]:='+';
      if l71_80<>0 then stringgrid7.cells[1,help3]:=IntToStr(l71_80) else stringgrid7.cells[2,help3]:='-';
     end else
      begin
       stringgrid7.cells[2,help3]:='+';
       stringgrid7.cells[3,help3]:=IntToStr(l71_80);
      end;
   end;
 end;

if stringgrid7.RowCount>11 then stringgrid7.topRow:=do_-od_+2-10; 
end;


{ TODO : ta funkcje mozna zdecydowanie uproscic, reszta z dzielenia przez 10 i bedzie oka }
procedure TForm5.pokaz_mapke2(od_, do_, numer: integer);
var
help1,help2,help3,help4:integer;
k0,k1,k2,k3,k4,k5,k6,k7,k8,k9:integer;
zmienna:real;
begin
for help1:=1 to do_-od_+1 do
 begin
  stringgrid8.cells[1,help1]:='';
  stringgrid8.cells[2,help1]:='';
  stringgrid8.cells[3,help1]:='';
 end;
stringgrid8.RowCount:=do_-od_+2;

if numer=1 then
 begin
  stringgrid8.cells[3,0]:='0';
  help3:=0;
  zmienna:=StrToFloat(stringgrid6.cells[2,1]);
  for help1:=od_ to do_ do
   begin
    k0:=0;
    inc(help3);
    stringgrid8.cells[0,help3]:=IntToStr(help1);
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]=10) or (losowanie[help1,help2]=20) or (losowanie[help1,help2]=30) or (losowanie[help1,help2]=40) or (losowanie[help1,help2]=50) or (losowanie[help1,help2]=60) or (losowanie[help1,help2]=70) or (losowanie[help1,help2]=80) then inc(k0);
    stringgrid8.cells[2,help3]:='+';
    if k0<zmienna then if k0<>0 then stringgrid8.cells[1,help3]:=IntToStr(k0) else stringgrid8.cells[2,help3]:='-';
    if k0>=zmienna then stringgrid8.cells[3,help3]:=IntToStr(k0);
   end;
 end;

if numer=2 then
 begin
  stringgrid8.cells[3,0]:='1';
  help3:=0;
  zmienna:=StrToFloat(stringgrid6.cells[2,2]);
  for help1:=od_ to do_ do
   begin
    k1:=0;
    inc(help3);
    stringgrid8.cells[0,help3]:=IntToStr(help1);
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]=11) or (losowanie[help1,help2]=21) or (losowanie[help1,help2]=31) or (losowanie[help1,help2]=41) or (losowanie[help1,help2]=51) or (losowanie[help1,help2]=61) or (losowanie[help1,help2]=71) or (losowanie[help1,help2]=1) then inc(k1);
    stringgrid8.cells[2,help3]:='+';
    if k1<zmienna then if k1<>0 then stringgrid8.cells[1,help3]:=IntToStr(k1) else stringgrid8.cells[2,help3]:='-';
    if k1>=zmienna then stringgrid8.cells[3,help3]:=IntToStr(k1);
   end;
 end;

if numer=3 then
 begin
  stringgrid8.cells[3,0]:='2';
  help3:=0;
  zmienna:=StrToFloat(stringgrid6.cells[2,3]);
  for help1:=od_ to do_ do
   begin
    k2:=0;
    inc(help3);
    stringgrid8.cells[0,help3]:=IntToStr(help1);
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]=12) or (losowanie[help1,help2]=22) or (losowanie[help1,help2]=32) or (losowanie[help1,help2]=42) or (losowanie[help1,help2]=52) or (losowanie[help1,help2]=62) or (losowanie[help1,help2]=72) or (losowanie[help1,help2]=2) then inc(k2);
    stringgrid8.cells[2,help3]:='+';
    if k2<zmienna then if k2<>0 then stringgrid8.cells[1,help3]:=IntToStr(k2) else stringgrid8.cells[2,help3]:='-';
    if k2>=zmienna then stringgrid8.cells[3,help3]:=IntToStr(k2);
   end;
 end;

if numer=4 then
 begin
  stringgrid8.cells[3,0]:='3';
  help3:=0;
  zmienna:=StrToFloat(stringgrid6.cells[2,4]);
  for help1:=od_ to do_ do
   begin
    k3:=0;
    inc(help3);
    stringgrid8.cells[0,help3]:=IntToStr(help1);
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]=13) or (losowanie[help1,help2]=23) or (losowanie[help1,help2]=33) or (losowanie[help1,help2]=43) or (losowanie[help1,help2]=53) or (losowanie[help1,help2]=63) or (losowanie[help1,help2]=73) or (losowanie[help1,help2]=3) then inc(k3);
    stringgrid8.cells[2,help3]:='+';
    if k3<zmienna then if k3<>0 then stringgrid8.cells[1,help3]:=IntToStr(k3) else stringgrid8.cells[2,help3]:='-';
    if k3>=zmienna then stringgrid8.cells[3,help3]:=IntToStr(k3);
   end;
 end;

if numer=5 then
 begin
  stringgrid8.cells[3,0]:='4';
  help3:=0;
  zmienna:=StrToFloat(stringgrid6.cells[2,5]);
  for help1:=od_ to do_ do
   begin
    k4:=0;
    inc(help3);
    stringgrid8.cells[0,help3]:=IntToStr(help1);
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]=14) or (losowanie[help1,help2]=24) or (losowanie[help1,help2]=34) or (losowanie[help1,help2]=44) or (losowanie[help1,help2]=54) or (losowanie[help1,help2]=64) or (losowanie[help1,help2]=74) or (losowanie[help1,help2]=4) then inc(k4);
    stringgrid8.cells[2,help3]:='+';
    if k4<zmienna then if k4<>0 then stringgrid8.cells[1,help3]:=IntToStr(k4) else stringgrid8.cells[2,help3]:='-';
    if k4>=zmienna then stringgrid8.cells[3,help3]:=IntToStr(k4);
   end;
 end;

if numer=6 then
 begin
  stringgrid8.cells[3,0]:='5';
  help3:=0;
  zmienna:=StrToFloat(stringgrid6.cells[2,6]);
  for help1:=od_ to do_ do
   begin
    k5:=0;
    inc(help3);
    stringgrid8.cells[0,help3]:=IntToStr(help1);
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]=15) or (losowanie[help1,help2]=25) or (losowanie[help1,help2]=35) or (losowanie[help1,help2]=45) or (losowanie[help1,help2]=55) or (losowanie[help1,help2]=65) or (losowanie[help1,help2]=75) or (losowanie[help1,help2]=5) then inc(k5);
    stringgrid8.cells[2,help3]:='+';
    if k5<zmienna then if k5<>0 then stringgrid8.cells[1,help3]:=IntToStr(k5) else stringgrid8.cells[2,help3]:='-';
    if k5>=zmienna then stringgrid8.cells[3,help3]:=IntToStr(k5);
   end;
 end;

if numer=7 then
 begin
  stringgrid8.cells[3,0]:='6';
  help3:=0;
  zmienna:=StrToFloat(stringgrid6.cells[2,7]);
  for help1:=od_ to do_ do
   begin
    k6:=0;
    inc(help3);
    stringgrid8.cells[0,help3]:=IntToStr(help1);
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]=16) or (losowanie[help1,help2]=26) or (losowanie[help1,help2]=36) or (losowanie[help1,help2]=46) or (losowanie[help1,help2]=56) or (losowanie[help1,help2]=66) or (losowanie[help1,help2]=76) or (losowanie[help1,help2]=6) then inc(k6);
    stringgrid8.cells[2,help3]:='+';
    if k6<zmienna then if k6<>0 then stringgrid8.cells[1,help3]:=IntToStr(k6) else stringgrid8.cells[2,help3]:='-';
    if k6>=zmienna then stringgrid8.cells[3,help3]:=IntToStr(k6);
   end;
 end;

if numer=8 then
 begin
  stringgrid8.cells[3,0]:='7';
  help3:=0;
  zmienna:=StrToFloat(stringgrid6.cells[2,8]);
  for help1:=od_ to do_ do
   begin
    k7:=0;
    inc(help3);
    stringgrid8.cells[0,help3]:=IntToStr(help1);
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]=17) or (losowanie[help1,help2]=27) or (losowanie[help1,help2]=37) or (losowanie[help1,help2]=47) or (losowanie[help1,help2]=57) or (losowanie[help1,help2]=67) or (losowanie[help1,help2]=77) or (losowanie[help1,help2]=7) then inc(k7);
    stringgrid8.cells[2,help3]:='+';
    if k7<zmienna then if k7<>0 then stringgrid8.cells[1,help3]:=IntToStr(k7) else stringgrid8.cells[2,help3]:='-';
    if k7>=zmienna then stringgrid8.cells[3,help3]:=IntToStr(k7);
   end;
 end;

if numer=9 then
 begin
  stringgrid8.cells[3,0]:='8';
  help3:=0;
  zmienna:=StrToFloat(stringgrid6.cells[2,9]);
  for help1:=od_ to do_ do
   begin
    k8:=0;
    inc(help3);
    stringgrid8.cells[0,help3]:=IntToStr(help1);
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]=18) or (losowanie[help1,help2]=28) or (losowanie[help1,help2]=38) or (losowanie[help1,help2]=48) or (losowanie[help1,help2]=58) or (losowanie[help1,help2]=68) or (losowanie[help1,help2]=78) or (losowanie[help1,help2]=8) then inc(k8);
    stringgrid8.cells[2,help3]:='+';
    if k8<zmienna then if k8<>0 then stringgrid8.cells[1,help3]:=IntToStr(k8) else stringgrid8.cells[2,help3]:='-';
    if k8>=zmienna then stringgrid8.cells[3,help3]:=IntToStr(k8);
   end;
 end;

if numer=10 then
 begin
  stringgrid8.cells[3,0]:='9';
  help3:=0;
  zmienna:=StrToFloat(stringgrid6.cells[2,10]);
  for help1:=od_ to do_ do
   begin
    k9:=0;
    inc(help3);
    stringgrid8.cells[0,help3]:=IntToStr(help1);
    for help2:=1 to ilosc_liczb_los do if (losowanie[help1,help2]=19) or (losowanie[help1,help2]=29) or (losowanie[help1,help2]=39) or (losowanie[help1,help2]=49) or (losowanie[help1,help2]=59) or (losowanie[help1,help2]=69) or (losowanie[help1,help2]=79) or (losowanie[help1,help2]=9) then inc(k9);
    stringgrid8.cells[2,help3]:='+';
    if k9<zmienna then if k9<>0 then stringgrid8.cells[1,help3]:=IntToStr(k9) else stringgrid8.cells[2,help3]:='-';
    if k9>=zmienna then stringgrid8.cells[3,help3]:=IntToStr(k9);
   end;
 end;


if stringgrid8.RowCount>11 then stringgrid8.topRow:=do_-od_+2-10;

end;

procedure TForm5.StringGrid6SelectCell(Sender: TObject; ACol,  ARow: Integer; var CanSelect: Boolean);
begin
if czy_byly_inne=true then
 begin
  if spinedit1.Value<>spinedit2.Value then
   if spinedit1.Value<spinedit2.Value then pokaz_mapke2(spinedit1.Value,spinedit2.Value,arow) else pokaz_mapke2(spinedit2.Value,spinedit1.Value,arow);
 end;
end;

procedure TForm5.StringGrid5SelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
begin
if czy_byly_inne=true then
 begin
  if spinedit1.Value<>spinedit2.Value then
   if spinedit1.Value<spinedit2.Value then pokaz_mapke1(spinedit1.Value,spinedit2.Value,arow) else pokaz_mapke1(spinedit2.Value,spinedit1.Value,arow);
 end;
end;


end.
