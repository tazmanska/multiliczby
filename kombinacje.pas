unit kombinacje;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, main,
  Grids, ComCtrls, StdCtrls, Spin, Buttons, Gauges, Menus;

type
  TForm14 = class(TForm)
    StringGrid1: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    SpinEdit3: TSpinEdit;
    Label4: TLabel;
    SpinEdit4: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Gauge1: TGauge;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    wyswietlaj_wynikow: TSpinEdit;
    CheckBox1: TCheckBox;
    PopupMenu1: TPopupMenu;
    Czstocimalejco1: TMenuItem;
    Czstocirosnco1: TMenuItem;
    CheckBox2: TCheckBox;
    Memo1: TMemo;
    SpinEdit9: TSpinEdit;
    SB_pamietaj: TSpeedButton;
    N1: TMenuItem;
    KopiujdoZestaww1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Czstocimalejco1Click(Sender: TObject);
    procedure Czstocirosnco1Click(Sender: TObject);
    procedure StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure KopiujdoZestaww1Click(Sender: TObject);
  private

    procedure licz(od_,do_,ile_liczb:integer);
    procedure pokaz_etykiety_ml(ile:byte);
    procedure pokaz_etykiety_dl(ile:byte);
    procedure pokaz_etykiety_el(ile:byte);

    { Private declarations }
  public


  procedure licz4(od_,do_:integer);
  procedure licz5(od_,do_:integer);
  procedure licz6(od_,do_:integer);
  procedure licz7(od_,do_:integer);
  procedure licz8(od_,do_:integer);
  procedure licz9(od_,do_:integer);
  procedure licz10(od_,do_:integer);

  procedure wypisz4;
  procedure wypisz5;
  procedure wypisz6;
  procedure wypisz7;
  procedure wypisz8;
  procedure wypisz9;
  procedure wypisz10;

  function oczekuje4(nr,ile:integer):integer;
  function oczekuje5(nr,ile:integer):integer;
  function oczekuje6(nr,ile:integer):integer;
  function oczekuje7(nr,ile:integer):integer;
  function oczekuje8(nr,ile:integer):integer;
  function oczekuje9(nr,ile:integer):integer;
  function oczekuje0(nr,ile:integer):integer;

  procedure sortuj4(pozycja,wdol,ilosc:integer);
  procedure sortuj5(pozycja,wdol,ilosc:integer);
  procedure sortuj6(pozycja,wdol,ilosc:integer);
  procedure sortuj7(pozycja,wdol,ilosc:integer);
  procedure sortuj8(pozycja,wdol,ilosc:integer);
  procedure sortuj9(pozycja,wdol,ilosc:integer);
  procedure sortuj0(pozycja,wdol,ilosc:integer);

  procedure napisz4(numers,numert:integer);
  procedure napisz5(numers,numert:integer);
  procedure napisz6(numers,numert:integer);
  procedure napisz7(numers,numert:integer);
  procedure napisz8(numers,numert:integer);
  procedure napisz9(numers,numert:integer);
  procedure napisz10(numers,numert:integer);

  function ile_wpadlo4(nr,nrc:integer):byte;
  function ile_wpadlo5(nr,nrc:integer):byte;
  function ile_wpadlo6(nr,nrc:integer):byte;
  function ile_wpadlo7(nr,nrc:integer):byte;
  function ile_wpadlo8(nr,nrc:integer):byte;
  function ile_wpadlo9(nr,nrc:integer):byte;
  function ile_wpadlo10(nr,nrc:integer):byte;

    { Public declarations }
  end;

  komb10 = packed record
    liczby:array[0..9] of byte;
    ilosc:array[0..7] of word;
  end;

  komb9 = packed record
    liczby:array[0..8] of byte;
    ilosc:array[0..6] of word;
  end;

  komb8 = packed record
    liczby:array[0..7] of byte;
    ilosc:array[0..5] of word;
  end;

  komb7 = packed record
    liczby:array[0..6] of byte;
    ilosc:array[0..4] of word;
  end;

  komb6 = packed record
    liczby:array[0..5] of byte;
    ilosc:array[0..3] of word;
  end;

  komb5 = packed record
    liczby:array[0..4] of byte;
    ilosc:array[0..2] of word;
  end;

  komb4 = packed record
    liczby:array[0..3] of byte;
    ilosc:array[0..2] of word;
  end;                              

var
  Form14: TForm14;

  kombinacje4:array of komb4;
  kombinacje5:array of komb5;
  kombinacje6:array of komb6;
  kombinacje7:array of komb7;
  kombinacje8:array of komb8;
  kombinacje9:array of komb9;
  kombinacje10:array of komb10;

  zestaw:array[1..80]of byte;
  komb:boolean;
  ilosc_l:word;
  ilosc_k,ilelos,od2,do2:integer;
  zak1,zak2,komb1:word;
  kombinacje1:boolean;
  wpadlo:byte;

  tytul:string;

implementation

uses podajliczby, Addins;

{$R *.DFM}

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
kombinacje4:=nil;
kombinacje5:=nil;
kombinacje6:=nil;
kombinacje7:=nil;
kombinacje8:=nil;
kombinacje9:=nil;
kombinacje10:=nil;

zapisz_opcje('kombinacje','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
zapisz_opcje('kombinacje','kombinacje_'+prefiks_gry,spinedit3.value);
zapisz_opcje('kombinacje','wedlug_'+prefiks_gry,spinedit4.value);

zapisz_opcje('kombinacje','kazda_liczba_tylko_'+prefiks_gry,checkbox1.Checked);
zapisz_opcje('kombinacje','kazda_liczba_razy_'+prefiks_gry,spinedit9.value);
zapisz_opcje('kombinacje','wyswietlaj_'+prefiks_gry,wyswietlaj_wynikow.value);
zapisz_opcje('kombinacje','redukuj_'+prefiks_gry,checkbox2.checked);
zapisz_opcje('kombinacje','od_'+prefiks_gry,spinedit1.value);
zapisz_opcje('kombinacje','do_'+prefiks_gry,spinedit2.value);

Action := caFree;
Form14:=nil;
end;

procedure TForm14.FormCreate(Sender: TObject);
var
help1,help2:integer;
pamietaj:boolean;
begin
kombinacje1:=false;
zak1:=0;
zak2:=0;
komb1:=0;

stringgrid1.colwidths[0]:=32;
stringgrid1.cells[0,0]:='Lp.';
for help1:=1 to 5000 do stringgrid1.cells[0,help1]:=IntToStr(help1);
stringgrid1.RowCount:=101;

for help1:=1 to 80 do zestaw[help1]:=0;

help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

pamietaj:=wczytaj_opcje('kombinacje','pamietaj_ustawienia_'+prefiks_gry,false);
if pamietaj then
 begin
  help1:=wczytaj_opcje('kombinacje','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('kombinacje','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

  spinedit1.Value:=help1;
  spinedit2.Value:=help2;
  spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

SB_pamietaj.Down:=pamietaj;
if pamietaj then
 begin
  checkbox1.Checked:=wczytaj_opcje('kombinacje','kazda_liczba_tylko_'+prefiks_gry,false);
  spinedit9.Value:=wczytaj_opcje('kombinacje','kazda_liczba_razy_'+prefiks_gry,1);
  wyswietlaj_wynikow.value:=wczytaj_opcje('kombinacje','wyswietlaj_'+prefiks_gry,100);
  checkbox2.Checked:=wczytaj_opcje('kombinacje','redukuj_'+prefiks_gry,false);
 end;

ilosc_l:=0;
label8.caption:=IntToStr(ilosc_l);
speedbutton5.Enabled:=false;

komb:=false;
end;

procedure TForm14.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm14.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm14.SpinEdit3Change(Sender: TObject);
begin
if spinedit3.Value=4 then
 begin
  label6.caption:='4';
  spinedit4.MinValue:=2;
  spinedit4.MaxValue:=4;
  spinedit4.Value:=4;
 end;

if spinedit3.Value=5 then
 begin
  label6.caption:='5';
  spinedit4.MinValue:=3;
  spinedit4.MaxValue:=5;
  spinedit4.Value:=5;
 end;

if spinedit3.Value=6 then
 begin
  label6.caption:='6';
  spinedit4.MinValue:=3;
  if Gra.Numer<>3 then spinedit4.MaxValue:=6 else spinedit4.MaxValue:=5;
  spinedit4.Value:=spinedit4.MaxValue;
 end;

if spinedit3.Value=7 then
 begin
  label6.caption:='7';
  spinedit4.MinValue:=3;
  if Gra.Numer=1 then spinedit4.MaxValue:=7;
  if Gra.Numer=2 then spinedit4.MaxValue:=6;
  if Gra.Numer=3 then spinedit4.MaxValue:=5;
  spinedit4.Value:=spinedit4.MaxValue;
 end;

if spinedit3.Value=8 then
 begin
  label6.caption:='8';
  if Gra.Numer=1 then spinedit4.MinValue:=4 else spinedit4.MinValue:=3;
  if Gra.Numer=1 then spinedit4.MaxValue:=8;
  if Gra.Numer=2 then spinedit4.MaxValue:=6;
  if Gra.Numer=3 then spinedit4.MaxValue:=5;
  spinedit4.Value:=spinedit4.MaxValue;
 end;

if spinedit3.Value=9 then
 begin
  label6.caption:='9';
  if Gra.Numer=1 then spinedit4.MinValue:=4 else spinedit4.MinValue:=3;
  if Gra.Numer=1 then spinedit4.MaxValue:=9;
  if Gra.Numer=2 then spinedit4.MaxValue:=6;
  if Gra.Numer=3 then spinedit4.MaxValue:=5;
  spinedit4.Value:=spinedit4.MaxValue;
 end;

if spinedit3.Value=10 then
 begin
  label6.caption:='10';
  if Gra.Numer=1 then spinedit4.MinValue:=4 else spinedit4.MinValue:=3;
  if Gra.Numer=1 then spinedit4.MaxValue:=10;
  if Gra.Numer=2 then spinedit4.MaxValue:=6;
  if Gra.Numer=3 then spinedit4.MaxValue:=5;
  spinedit4.Value:=spinedit4.MaxValue;
 end;

end;

procedure TForm14.SpeedButton2Click(Sender: TObject);
var
help1:integer;
linia:string;
begin
liczby_dla_opcji:=1;
Application.CreateForm(TForm16,form16);
form16.Showmodal;
label8.caption:=IntToStr(ilosc_l);
for help1:=1 to ilosc_l do linia:=(linia+IntToStr(zestaw[help1])+', ');
memo1.Clear;
memo1.Lines.Add(linia);
if (ilosc_l>3) and (ilosc_l<ilosc_liczb_gry+1) then komb:=true else komb:=false;
end;

procedure TForm14.SpeedButton1Click(Sender: TObject);
var
start,stop:integer;
begin
start:=1;
stop:=losowan;
if spinedit1.Value<>spinedit2.Value then
 if spinedit1.Value<spinedit2.Value then
  begin
   start:=spinedit1.Value;
   stop:=spinedit2.Value;
  end else
   begin
    start:=spinedit2.Value;
    stop:=spinedit1.Value;
   end;

if komb=true then
 case spinedit3.Value of
   4:if ilosc_l>3 then licz(start,stop,4);
   5:if ilosc_l>4 then licz(start,stop,5);
   6:if ilosc_l>5 then licz(start,stop,6);
   7:if ilosc_l>6 then licz(start,stop,7);
   8:if ilosc_l>7 then licz(start,stop,8);
   9:if ilosc_l>8 then licz(start,stop,9);
  10:if ilosc_l>9 then licz(start,stop,10);
 end;
end;

procedure TForm14.licz(od_, do_, ile_liczb: integer);
begin
form1.stoper_start;
setlength(kombinacje10,1);
setlength(kombinacje9,1);
setlength(kombinacje8,1);
setlength(kombinacje7,1);
setlength(kombinacje6,1);
setlength(kombinacje5,1);
setlength(kombinacje4,1);

 case ile_liczb of

    10: begin
         tytul:='Dziesi¹tki';
         licz10(od_,do_);
         sortuj0(spinedit4.Value,0,ilosc_k);
         wypisz10;
        end;

     9: begin
         tytul:='Dziewi¹tki';
         licz9(od_,do_);
         sortuj9(spinedit4.Value,0,ilosc_k);
         wypisz9;
        end;

     8: begin
         tytul:='Ósemki';
         licz8(od_,do_);
         sortuj8(spinedit4.Value,0,ilosc_k);
         wypisz8;
        end;

     7: begin
         tytul:='Siódemki';
         licz7(od_,do_);
         sortuj7(spinedit4.Value,0,ilosc_k);
         wypisz7;
        end;

     6: begin
         tytul:='Szóstki';
         licz6(od_,do_);
         sortuj6(spinedit4.Value,0,ilosc_k);
         wypisz6;
        end;

     5: begin
         tytul:='Pi¹tki';
         licz5(od_,do_);
         sortuj5(spinedit4.Value,0,ilosc_k);
         wypisz5;
        end;

     4: begin
         tytul:='Czwórki';
         licz4(od_,do_);
         sortuj4(spinedit4.Value,0,ilosc_k);
         wypisz4;
        end;
 end;

if Gra.Numer=1 then pokaz_etykiety_ml(ile_liczb);
if Gra.Numer=2 then pokaz_etykiety_dl(ile_liczb);
if Gra.Numer=3 then pokaz_etykiety_el(ile_liczb);

speedbutton5.Enabled:=true;    
form14.Caption:='Kombinacje... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop+'  ['+tytul+']';
end;

procedure TForm14.licz10(od_, do_: integer);
var
help1,help2,help3,help4,help5,help6,help7,help8,help9,help10,i,pomoc,trafionych:integer;
trafien:array[1..10]of word;
zmienna:real;
begin
kombinacje1:=true;
zak1:=od_;
zak2:=do_;
komb1:=10;
od2:=od_;
do2:=do_;

ilelos:=do_-od_+1;
gauge1.Progress:=0;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do
     for help6:=help5+1 to ilosc_l do
      for help7:=help6+1 to ilosc_l do
       for help8:=help7+1 to ilosc_l do
        for help9:=help8+1 to ilosc_l do
         for help10:=help9+1 to ilosc_l do inc(ilosc_k);


setlength(kombinacje10,ilosc_k+1);

gauge1.MaxValue:=ilosc_k;
label12.Caption:=IntToStr(ilosc_k);


application.ProcessMessages;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do
     for help6:=help5+1 to ilosc_l do
      for help7:=help6+1 to ilosc_l do
       for help8:=help7+1 to ilosc_l do
        for help9:=help8+1 to ilosc_l do
         for help10:=help9+1 to ilosc_l do
          begin
           inc(ilosc_k);
           kombinacje10[ilosc_k].liczby[0]:=zestaw[help1];
           kombinacje10[ilosc_k].liczby[1]:=zestaw[help2];
           kombinacje10[ilosc_k].liczby[2]:=zestaw[help3];
           kombinacje10[ilosc_k].liczby[3]:=zestaw[help4];
           kombinacje10[ilosc_k].liczby[4]:=zestaw[help5];
           kombinacje10[ilosc_k].liczby[5]:=zestaw[help6];
           kombinacje10[ilosc_k].liczby[6]:=zestaw[help7];
           kombinacje10[ilosc_k].liczby[7]:=zestaw[help8];
           kombinacje10[ilosc_k].liczby[8]:=zestaw[help9];
           kombinacje10[ilosc_k].liczby[9]:=zestaw[help10];
           for i:=0 to 7 do kombinacje10[ilosc_k].ilosc[i]:=0;
          end;

for help1:=1 to 10 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;

    for i:=0 to 9 do if wylosowane[help1,kombinacje10[pomoc].liczby[i]] then inc(trafionych);
    if trafionych>2 then inc(trafien[trafionych]);
    
   end;
   for i:=0 to 7 do kombinacje10[pomoc].ilosc[i]:=trafien[i+3];
   gauge1.Progress:=pomoc;
   for help4:=3 to 10 do trafien[help4]:=0;
  end;
end;

procedure TForm14.licz4(od_, do_: integer);
var
help1,help2,help3,help4,help5,i,pomoc,trafionych:integer;
trafien:array[1..4]of word;
begin
kombinacje1:=true;
od2:=od_;
do2:=do_;
zak1:=od_;
zak2:=do_;
komb1:=4;
ilelos:=do_-od_+1;
gauge1.Progress:=0;

ilosc_k:=0;
for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do inc(ilosc_k);

setlength(kombinacje4,ilosc_k+1);

gauge1.MaxValue:=ilosc_k;
label12.Caption:=IntToStr(ilosc_k);

application.ProcessMessages;

ilosc_k:=0;
for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
          begin
           inc(ilosc_k);
           kombinacje4[ilosc_k].liczby[0]:=zestaw[help1];
           kombinacje4[ilosc_k].liczby[1]:=zestaw[help2];
           kombinacje4[ilosc_k].liczby[2]:=zestaw[help3];
           kombinacje4[ilosc_k].liczby[3]:=zestaw[help4];
           for help5:=0 to 2 do kombinacje4[ilosc_k].ilosc[help5]:=0;
          end;

for help1:=1 to 4 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;

    for i:=0 to 3 do if wylosowane[help1,kombinacje4[pomoc].liczby[i]] then inc(trafionych);
    if trafionych>1 then inc(trafien[trafionych]);
    
   end;
   for i:=0 to 2 do kombinacje4[pomoc].ilosc[i]:=trafien[i+2];
   gauge1.Progress:=pomoc;
   for help4:=2 to 4 do trafien[help4]:=0;
  end;
end;

procedure TForm14.licz5(od_, do_: integer);
var
help1,help2,help3,help4,help5,i,pomoc,trafionych:integer;
trafien:array[1..5]of word;
begin
kombinacje1:=true;
od2:=od_;
do2:=do_;
zak1:=od_;
zak2:=do_;
komb1:=5;
ilelos:=do_-od_+1;
gauge1.Progress:=0;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do inc(ilosc_k);

setlength(kombinacje5,ilosc_k+1);
gauge1.MaxValue:=ilosc_k;
label12.Caption:=IntToStr(ilosc_k);
application.ProcessMessages;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do
          begin
           inc(ilosc_k);
           kombinacje5[ilosc_k].liczby[0]:=zestaw[help1];
           kombinacje5[ilosc_k].liczby[1]:=zestaw[help2];
           kombinacje5[ilosc_k].liczby[2]:=zestaw[help3];
           kombinacje5[ilosc_k].liczby[3]:=zestaw[help4];
           kombinacje5[ilosc_k].liczby[4]:=zestaw[help5];
           for i:=0 to 2 do kombinacje5[ilosc_k].ilosc[i]:=0;
          end;

for help1:=1 to 5 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;

    for i:=0 to 4 do if wylosowane[help1,kombinacje5[pomoc].liczby[i]] then inc(trafionych);
    if trafionych>2 then inc(trafien[trafionych]);
    
   end;
   for i:=0 to 2 do kombinacje5[pomoc].ilosc[i]:=trafien[i+3];
   gauge1.Progress:=pomoc;
   for help4:=3 to 5 do trafien[help4]:=0;
  end;
end;

procedure TForm14.licz6(od_, do_: integer);
var
help1,help2,help3,help4,help5,help6,help9,help10,i,pomoc,trafionych:integer;
trafien:array[1..6]of word;
zmienna:real;
begin
kombinacje1:=true;
od2:=od_;
do2:=do_;
zak1:=od_;
zak2:=do_;
komb1:=6;
ilelos:=do_-od_+1;
gauge1.Progress:=0;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do
     for help6:=help5+1 to ilosc_l do inc(ilosc_k);

setlength(kombinacje6,ilosc_k+1);
gauge1.MaxValue:=ilosc_k;
label12.Caption:=IntToStr(ilosc_k);
application.ProcessMessages;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do
     for help6:=help5+1 to ilosc_l do
          begin
           inc(ilosc_k);
           kombinacje6[ilosc_k].liczby[0]:=zestaw[help1];
           kombinacje6[ilosc_k].liczby[1]:=zestaw[help2];
           kombinacje6[ilosc_k].liczby[2]:=zestaw[help3];
           kombinacje6[ilosc_k].liczby[3]:=zestaw[help4];
           kombinacje6[ilosc_k].liczby[4]:=zestaw[help5];
           kombinacje6[ilosc_k].liczby[5]:=zestaw[help6];
           for i:=0 to 3 do kombinacje6[ilosc_k].ilosc[i]:=0;
          end;

for help1:=1 to 6 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;

    for i:=0 to 5 do if wylosowane[help1,kombinacje6[pomoc].liczby[i]] then inc(trafionych);
    if trafionych>2 then inc(trafien[trafionych]);
    
   end;
   for i:=0 to 3 do kombinacje6[pomoc].ilosc[i]:=trafien[i+3];
   gauge1.Progress:=pomoc;
   for help4:=3 to 6 do trafien[help4]:=0;
  end;
end;

procedure TForm14.licz7(od_, do_: integer);
var
help1,help2,help3,help4,help5,help6,help7,help8,help9,help10,i,pomoc,trafionych:integer;
trafien:array[1..7]of word;
zmienna:real;
begin
kombinacje1:=true;
od2:=od_;
do2:=do_;
zak1:=od_;
zak2:=do_;
komb1:=7;
ilelos:=do_-od_+1;
gauge1.Progress:=0;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do
     for help6:=help5+1 to ilosc_l do
      for help7:=help6+1 to ilosc_l do inc(ilosc_k);

setlength(kombinacje7,ilosc_k+1);
gauge1.MaxValue:=ilosc_k;
label12.Caption:=IntToStr(ilosc_k);
application.ProcessMessages;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do
     for help6:=help5+1 to ilosc_l do
      for help7:=help6+1 to ilosc_l do
          begin
           inc(ilosc_k);
           kombinacje7[ilosc_k].liczby[0]:=zestaw[help1];
           kombinacje7[ilosc_k].liczby[1]:=zestaw[help2];
           kombinacje7[ilosc_k].liczby[2]:=zestaw[help3];
           kombinacje7[ilosc_k].liczby[3]:=zestaw[help4];
           kombinacje7[ilosc_k].liczby[4]:=zestaw[help5];
           kombinacje7[ilosc_k].liczby[5]:=zestaw[help6];
           kombinacje7[ilosc_k].liczby[6]:=zestaw[help7];
           for i:=0 to 4 do kombinacje7[ilosc_k].ilosc[i]:=0;
          end;

for help1:=1 to 7 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;

    for i:=0 to 6 do if wylosowane[help1,kombinacje7[pomoc].liczby[i]] then inc(trafionych);
    if trafionych>2 then inc(trafien[trafionych]);

   end;
   for i:=0 to 4 do kombinacje7[pomoc].ilosc[i]:=trafien[i+3];
   gauge1.Progress:=pomoc;
   for help4:=3 to 7 do trafien[help4]:=0;
  end;
end;

procedure TForm14.licz8(od_, do_: integer);
var
help1,help2,help3,help4,help5,help6,help7,help8,help9,help10,i,pomoc,trafionych:integer;
trafien:array[1..8]of word;
zmienna:real;
begin
kombinacje1:=true;
od2:=od_;
do2:=do_;
zak1:=od_;
zak2:=do_;
komb1:=8;
ilelos:=do_-od_+1;
gauge1.Progress:=0;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do
     for help6:=help5+1 to ilosc_l do
      for help7:=help6+1 to ilosc_l do
       for help8:=help7+1 to ilosc_l do inc(ilosc_k);

setlength(kombinacje8,ilosc_k+1);
gauge1.MaxValue:=ilosc_k;
label12.Caption:=IntToStr(ilosc_k);
application.ProcessMessages;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do
     for help6:=help5+1 to ilosc_l do
      for help7:=help6+1 to ilosc_l do
       for help8:=help7+1 to ilosc_l do
          begin
           inc(ilosc_k);
           kombinacje8[ilosc_k].liczby[0]:=zestaw[help1];
           kombinacje8[ilosc_k].liczby[1]:=zestaw[help2];
           kombinacje8[ilosc_k].liczby[2]:=zestaw[help3];
           kombinacje8[ilosc_k].liczby[3]:=zestaw[help4];
           kombinacje8[ilosc_k].liczby[4]:=zestaw[help5];
           kombinacje8[ilosc_k].liczby[5]:=zestaw[help6];
           kombinacje8[ilosc_k].liczby[6]:=zestaw[help7];
           kombinacje8[ilosc_k].liczby[7]:=zestaw[help8];
           for i:=0 to 5 do kombinacje8[ilosc_k].ilosc[i]:=0;
          end;

for help1:=1 to 8 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;

    for i:=0 to 7 do if wylosowane[help1,kombinacje8[pomoc].liczby[i]] then inc(trafionych);
    if trafionych>3 then inc(trafien[trafionych]);
    
   end;
   for i:=0 to 5 do kombinacje8[pomoc].ilosc[i]:=trafien[i+3];
   gauge1.Progress:=pomoc;
   for help4:=3 to 8 do trafien[help4]:=0;
  end;
end;

procedure TForm14.licz9(od_, do_: integer);
var
help1,help2,help3,help4,help5,help6,help7,help8,help9,help10,i,pomoc,trafionych:integer;
trafien:array[1..9]of word;
zmienna:real;
begin
kombinacje1:=true;
od2:=od_;
do2:=do_;
zak1:=od_;
zak2:=do_;
komb1:=9;
ilelos:=do_-od_+1;
gauge1.Progress:=0;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do
     for help6:=help5+1 to ilosc_l do
      for help7:=help6+1 to ilosc_l do
       for help8:=help7+1 to ilosc_l do
        for help9:=help8+1 to ilosc_l do inc(ilosc_k);

setlength(kombinacje9,ilosc_k+1);
gauge1.MaxValue:=ilosc_k;
label12.Caption:=IntToStr(ilosc_k);
application.ProcessMessages;

ilosc_k:=0;

for help1:=1 to ilosc_l do
 for help2:=help1+1 to ilosc_l do
  for help3:=help2+1 to ilosc_l do
   for help4:=help3+1 to ilosc_l do
    for help5:=help4+1 to ilosc_l do
     for help6:=help5+1 to ilosc_l do
      for help7:=help6+1 to ilosc_l do
       for help8:=help7+1 to ilosc_l do
        for help9:=help8+1 to ilosc_l do
          begin
           inc(ilosc_k);
           kombinacje9[ilosc_k].liczby[0]:=zestaw[help1];
           kombinacje9[ilosc_k].liczby[1]:=zestaw[help2];
           kombinacje9[ilosc_k].liczby[2]:=zestaw[help3];
           kombinacje9[ilosc_k].liczby[3]:=zestaw[help4];
           kombinacje9[ilosc_k].liczby[4]:=zestaw[help5];
           kombinacje9[ilosc_k].liczby[5]:=zestaw[help6];
           kombinacje9[ilosc_k].liczby[6]:=zestaw[help7];
           kombinacje9[ilosc_k].liczby[7]:=zestaw[help8];
           kombinacje9[ilosc_k].liczby[8]:=zestaw[help9];
           for i:=0 to 5 do kombinacje9[ilosc_k].ilosc[i]:=0;
          end;


for help1:=1 to 9 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;

    for i:=0 to 8 do if wylosowane[help1,kombinacje9[pomoc].liczby[i]] then inc(trafionych);
    if trafionych>3 then inc(trafien[trafionych]);
    
   end;
   for i:=0 to 6 do kombinacje9[pomoc].ilosc[i]:=trafien[i+3];
   gauge1.Progress:=pomoc;
   for help4:=3 to 9 do trafien[help4]:=0;
  end;
end;

procedure TForm14.SpeedButton5Click(Sender: TObject);
var
filename:textfile;
help1,help2:word;
begin
case spinedit3.Value of
  4:form1.SaveDialog1.FileName:='KombinacjeCzwórek';
  5:form1.SaveDialog1.FileName:='KombinacjePi¹tek';
  6:form1.SaveDialog1.FileName:='KombinacjeSzóstek';
  7:form1.SaveDialog1.FileName:='KombinacjeSiódemek';
  8:form1.SaveDialog1.FileName:='KombinacjeÓsemek';
  9:form1.SaveDialog1.FileName:='KombinacjeDziewi¹tek';
 10:form1.SaveDialog1.FileName:='KombinacjeDziesi¹tek';
end;
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm|Plik zestawu liczb (*.zes)|*.zes';
if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid1.RowCount-1 do
   begin
    for help2:=0 to stringgrid1.ColCount-2 do write(filename,stringgrid1.cells[help2,help1]+';');
    writeln(filename,stringgrid1.cells[stringgrid1.ColCount-1,help1]);
   end;
  closefile(filename);
 end else if form1.SaveDialog1.FilterIndex=2 then form1.zapiszHTML(form14.stringgrid1,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Kombinacje',tytul,1,zak1,zak2) else zapisz_tablice_zestawow(form14.stringgrid1,1,form1.savedialog1.filename);

form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;                                                                                          

procedure TForm14.wypisz4;
var
liczba:array[1..80] of byte;
help1,help2,help3,help4,help5,help6,i:integer;
ile_razy:byte;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=0;
if checkbox1.Checked then
 begin
    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=0;
    ile_razy:=spinedit9.Value;
    help1:=ilosc_l*ile_razy div 4;
    help2:=ilosc_l*ile_razy mod 4;
    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ilosc_k then stringgrid1.RowCount:=ilosc_k+1 else stringgrid1.rowcount:=help1+help6+1;
    help3:=0;
    help4:=0;
     while (help3<help1) and (help4<ilosc_k) do
      begin
       inc(help4);
        if (liczba[kombinacje4[help4].liczby[0]]<ile_razy) and (liczba[kombinacje4[help4].liczby[1]]<ile_razy) and (liczba[kombinacje4[help4].liczby[2]]<ile_razy) and (liczba[kombinacje4[help4].liczby[3]]<ile_razy) then
         begin
          inc(help3);
          napisz4(help3,help4);
          for i:=0 to 3 do inc(liczba[kombinacje4[help4].liczby[i]]);
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_k) do
        begin
         inc(help4);
         help5:=0;
         for i:=0 to 3 do if (liczba[kombinacje4[help4].liczby[i]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz4(help3,help4);
            for i:=0 to 3 do inc(liczba[kombinacje4[help4].liczby[i]]);
           end;
        end;
     end;
  if (help4=ilosc_k) and (help3<help1+help6) then stringgrid1.RowCount:=help3+1;
 end else
 begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if kombinacje4[help1].ilosc[2]=0 then
      begin
       inc(help2);
       napisz4(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      for i:=1 to 11 do stringgrid1.cells[i,1]:='-';
     end else stringgrid1.rowcount:=help2+1;
   end else
    begin
     if ilosc_k>wyswietlaj_wynikow.Value then help1:=wyswietlaj_wynikow.Value else help1:=ilosc_k;
     stringgrid1.RowCount:=help1+1;
     for help4:=1 to help1 do napisz4(help4,help4);
    end;
 end;
end;

procedure TForm14.wypisz5;
var
liczba:array[1..80] of byte;
help1,help2,help3,help4,help5,help6,i:integer;
ile_razy:byte;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=0;
if checkbox1.Checked then
 begin
    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=0;
    ile_razy:=spinedit9.Value;
    help1:=ilosc_l*ile_razy div 5;
    help2:=ilosc_l*ile_razy mod 5;
    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ilosc_k then stringgrid1.RowCount:=ilosc_k+1 else stringgrid1.rowcount:=help1+help6+1;
    help3:=0;
    help4:=0;
     while (help3<help1) and (help4<ilosc_k) do
      begin
       inc(help4);
        if (liczba[kombinacje5[help4].liczby[0]]<ile_razy) and (liczba[kombinacje5[help4].liczby[1]]<ile_razy) and (liczba[kombinacje5[help4].liczby[2]]<ile_razy) and (liczba[kombinacje5[help4].liczby[3]]<ile_razy) and (liczba[kombinacje5[help4].liczby[4]]<ile_razy) then
         begin
          inc(help3);
          napisz5(help3,help4);
          for i:=0 to 4 do inc(liczba[kombinacje5[help4].liczby[i]]);
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_k) do
        begin
         inc(help4);
         help5:=0;
         for i:=0 to 4 do if (liczba[kombinacje5[help4].liczby[i]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz5(help3,help4);
            for i:=0 to 4 do inc(liczba[kombinacje5[help4].liczby[i]]);
           end;
        end;
     end;
  if (help4=ilosc_k) and (help3<help1+help6) then stringgrid1.RowCount:=help3+1;
 end else
 begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if kombinacje5[help1].ilosc[2]=0 then
      begin
       inc(help2);
       napisz5(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      for i:=1 to 11 do stringgrid1.cells[i,1]:='-';
     end else stringgrid1.rowcount:=help2+1;
   end else
    begin
     if ilosc_k>wyswietlaj_wynikow.Value then help1:=wyswietlaj_wynikow.Value else help1:=ilosc_k;
     stringgrid1.RowCount:=help1+1;
     for help4:=1 to help1 do napisz5(help4,help4);
    end;
 end;
end;

procedure TForm14.wypisz6;
var
liczba:array[1..80] of byte;
help1,help2,help3,help4,help5,help6,i:integer;
ile_razy:byte;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=0;
if checkbox1.Checked then
 begin
    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=0;
    ile_razy:=spinedit9.Value;
    help1:=ilosc_l*ile_razy div 6;
    help2:=ilosc_l*ile_razy mod 6;
    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ilosc_k then stringgrid1.RowCount:=ilosc_k+1 else stringgrid1.rowcount:=help1+help6+1;
    help3:=0;
    help4:=0;
     while (help3<help1) and (help4<ilosc_k) do
      begin
       inc(help4);
        if (liczba[kombinacje6[help4].liczby[0]]<ile_razy) and (liczba[kombinacje6[help4].liczby[1]]<ile_razy) and (liczba[kombinacje6[help4].liczby[2]]<ile_razy) and (liczba[kombinacje6[help4].liczby[3]]<ile_razy) and (liczba[kombinacje6[help4].liczby[4]]<ile_razy) and (liczba[kombinacje6[help4].liczby[5]]<ile_razy) then
         begin
          inc(help3);
          napisz6(help3,help4);
          for i:=0 to 5 do inc(liczba[kombinacje6[help4].liczby[i]]);
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_k) do
        begin
         inc(help4);
         help5:=0;
         for i:=0 to 5 do if (liczba[kombinacje6[help4].liczby[i]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz6(help3,help4);
            for i:=0 to 5 do inc(liczba[kombinacje6[help4].liczby[i]]);
           end;
        end;
     end;
  if (help4=ilosc_k) and (help3<help1+help6) then stringgrid1.RowCount:=help3+1;
 end else
 begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if kombinacje6[help1].ilosc[3]=0 then
      begin
       inc(help2);
       napisz6(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      for i:=1 to 11 do stringgrid1.cells[i,1]:='-';
     end else stringgrid1.rowcount:=help2+1;
   end else
    begin
     if ilosc_k>wyswietlaj_wynikow.Value then help1:=wyswietlaj_wynikow.Value else help1:=ilosc_k;
     stringgrid1.RowCount:=help1+1;
     for help4:=1 to help1 do napisz6(help4,help4);
    end;
 end;
end;

procedure TForm14.wypisz7;
var
liczba:array[1..80] of byte;
help1,help2,help3,help4,help5,help6,i:integer;
ile_razy:byte;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=0;
if checkbox1.Checked then
 begin
    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=0;
    ile_razy:=spinedit9.Value;
    help1:=ilosc_l*ile_razy div 7;
    help2:=ilosc_l*ile_razy mod 7;
    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ilosc_k then stringgrid1.RowCount:=ilosc_k+1 else stringgrid1.rowcount:=help1+help6+1;
    help3:=0;
    help4:=0;
     while (help3<help1) and (help4<ilosc_k) do
      begin
       inc(help4);
        if (liczba[kombinacje7[help4].liczby[0]]<ile_razy) and (liczba[kombinacje7[help4].liczby[1]]<ile_razy) and (liczba[kombinacje7[help4].liczby[2]]<ile_razy) and (liczba[kombinacje7[help4].liczby[3]]<ile_razy) and (liczba[kombinacje7[help4].liczby[4]]<ile_razy) and (liczba[kombinacje7[help4].liczby[5]]<ile_razy) and (liczba[kombinacje7[help4].liczby[6]]<ile_razy) then
         begin
          inc(help3);
          napisz7(help3,help4);
          for i:=0 to 6 do inc(liczba[kombinacje7[help4].liczby[i]]);
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_k) do
        begin
         inc(help4);
         help5:=0;
         for i:=0 to 6 do if (liczba[kombinacje7[help4].liczby[i]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz7(help3,help4);
            for i:=0 to 6 do inc(liczba[kombinacje7[help4].liczby[i]]);
           end;
        end;
     end;
  if (help4=ilosc_k) and (help3<help1+help6) then stringgrid1.RowCount:=help3+1;
 end else
 begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if kombinacje7[help1].ilosc[4]=0 then
      begin
       inc(help2);
       napisz7(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      for i:=1 to 11 do stringgrid1.cells[i,1]:='-';
     end else stringgrid1.rowcount:=help2+1;
   end else
    begin
     if ilosc_k>wyswietlaj_wynikow.Value then help1:=wyswietlaj_wynikow.Value else help1:=ilosc_k;
     stringgrid1.RowCount:=help1+1;
     for help4:=1 to help1 do napisz7(help4,help4);
    end;
 end;
end;

procedure TForm14.wypisz8;
var
liczba:array[1..80] of byte;
help1,help2,help3,help4,help5,help6,i:integer;
ile_razy:byte;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=0;
if checkbox1.Checked then
 begin
    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=0;
    ile_razy:=spinedit9.Value;
    help1:=ilosc_l*ile_razy div 8;
    help2:=ilosc_l*ile_razy mod 8;
    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ilosc_k then stringgrid1.RowCount:=ilosc_k+1 else stringgrid1.rowcount:=help1+help6+1;
    help3:=0;
    help4:=0;
     while (help3<help1) and (help4<ilosc_k) do
      begin
       inc(help4);
        if (liczba[kombinacje8[help4].liczby[0]]<ile_razy) and (liczba[kombinacje8[help4].liczby[1]]<ile_razy) and (liczba[kombinacje8[help4].liczby[2]]<ile_razy) and (liczba[kombinacje8[help4].liczby[3]]<ile_razy) and (liczba[kombinacje8[help4].liczby[4]]<ile_razy) and (liczba[kombinacje8[help4].liczby[5]]<ile_razy) and (liczba[kombinacje8[help4].liczby[6]]<ile_razy) and (liczba[kombinacje8[help4].liczby[7]]<ile_razy) then
         begin
          inc(help3);
          napisz8(help3,help4);
          for i:=0 to 7 do inc(liczba[kombinacje8[help4].liczby[i]]);
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_k) do
        begin
         inc(help4);
         help5:=0;
         for i:=0 to 7 do if (liczba[kombinacje8[help4].liczby[i]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz8(help3,help4);
            for i:=0 to 7 do inc(liczba[kombinacje8[help4].liczby[i]]);
           end;
        end;
     end;
  if (help4=ilosc_k) and (help3<help1+help6) then stringgrid1.RowCount:=help3+1;
 end else
 begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if kombinacje8[help1].ilosc[4]=0 then
      begin
       inc(help2);
       napisz8(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      for i:=1 to 11 do stringgrid1.cells[i,1]:='-';
     end else stringgrid1.rowcount:=help2+1;
   end else
    begin
     if ilosc_k>wyswietlaj_wynikow.Value then help1:=wyswietlaj_wynikow.Value else help1:=ilosc_k;
     stringgrid1.RowCount:=help1+1;
     for help4:=1 to help1 do napisz8(help4,help4);
    end;
 end;
end;

procedure TForm14.wypisz9;
var
liczba:array[1..80] of byte;
help1,help2,help3,help4,help5,help6,i:integer;
ile_razy:byte;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=0;
if checkbox1.Checked then
 begin
    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=0;
    ile_razy:=spinedit9.Value;
    help1:=ilosc_l*ile_razy div 9;
    help2:=ilosc_l*ile_razy mod 9;
    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ilosc_k then stringgrid1.RowCount:=ilosc_k+1 else stringgrid1.rowcount:=help1+help6+1;
    help3:=0;
    help4:=0;
     while (help3<help1) and (help4<ilosc_k) do
      begin
       inc(help4);
        if (liczba[kombinacje9[help4].liczby[0]]<ile_razy) and (liczba[kombinacje9[help4].liczby[1]]<ile_razy) and (liczba[kombinacje9[help4].liczby[2]]<ile_razy) and (liczba[kombinacje9[help4].liczby[3]]<ile_razy) and (liczba[kombinacje9[help4].liczby[4]]<ile_razy) and (liczba[kombinacje9[help4].liczby[5]]<ile_razy) and (liczba[kombinacje9[help4].liczby[6]]<ile_razy) and (liczba[kombinacje9[help4].liczby[7]]<ile_razy) and (liczba[kombinacje9[help4].liczby[8]]<ile_razy) then
         begin
          inc(help3);
          napisz9(help3,help4);
          for i:=0 to 8 do inc(liczba[kombinacje9[help4].liczby[i]]);
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_k) do
        begin
         inc(help4);
         help5:=0;
         for i:=0 to 8 do if (liczba[kombinacje9[help4].liczby[i]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz9(help3,help4);
            for i:=0 to 8 do inc(liczba[kombinacje9[help4].liczby[i]]);
           end;
        end;
     end;
  if (help4=ilosc_k) and (help3<help1+help6) then stringgrid1.RowCount:=help3+1;
 end else
 begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if kombinacje9[help1].ilosc[5]=0 then
      begin
       inc(help2);
       napisz9(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      for i:=1 to 11 do stringgrid1.cells[i,1]:='-';
     end else stringgrid1.rowcount:=help2+1;
   end else
    begin
     if ilosc_k>wyswietlaj_wynikow.Value then help1:=wyswietlaj_wynikow.Value else help1:=ilosc_k;
     stringgrid1.RowCount:=help1+1;
     for help4:=1 to help1 do napisz9(help4,help4);
    end;
 end;
end;

procedure TForm14.wypisz10;
var
liczba:array[1..80] of byte;
help1,help2,help3,help4,help5,help6,i:integer;
ile_razy:byte;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=0;
if checkbox1.Checked then
 begin
    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=0;
    ile_razy:=spinedit9.Value;
    help1:=ilosc_l*ile_razy div 10;
    help2:=ilosc_l*ile_razy mod 10;
    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ilosc_k then stringgrid1.RowCount:=ilosc_k+1 else stringgrid1.rowcount:=help1+help6+1;
    help3:=0;
    help4:=0;
     while (help3<help1) and (help4<ilosc_k) do
      begin
       inc(help4);
        if (liczba[kombinacje10[help4].liczby[0]]<ile_razy) and (liczba[kombinacje10[help4].liczby[1]]<ile_razy) and (liczba[kombinacje10[help4].liczby[2]]<ile_razy) and (liczba[kombinacje10[help4].liczby[3]]<ile_razy) and (liczba[kombinacje10[help4].liczby[4]]<ile_razy) and (liczba[kombinacje10[help4].liczby[5]]<ile_razy) and (liczba[kombinacje10[help4].liczby[6]]<ile_razy) and (liczba[kombinacje10[help4].liczby[7]]<ile_razy) and (liczba[kombinacje10[help4].liczby[8]]<ile_razy) and (liczba[kombinacje10[help4].liczby[9]]<ile_razy) then
         begin
          inc(help3);
          napisz10(help3,help4);
          for i:=0 to 9 do inc(liczba[kombinacje10[help4].liczby[i]]);
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_k) do
        begin
         inc(help4);
         help5:=0;
         for i:=0 to 9 do if (liczba[kombinacje10[help4].liczby[i]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz10(help3,help4);
            for i:=0 to 9 do inc(liczba[kombinacje10[help4].liczby[i]]);
           end;
        end;
     end;
  if (help4=ilosc_k) and (help3<help1+help6) then stringgrid1.RowCount:=help3+1;
 end else
 begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if kombinacje10[help1].ilosc[6]=0 then
      begin
       inc(help2);
       napisz10(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      for i:=1 to 11 do stringgrid1.cells[i,1]:='-';
     end else stringgrid1.rowcount:=help2+1;
   end else
    begin
     if ilosc_k>wyswietlaj_wynikow.Value then help1:=wyswietlaj_wynikow.Value else help1:=ilosc_k;
     stringgrid1.RowCount:=help1+1;
     for help4:=1 to help1 do napisz10(help4,help4);
    end;
 end;
end;


function TForm14.oczekuje4(nr, ile: integer): integer;
var
help5,help3,help4,i:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 for i:=0 to 3 do if wylosowane[help3,kombinacje4[nr].liczby[i]] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;
end;

function TForm14.oczekuje5(nr, ile: integer): integer;
var
help5,help3,help4,i:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 for i:=0 to 4 do if wylosowane[help3,kombinacje5[nr].liczby[i]] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;
end;

function TForm14.oczekuje0(nr, ile: integer): integer;
var
help5,help3,help4,i:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 for i:=0 to 9 do if wylosowane[help3,kombinacje10[nr].liczby[i]] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;
end;

function TForm14.oczekuje6(nr, ile: integer): integer;
var
help5,help3,help4,i:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 for i:=0 to 5 do if wylosowane[help3,kombinacje6[nr].liczby[i]] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;  
end;

function TForm14.oczekuje7(nr, ile: integer): integer;
var
help5,help3,help4,i:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 for i:=0 to 6 do if wylosowane[help3,kombinacje7[nr].liczby[i]] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;
end;

function TForm14.oczekuje8(nr, ile: integer): integer;
var
help5,help3,help4,i:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 for i:=0 to 7 do if wylosowane[help3,kombinacje8[nr].liczby[i]] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;
end;

function TForm14.oczekuje9(nr, ile: integer): integer;
var
help5,help3,help4,i:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 for i:=0 to 8 do if wylosowane[help3,kombinacje9[nr].liczby[i]] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;
end;

procedure TForm14.sortuj0(pozycja, wdol, ilosc: integer);
{ DONE : sortowanie 10 }
procedure sortuj_wdol(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje10[i].ilosc[pozycja]>x do inc(i);
    While x>kombinacje10[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol(lewy,j);
   if i<prawy Then sortuj_wdol(i,prawy);
  end;

procedure sortuj_wgore(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje10[i].ilosc[pozycja]<x do inc(i);
    While x<kombinacje10[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore(lewy,j);
   if i<prawy Then sortuj_wgore(i,prawy);
  end;

begin
pozycja:=pozycja-4;
if wdol=0 then sortuj_wdol(1,ilosc) else sortuj_wgore(1,ilosc);
end;

procedure TForm14.sortuj4(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb4;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje4[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje4[i].ilosc[pozycja]>x do inc(i);
    While x>kombinacje4[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje4[i];
       kombinacje4[i]:=kombinacje4[j];
       kombinacje4[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol(lewy,j);
   if i<prawy Then sortuj_wdol(i,prawy);
  end;

procedure sortuj_wgore(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb4;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje4[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje4[i].ilosc[pozycja]<x do inc(i);
    While x<kombinacje4[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje4[i];
       kombinacje4[i]:=kombinacje4[j];
       kombinacje4[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore(lewy,j);
   if i<prawy Then sortuj_wgore(i,prawy);
  end;

begin
pozycja:=pozycja-2;
if wdol=0 then sortuj_wdol(1,ilosc) else sortuj_wgore(1,ilosc);
end;

procedure TForm14.sortuj5(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje5[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje5[i].ilosc[pozycja]>x do inc(i);
    While x>kombinacje5[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje5[i];
       kombinacje5[i]:=kombinacje5[j];
       kombinacje5[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol(lewy,j);
   if i<prawy Then sortuj_wdol(i,prawy);
  end;

procedure sortuj_wgore(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje5[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje5[i].ilosc[pozycja]<x do inc(i);
    While x<kombinacje5[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje5[i];
       kombinacje5[i]:=kombinacje5[j];
       kombinacje5[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore(lewy,j);
   if i<prawy Then sortuj_wgore(i,prawy);
  end;

begin
pozycja:=pozycja-3;
if wdol=0 then sortuj_wdol(1,ilosc) else sortuj_wgore(1,ilosc);
end;

procedure TForm14.sortuj6(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb6;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje6[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje6[i].ilosc[pozycja]>x do inc(i);
    While x>kombinacje6[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje6[i];
       kombinacje6[i]:=kombinacje6[j];
       kombinacje6[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol(lewy,j);
   if i<prawy Then sortuj_wdol(i,prawy);
  end;

procedure sortuj_wgore(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb6;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje6[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje6[i].ilosc[pozycja]<x do inc(i);
    While x<kombinacje6[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje6[i];
       kombinacje6[i]:=kombinacje6[j];
       kombinacje6[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore(lewy,j);
   if i<prawy Then sortuj_wgore(i,prawy);
  end;

begin
pozycja:=pozycja-3;
if wdol=0 then sortuj_wdol(1,ilosc) else sortuj_wgore(1,ilosc);
end;

procedure TForm14.sortuj7(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje7[i].ilosc[pozycja]>x do inc(i);
    While x>kombinacje7[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol(lewy,j);
   if i<prawy Then sortuj_wdol(i,prawy);
  end;

procedure sortuj_wgore(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje7[i].ilosc[pozycja]<x do inc(i);
    While x<kombinacje7[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore(lewy,j);
   if i<prawy Then sortuj_wgore(i,prawy);
  end;

begin
pozycja:=pozycja-3;
if wdol=0 then sortuj_wdol(1,ilosc) else sortuj_wgore(1,ilosc);
end;

procedure TForm14.sortuj8(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje8[i].ilosc[pozycja]>x do inc(i);
    While x>kombinacje8[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol(lewy,j);
   if i<prawy Then sortuj_wdol(i,prawy);
  end;

procedure sortuj_wgore(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje8[i].ilosc[pozycja]<x do inc(i);
    While x<kombinacje8[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore(lewy,j);
   if i<prawy Then sortuj_wgore(i,prawy);
  end;

begin
pozycja:=pozycja-4;
if wdol=0 then sortuj_wdol(1,ilosc) else sortuj_wgore(1,ilosc);
end;

procedure TForm14.sortuj9(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje9[i].ilosc[pozycja]>x do inc(i);
    While x>kombinacje9[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol(lewy,j);
   if i<prawy Then sortuj_wdol(i,prawy);
  end;

procedure sortuj_wgore(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].ilosc[pozycja];
   Repeat
    While kombinacje9[i].ilosc[pozycja]<x do inc(i);
    While x<kombinacje9[j].ilosc[pozycja] do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore(lewy,j);
   if i<prawy Then sortuj_wgore(i,prawy);
  end;

begin
pozycja:=pozycja-4;
if wdol=0 then sortuj_wdol(1,ilosc) else sortuj_wgore(1,ilosc);
end;

procedure TForm14.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked then wyswietlaj_wynikow.Enabled:=false else wyswietlaj_wynikow.Enabled:=true;
if checkbox1.Checked then checkbox2.Enabled:=false else checkbox2.Enabled:=true;
end;

procedure TForm14.napisz4(numers, numert: integer);
var i:byte;
begin
   stringgrid1.cells[1,numers]:=(IntToStr(kombinacje4[numert].liczby[0])+', '+IntToStr(kombinacje4[numert].liczby[1])+', '+IntToStr(kombinacje4[numert].liczby[2])+', '+IntToStr(kombinacje4[numert].liczby[3]));
   for i:=3 downto 1 do
    begin
     stringgrid1.cells[((3-i)*3)+2,numers]:=IntToStr(kombinacje4[numert].ilosc[i-1]);
     if kombinacje4[numert].ilosc[i-1]>0 then stringgrid1.cells[((3-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje4[numert].ilosc[i-1]) else stringgrid1.cells[((3-i)*3)+3,numers]:='?';
     stringgrid1.Cells[((3-i)*3)+4,numers]:=IntToSTr(oczekuje4(numert,i+1));
    end;

   wpadlo:=ile_wpadlo4(do2+1,numert);
   stringgrid1.cells[11,numers]:='';
   if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
   if wpadlo=4 then stringgrid1.cells[11,numers]:='TAK';
end;

procedure TForm14.napisz5(numers, numert: integer);
var i:byte;
begin
   stringgrid1.cells[1,numers]:=(IntToStr(kombinacje5[numert].liczby[0])+', '+IntToStr(kombinacje5[numert].liczby[1])+', '+IntToStr(kombinacje5[numert].liczby[2])+', '+IntToStr(kombinacje5[numert].liczby[3])+', '+IntToStr(kombinacje5[numert].liczby[4]));
   for i:=5 downto 3 do
    begin
     stringgrid1.cells[((5-i)*3)+2,numers]:=IntToStr(kombinacje5[numert].ilosc[i-3]);
     if kombinacje5[numert].ilosc[i-3]<>0 then stringgrid1.cells[((5-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje5[numert].ilosc[i-3]) else stringgrid1.cells[((5-i)*3)+3,numers]:='?';
     stringgrid1.Cells[((5-i)*3)+4,numers]:=IntToSTr(oczekuje5(numert,i));
    end;
   wpadlo:=ile_wpadlo5(do2+1,numert);
   stringgrid1.cells[11,numers]:='';
   if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
   if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
end;

procedure TForm14.napisz6(numers, numert: integer);
var i:byte;
begin
stringgrid1.cells[1,numers]:=(IntToStr(kombinacje6[numert].liczby[0])+', '+IntToStr(kombinacje6[numert].liczby[1])+', '+IntToStr(kombinacje6[numert].liczby[2])+', '+IntToStr(kombinacje6[numert].liczby[3])+', '+IntToStr(kombinacje6[numert].liczby[4])+', '+IntToStr(kombinacje6[numert].liczby[5]));
if Gra.Numer<>3 then
 begin
    for i:=6 downto 3 do
     begin
      stringgrid1.cells[((6-i)*3)+2,numers]:=IntToStr(kombinacje6[numert].ilosc[i-3]);
      if kombinacje6[numert].ilosc[i-3]<>0 then stringgrid1.cells[((6-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje6[numert].ilosc[i-3]) else stringgrid1.cells[((6-i)*3)+3,numers]:='?';
      stringgrid1.Cells[((6-i)*3)+4,numers]:=IntToSTr(oczekuje6(numert,i));
     end;
    wpadlo:=ile_wpadlo6(do2+1,numert);
    stringgrid1.cells[14,numers]:='';
    if wpadlo>0 then stringgrid1.cells[14,numers]:=IntToStr(wpadlo);
    if wpadlo=6 then stringgrid1.cells[14,numers]:='TAK';
 end else
 begin
    for i:=5 downto 3 do
     begin
      stringgrid1.cells[((5-i)*3)+2,numers]:=IntToStr(kombinacje6[numert].ilosc[i-3]);
      if kombinacje6[numert].ilosc[i-3]<>0 then stringgrid1.cells[((5-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje6[numert].ilosc[i-3]) else stringgrid1.cells[((5-i)*3)+3,numers]:='?';
      stringgrid1.Cells[((5-i)*3)+4,numers]:=IntToSTr(oczekuje6(numert,i));
     end;
    wpadlo:=ile_wpadlo6(do2+1,numert);
    stringgrid1.cells[11,numers]:='';
    if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
    if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
 end;
end;

procedure TForm14.napisz7(numers, numert: integer);
var i:byte;
begin
stringgrid1.cells[1,numers]:=(IntToStr(kombinacje7[numert].liczby[0])+', '+IntToStr(kombinacje7[numert].liczby[1])+', '+IntToStr(kombinacje7[numert].liczby[2])+', '+IntToStr(kombinacje7[numert].liczby[3])+', '+IntToStr(kombinacje7[numert].liczby[4])+', '+IntToStr(kombinacje7[numert].liczby[5])+', '+IntToStr(kombinacje7[numert].liczby[6]));
if Gra.Numer=1 then
 begin
  for i:=6 downto 2 do
   begin
    stringgrid1.cells[((6-i)*3)+2,numers]:=IntToStr(kombinacje7[numert].ilosc[i-2]);
    if kombinacje7[numert].ilosc[i-2]<>0 then stringgrid1.cells[((6-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].ilosc[i-2]) else stringgrid1.cells[((6-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((6-i)*3)+4,numers]:=IntToSTr(oczekuje7(numert,i+1));
   end;
    wpadlo:=ile_wpadlo7(do2+1,numert);
    stringgrid1.cells[17,numers]:='';
    if wpadlo>0 then stringgrid1.cells[17,numers]:=IntToStr(wpadlo);
    if wpadlo=7 then stringgrid1.cells[17,numers]:='TAK';
 end else if Gra.Numer=2 then
 begin
  for i:=5 downto 2 do
   begin
    stringgrid1.cells[((5-i)*3)+2,numers]:=IntToStr(kombinacje7[numert].ilosc[i-2]);
    if kombinacje7[numert].ilosc[i-2]<>0 then stringgrid1.cells[((5-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].ilosc[i-2]) else stringgrid1.cells[((5-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((5-i)*3)+4,numers]:=IntToSTr(oczekuje7(numert,i+1));
   end;
    wpadlo:=ile_wpadlo7(do2+1,numert);
    stringgrid1.cells[14,numers]:='';
    if wpadlo>0 then stringgrid1.cells[14,numers]:=IntToStr(wpadlo);
    if wpadlo=6 then stringgrid1.cells[14,numers]:='TAK';
 end else if Gra.Numer=3 then
 begin
  for i:=4 downto 2 do
   begin
    stringgrid1.cells[((4-i)*3)+2,numers]:=IntToStr(kombinacje7[numert].ilosc[i-2]);
    if kombinacje7[numert].ilosc[i-2]<>0 then stringgrid1.cells[((4-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].ilosc[i-2]) else stringgrid1.cells[((4-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((4-i)*3)+4,numers]:=IntToSTr(oczekuje7(numert,i+1));
   end;
    wpadlo:=ile_wpadlo7(do2+1,numert);
    stringgrid1.cells[11,numers]:='';
    if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
    if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
 end;
end;

procedure TForm14.napisz8(numers, numert: integer);
var i:byte;
begin
stringgrid1.cells[1,numers]:=(IntToStr(kombinacje8[numert].liczby[0])+', '+IntToStr(kombinacje8[numert].liczby[1])+', '+IntToStr(kombinacje8[numert].liczby[2])+', '+IntToStr(kombinacje8[numert].liczby[3])+', '+IntToStr(kombinacje8[numert].liczby[4])+', '+IntToStr(kombinacje8[numert].liczby[5])+', '+IntToStr(kombinacje8[numert].liczby[6])+', '+IntToStr(kombinacje8[numert].liczby[7]));
if Gra.Numer=1 then
 begin
  for i:= 7 downto 3 do
   begin
    stringgrid1.cells[((7-i)*3)+2,numers]:=IntToStr(kombinacje8[numert].ilosc[i-2]);
    if kombinacje8[numert].ilosc[i-2]<>0 then stringgrid1.cells[((7-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].ilosc[i-2]) else stringgrid1.cells[((7-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((7-i)*3)+4,numers]:=IntToSTr(oczekuje8(numert,i+1));
   end;
    wpadlo:=ile_wpadlo8(do2+1,numert);
    stringgrid1.cells[17,numers]:='';
    if wpadlo>0 then stringgrid1.cells[17,numers]:=IntToStr(wpadlo);
    if wpadlo=8 then stringgrid1.cells[17,numers]:='TAK';
 end else if Gra.Numer=2 then
 begin
  for i:= 5 downto 3 do
   begin
    stringgrid1.cells[((5-i)*3)+2,numers]:=IntToStr(kombinacje8[numert].ilosc[i-3]);
    if kombinacje8[numert].ilosc[i-3]<>0 then stringgrid1.cells[((5-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].ilosc[i-3]) else stringgrid1.cells[((5-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((5-i)*3)+4,numers]:=IntToSTr(oczekuje8(numert,i+1));
   end;
    wpadlo:=ile_wpadlo8(do2+1,numert);
    stringgrid1.cells[14,numers]:='';
    if wpadlo>0 then stringgrid1.cells[14,numers]:=IntToStr(wpadlo);
    if wpadlo=6 then stringgrid1.cells[14,numers]:='TAK';
 end else if Gra.Numer=3 then
 begin
  for i:= 4 downto 2 do
   begin
    stringgrid1.cells[((4-i)*3)+2,numers]:=IntToStr(kombinacje8[numert].ilosc[i-2]);
    if kombinacje8[numert].ilosc[i-2]<>0 then stringgrid1.cells[((4-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].ilosc[i-2]) else stringgrid1.cells[((4-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((4-i)*3)+4,numers]:=IntToSTr(oczekuje8(numert,i+1));
   end;
    wpadlo:=ile_wpadlo8(do2+1,numert);
    stringgrid1.cells[11,numers]:='';
    if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
    if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
 end;
end;

procedure TForm14.napisz9(numers, numert: integer);
var i:byte;
begin
stringgrid1.cells[1,numers]:=(IntToStr(kombinacje9[numert].liczby[0])+', '+IntToStr(kombinacje9[numert].liczby[1])+', '+IntToStr(kombinacje9[numert].liczby[2])+', '+IntToStr(kombinacje9[numert].liczby[3])+', '+IntToStr(kombinacje9[numert].liczby[4])+', '+IntToStr(kombinacje9[numert].liczby[5])+', '+IntToStr(kombinacje9[numert].liczby[6])+', '+IntToStr(kombinacje9[numert].liczby[7])+', '+IntToStr(kombinacje9[numert].liczby[8]));
if Gra.Numer=1 then
 begin
  for i:=8 downto 3 do
   begin
    stringgrid1.cells[((8-i)*3)+2,numers]:=IntToStr(kombinacje9[numert].ilosc[i-2]);
    if kombinacje9[numert].ilosc[i-2]<>0 then stringgrid1.cells[((8-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].ilosc[i-2]) else stringgrid1.cells[((8-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((8-i)*3)+4,numers]:=IntToSTr(oczekuje9(numert,i+1));
   end;
    wpadlo:=ile_wpadlo9(do2+1,numert);
    stringgrid1.cells[20,numers]:='';
    if wpadlo>0 then stringgrid1.cells[20,numers]:=IntToStr(wpadlo);
    if wpadlo=9 then stringgrid1.cells[20,numers]:='TAK';
 end else if Gra.Numer=2 then
 begin
  for i:=5 downto 3 do
   begin
    stringgrid1.cells[((5-i)*3)+2,numers]:=IntToStr(kombinacje9[numert].ilosc[i-3]);
    if kombinacje9[numert].ilosc[i-3]<>0 then stringgrid1.cells[((5-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].ilosc[i-3]) else stringgrid1.cells[((5-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((5-i)*3)+4,numers]:=IntToSTr(oczekuje9(numert,i+1));
   end;
    wpadlo:=ile_wpadlo9(do2+1,numert);
    stringgrid1.cells[14,numers]:='';
    if wpadlo>0 then stringgrid1.cells[14,numers]:=IntToStr(wpadlo);
    if wpadlo=6 then stringgrid1.cells[14,numers]:='TAK';
 end else if Gra.Numer=3 then
 begin
  for i:=4 downto 2 do
   begin
    stringgrid1.cells[((4-i)*3)+2,numers]:=IntToStr(kombinacje9[numert].ilosc[i-2]);
    if kombinacje9[numert].ilosc[i-2]<>0 then stringgrid1.cells[((4-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].ilosc[i-2]) else stringgrid1.cells[((4-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((4-i)*3)+4,numers]:=IntToSTr(oczekuje9(numert,i+1));
   end;
    wpadlo:=ile_wpadlo9(do2+1,numert);
    stringgrid1.cells[11,numers]:='';
    if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
    if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
 end;
end;

procedure TForm14.napisz10(numers, numert: integer);
var i:byte;
begin
stringgrid1.cells[1,numers]:=(IntToStr(kombinacje10[numert].liczby[0])+', '+IntToStr(kombinacje10[numert].liczby[1])+', '+IntToStr(kombinacje10[numert].liczby[2])+', '+IntToStr(kombinacje10[numert].liczby[3])+', '+IntToStr(kombinacje10[numert].liczby[4])+', '+IntToStr(kombinacje10[numert].liczby[5])+', '+IntToStr(kombinacje10[numert].liczby[6])+', '+IntToStr(kombinacje10[numert].liczby[7])+', '+IntToStr(kombinacje10[numert].liczby[8])+', '+IntToStr(kombinacje10[numert].liczby[9]));
if Gra.Numer=1 then
 begin
  for i:=9 downto 3 do
   begin
    stringgrid1.cells[((9-i)*3)+2,numers]:=IntToStr(kombinacje10[numert].ilosc[i-2]);
    if kombinacje10[numert].ilosc[i-2]<>0 then stringgrid1.cells[((9-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].ilosc[i-2]) else stringgrid1.cells[((9-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((9-i)*3)+4,numers]:=IntToSTr(oczekuje0(numert,i+1));
   end;
    wpadlo:=ile_wpadlo10(do2+1,numert);
    stringgrid1.cells[23,numers]:='';
    if wpadlo>0 then stringgrid1.cells[23,numers]:=IntToStr(wpadlo);
    if wpadlo=10 then stringgrid1.cells[23,numers]:='TAK';
 end else if Gra.Numer=2 then
 begin
  for i:=5 downto 2 do
   begin
    stringgrid1.cells[((5-i)*3)+2,numers]:=IntToStr(kombinacje10[numert].ilosc[i-2]);
    if kombinacje10[numert].ilosc[i-2]<>0 then stringgrid1.cells[((5-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].ilosc[i-2]) else stringgrid1.cells[((5-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((5-i)*3)+4,numers]:=IntToSTr(oczekuje0(numert,i+1));
   end;
    wpadlo:=ile_wpadlo10(do2+1,numert);
    stringgrid1.cells[14,numers]:='';
    if wpadlo>0 then stringgrid1.cells[14,numers]:=IntToStr(wpadlo);
    if wpadlo=6 then stringgrid1.cells[14,numers]:='TAK';
 end else if Gra.Numer=3 then
 begin
  for i:=4 downto 2 do
   begin
    stringgrid1.cells[((4-i)*3)+2,numers]:=IntToStr(kombinacje10[numert].ilosc[i-2]);
    if kombinacje10[numert].ilosc[i-2]<>0 then stringgrid1.cells[((4-i)*3)+3,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].ilosc[i-2]) else stringgrid1.cells[((4-i)*3)+3,numers]:='?';
    stringgrid1.Cells[((4-i)*3)+4,numers]:=IntToSTr(oczekuje0(numert,i+1));
   end;
    wpadlo:=ile_wpadlo10(do2+1,numert);
    stringgrid1.cells[11,numers]:='';
    if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
    if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
 end;
end;

function TForm14.ile_wpadlo4(nr, nrc: integer): byte;
var i:byte;
begin
result:=0;
for i:=0 to 3 do if wylosowane[nr,kombinacje4[nrc].liczby[i]] then inc(result);
end;

function TForm14.ile_wpadlo5(nr, nrc: integer): byte;
var i:byte;
begin
result:=0;
for i:=0 to 4 do if wylosowane[nr,kombinacje5[nrc].liczby[i]] then inc(result);
end;

function TForm14.ile_wpadlo10(nr, nrc: integer): byte;
var i:byte;
begin
result:=0;
for i:=0 to 9 do if wylosowane[nr,kombinacje10[nrc].liczby[i]] then inc(result);
end;

function TForm14.ile_wpadlo6(nr, nrc: integer): byte;
var i:byte;
begin
result:=0;
for i:=0 to 5 do if wylosowane[nr,kombinacje6[nrc].liczby[i]] then inc(result);
end;

function TForm14.ile_wpadlo7(nr, nrc: integer): byte;
var i:byte;
begin
result:=0;
for i:=0 to 6 do if wylosowane[nr,kombinacje7[nrc].liczby[i]] then inc(result);
end;

function TForm14.ile_wpadlo8(nr, nrc: integer): byte;
var i:byte;
begin
result:=0;
for i:=0 to 7 do if wylosowane[nr,kombinacje8[nrc].liczby[i]] then inc(result);
end;

function TForm14.ile_wpadlo9(nr, nrc: integer): byte;
var i:byte;
begin
result:=0;
for i:=0 to 8 do if wylosowane[nr,kombinacje9[nrc].liczby[i]] then inc(result);
end;

procedure TForm14.Czstocimalejco1Click(Sender: TObject);
begin
if kombinacje1 then
 begin
  case komb1 of
    4: begin sortuj4(spinedit4.Value,0,ilosc_k); wypisz4; end;
    5: begin sortuj5(spinedit4.Value,0,ilosc_k); wypisz5; end;
    6: begin sortuj6(spinedit4.Value,0,ilosc_k); wypisz6; end;
    7: begin sortuj7(spinedit4.Value,0,ilosc_k); wypisz7; end;
    8: begin sortuj8(spinedit4.Value,0,ilosc_k); wypisz8; end;
    9: begin sortuj9(spinedit4.Value,0,ilosc_k); wypisz9; end;
   10: begin sortuj0(spinedit4.Value,0,ilosc_k); wypisz10; end;
  end;
 end;
end;

procedure TForm14.Czstocirosnco1Click(Sender: TObject);
begin
if kombinacje1 then
 begin
  case komb1 of
    4: begin sortuj4(spinedit4.Value,1,ilosc_k); wypisz4; end;
    5: begin sortuj5(spinedit4.Value,1,ilosc_k); wypisz5; end;
    6: begin sortuj6(spinedit4.Value,1,ilosc_k); wypisz6; end;
    7: begin sortuj7(spinedit4.Value,1,ilosc_k); wypisz7; end;
    8: begin sortuj8(spinedit4.Value,1,ilosc_k); wypisz8; end;
    9: begin sortuj9(spinedit4.Value,1,ilosc_k); wypisz9; end;
   10: begin sortuj0(spinedit4.Value,1,ilosc_k); wypisz10; end;
  end;
 end;
end;

procedure TForm14.StringGrid1ContextPopup(Sender: TObject;   MousePos: TPoint; var Handled: Boolean);
var P : TPoint;
begin
  GetCursorPos(P);
  popupmenu1.Popup(P.X, P.Y);
end;

procedure TForm14.pokaz_etykiety_ml(ile: byte);
var
help1,help2,i,j:integer;
begin
 case ile of
   4: begin help1:=9; help2:=2; stringgrid1.cells[1,0]:='Czwórka'; stringgrid1.ColWidths[1]:=75; end;
   5: begin help1:=9; help2:=3; stringgrid1.cells[1,0]:='Pi¹tka'; stringgrid1.ColWidths[1]:=93; end;
   6: begin help1:=12; help2:=3; stringgrid1.cells[1,0]:='Szóstka'; stringgrid1.ColWidths[1]:=115; end;
   7: begin help1:=15; help2:=3; stringgrid1.cells[1,0]:='Siódemka'; stringgrid1.ColWidths[1]:=135; end;
   8: begin help1:=15; help2:=4; stringgrid1.cells[1,0]:='Ósemka'; stringgrid1.ColWidths[1]:=155; end;
   9: begin help1:=18; help2:=4; stringgrid1.cells[1,0]:='Dziewi¹tka'; stringgrid1.ColWidths[1]:=175; end;
  10: begin help1:=21; help2:=4; stringgrid1.cells[1,0]:='Dzisi¹tka'; stringgrid1.ColWidths[1]:=195; end;
  else form1.blad(2);
 end;

stringgrid1.ColCount:=help1+3;

for i:=ile downto help2 do
 begin
  stringgrid1.cells[((ile-i)*3)+2,0]:='Iloœæ '+IntToStr(i);
  stringgrid1.cells[((ile-i)*3)+3,0]:='Œr. co';
  stringgrid1.cells[((ile-i)*3)+4,0]:='Brak '+IntToStr(i);
  for j:=2 to 4 do stringgrid1.ColWidths[((ile-i)*3)+j]:=43;
 end;

stringgrid1.cells[stringgrid1.ColCount-1,0]:='Traf';
stringgrid1.ColWidths[stringgrid1.ColCount-1]:=28;
end;

procedure TForm14.pokaz_etykiety_dl(ile: byte);
var
help1,help2,i,j:integer;
begin
 case ile of
   4: begin help1:=6; help2:=3; stringgrid1.cells[1,0]:='Czwórka'; stringgrid1.ColWidths[1]:=75; end;
   5: begin help1:=9; help2:=3; stringgrid1.cells[1,0]:='Pi¹tka'; stringgrid1.ColWidths[1]:=93; end;
   6: begin help1:=12; help2:=3; stringgrid1.cells[1,0]:='Szóstka'; stringgrid1.ColWidths[1]:=115; end;
   7: begin help1:=12; help2:=3; stringgrid1.cells[1,0]:='Siódemka'; stringgrid1.ColWidths[1]:=135; end;
   8: begin help1:=12; help2:=3; stringgrid1.cells[1,0]:='Ósemka'; stringgrid1.ColWidths[1]:=155; end;
   9: begin help1:=12; help2:=3; stringgrid1.cells[1,0]:='Dziewi¹tka'; stringgrid1.ColWidths[1]:=175; end;
  10: begin help1:=12; help2:=3; stringgrid1.cells[1,0]:='Dzisi¹tka'; stringgrid1.ColWidths[1]:=195; end;
  else form1.blad(3);
 end;

stringgrid1.ColCount:=help1+3;

if ile>6 then ile:=6;

for i:=ile downto help2 do
 begin
  stringgrid1.cells[((ile-i)*3)+2,0]:='Iloœæ '+IntToStr(i);
  stringgrid1.cells[((ile-i)*3)+3,0]:='Œr. co';
  stringgrid1.cells[((ile-i)*3)+4,0]:='Brak '+IntToStr(i);
  for j:=2 to 4 do stringgrid1.ColWidths[((ile-i)*3)+j]:=43;
 end;

stringgrid1.cells[stringgrid1.ColCount-1,0]:='Traf';
stringgrid1.ColWidths[stringgrid1.ColCount-1]:=28;
end;

procedure TForm14.pokaz_etykiety_el(ile: byte);
var
help1,help2,i,j:integer;
begin
 case ile of
   4: begin help1:=6; help2:=3; stringgrid1.cells[1,0]:='Czwórka'; stringgrid1.ColWidths[1]:=75; end;
   5: begin help1:=9; help2:=3; stringgrid1.cells[1,0]:='Pi¹tka'; stringgrid1.ColWidths[1]:=93; end;
   6: begin help1:=9; help2:=3; stringgrid1.cells[1,0]:='Szóstka'; stringgrid1.ColWidths[1]:=115; end;
   7: begin help1:=9; help2:=3; stringgrid1.cells[1,0]:='Siódemka'; stringgrid1.ColWidths[1]:=135; end;
   8: begin help1:=9; help2:=3; stringgrid1.cells[1,0]:='Ósemka'; stringgrid1.ColWidths[1]:=155; end;
   9: begin help1:=9; help2:=3; stringgrid1.cells[1,0]:='Dziewi¹tka'; stringgrid1.ColWidths[1]:=175; end;
  10: begin help1:=9; help2:=3; stringgrid1.cells[1,0]:='Dzisi¹tka'; stringgrid1.ColWidths[1]:=195; end;
  else form1.blad(4);
 end;

stringgrid1.ColCount:=help1+3;

if ile>5 then ile:=5;

for i:=ile downto help2 do
 begin
  stringgrid1.cells[((ile-i)*3)+2,0]:='Iloœæ '+IntToStr(i);
  stringgrid1.cells[((ile-i)*3)+3,0]:='Œr. co';
  stringgrid1.cells[((ile-i)*3)+4,0]:='Brak '+IntToStr(i);
  for j:=2 to 4 do stringgrid1.ColWidths[((ile-i)*3)+j]:=43;
 end;

stringgrid1.cells[stringgrid1.ColCount-1,0]:='Traf';
stringgrid1.ColWidths[stringgrid1.ColCount-1]:=28;
end;

procedure TForm14.KopiujdoZestaww1Click(Sender: TObject);
begin
  form1.dodajDoZesatwow(stringgrid1, 1, 1);
end;

end.
