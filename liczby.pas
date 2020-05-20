unit liczby;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,main, ComCtrls, Grids, Gauges, Buttons, Spin, Menus,ShellApi;

type
  TForm3 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Gauge1: TGauge;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    StringGrid7: TStringGrid;
    SpeedButton4: TSpeedButton;
    PopupMenu1: TPopupMenu;
    SortujCzstocimalejco1: TMenuItem;
    Czstocirosnco1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    Liczbymalejco1: TMenuItem;
    Liczbyrosnco1: TMenuItem;
    Maxmalejco1: TMenuItem;
    Maxrosnco1: TMenuItem;
    N3: TMenuItem;
    Oczekiwaniemalejco1: TMenuItem;
    Oczekiwanierosnco1: TMenuItem;
    SpeedButton5: TSpeedButton;
    PopupMenu2: TPopupMenu;
    Zapiszdoplikujakozestaw1: TMenuItem;
    N2liczbow1: TMenuItem;
    N3liczbowe1: TMenuItem;
    N4liczbowe1: TMenuItem;
    N5liczbowe1: TMenuItem;
    N6liczbowe1: TMenuItem;
    N7liczbowe1: TMenuItem;
    N8liczbowe1: TMenuItem;
    N9liczbowe1: TMenuItem;
    N10liczbowe1: TMenuItem;
    N1liczbowe1: TMenuItem;
    SpeedButton6: TSpeedButton;
    SpinEdit5: TSpinEdit;
    SB_pamietaj: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure StringGrid6SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure StringGrid2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure StringGrid3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure StringGrid4ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure StringGrid5ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Liczbymalejco1Click(Sender: TObject);
    procedure Liczbyrosnco1Click(Sender: TObject);
    procedure SortujCzstocimalejco1Click(Sender: TObject);
    procedure Czstocirosnco1Click(Sender: TObject);
    procedure Maxmalejco1Click(Sender: TObject);
    procedure Maxrosnco1Click(Sender: TObject);
    procedure Oczekiwaniemalejco1Click(Sender: TObject);
    procedure Oczekiwanierosnco1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure N1liczbowe1Click(Sender: TObject);
    procedure N2liczbow1Click(Sender: TObject);
    procedure N3liczbowe1Click(Sender: TObject);
    procedure N4liczbowe1Click(Sender: TObject);
    procedure N5liczbowe1Click(Sender: TObject);
    procedure N6liczbowe1Click(Sender: TObject);
    procedure N7liczbowe1Click(Sender: TObject);
    procedure N8liczbowe1Click(Sender: TObject);
    procedure N9liczbowe1Click(Sender: TObject);
    procedure N10liczbowe1Click(Sender: TObject);
    procedure SpinEdit5Change(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure sortuj_liczby(pozycja,wdol:word);//sortowanie dla liczb
  procedure statystyki_liczb(od_,do_:integer);//liczy statystyki dla liczb

  procedure sortuj_tabele(pozycja,wdol:word;tabela:tstringgrid);

  procedure zapisz_zestawy(ilosc:integer);

  function czy_wystapila(liczba,od_,do_:integer):boolean;//sprawdza czy liczba wystapila w zadanym
  function oczekuje(liczba,od_,do_:integer):integer;

    { Public declarations }
  end;

var
  Form3: TForm3;
  liczba:array [1..80,1..5] of integer;//dane liczb - liczba, czestosc, max i oczekiwanie
  oczekiwania:array [1..80,1..5000] of byte;
  czy_byly_stat_liczb:boolean;
  rowcount1,rowcount2,rowcount5,rowcount6:byte;
  prawd1,prawd2,prawd3,prawd4:real;
  liczba_:string;

  od2,do2:integer;

implementation

uses losowania, Addins;

{$R *.DFM}

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
var help1:byte;
begin
zapisz_opcje('liczby','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
if radiobutton1.Checked then help1:=1 else
 if radiobutton2.Checked then help1:=2 else
  if radiobutton3.Checked then help1:=3 else
   if radiobutton4.Checked then help1:=4 else help1:=5;
zapisz_opcje('liczby','sortuj_wedlug_'+prefiks_gry,help1);
if radiobutton5.Checked then help1:=1 else help1:=2;
zapisz_opcje('liczby','sortuj_'+prefiks_gry,help1);
zapisz_opcje('liczby','oczekiwanie_'+prefiks_gry,spinedit3.value);
zapisz_opcje('liczby','procent_'+prefiks_gry,spinedit4.value);
if radiobutton7.checked then help1:=1 else help1:=2;
zapisz_opcje('liczby','metoda_'+prefiks_gry,help1);
zapisz_opcje('liczby','od_'+prefiks_gry,spinedit1.value);
zapisz_opcje('liczby','do_'+prefiks_gry,spinedit2.value);
zapisz_opcje('liczby','porownaj_'+prefiks_gry,spinedit5.value);
zapisz_opcje('liczby','zakladka_'+prefiks_gry,PageControl1.ActivePageIndex);
Action := caFree;
Form3:=nil;
end;

procedure TForm3.FormCreate(Sender: TObject);
var
help1,help2:integer;
pamietaj:boolean;
begin
do2:=losowan;
if Gra.Numer=1 then
 begin
  prawd1:=0.4;
  prawd2:=0.4;
  prawd3:=3;
  prawd4:=4;
  rowcount1:=41;
  rowcount2:=41;
  rowcount5:=21;
  rowcount6:=81;
  stringgrid1.rowcount:=41;
  stringgrid2.rowcount:=41;
  stringgrid5.RowCount:=21;
  stringgrid6.RowCount:=81;
  spinedit3.Value:=4;
 end;

if Gra.Numer=2 then
 begin
  prawd1:=0.8;
  prawd2:=0.24;
  prawd3:=7;
  prawd4:=8;
  rowcount1:=25;
  rowcount2:=26;
  rowcount5:=7;
  rowcount6:=50;
  stringgrid1.rowcount:=25;
  stringgrid2.rowcount:=26;
  stringgrid5.RowCount:=7;
  stringgrid6.RowCount:=50;
  spinedit3.Value:=8;
 end;

if Gra.Numer=3 then
 begin
  prawd1:=0.8;
  prawd2:=0.21;
  prawd3:=7;
  prawd4:=8;
  rowcount1:=22;
  rowcount2:=22;
  rowcount5:=6;
  rowcount6:=43;
  stringgrid1.rowcount:=22;
  stringgrid2.rowcount:=22;
  stringgrid5.RowCount:=6;
  stringgrid6.RowCount:=43;
  spinedit3.Value:=8;
 end;

//liczby geste
stringgrid1.ColWidths[0]:=22;
stringgrid1.cells[0,0]:='Lp.';
stringgrid1.cells[1,0]:='Liczba';
stringgrid1.cells[2,0]:='Czêstoœæ';
stringgrid1.cells[3,0]:='Max';
stringgrid1.cells[4,0]:='Oczekuje';
stringgrid1.cells[5,0]:='Traf';
stringgrid1.ColWidths[5]:=28;
//liczby rzadkie
stringgrid2.ColWidths[0]:=22;
stringgrid2.cells[0,0]:='Lp.';
stringgrid2.cells[1,0]:='Liczba';
stringgrid2.cells[2,0]:='Czêstoœæ';
stringgrid2.cells[3,0]:='Max';
stringgrid2.cells[4,0]:='Oczekuje';
stringgrid2.cells[5,0]:='Traf';
stringgrid2.ColWidths[5]:=28;
//liczby oczekiwane
stringgrid3.ColWidths[0]:=22;
stringgrid3.cells[0,0]:='Lp.';
stringgrid3.cells[1,0]:='Liczba';
stringgrid3.cells[2,0]:='Czêstoœæ';
stringgrid3.cells[3,0]:='Max';
stringgrid3.cells[4,0]:='Oczekuje';
stringgrid3.cells[5,0]:='Traf';
stringgrid3.ColWidths[5]:=28;
//liczby pewne
stringgrid4.ColWidths[0]:=22;
stringgrid4.cells[0,0]:='Lp.';
stringgrid4.cells[1,0]:='Liczba';
stringgrid4.cells[2,0]:='Czêstoœæ';
stringgrid4.cells[3,0]:='Max';
stringgrid4.cells[4,0]:='Oczekuje';
stringgrid4.cells[5,0]:='Traf';
stringgrid4.ColWidths[5]:=28;
//liczby ostatnie
stringgrid5.ColWidths[0]:=22;
stringgrid5.cells[0,0]:='Lp.';
stringgrid5.cells[1,0]:='Liczba';
stringgrid5.cells[2,0]:='Czêstoœæ';
stringgrid5.cells[3,0]:='Max';
stringgrid5.cells[4,0]:='Czeka³a';
//liczby wszystkie
stringgrid6.ColWidths[0]:=22;
stringgrid6.ColWidths[5]:=40;
stringgrid6.cells[0,0]:='Lp.';
stringgrid6.cells[1,0]:='Liczba';
stringgrid6.cells[2,0]:='Czêstoœæ';
stringgrid6.cells[3,0]:='Max';
stringgrid6.cells[4,0]:='Oczekuje';
stringgrid6.cells[5,0]:='Temp.';
stringgrid6.cells[6,0]:='Traf';
stringgrid6.ColWidths[6]:=28;

stringgrid7.cells[0,0]:='Ocz.';

pamietaj:=wczytaj_opcje('liczby','pamietaj_ustawienia_'+prefiks_gry,false);
help1:=wczytaj_opcje('liczby','porownaj_'+prefiks_gry,losowan);
if not czy_dobre_losowanie(help1) then help1:=losowan;
if not pamietaj then help1:=losowan;
spinedit5.MinValue:=1;
spinedit5.MaxValue:=losowan;
spinedit5.Value:=help1;
spinedit5.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));


help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

if pamietaj then
 begin
  help1:=wczytaj_opcje('liczby','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('liczby','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

  spinedit1.Value:=help1;
  spinedit2.Value:=help2;
  spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

SB_pamietaj.Down:=pamietaj;

if pamietaj then
 begin
  help1:=wczytaj_opcje('liczby','metoda_'+prefiks_gry,1);
  if help1=1 then radiobutton7.checked:=true else radiobutton8.checked:=true;
  help1:=wczytaj_opcje('liczby','sortuj_'+prefiks_gry,1);
  if help1=1 then radiobutton5.checked:=true else radiobutton6.checked:=true;
  help1:=wczytaj_opcje('liczby','sortuj_wedlug_'+prefiks_gry,1);
  if help1=1 then radiobutton1.checked:=true else
   if help1=2 then radiobutton2.checked:=true else
    if help1=3 then radiobutton3.checked:=true else
     if help1=4 then radiobutton4.checked:=true else radiobutton9.checked:=true;
  spinedit3.value:=wczytaj_opcje('liczby','oczekiwanie_'+prefiks_gry,4);
  spinedit4.value:=wczytaj_opcje('liczby','procent_'+prefiks_gry,66);
  PageControl1.ActivePageIndex:=wczytaj_opcje('liczby','zakladka_'+prefiks_gry,0);
 end;                       

czy_byly_stat_liczb:=false;
speedbutton3.Enabled:=false;
end;

procedure TForm3.statystyki_liczb(od_, do_: integer);
var
 tablica : array [1..20,1..4] of integer;//pomocnicza dla sortowania liczb ostatnich
 help1,help2,help3,help4,help5:integer;
 i,j  : Integer;
 temp,temp1,temp2,temp3,temp4,temp5,max:integer;
 dwadziescia,ilosc:word;
 zmienna1,zmienna2:real;
 srednia:integer;
 ilosc_:int64;
begin
od2:=od_;
do2:=do_;
form1.stoper_start;
gauge1.Progress:=0;
gauge1.MaxValue:=8;

help5:=do_-od_+1;

//zerowanie liczb
for help1:=1 to ilosc_liczb_gry do
 begin
  liczba[help1,1]:=0;
  liczba[help1,2]:=help5;
  liczba[help1,3]:=0;
  liczba[help1,4]:=0;
 end;

//liczenie czestosci
for help1:=od_ to do_ do
 for help2:=1 to ilosc_liczb_los do inc(liczba[losowanie[help1,help2],1]);

gauge1.Progress:=1;

//liczenie oczekiwania
//temp:=do_-od_;
for help1:=do_ downto od_ do
 begin
  help5:=help1-od_+1;
  for help3:=1 to ilosc_liczb_los do
   if liczba[losowanie[help1,help3],3]=0 then
    begin
     liczba[losowanie[help1,help3],2]:=liczba[losowanie[help1,help3],2]-help5;
     liczba[losowanie[help1,help3],3]:=1;
    end;
 end;

gauge1.Progress:=2;

//liczenie max czekania
//help5:=do_-od_;
for help1:=1 to ilosc_liczb_gry do
  begin
    max:=0;
    for help2:=od_ to do_ do
      begin
        if wylosowane[help2,help1] then //czy_byla_liczba(help1,help2)=true then
          begin
	    if max>liczba[help1,4] then liczba[help1,4]:=max;
            max:=0;
          end
            else inc(max);
      end;
    if czy_wystapila(help1,od_,do_)=false then liczba[help1,4]:=do_-od_+1;
  end;

ilosc_:=0;
//srednia:=0;
for help1:=1 to ilosc_liczb_gry do ilosc_:=ilosc_+liczba[help1,1];
srednia:=round(ilosc_/ilosc_liczb_gry);
for help1:=1 to ilosc_liczb_gry do liczba[help1,5]:=(srednia-liczba[help1,1])+liczba[help1,2];

//showmessage(IntToStr(srednia));

gauge1.Progress:=3;

//przepisanie liczb ostatnich
for temp1:=1 to ilosc_liczb_los do
  begin
    tablica[temp1,1]:=losowanie[do_,temp1];
    tablica[temp1,2]:=liczba[losowanie[do_,temp1],1];
    tablica[temp1,3]:=liczba[losowanie[do_,temp1],4];
  end;

//sortowanie liczb ostatnich
dwadziescia:=ilosc_liczb_los;
    for i:=2 to dwadziescia do
     begin
      for j:=dwadziescia DownTo i Do
       if tablica[j-1,2]<tablica[j,2] Then
        begin
         temp2:=tablica[j-1,1];
         temp3:=tablica[j-1,2];
         temp4:=tablica[j-1,3];
         tablica[j-1,1]:=tablica[j,1];
         tablica[j-1,2]:=tablica[j,2];
         tablica[j-1,3]:=tablica[j,3];
         tablica[j,1]:=temp2;
         tablica[j,2]:=temp3;
         tablica[j,3]:=temp4;
         End;
     end;

//liczenie ile czekala na wpadniecie
//help4:=losowan-1;
//help2:=0;
for help1:=1 to ilosc_liczb_los do
 begin
  help2:=-1;
  help4:=do_;
  repeat
   inc(help2);
   help4:=help4-1;
  until (wylosowane[help4,tablica[help1,1]]){ czy_byla_liczba(tablica[help1,1],help4)=true)} or (help4=0);
  tablica[help1,4]:=help2;
 end;

//wypisanie liczb ostatnich
   for help1:=1 to ilosc_liczb_los do
     begin
       stringgrid5.cells[0,help1]:=IntToStr(help1);
       stringgrid5.cells[1,help1]:=IntToStr(tablica[help1,1]);
       stringgrid5.cells[2,help1]:=IntToStr(tablica[help1,2]);
       stringgrid5.cells[3,help1]:=IntToStr(tablica[help1,3]);
       stringgrid5.cells[4,help1]:=IntToStr(tablica[help1,4]);
     end;

gauge1.Progress:=4;

//przepisanie liczb - zamiana miejscami czestosci, oczekiwania i max
for temp:=1 to ilosc_liczb_gry do
  begin
    temp1:=liczba[temp,1];
    temp2:=liczba[temp,2];
    temp3:=liczba[temp,4];
    liczba[temp,1]:=temp;   //liczba
    liczba[temp,2]:=temp1;  //czestosc
    liczba[temp,3]:=temp2;  //oczekiwanie
    liczba[temp,4]:=temp3;  //max
  end;

//posortowanie liczb gêstych
sortuj_liczby(2,0);

if radiobutton7.Checked then
 begin
  stringgrid1.RowCount:=rowcount1;
 //wypisanie liczb gêstych
   for help1:=1 to rowcount1-1 do
     begin
       stringgrid1.cells[0,help1]:=IntToStr(help1);
       stringgrid1.cells[1,help1]:=IntToStr(liczba[help1,1]);
       stringgrid1.cells[2,help1]:=IntToStr(liczba[help1,2]);
       stringgrid1.cells[3,help1]:=IntToStr(liczba[help1,4]);
       stringgrid1.cells[4,help1]:=IntToStr(liczba[help1,3]);
       stringgrid1.cells[5,help1]:='';
       if do_<losowan then if wylosowane[do_+1,liczba[help1,1]] then stringgrid1.cells[5,help1]:='TAK';
     end;

  gauge1.Progress:=5;
  stringgrid2.RowCount:=rowcount2;
  //wypisanie liczb rzadkich
  for help1:=1 to rowcount2-1 do
     begin
       stringgrid2.cells[0,help1]:=IntToStr(help1);
       stringgrid2.cells[1,help1]:=IntToStr(liczba[ilosc_liczb_gry+1-help1,1]);
       stringgrid2.cells[2,help1]:=IntToStr(liczba[ilosc_liczb_gry+1-help1,2]);
       stringgrid2.cells[3,help1]:=IntToStr(liczba[ilosc_liczb_gry+1-help1,4]);
       stringgrid2.cells[4,help1]:=IntToStr(liczba[ilosc_liczb_gry+1-help1,3]);
       stringgrid2.cells[5,help1]:='';
       if do_<losowan then if wylosowane[do_+1,liczba[ilosc_liczb_gry+1-help1,1]] then stringgrid2.cells[5,help1]:='TAK';
     end;

  gauge1.Progress:=6;

 //sortowanie dla liczb pewnych
 sortuj_liczby(1,1);
 //wypisanie liczb pewnych
 help3:=round(spinedit4.value*prawd2);
 help4:=spinedit3.value;

 help2:=0;
 for help1:=1 to help3 do
  if StrToInt(stringgrid1.cells[4,help1])>=help4 then
   begin
    inc(help2);
    stringgrid4.cells[0,help2]:=IntToStr(help2);
    stringgrid4.cells[1,help2]:=IntToStr(liczba[StrToInt(stringgrid1.cells[1,help1]),1]);
    stringgrid4.cells[2,help2]:=IntToStr(liczba[StrToInt(stringgrid1.cells[1,help1]),2]);
    stringgrid4.cells[3,help2]:=IntToStr(liczba[StrToInt(stringgrid1.cells[1,help1]),4]);
    stringgrid4.cells[4,help2]:=IntToStr(liczba[StrToInt(stringgrid1.cells[1,help1]),3]);
    stringgrid4.cells[5,help2]:='';
    if do_<losowan then if wylosowane[do_+1,liczba[StrToInt(stringgrid1.cells[1,help1]),1]] then stringgrid4.cells[5,help2]:='TAK';
   end;

  if help2=0 then
   begin
    stringgrid4.rowcount:=2;
    stringgrid4.cells[0,1]:='0';
    stringgrid4.cells[1,1]:='0';
    stringgrid4.cells[2,1]:='0';
    stringgrid4.cells[3,1]:='0';
    stringgrid4.cells[4,1]:='0';

   end else stringgrid4.rowcount:=help2+1;

 end else
  begin
   help3:=1;
   help1:=round((do_-od_+1)/prawd4);
   zmienna1:=spinedit4.Value/100;
   for help2:=1 to ilosc_liczb_gry do if liczba[help2,2]>help1 then help3:=help2;

   for help2:=1 to help3 do
    begin
       stringgrid1.cells[0,help2]:=IntToStr(help2);
       stringgrid1.cells[1,help2]:=IntToStr(liczba[help2,1]);
       stringgrid1.cells[2,help2]:=IntToStr(liczba[help2,2]);
       stringgrid1.cells[3,help2]:=IntToStr(liczba[help2,4]);
       stringgrid1.cells[4,help2]:=IntToStr(liczba[help2,3]);
       stringgrid1.cells[5,help2]:='';
       if do_<losowan then if wylosowane[do_+1,liczba[help2,1]] then stringgrid1.cells[5,help2]:='TAK';
    end;
   stringgrid1.RowCount:=help3+1;
   sortuj_liczby(2,1);
   for help2:=1 to ilosc_liczb_gry-help3 do
    begin
       stringgrid2.cells[0,help2]:=IntToStr(help2);
       stringgrid2.cells[1,help2]:=IntToStr(liczba[help2,1]);
       stringgrid2.cells[2,help2]:=IntToStr(liczba[help2,2]);
       stringgrid2.cells[3,help2]:=IntToStr(liczba[help2,4]);
       stringgrid2.cells[4,help2]:=IntToStr(liczba[help2,3]);
       stringgrid2.cells[5,help2]:='';
       if do_<losowan then if wylosowane[do_+1,liczba[help2,1]] then stringgrid2.cells[5,help2]:='TAK';
    end;
   stringgrid2.rowcount:=ilosc_liczb_gry-help3+1;
   help2:=round(help3*zmienna1);
   //showmessage(IntToStr(help2));
   sortuj_liczby(2,0);
   help4:=0;
   for help1:=1 to help2 do if liczba[help1,3]>=spinedit3.Value then
   begin
    inc(help4);
    stringgrid4.cells[0,help4]:=IntToStr(help4);
    stringgrid4.cells[1,help4]:=IntToStr(liczba[help1,1]);
    stringgrid4.cells[2,help4]:=IntToStr(liczba[help1,2]);
    stringgrid4.cells[3,help4]:=IntToStr(liczba[help1,4]);
    stringgrid4.cells[4,help4]:=IntToStr(liczba[help1,3]);
    stringgrid4.cells[5,help4]:='';
    if do_<losowan then if wylosowane[do_+1,liczba[help1,1]] then stringgrid4.cells[5,help4]:='TAK';
   end;
   if help4=0 then
    begin
     stringgrid4.rowcount:=2;
     stringgrid4.cells[0,1]:='0';
     stringgrid4.cells[1,1]:='0';
     stringgrid4.cells[2,1]:='0';
     stringgrid4.cells[3,1]:='0';
     stringgrid4.cells[4,1]:='0';
    end else stringgrid4.rowcount:=help4+1;
  end;

//sortowanie liczb oczekiwanych
sortuj_liczby(2,0);
sortuj_liczby(3,1);
//wypisanie tych liczb
help2:=0;
for help1:=ilosc_liczb_gry downto 1 do
 if liczba[help1,3]>prawd3 then
  begin
   inc(help2);
   stringgrid3.cells[0,help2]:=IntToStr(help2);
   stringgrid3.cells[1,help2]:=IntToStr(liczba[help1,1]);
   stringgrid3.cells[2,help2]:=IntToStr(liczba[help1,2]);
   stringgrid3.cells[3,help2]:=IntToStr(liczba[help1,4]);
   stringgrid3.cells[4,help2]:=IntToStr(liczba[help1,3]);
   stringgrid3.cells[5,help2]:='';
   if do_<losowan then if wylosowane[do_+1,liczba[help1,1]] then stringgrid3.cells[5,help2]:='TAK';
  end;

if help2=0 then
 begin
  stringgrid3.rowcount:=2;
  stringgrid3.cells[0,1]:='0';
  stringgrid3.cells[1,1]:='0';
  stringgrid3.cells[2,1]:='0';
  stringgrid3.cells[3,1]:='0';
  stringgrid3.cells[4,1]:='0';

 end else stringgrid3.rowcount:=help2+1;

gauge1.Progress:=7;

for help2:=1 to 80 do for help1:=1 to 5000 do oczekiwania[help2,help1]:=0;

//help3:=0;
for help1:=1 to 80 do
 begin
  help3:=0;
  for help2:=od_ to do_ do if wylosowane[help2,help1] then
   begin
    inc(help3);
    oczekiwania[help1,help3]:=oczekuje(help1,od_,help2-1);
   end;
 end;

gauge1.Progress:=8;
czy_byly_stat_liczb:=true;
speedbutton3.Enabled:=true;
speedbutton5.Enabled:=true;
speedbutton2.Click;
speedbutton6.Enabled:=true;
form3.Caption:='Pojedyncze liczby... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
end;

procedure TForm3.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm3.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm3.SpeedButton1Click(Sender: TObject);
begin
if (spinedit1.Value<spinedit2.Value) then statystyki_liczb(spinedit1.Value,spinedit2.Value);
if (spinedit1.Value>spinedit2.Value) then statystyki_liczb(spinedit2.value,spinedit1.value);
end;

procedure TForm3.sortuj_liczby(pozycja, wdol: word);
var
temp1,temp2,temp3,temp4,temp5:integer;
i,j:word;
begin
if wdol=0 then
 begin
  for i:=2 to ilosc_liczb_gry do
   for j:=ilosc_liczb_gry DownTo i Do
    if liczba[j-1,pozycja]<liczba[j,pozycja] Then
      begin
        temp1:=liczba[j-1,1];
        temp2:=liczba[j-1,2];
        temp3:=liczba[j-1,3];
        temp4:=liczba[j-1,4];
        temp5:=liczba[j-1,5];
        liczba[j-1,1]:=liczba[j,1];
        liczba[j-1,2]:=liczba[j,2];
        liczba[j-1,3]:=liczba[j,3];
        liczba[j-1,4]:=liczba[j,4];
        liczba[j-1,5]:=liczba[j,5];
        liczba[j,1]:=temp1;
        liczba[j,2]:=temp2;
        liczba[j,3]:=temp3;
        liczba[j,4]:=temp4;
        liczba[j,5]:=temp5;
      End;
 end;
if wdol=1 then
 begin
  for i:=2 to ilosc_liczb_gry do
   for j:=ilosc_liczb_gry DownTo i Do
    if liczba[j-1,pozycja]>liczba[j,pozycja] Then
      begin
        temp1:=liczba[j-1,1];
        temp2:=liczba[j-1,2];
        temp3:=liczba[j-1,3];
        temp4:=liczba[j-1,4];
        temp5:=liczba[j-1,5];
        liczba[j-1,1]:=liczba[j,1];
        liczba[j-1,2]:=liczba[j,2];
        liczba[j-1,3]:=liczba[j,3];
        liczba[j-1,4]:=liczba[j,4];
        liczba[j-1,5]:=liczba[j,5];
        liczba[j,1]:=temp1;
        liczba[j,2]:=temp2;
        liczba[j,3]:=temp3;
        liczba[j,4]:=temp4;
        liczba[j,5]:=temp5;
      End;
 end;
end;

function TForm3.czy_wystapila(liczba, od_, do_: integer): boolean;
var
help1,help2:word;
begin
help1:=od_-1;
help2:=0;
repeat
 inc(help1);
 if wylosowane[help1,liczba] {czy_byla_liczba(liczba,help1)=true} then help2:=1;
until (help2=1) or (help1=do_);
if help2=1 then czy_wystapila:=true else czy_wystapila:=false;
end;

procedure TForm3.SpeedButton2Click(Sender: TObject);
var help1:integer;
begin
if czy_byly_stat_liczb=true then
 begin
  if radiobutton1.checked then
   if radiobutton5.checked then sortuj_liczby(1,1) else sortuj_liczby(1,0);

  if radiobutton2.checked then
   if radiobutton5.checked then sortuj_liczby(2,1) else sortuj_liczby(2,0);

  if radiobutton3.checked then
   if radiobutton5.checked then sortuj_liczby(4,1) else sortuj_liczby(4,0);

  if radiobutton4.checked then
   if radiobutton5.checked then sortuj_liczby(3,1) else sortuj_liczby(3,0);

  if radiobutton9.checked then
   if radiobutton5.checked then sortuj_liczby(5,1) else sortuj_liczby(5,0);

//wypisanie liczb posortowanych
for help1:=1 to ilosc_liczb_gry do
     begin
       stringgrid6.cells[0,help1]:=IntToStr(help1);
       stringgrid6.cells[1,help1]:=IntToStr(liczba[help1,1]);
       stringgrid6.cells[2,help1]:=IntToStr(liczba[help1,2]);
       stringgrid6.cells[3,help1]:=IntToStr(liczba[help1,4]);
       stringgrid6.cells[4,help1]:=IntToStr(liczba[help1,3]);
       if liczba[help1,5]>0 then stringgrid6.cells[5,help1]:='+'+IntToStr(liczba[help1,5]) else stringgrid6.cells[5,help1]:=IntToStr(liczba[help1,5]);
       stringgrid6.cells[6,help1]:='';
       if do2<losowan then if wylosowane[do2+1,liczba[help1,1]] then stringgrid6.cells[6,help1]:='TAK';
     end;

 end;
end;

procedure TForm3.SpeedButton3Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin

case pagecontrol1.ActivePageIndex of
  0:form1.SaveDialog1.FileName:='LiczbyGor¹ce';
  1:form1.SaveDialog1.FileName:='LiczbyZimne';
  2:form1.SaveDialog1.FileName:='LiczbyOczekiwane';
  3:form1.SaveDialog1.FileName:='LiczbyPewne';
  4:form1.SaveDialog1.FileName:='LiczbyOstatnie';
  5:form1.SaveDialog1.FileName:='Liczby';
end;

form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm|Plik zestawu liczb (*.zes)|*.zes';

if form1.savedialog1.Execute then
 begin
//  showmessage(IntToStr(form1.savedialog1.filterindex));
  if form1.SaveDialog1.FilterIndex=1 then
   begin
    assignfile(filename,form1.savedialog1.filename);
    rewrite(filename);
     case pagecontrol1.ActivePageIndex of
       0:for help1:=0 to stringgrid1.rowcount-1 do writeln(filename,stringgrid1.cells[0,help1]+';'+stringgrid1.cells[1,help1]+';'+stringgrid1.cells[2,help1]+';'+stringgrid1.cells[3,help1]+';'+stringgrid1.cells[4,help1]+';'+stringgrid1.cells[5,help1]);
       1:for help1:=0 to stringgrid2.rowcount-1 do writeln(filename,stringgrid2.cells[0,help1]+';'+stringgrid2.cells[1,help1]+';'+stringgrid2.cells[2,help1]+';'+stringgrid2.cells[3,help1]+';'+stringgrid2.cells[4,help1]+';'+stringgrid2.cells[5,help1]);
       2:for help1:=0 to stringgrid3.rowcount-1 do writeln(filename,stringgrid3.cells[0,help1]+';'+stringgrid3.cells[1,help1]+';'+stringgrid3.cells[2,help1]+';'+stringgrid3.cells[3,help1]+';'+stringgrid3.cells[4,help1]+';'+stringgrid3.cells[5,help1]);
       3:for help1:=0 to stringgrid4.rowcount-1 do writeln(filename,stringgrid4.cells[0,help1]+';'+stringgrid4.cells[1,help1]+';'+stringgrid4.cells[2,help1]+';'+stringgrid4.cells[3,help1]+';'+stringgrid4.cells[4,help1]+';'+stringgrid4.cells[5,help1]);
       4:for help1:=0 to stringgrid5.rowcount-1 do writeln(filename,stringgrid5.cells[0,help1]+';'+stringgrid5.cells[1,help1]+';'+stringgrid5.cells[2,help1]+';'+stringgrid5.cells[3,help1]+';'+stringgrid5.cells[4,help1]);
       5:for help1:=0 to stringgrid6.rowcount-1 do writeln(filename,stringgrid6.cells[0,help1]+';'+stringgrid6.cells[1,help1]+';'+stringgrid6.cells[2,help1]+';'+stringgrid6.cells[3,help1]+';'+stringgrid6.cells[4,help1]+';'+stringgrid6.cells[5,help1]+';'+stringgrid6.cells[6,help1]);
     end;
    closefile(filename);
   end else if form1.SaveDialog1.FilterIndex=2 then
    begin
     case pagecontrol1.ActivePageIndex of
       0:form1.zapiszHTML(form3.stringgrid1,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pojedyñcze liczby','Liczby gor¹ce',1,od2,do2);
       1:form1.zapiszHTML(form3.stringgrid2,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pojedyñcze liczby','Liczby zimne',1,od2,do2);
       2:form1.zapiszHTML(form3.stringgrid3,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pojedyñcze liczby','Liczby oczekiwane',1,od2,do2);
       3:form1.zapiszHTML(form3.stringgrid4,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pojedyñcze liczby','Liczby pewne',1,od2,do2);
       4:form1.zapiszHTML(form3.stringgrid5,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pojedyñcze liczby','Liczby ostatnie',1,od2,do2);
       5:form1.zapiszHTML(form3.stringgrid6,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pojedyñcze liczby','Liczby',1,od2,do2);
     end;
    end else
    begin
     case pagecontrol1.ActivePageIndex of
       0:zapisz_tablice_zestawow(form3.stringgrid1,1,form1.savedialog1.filename);
       1:zapisz_tablice_zestawow(form3.stringgrid2,1,form1.savedialog1.filename);
       2:zapisz_tablice_zestawow(form3.stringgrid3,1,form1.savedialog1.filename);
       3:zapisz_tablice_zestawow(form3.stringgrid4,1,form1.savedialog1.filename);
       4:zapisz_tablice_zestawow(form3.stringgrid5,1,form1.savedialog1.filename);
       5:zapisz_tablice_zestawow(form3.stringgrid6,1,form1.savedialog1.filename);
     end;
    end;
 end;
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

function TForm3.oczekuje(liczba, od_ , do_: integer): integer;
var
help1,help2:integer;
begin
help1:=do_+1;
help2:=-1;
repeat
 help1:=help1-1;
 inc(help2);
until (wylosowane[help1,liczba]{ czy_byla_liczba(liczba,help1)=true}) or (help1=od_);
if do_=0 then help2:=0;
oczekuje:=help2;
end;

procedure TForm3.SpeedButton4Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='LiczbyKolejneOczekiwania_'+liczba_;
if form1.savedialog1.Execute then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
   for help1:=0 to stringgrid7.rowcount-1 do writeln(filename,stringgrid7.cells[0,help1]);
  closefile(filename);
 end;

end;

procedure TForm3.StringGrid6SelectCell(Sender: TObject; ACol,  ARow: Integer; var CanSelect: Boolean);
var
help1,help2,help3:integer;
begin
if stringgrid6.cells[acol,arow]<>'' then
 begin
  speedbutton4.Enabled:=true;
  help1:=StrToInt(stringgrid6.cells[1,arow]);
  help2:=StrToInt(stringgrid6.cells[2,arow]);
  stringgrid7.cells[0,1]:='-';
  if help2<>0 then
   begin
    stringgrid7.RowCount:=help2+1;
    for help3:=1 to help2 do stringgrid7.cells[0,help3]:=IntToStr(oczekiwania[help1,help3]);
   end else stringgrid7.RowCount:=2;
  if help2>10 then stringgrid7.TopRow:=stringgrid7.RowCount-10;
  liczba_:=stringgrid6.cells[1,arow];
 end;
end;

procedure TForm3.sortuj_tabele(pozycja, wdol: word; tabela: tstringgrid);
var
//temp1,temp2,temp3,temp4,temp5:integer;
l1,l2,l3,l4,l5:string;
i,j:word;
begin
IF (tabela.RowCount>2) and (czy_byly_stat_liczb=true) THEN
 BEGIN
  if wdol=0 then
   begin
    for i:=2 to tabela.RowCount-1 do
     for j:=tabela.RowCount-1 DownTo i Do
      if StrToInt(tabela.cells[pozycja,j-1])<StrToInt(tabela.cells[pozycja,j]) Then
        begin
          l1:=tabela.Cells[1,j-1];
          l2:=tabela.Cells[2,j-1];
          l3:=tabela.Cells[3,j-1];
          l4:=tabela.Cells[4,j-1];
          l5:=tabela.cells[5,j-1];

          tabela.Cells[1,j-1]:=tabela.Cells[1,j];
          tabela.Cells[2,j-1]:=tabela.Cells[2,j];
          tabela.Cells[3,j-1]:=tabela.Cells[3,j];
          tabela.Cells[4,j-1]:=tabela.Cells[4,j];
          tabela.cells[5,j-1]:=tabela.cells[5,j];

          tabela.Cells[1,j]:=l1;
          tabela.Cells[2,j]:=l2;
          tabela.Cells[3,j]:=l3;
          tabela.Cells[4,j]:=l4;
          tabela.cells[5,j]:=l5;
          End;
   end;
  if wdol=1 then
   begin
    for i:=2 to tabela.RowCount-1 do
     for j:=tabela.RowCount-1 DownTo i Do
      if StrToInt(tabela.cells[pozycja,j-1])>StrToInt(tabela.cells[pozycja,j]) Then
        begin
          l1:=tabela.Cells[1,j-1];
          l2:=tabela.Cells[2,j-1];
          l3:=tabela.Cells[3,j-1];
          l4:=tabela.Cells[4,j-1];
          l5:=tabela.cells[5,j-1];

          tabela.Cells[1,j-1]:=tabela.Cells[1,j];
          tabela.Cells[2,j-1]:=tabela.Cells[2,j];
          tabela.Cells[3,j-1]:=tabela.Cells[3,j];
          tabela.Cells[4,j-1]:=tabela.Cells[4,j];
          tabela.cells[5,j-1]:=tabela.cells[5,j];

          tabela.Cells[1,j]:=l1;
          tabela.Cells[2,j]:=l2;
          tabela.Cells[3,j]:=l3;
          tabela.Cells[4,j]:=l4;
          tabela.cells[5,j]:=l5;
        End;
   end;
//showmessage('OK');
END;
end;

procedure TForm3.StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
  GetCursorPos(mousepos);
  popupmenu1.Popup(mousepos.X,mousepos.Y);
end;

procedure TForm3.StringGrid2ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  GetCursorPos(mousepos);
  popupmenu1.Popup(mousepos.X,mousepos.Y);
end;

procedure TForm3.StringGrid3ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  GetCursorPos(mousepos);
  popupmenu1.Popup(mousepos.X,mousepos.Y);
end;

procedure TForm3.StringGrid4ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  GetCursorPos(mousepos);
  popupmenu1.Popup(mousepos.X,mousepos.Y);
end;

procedure TForm3.StringGrid5ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  GetCursorPos(mousepos);
  popupmenu1.Popup(mousepos.X,mousepos.Y);
end;

procedure TForm3.Liczbymalejco1Click(Sender: TObject);
begin
//showmessage(tabsheet1.PageControl.ActivePage.Caption);

 case PageControl1.ActivePageIndex of
   0:sortuj_tabele(1,0,stringgrid1);
   1:sortuj_tabele(1,0,stringgrid2);
   2:sortuj_tabele(1,0,stringgrid3);
   3:sortuj_tabele(1,0,stringgrid4);
   4:sortuj_tabele(1,0,stringgrid5);
 end;



end;

procedure TForm3.Liczbyrosnco1Click(Sender: TObject);
begin
 case PageControl1.ActivePageIndex of
   0:sortuj_tabele(1,1,stringgrid1);
   1:sortuj_tabele(1,1,stringgrid2);
   2:sortuj_tabele(1,1,stringgrid3);
   3:sortuj_tabele(1,1,stringgrid4);
   4:sortuj_tabele(1,1,stringgrid5);
 end;
end;

procedure TForm3.SortujCzstocimalejco1Click(Sender: TObject);
begin
 case PageControl1.ActivePageIndex of
   0:sortuj_tabele(2,0,stringgrid1);
   1:sortuj_tabele(2,0,stringgrid2);
   2:sortuj_tabele(2,0,stringgrid3);
   3:sortuj_tabele(2,0,stringgrid4);
   4:sortuj_tabele(2,0,stringgrid5);
 end;
end;

procedure TForm3.Czstocirosnco1Click(Sender: TObject);
begin
 case PageControl1.ActivePageIndex of
   0:sortuj_tabele(2,1,stringgrid1);
   1:sortuj_tabele(2,1,stringgrid2);
   2:sortuj_tabele(2,1,stringgrid3);
   3:sortuj_tabele(2,1,stringgrid4);
   4:sortuj_tabele(2,1,stringgrid5);
 end;
end;

procedure TForm3.Maxmalejco1Click(Sender: TObject);
begin
 case PageControl1.ActivePageIndex of
   0:sortuj_tabele(3,0,stringgrid1);
   1:sortuj_tabele(3,0,stringgrid2);
   2:sortuj_tabele(3,0,stringgrid3);
   3:sortuj_tabele(3,0,stringgrid4);
   4:sortuj_tabele(3,0,stringgrid5);
 end;
end;

procedure TForm3.Maxrosnco1Click(Sender: TObject);
begin
 case PageControl1.ActivePageIndex of
   0:sortuj_tabele(3,1,stringgrid1);
   1:sortuj_tabele(3,1,stringgrid2);
   2:sortuj_tabele(3,1,stringgrid3);
   3:sortuj_tabele(3,1,stringgrid4);
   4:sortuj_tabele(3,1,stringgrid5);
 end;
end;

procedure TForm3.Oczekiwaniemalejco1Click(Sender: TObject);
begin
 case PageControl1.ActivePageIndex of
   0:sortuj_tabele(4,0,stringgrid1);
   1:sortuj_tabele(4,0,stringgrid2);
   2:sortuj_tabele(4,0,stringgrid3);
   3:sortuj_tabele(4,0,stringgrid4);
   4:sortuj_tabele(4,0,stringgrid5);
 end;
end;

procedure TForm3.Oczekiwanierosnco1Click(Sender: TObject);
begin
 case PageControl1.ActivePageIndex of
   0:sortuj_tabele(4,1,stringgrid1);
   1:sortuj_tabele(4,1,stringgrid2);
   2:sortuj_tabele(4,1,stringgrid3);
   3:sortuj_tabele(4,1,stringgrid4);
   4:sortuj_tabele(4,1,stringgrid5);
 end;
end;

procedure TForm3.SpeedButton5Click(Sender: TObject);
var
  mousepos : TPoint;
begin
  GetCursorPos(mousepos);
  popupmenu2.Popup(mousepos.X,mousepos.Y);
end;

procedure TForm3.zapisz_zestawy(ilosc: integer);
var
help1,help2,help3,help4,help5,help6,help7,help8,help9:integer;
plik_z:textfile;
linia:string;
liczba:array[1..10]of byte;
begin
for help1:=1 to 10 do liczba[help1]:=0;

help1:=ilosc_liczb_gry div ilosc;
help6:=help1 div 20;
if help1 mod 20 <>0 then inc(help6);

//showmessage('Iloœæ zestawów: '+IntToStr(help1)+'  Iloœæ plików: '+IntToStr(help6));

help4:=0;
help9:=help1+20;

if help1<21 then
 begin
  assignfile(plik_z,SCIEZKA_PROGRAM+'zestawy\ZestawyLiczb'+IntToStr(ilosc)+'.zes');
  rewrite(plik_z);
   for help2:=1 to help1 do
    begin
     linia:='';
     for help3:=1 to ilosc do
      begin
       inc(help4);
       //liczba[help3]:=StrToInt(stringgrid6.cells[1,help4]);
       help5:=StrToInt(stringgrid6.cells[1,help4]);
       linia:=linia+IntToStr(help5)+', ';
      end;
     writeln(plik_z,linia);
    end;
  closefile(plik_z);
 end;

if help1>20 then

for help7:=1 to help6 do
 begin
  assignfile(plik_z,SCIEZKA_PROGRAM+'zestawy\ZestawyLiczb'+IntToStr(ilosc)+'_'+IntToStr(help7)+'.zes');
  rewrite(plik_z);
  help9:=help9-20;
  if help9<20 then help8:=help9 else help8:=20;
   for help2:=1 to help8 do
    begin
     linia:='';
     for help3:=1 to ilosc do
      begin
       inc(help4);
       //liczba[help3]:=StrToInt(stringgrid6.cells[1,help4]);
       help5:=StrToInt(stringgrid6.cells[1,help4]);
       linia:=linia+IntToStr(help5)+', ';
      end;
     writeln(plik_z,linia);
    end;
  closefile(plik_z);
 end;

end;

procedure TForm3.N1liczbowe1Click(Sender: TObject);
begin
zapisz_zestawy(1);
end;

procedure TForm3.N2liczbow1Click(Sender: TObject);
begin
zapisz_zestawy(2);
end;

procedure TForm3.N3liczbowe1Click(Sender: TObject);
begin
zapisz_zestawy(3);
end;

procedure TForm3.N4liczbowe1Click(Sender: TObject);
begin
zapisz_zestawy(4);
end;

procedure TForm3.N5liczbowe1Click(Sender: TObject);
begin
zapisz_zestawy(5);
end;

procedure TForm3.N6liczbowe1Click(Sender: TObject);
begin
zapisz_zestawy(6);
end;

procedure TForm3.N7liczbowe1Click(Sender: TObject);
begin
zapisz_zestawy(7);
end;

procedure TForm3.N8liczbowe1Click(Sender: TObject);
begin
zapisz_zestawy(8);
end;

procedure TForm3.N9liczbowe1Click(Sender: TObject);
begin
zapisz_zestawy(9);
end;

procedure TForm3.N10liczbowe1Click(Sender: TObject);
begin
zapisz_zestawy(10);
end;

procedure TForm3.SpinEdit5Change(Sender: TObject);
begin
spinedit5.Hint:=(IntToStr(losowanie[spinedit5.Value,21])+'.'+IntToStr(losowanie[spinedit5.Value,22])+'.'+IntToStr(losowanie[spinedit5.Value,23]));
end;

procedure TForm3.SpeedButton6Click(Sender: TObject);
var
help1,help2,help3,help4,help5,help6,help7:integer;
plik_:textfile;
begin
help1:=spinedit5.Value;

assignfile(plik_,SCIEZKA_PROGRAM+'\temp\PorownajZLosowaniem.txt');
rewrite(plik_);

help2:=ilosc_liczb_gry div 10;

help4:=0;
help6:=0;

for help3:=1 to help2 do
 begin
  for help7:=1 to 10 do
   begin
    inc(help4);
    help5:=StrToInt(stringgrid6.cells[1,help4]);
    if wylosowane[help1,help5] then inc(help6);
   end;
  writeln(plik_,'Iloœæ liczb: '+IntToStr(help4)+'   Trafionych: '+IntToStr(help6));
 end;

if ilosc_liczb_gry mod 10 <>0 then
 begin
  for help3:=1 to ilosc_liczb_gry mod 10 do
   begin
    inc(help4);
    help5:=StrToInt(stringgrid6.cells[1,help4]);
    if wylosowane[help1,help5] then inc(help6);
   end;
  writeln(plik_,'Iloœæ liczb: '+IntToStr(help4)+'   Trafionych: '+IntToStr(help6));
 end;


closefile(plik_);
ShellExecute(Handle, 'open', PCHar(SCIEZKA_PROGRAM+'\temp\PorownajZLosowaniem.txt'), nil, nil, SW_SHOWNORMAL);
end;

end.
