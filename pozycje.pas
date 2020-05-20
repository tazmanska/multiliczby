unit pozycje;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, main,
  StdCtrls, Spin, Gauges, Buttons, ComCtrls, Grids, Menus;

type
  TForm20 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    Gauge1: TGauge;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    Label9: TLabel;
    Label10: TLabel;
    SpinEdit3: TSpinEdit;
    SpeedButton5: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    StringGridpoj: TStringGrid;
    StringGridpar: TStringGrid;
    StringGridtroj: TStringGrid;
    PopupMenu1: TPopupMenu;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    N1: TMenuItem;
    Liczbymalejco1: TMenuItem;
    Liczbyrosnce1: TMenuItem;
    PopupMenu2: TPopupMenu;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    SpinEdit9: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SB_pamietaj: TSpeedButton;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure StringGridpojContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure Liczbymalejco1Click(Sender: TObject);
    procedure Liczbyrosnce1Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure StringGridparContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure StringGridtrojContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
   procedure oblicz(od_,do_,skok:integer);
   procedure wypisz_liczby;
   procedure wypisz_pary;
   procedure wypisz_trojki;
   procedure sortuj_liczby(pozycja,wdol:word);
   procedure sortuj_pary(pozycja,wdol:word);
   procedure sortuj_trojki(pozycja,wdol:word);

   function czy_byla_pozycja(pozycja,nr_los:integer):boolean;
   function czy_byla_pozycja2(pozycja,nr_los:integer):boolean;
    { Public declarations }
  end;

var
  Form20: TForm20;

  wyniki_poz:array[1..5000,1..21]of byte;
  liczby_poz:array[1..20,1..4]of word;
  pary_poz:array[1..190,1..5]of word;
  trojki_poz:array[1..1140,1..6]of word;

  czy_byly_stat_pozycji:boolean;

  losowan_pozycji:integer;

  do2,od2:integer;

  ilosc_par, ilosc_trojek:integer;

implementation

uses Addins;

{$R *.DFM}
{ DONE : zapisanie ustawien }
procedure TForm20.FormClose(Sender: TObject; var Action: TCloseAction);
begin
zapisz_opcje('pozycje','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);

zapisz_opcje('pozycje','pary_kazda_liczba_tylko_'+prefiks_gry,checkbox1.checked);
zapisz_opcje('pozycje','pary_kazda_liczba_razy_'+prefiks_gry,spinedit9.value);

zapisz_opcje('pozycje','trojki_kazda_liczba_tylko_'+prefiks_gry,checkbox2.checked);
zapisz_opcje('pozycje','trojki_kazda_liczba_razy_'+prefiks_gry,spinedit4.value);

zapisz_opcje('pozycje','skok_co_'+prefiks_gry,spinedit3.value);

zapisz_opcje('pozycje','od_'+prefiks_gry,spinedit1.value);
zapisz_opcje('pozycje','do_'+prefiks_gry,spinedit2.value);
zapisz_opcje('pozycje','zakladka_'+prefiks_gry,PageControl1.ActivePageIndex);

Action := caFree;
Form20:=nil;
end;

{ DONE : wczytanie ustawien }
procedure TForm20.FormCreate(Sender: TObject);
var
help1,help2:integer;
pamietaj:boolean;
begin
if Gra.Numer=1 then
 begin
  ilosc_par:=190;
  ilosc_trojek:=1140;
 end;

if Gra.Numer=2 then
 begin
  ilosc_par:=15;
  ilosc_trojek:=20;
 end;

if Gra.Numer=3 then
 begin
  ilosc_par:=10;
  ilosc_trojek:=10;
 end;

czy_byly_stat_pozycji:=false;
stringgridpoj.ColWidths[0]:=30;
stringgridpoj.ColWidths[5]:=28;
stringgridpoj.Cells[0,0]:='Lp.';
stringgridpoj.cells[1,0]:='Pozycja';
stringgridpoj.cells[2,0]:='Iloœæ';
stringgridpoj.cells[3,0]:='Max';
stringgridpoj.cells[4,0]:='Oczekuje';
stringgridpoj.cells[5,0]:='Traf.';

stringgridpar.ColWidths[0]:=30;
stringgridpar.ColWidths[5]:=28;
stringgridpar.Cells[0,0]:='Lp.';
stringgridpar.cells[1,0]:='Pozycje';
stringgridpar.cells[2,0]:='Iloœæ';
stringgridpar.cells[3,0]:='Max';
stringgridpar.cells[4,0]:='Oczekuje';
stringgridpar.cells[5,0]:='Traf.';

stringgridtroj.ColWidths[0]:=30;
stringgridtroj.ColWidths[5]:=28;
stringgridtroj.Cells[0,0]:='Lp.';
stringgridtroj.cells[1,0]:='Pozycje';
stringgridtroj.cells[2,0]:='Iloœæ';
stringgridtroj.cells[3,0]:='Max';
stringgridtroj.cells[4,0]:='Oczekuje';
stringgridtroj.cells[5,0]:='Traf.';

for help1:=1 to 20 do stringgridpoj.cells[0,help1]:=IntToStr(help1);
for help1:=1 to 190 do stringgridpar.cells[0,help1]:=IntToStr(help1);
for help1:=1 to 1140 do stringgridtroj.cells[0,help1]:=IntToStr(help1);

pamietaj:=wczytaj_opcje('pozycje','pamietaj_ustawienia_'+prefiks_gry,false);
SB_pamietaj.Down:=pamietaj;

if pamietaj then
 begin
  checkbox1.Checked:=wczytaj_opcje('pozycje','pary_kazda_liczba_tylko_'+prefiks_gry,false);
  help1:=wczytaj_opcje('pozycje','pary_kazda_liczba_razy_'+prefiks_gry,1);
  if (help1<1) or (help1>5) then help1:=1;
  spinedit9.Value:=help1;

  checkbox2.Checked:=wczytaj_opcje('pozycje','trojki_kazda_liczba_tylko_'+prefiks_gry,false);
  help1:=wczytaj_opcje('pozycje','trojki_kazda_liczba_razy_'+prefiks_gry,1);
  if (help1<1) or (help1>5) then help1:=1;
  spinedit4.Value:=help1;

  help1:=wczytaj_opcje('pozycje','skok_co_'+prefiks_gry,1);
  if (help1<1) or (help1>100) then help1:=1;
  spinedit3.value:=help1;

  PageControl1.ActivePageIndex:=wczytaj_opcje('pozycje','zakladka_'+prefiks_gry,0);  
 end;

help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

if pamietaj then
 begin
  help1:=wczytaj_opcje('pozycje','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('pozycje','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

  spinedit1.Value:=help1;
  spinedit2.Value:=help2;
  spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

end;

procedure TForm20.oblicz(od_, do_, skok: integer);
var
help1,help2,help3,help4,help5,max:integer;
linia:string;
begin
form1.stoper_start;
gauge1.Progress:=0;
gauge1.MaxValue:=5;
od2:=od_;
do2:=do_;
help4:=(do_-od_+1) div skok;
help5:=od_-skok;
losowan_pozycji:=0;


for help1:=od_-skok to do_-skok do
 begin
  inc(losowan_pozycji);
  help3:=0;
  for help2:=1 to ilosc_liczb_los do if wylosowane[help1+skok,losowanie[help1,help2]] then
   begin
    inc(help3);
    wyniki_poz[losowan_pozycji,help3]:=help2;
    wyniki_poz[losowan_pozycji,21]:=help3;
   end;
 end;

gauge1.Progress:=1;

for help1:=1 to 20 do
 begin
  liczby_poz[help1,1]:=help1;
  liczby_poz[help1,2]:=0;
  liczby_poz[help1,3]:=0;
  liczby_poz[help1,4]:=0;
 end;

help3:=0;
for help1:=1 to 20 do
 for help2:=help1+1 to 20 do
  begin
   inc(help3);
   pary_poz[help3,1]:=help1;
   pary_poz[help3,2]:=help2;
   pary_poz[help3,3]:=0;
   pary_poz[help3,4]:=0;
   pary_poz[help3,5]:=0;
  end;

help4:=0;
for help1:=1 to 20 do
 for help2:=help1+1 to 20 do
  for help3:=help2+1 to 20 do
   begin
    inc(help4);
    trojki_poz[help4,1]:=help1;
    trojki_poz[help4,2]:=help2;
    trojki_poz[help4,3]:=help3;
    trojki_poz[help4,4]:=0;
    trojki_poz[help4,5]:=0;
    trojki_poz[help4,6]:=0;
   end;

gauge1.Progress:=2;

//pojedyncze pozycje

//czestosc

 for help2:=1 to losowan_pozycji do
  if wyniki_poz[help2,21]>0 then
   for help3:=1 to wyniki_poz[help2,21] do inc(liczby_poz[wyniki_poz[help2,help3],2]);

//oczekiwanie

for help1:=losowan_pozycji downto 1 do
 begin
  help5:=help1;
  if wyniki_poz[help1,21]>0 then
   begin
    for help3:=1 to wyniki_poz[help1,21] do
     if liczby_poz[wyniki_poz[help1,help3],3]=0 then
      begin
       liczby_poz[wyniki_poz[help1,help3],4]:=do_-od_+1-help5;
       liczby_poz[wyniki_poz[help1,help3],3]:=1;
      end;
   end;
 end;

for help1:=1 to 20 do liczby_poz[help1,3]:=0;

//max

for help1:=1 to 20 do
  begin
    max:=0;
    for help2:=1 to losowan_pozycji do
      begin
        if czy_byla_pozycja(help1,help2) then
          begin
	    if max>liczby_poz[help1,3] then liczby_poz[help1,3]:=max;
            max:=0;
          end
            else inc(max);
      end;
    if liczby_poz[help1,2]=0 then liczby_poz[help1,4]:=losowan_pozycji;
  end;

gauge1.Progress:=3;

//pary pozycji

//czestosc

for help1:=1 to 190 do
 for help2:=1 to losowan_pozycji do
  if (czy_byla_pozycja(pary_poz[help1,1],help2)=true) and (czy_byla_pozycja(pary_poz[help1,2],help2)=true) then inc(pary_poz[help1,3]);

//oczekiwanie

for help1:=1 to 190 do
 begin
  help3:=losowan_pozycji+1;
  help5:=0;
  help4:=0;
  repeat
   dec(help3);
   if (czy_byla_pozycja(pary_poz[help1,1],help3)=true) and (czy_byla_pozycja(pary_poz[help1,2],help3)=true) then help4:=1;
   if help4=0 then inc(help5);
  until (help4=1) or (help3=1);
  pary_poz[help1,5]:=help5;
 end;

//max

help5:=do_-od_+1;
for help1:=1 to 190 do
  begin
    max:=0;
    for help2:=1 to losowan_pozycji do
      begin
        if (czy_byla_pozycja(pary_poz[help1,1],help2)=true) and (czy_byla_pozycja(pary_poz[help1,2],help2)=true) then
          begin
	    if max>pary_poz[help1,4] then pary_poz[help1,4]:=max;
            max:=0;
          end
            else inc(max);
      end;
    if pary_poz[help1,3]=0 then pary_poz[help1,4]:=help5;
  end;

gauge1.Progress:=4;

//trojki pozycji

//czestosc

for help1:=1 to 1140 do
 for help2:=1 to losowan_pozycji do
  if (czy_byla_pozycja(trojki_poz[help1,1],help2)=true) and (czy_byla_pozycja(trojki_poz[help1,2],help2)=true) and (czy_byla_pozycja(trojki_poz[help1,3],help2)=true) then inc(trojki_poz[help1,4]);

//oczekiwanie

for help1:=1 to 1140 do
 begin
  help3:=losowan_pozycji+1;
  help5:=0;
  help4:=0;
  repeat
   dec(help3);
   if (czy_byla_pozycja(trojki_poz[help1,1],help3)=true) and (czy_byla_pozycja(trojki_poz[help1,2],help3)=true) and (czy_byla_pozycja(trojki_poz[help1,3],help3)=true) then help4:=1;
   if help4=0 then inc(help5);
  until (help4=1) or (help3=1);
  trojki_poz[help1,6]:=help5;
 end;

//max

help5:=do_-od_+1;
for help1:=1 to 1140 do
  begin
    max:=0;
    for help2:=1 to losowan_pozycji do
      begin
        if (czy_byla_pozycja(trojki_poz[help1,1],help2)=true) and (czy_byla_pozycja(trojki_poz[help1,2],help2)=true) and (czy_byla_pozycja(trojki_poz[help1,3],help2)=true) then
          begin
	    if max>trojki_poz[help1,5] then trojki_poz[help1,5]:=max;
            max:=0;
          end
            else inc(max);
      end;
    if trojki_poz[help1,4]=0 then trojki_poz[help1,5]:=help5;
  end;

gauge1.Progress:=5;

wypisz_liczby;
wypisz_pary;
wypisz_trojki;
speedbutton5.Enabled:=true;
czy_byly_stat_pozycji:=true;
form20.Caption:='Statystyki pozycji... '+IntToStr(od_)+' - '+IntToStr(do_)+' ('+IntToStr(skok)+')   '+form1.stoper_stop;
end;

procedure TForm20.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm20.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;
procedure TForm20.SpeedButton1Click(Sender: TObject);
begin
if spinedit1.Value<spinedit2.Value then
 begin
  if spinedit1.Value>spinedit3.Value then oblicz(spinedit1.value,spinedit2.value,spinedit3.value);
 end;
if spinedit1.Value>spinedit2.Value then
 begin
  if spinedit2.Value>spinedit3.Value then oblicz(spinedit2.value,spinedit1.value,spinedit3.value);
 end;
end;

procedure TForm20.wypisz_liczby;
var
help1:integer;
begin
for help1:=1 to 20 do
 begin
  stringgridpoj.cells[1,help1]:=IntToStr(liczby_poz[help1,1]);
  stringgridpoj.cells[2,help1]:=IntToStr(liczby_poz[help1,2]);
  stringgridpoj.cells[3,help1]:=IntToStr(liczby_poz[help1,3]);
  stringgridpoj.cells[4,help1]:=IntToStr(liczby_poz[help1,4]);
  stringgridpoj.cells[5,help1]:='';
  if do2<losowan then if czy_byla_pozycja2(liczby_poz[help1,1],do2+1) then stringgridpoj.cells[5,help1]:='TAK';
 end;
end;

function TForm20.czy_byla_pozycja(pozycja, nr_los: integer): boolean;
var help1,help2:byte;
begin
help2:=0;
if wyniki_poz[nr_los,21]>0 then for help1:=1 to wyniki_poz[nr_los,21] do if wyniki_poz[nr_los,help1]=pozycja then help2:=1;
if help2=1 then result:=true else result:=false;
end;

function TForm20.czy_byla_pozycja2(pozycja, nr_los: integer): boolean;
begin
if wylosowane[nr_los,losowanie[nr_los-1,pozycja]] then result:=true else result:=false;
end;
{ DONE : kazda liczba tylko 1-5 razy }
procedure TForm20.wypisz_pary;
var
help1,help2,help3,help4,help5:integer;
liczba:array[1..20] of byte;
ile_razy:byte;
begin
if checkbox1.Checked=false then
 begin
  stringgridpar.rowcount:=191;
  for help1:=1 to 190 do
   begin
    stringgridpar.cells[1,help1]:=IntToStr(pary_poz[help1,1])+', '+IntToStr(pary_poz[help1,2]);
    stringgridpar.cells[2,help1]:=IntToStr(pary_poz[help1,3]);
    stringgridpar.cells[3,help1]:=IntToStr(pary_poz[help1,4]);
    stringgridpar.cells[4,help1]:=IntToStr(pary_poz[help1,5]);
    stringgridpar.cells[5,help1]:='';
    if do2<losowan then
     begin
      help2:=0;
      if czy_byla_pozycja2(pary_poz[help1,1],do2+1) then inc(help2);
      if czy_byla_pozycja2(pary_poz[help1,2],do2+1) then inc(help2);
      if help2=2 then stringgridpar.cells[5,help1]:='TAK';
      if help2=1 then stringgridpar.cells[5,help1]:='1';
     end;
   end;
 end;



  if checkbox1.Checked then
   begin
    for help1:=1 to ilosc_liczb_los do liczba[help1]:=0;
    ile_razy:=spinedit9.Value;

    help1:=ilosc_liczb_los*ile_razy div 2;
    help2:=ilosc_liczb_los*ile_razy mod 2;
    if help1+help2>ilosc_par then stringgridpar.RowCount:=ilosc_par+1 else stringgridpar.rowcount:=help1+help2+1;

    help3:=0;
    help4:=0;

     while (help3<help1) and (help4<ilosc_par) do
      begin
       inc(help4);
        if (liczba[pary_poz[help4,1]]<ile_razy) and (liczba[pary_poz[help4,2]]<ile_razy) then
         begin
          inc(help3);
          stringgridpar.cells[0,help3]:=IntToStr(help3);
          stringgridpar.cells[1,help3]:=(IntToStr(pary_poz[help4,1])+' , '+IntToStr(pary_poz[help4,2]));
          stringgridpar.cells[2,help3]:=IntToStr(pary_poz[help4,3]);
          stringgridpar.cells[3,help3]:=IntToStr(pary_poz[help4,4]);
          stringgridpar.cells[4,help3]:=IntToStr(pary_poz[help4,5]);
          stringgridpar.cells[5,help3]:='';
          if do2<losowan then
           begin
            help2:=0;
             if czy_byla_pozycja2(pary_poz[help4,1],do2+1) then inc(help2);
             if czy_byla_pozycja2(pary_poz[help4,2],do2+1) then inc(help2);
             if help2=2 then stringgridpar.cells[5,help3]:='TAK';
             if help2=1 then stringgridpar.cells[5,help3]:='1';
           end;
          inc(liczba[pary_poz[help4,1]]);
          inc(liczba[pary_poz[help4,2]]);
         end;
      end;

     if (help4=ilosc_par) and (help3<help1) then stringgridpar.RowCount:=help3+1;

    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_par) do
        begin
         inc(help4);
         help5:=0;
         if (liczba[pary_poz[help4,1]]<ile_razy) then inc(help5);
         if (liczba[pary_poz[help4,2]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            stringgridpar.cells[0,help3]:=IntToStr(help3);
            stringgridpar.cells[1,help3]:=(IntToStr(pary_poz[help4,1])+' , '+IntToStr(pary_poz[help4,2]));
            stringgridpar.cells[2,help3]:=IntToStr(pary_poz[help4,3]);
            stringgridpar.cells[3,help3]:=IntToStr(pary_poz[help4,4]);
            stringgridpar.cells[4,help3]:=IntToStr(pary_poz[help4,5]);
            stringgridpar.cells[5,help3]:='';
             if do2<losowan then
              begin
               help2:=0;
                if czy_byla_pozycja2(pary_poz[help4,1],do2+1) then inc(help2);
                if czy_byla_pozycja2(pary_poz[help4,2],do2+1) then inc(help2);
                if help2=2 then stringgridpar.cells[5,help3]:='TAK';
                if help2=1 then stringgridpar.cells[5,help3]:='1';
              end;
            inc(liczba[pary_poz[help4,1]]);
            inc(liczba[pary_poz[help4,2]]);
           end;
        end;
     end;
    if (help4=ilosc_par) and (help3<help1+help2) then stringgridpar.RowCount:=help3+1;
   end;      


end;


procedure TForm20.wypisz_trojki;
var
help1,help2,help3,help4,help5,help6:integer;
liczba:array[1..20] of byte;
ile_razy,wpadlo:byte;
begin
if checkbox2.Checked=false then
 begin
  stringgridtroj.rowcount:=1141;
  for help1:=1 to 1140 do
   begin
    stringgridtroj.cells[1,help1]:=IntToStr(trojki_poz[help1,1])+', '+IntToStr(trojki_poz[help1,2])+', '+IntToStr(trojki_poz[help1,3]);
    stringgridtroj.cells[2,help1]:=IntToStr(trojki_poz[help1,4]);
    stringgridtroj.cells[3,help1]:=IntToStr(trojki_poz[help1,5]);
    stringgridtroj.cells[4,help1]:=IntToStr(trojki_poz[help1,6]);
    stringgridtroj.cells[5,help1]:='';
     if do2<losowan then
      begin
       help2:=0;
        if czy_byla_pozycja2(trojki_poz[help1,1],do2+1) then inc(help2);
        if czy_byla_pozycja2(trojki_poz[help1,2],do2+1) then inc(help2);
        if czy_byla_pozycja2(trojki_poz[help1,3],do2+1) then inc(help2);
        if help2>0 then
        if help2=3 then stringgridtroj.cells[5,help1]:='TAK' else stringgridtroj.cells[5,help1]:=IntToStr(help2);
      end;
   end;
 end;

if checkbox2.Checked then
 begin

    for help1:=1 to ilosc_liczb_los do liczba[help1]:=0;
    ile_razy:=spinedit4.Value;

    help1:=ilosc_liczb_los*ile_razy div 3;
    help2:=ilosc_liczb_los*ile_razy mod 3;

    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ilosc_trojek then stringgridtroj.RowCount:=ilosc_trojek+1 else stringgridtroj.rowcount:=help1+help6+1;

    help3:=0;
    help4:=0;

     while (help3<help1) and (help4<ilosc_trojek) do
      begin
       inc(help4);
        if (liczba[trojki_poz[help4,1]]<ile_razy) and (liczba[trojki_poz[help4,2]]<ile_razy) and (liczba[trojki_poz[help4,3]]<ile_razy) then
         begin
          inc(help3);
          stringgridtroj.cells[1,help3]:=IntToStr(trojki_poz[help4,1])+', '+IntToStr(trojki_poz[help4,2])+', '+IntToStr(trojki_poz[help4,3]);
          stringgridtroj.cells[2,help3]:=IntToStr(trojki_poz[help4,4]);
          stringgridtroj.cells[3,help3]:=IntToStr(trojki_poz[help4,5]);
          stringgridtroj.cells[4,help3]:=IntToStr(trojki_poz[help4,6]);
          stringgridtroj.cells[5,help3]:='';
           if do2<losowan then
            begin
             wpadlo:=0;
              if czy_byla_pozycja2(trojki_poz[help4,1],do2+1) then inc(wpadlo);
              if czy_byla_pozycja2(trojki_poz[help4,2],do2+1) then inc(wpadlo);
              if czy_byla_pozycja2(trojki_poz[help4,3],do2+1) then inc(wpadlo);
              if wpadlo>0 then
              if wpadlo=3 then stringgridtroj.cells[5,help3]:='TAK' else stringgridtroj.cells[5,help3]:=IntToStr(wpadlo);
            end;
          inc(liczba[trojki_poz[help4,1]]);
          inc(liczba[trojki_poz[help4,2]]);
          inc(liczba[trojki_poz[help4,3]]);
         end;
      end;



    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_trojek) do
        begin
         inc(help4);
         help5:=0;
         if (liczba[trojki_poz[help4,1]]<ile_razy) then inc(help5);
         if (liczba[trojki_poz[help4,2]]<ile_razy) then inc(help5);
         if (liczba[trojki_poz[help4,3]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            stringgridtroj.cells[1,help3]:=IntToStr(trojki_poz[help4,1])+', '+IntToStr(trojki_poz[help4,2])+', '+IntToStr(trojki_poz[help4,3]);
            stringgridtroj.cells[2,help3]:=IntToStr(trojki_poz[help4,4]);
            stringgridtroj.cells[3,help3]:=IntToStr(trojki_poz[help4,5]);
            stringgridtroj.cells[4,help3]:=IntToStr(trojki_poz[help4,6]);
            stringgridtroj.cells[5,help3]:='';
             if do2<losowan then
              begin
               wpadlo:=0;
                if czy_byla_pozycja2(trojki_poz[help4,1],do2+1) then inc(wpadlo);
                if czy_byla_pozycja2(trojki_poz[help4,2],do2+1) then inc(wpadlo);
                if czy_byla_pozycja2(trojki_poz[help4,3],do2+1) then inc(wpadlo);
                if wpadlo>0 then
                if wpadlo=3 then stringgridtroj.cells[5,help3]:='TAK' else stringgridtroj.cells[5,help3]:=IntToStr(wpadlo);
              end;
            inc(liczba[trojki_poz[help4,1]]);
            inc(liczba[trojki_poz[help4,2]]);
            inc(liczba[trojki_poz[help4,3]]);
           end;
        end;
     end;
    if (help4=ilosc_trojek) and (help3<help1+help6) then stringgridtroj.RowCount:=help3+1;
 end;


end;

procedure TForm20.SpeedButton5Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin

case pagecontrol1.ActivePageIndex of
  0:form1.SaveDialog1.FileName:='PojedynczePozycje';
  1:form1.SaveDialog1.FileName:='ParyPozycji';
  2:form1.SaveDialog1.FileName:='TrójkiPozycji';
end;

if form1.savedialog1.Execute then
 begin
  if form1.SaveDialog1.FilterIndex=1 then
   begin
    assignfile(filename,form1.savedialog1.filename);
    rewrite(filename);
     case pagecontrol1.ActivePageIndex of
       0:for help1:=0 to stringgridpoj.rowcount-1 do writeln(filename,stringgridpoj.cells[0,help1]+';'+stringgridpoj.cells[1,help1]+';'+stringgridpoj.cells[2,help1]+';'+stringgridpoj.cells[3,help1]+';'+stringgridpoj.cells[4,help1]+';'+stringgridpoj.cells[5,help1]);
       1:for help1:=0 to stringgridpar.rowcount-1 do writeln(filename,stringgridpar.cells[0,help1]+';'+stringgridpar.cells[1,help1]+';'+stringgridpar.cells[2,help1]+';'+stringgridpar.cells[3,help1]+';'+stringgridpar.cells[4,help1]+';'+stringgridpar.cells[5,help1]);
       2:for help1:=0 to stringgridtroj.rowcount-1 do writeln(filename,stringgridtroj.cells[0,help1]+';'+stringgridtroj.cells[1,help1]+';'+stringgridtroj.cells[2,help1]+';'+stringgridtroj.cells[3,help1]+';'+stringgridtroj.cells[4,help1]+';'+stringgridtroj.cells[5,help1]);
     end;
    closefile(filename);
   end else
    begin
     case pagecontrol1.ActivePageIndex of
       0:form1.zapiszHTML(form20.stringgridpoj,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Statystyki pozycji','Pojedyncze pozycje',1,od2,do2);
       1:form1.zapiszHTML(form20.stringgridpar,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Statystyki pozycji','Pary pozycji',1,od2,do2);
       2:form1.zapiszHTML(form20.stringgridtroj,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Statystyki pozycji','Trójki pozycji',1,od2,do2);
     end;
    end;
 end;

end;

procedure TForm20.sortuj_liczby(pozycja, wdol: word);
var
help1:integer;
linie:array[1..6]of string;
i,j:word;
begin
  if wdol=0 then
   begin
    for i:=2 to stringgridpoj.RowCount-1 do
     for j:=stringgridpoj.RowCount-1 DownTo i Do
      if StrToInt(stringgridpoj.cells[pozycja,j-1])<StrToInt(stringgridpoj.cells[pozycja,j]) Then
        begin
         for help1:=1 to 6 do linie[help1]:=stringgridpoj.cells[help1,j-1];
         for help1:=1 to 6 do stringgridpoj.cells[help1,j-1]:=stringgridpoj.cells[help1,j];
         for help1:=1 to 6 do stringgridpoj.cells[help1,j]:=linie[help1];
        End;
   end;
  if wdol=1 then
   begin
    for i:=2 to stringgridpoj.RowCount-1 do
     for j:=stringgridpoj.RowCount-1 DownTo i Do
      if StrToInt(stringgridpoj.cells[pozycja,j-1])>StrToInt(stringgridpoj.cells[pozycja,j]) Then
        begin
         for help1:=1 to 6 do linie[help1]:=stringgridpoj.cells[help1,j-1];
         for help1:=1 to 6 do stringgridpoj.cells[help1,j-1]:=stringgridpoj.cells[help1,j];
         for help1:=1 to 6 do stringgridpoj.cells[help1,j]:=linie[help1];
        End;
   end;
end;

procedure TForm20.StringGridpojContextPopup(Sender: TObject;  MousePos: TPoint; var Handled: Boolean);
begin
if czy_byly_stat_pozycji then
 begin
  GetCursorPos(mousepos);
  popupmenu1.Popup(mousepos.X,mousepos.Y);
 end;
end;


procedure TForm20.MenuItem9Click(Sender: TObject);
begin
sortuj_liczby(2,0);
end;

procedure TForm20.MenuItem10Click(Sender: TObject);
begin
sortuj_liczby(2,1);
end;

procedure TForm20.Liczbymalejco1Click(Sender: TObject);
begin
sortuj_liczby(1,0);
end;

procedure TForm20.Liczbyrosnce1Click(Sender: TObject);
begin
sortuj_liczby(1,1);
end;

procedure TForm20.MenuItem12Click(Sender: TObject);
begin
sortuj_liczby(3,0);
end;

procedure TForm20.MenuItem13Click(Sender: TObject);
begin
sortuj_liczby(3,1);
end;

procedure TForm20.MenuItem15Click(Sender: TObject);
begin
sortuj_liczby(4,0);
end;

procedure TForm20.MenuItem16Click(Sender: TObject);
begin
sortuj_liczby(4,1);
end;

procedure TForm20.StringGridparContextPopup(Sender: TObject;  MousePos: TPoint; var Handled: Boolean);
begin
if czy_byly_stat_pozycji then
 begin
  GetCursorPos(mousepos);
  popupmenu2.Popup(mousepos.X,mousepos.Y);
 end;
end;



procedure TForm20.sortuj_pary(pozycja, wdol: word);
var
help1,j,i:integer;
temp:array[1..6]of integer;
begin
if wdol=0 then
 begin
        for i:=2 to 190 do
         begin
          for j:=190 DownTo i Do
           if pary_poz[j-1,pozycja]<pary_poz[j,pozycja] Then
            begin
             for help1:=1 to 5 do temp[help1]:=pary_poz[j-1,help1];
             for help1:=1 to 5 do pary_poz[j-1,help1]:=pary_poz[j,help1];
             for help1:=1 to 5 do pary_poz[j,help1]:=temp[help1];
            End;
         end;
 end else
  begin
        for i:=2 to 190 do
         begin
          for j:=190 DownTo i Do
           if pary_poz[j-1,pozycja]>pary_poz[j,pozycja] Then
            begin
             for help1:=1 to 5 do temp[help1]:=pary_poz[j-1,help1];
             for help1:=1 to 5 do pary_poz[j-1,help1]:=pary_poz[j,help1];
             for help1:=1 to 5 do pary_poz[j,help1]:=temp[help1];
            End;
         end;
  end;
end;

procedure TForm20.sortuj_trojki(pozycja, wdol: word);
var
help1,j,i:integer;
temp:array[1..6]of integer;
begin
if wdol=0 then
 begin
        for i:=2 to 1140 do
         begin
          for j:=1140 DownTo i Do
           if trojki_poz[j-1,pozycja]<trojki_poz[j,pozycja] Then
            begin
             for help1:=1 to 6 do temp[help1]:=trojki_poz[j-1,help1];
             for help1:=1 to 6 do trojki_poz[j-1,help1]:=trojki_poz[j,help1];
             for help1:=1 to 6 do trojki_poz[j,help1]:=temp[help1];
            End;
         end;
 end else
  begin
        for i:=2 to 1140 do
         begin
          for j:=1140 DownTo i Do
           if trojki_poz[j-1,pozycja]>trojki_poz[j,pozycja] Then
            begin
             for help1:=1 to 6 do temp[help1]:=trojki_poz[j-1,help1];
             for help1:=1 to 6 do trojki_poz[j-1,help1]:=trojki_poz[j,help1];
             for help1:=1 to 6 do trojki_poz[j,help1]:=temp[help1];
            End;
         end;
  end;
end;

procedure TForm20.MenuItem4Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgridpar.RowCount < 200) then
  begin
    sortujStringGrid(stringgridpar, 2, false);
  end else
  begin
    sortuj_pary(3,0);
    wypisz_pary;
  end;
end;

procedure TForm20.MenuItem5Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgridpar.RowCount < 200) then
  begin
    sortujStringGrid(stringgridpar, 2);
  end else
  begin
    sortuj_pary(3,1);
    wypisz_pary;
  end;
end;

procedure TForm20.MenuItem7Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgridpar.RowCount < 200) then
  begin
    sortujStringGrid(stringgridpar, 3, false);
  end else
  begin
    sortuj_pary(4,0);
    wypisz_pary;
  end;
end;

procedure TForm20.MenuItem8Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgridpar.RowCount < 200) then
  begin
    sortujStringGrid(stringgridpar, 3);
  end else
  begin
    sortuj_pary(4,1);
    wypisz_pary;
  end;
end;

procedure TForm20.MenuItem18Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgridpar.RowCount < 200) then
  begin
    sortujStringGrid(stringgridpar, 4, false);
  end else
  begin
    sortuj_pary(5,0);
    wypisz_pary;
  end;
end;

procedure TForm20.MenuItem19Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgridpar.RowCount < 200) then
  begin
    sortujStringGrid(stringgridpar, 4);
  end else
  begin
    sortuj_pary(5,1);
    wypisz_pary;
  end;
end;

procedure TForm20.MenuItem1Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgridtroj.RowCount < 200) then
  begin
    sortujStringGrid(stringgridtroj, 2, false);
  end else
  begin
    sortuj_trojki(4,0);
    wypisz_trojki;
  end;
end;

procedure TForm20.MenuItem2Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgridtroj.RowCount < 200) then
  begin
    sortujStringGrid(stringgridtroj, 2);
  end else
  begin
    sortuj_trojki(4,1);
    wypisz_trojki;
  end;
end;

procedure TForm20.MenuItem20Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgridtroj.RowCount < 200) then
  begin
    sortujStringGrid(stringgridtroj, 3, false);
  end else
  begin
    sortuj_trojki(5,0);
    wypisz_trojki;
  end;
end;

procedure TForm20.MenuItem21Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgridtroj.RowCount < 200) then
  begin
    sortujStringGrid(stringgridtroj, 3);
  end else
  begin
    sortuj_trojki(5,1);
    wypisz_trojki;
  end;
end;

procedure TForm20.MenuItem23Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgridtroj.RowCount < 200) then
  begin
    sortujStringGrid(stringgridtroj, 4, false);
  end else
  begin
    sortuj_trojki(6,0);
    wypisz_trojki;
  end;
end;

procedure TForm20.MenuItem24Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgridtroj.RowCount < 200) then
  begin
    sortujStringGrid(stringgridtroj, 4);
  end else
  begin
    sortuj_trojki(6,1);
    wypisz_trojki;
  end;
end;

procedure TForm20.StringGridtrojContextPopup(Sender: TObject;   MousePos: TPoint; var Handled: Boolean);
begin
if czy_byly_stat_pozycji then
 begin
  GetCursorPos(mousepos);
  popupmenu3.Popup(mousepos.X,mousepos.Y);
 end;
end;

procedure TForm20.CheckBox1Click(Sender: TObject);
begin
  checkbox4.Enabled := checkbox1.Checked;
end;

procedure TForm20.CheckBox2Click(Sender: TObject);
begin
  checkbox3.Enabled := checkbox2.Checked;
end;

procedure TForm20.CheckBox4Click(Sender: TObject);
begin
  checkbox1.Enabled := not checkbox4.Checked;
  spinedit9.Enabled := not checkbox4.Checked;
end;

procedure TForm20.CheckBox3Click(Sender: TObject);
begin
  checkbox2.Enabled := not checkbox3.Checked;
  spinedit4.Enabled := not checkbox3.Checked;
end;

end.


