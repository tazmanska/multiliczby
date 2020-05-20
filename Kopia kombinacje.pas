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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Czstocimalejco1Click(Sender: TObject);
    procedure Czstocirosnco1Click(Sender: TObject);
    procedure StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private
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
    l1,l2,l3,l4,l5,l6,l7,l8,l9,l10:byte;
    il3,il4,il5,il6,il7,il8,il9,il10: WORD;
  end;

  komb9 = packed record
    l1,l2,l3,l4,l5,l6,l7,l8,l9:byte;
    il3,il4,il5,il6,il7,il8,il9: WORD;
  end;

  komb8 = packed record
    l1,l2,l3,l4,l5,l6,l7,l8:byte;
    il3,il4,il5,il6,il7,il8: WORD;
  end;

  komb7 = packed record
    l1,l2,l3,l4,l5,l6,l7:byte;
    il3,il4,il5,il6,il7: WORD;
  end;

  komb6 = packed record
    l1,l2,l3,l4,l5,l6:byte;
    il3,il4,il5,il6: WORD;
  end;

  komb5 = packed record
    l1,l2,l3,l4,l5:byte;
    il3,il4,il5: WORD;
  end;

  komb4 = packed record
    l1,l2,l3,l4:byte;
    il2,il3,il4: WORD;
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

//  zestawy:array[1..184756,1..20]of word;
  zestaw:array[1..80]of byte;
  komb:boolean;
  ilosc_l:word;
  ilosc_k,ilelos,od2,do2:integer;
  zak1,zak2,komb1:word;
  kombinacje1:boolean;
  wpadlo:byte;

  tytul:string;

implementation

uses podajliczby, dodatkowe_funkcje;

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
Action := caFree;
Form14:=nil;
end;

procedure TForm14.FormCreate(Sender: TObject);
var
help1:integer;
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

spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

  spinedit1.Value:=wspolne[gra,1];
  spinedit2.Value:=wspolne[gra,2];
  spinedit1.Hint:=(IntToStr(losowanie[wspolne[gra,1],21])+'.'+IntToStr(losowanie[wspolne[gra,1],22])+'.'+IntToStr(losowanie[wspolne[gra,1],23]));
  spinedit2.Hint:=(IntToStr(losowanie[wspolne[gra,2],21])+'.'+IntToStr(losowanie[wspolne[gra,2],22])+'.'+IntToStr(losowanie[wspolne[gra,2],23]));

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
  if gra<>3 then spinedit4.MaxValue:=6 else spinedit4.MaxValue:=5;
  spinedit4.Value:=spinedit4.MaxValue;
 end;

if spinedit3.Value=7 then
 begin
  label6.caption:='7';
  spinedit4.MinValue:=3;
  if gra=1 then spinedit4.MaxValue:=7;
  if gra=2 then spinedit4.MaxValue:=6;
  if gra=3 then spinedit4.MaxValue:=5;
  spinedit4.Value:=spinedit4.MaxValue;
 end;

if spinedit3.Value=8 then
 begin
  label6.caption:='8';
  if gra=1 then spinedit4.MinValue:=4 else spinedit4.MinValue:=3;
  if gra=1 then spinedit4.MaxValue:=8;
  if gra=2 then spinedit4.MaxValue:=6;
  if gra=3 then spinedit4.MaxValue:=5;
  spinedit4.Value:=spinedit4.MaxValue;
 end;

if spinedit3.Value=9 then
 begin
  label6.caption:='9';
  if gra=1 then spinedit4.MinValue:=4 else spinedit4.MinValue:=3;
  if gra=1 then spinedit4.MaxValue:=9;
  if gra=2 then spinedit4.MaxValue:=6;
  if gra=3 then spinedit4.MaxValue:=5;
  spinedit4.Value:=spinedit4.MaxValue;
 end;

if spinedit3.Value=10 then
 begin
  label6.caption:='10';
  if gra=1 then spinedit4.MinValue:=4 else spinedit4.MinValue:=3;
  if gra=1 then spinedit4.MaxValue:=10;
  if gra=2 then spinedit4.MaxValue:=6;
  if gra=3 then spinedit4.MaxValue:=5;
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
   4:if ilosc_l>3 then licz4(start,stop);
   5:if ilosc_l>4 then licz5(start,stop);
   6:if ilosc_l>5 then licz6(start,stop);
   7:if ilosc_l>6 then licz7(start,stop);
   8:if ilosc_l>7 then licz8(start,stop);
   9:if ilosc_l>8 then licz9(start,stop);
  10:if ilosc_l>9 then licz10(start,stop);
 end;
end;

procedure TForm14.licz10(od_, do_: integer);
var
help1,help2,help3,help4,help5,help6,help7,help8,help9,help10,pomoc,trafionych:integer;
trafien:array[1..10]of word;
zmienna:real;
begin
form1.stoper_start;
tytul:='Dziesi¹tki';
setlength(kombinacje10,1);
setlength(kombinacje9,1);
setlength(kombinacje8,1);
setlength(kombinacje7,1);
setlength(kombinacje6,1);
setlength(kombinacje5,1);
setlength(kombinacje4,1);
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
           kombinacje10[ilosc_k].l1:=zestaw[help1];
           kombinacje10[ilosc_k].l2:=zestaw[help2];
           kombinacje10[ilosc_k].l3:=zestaw[help3];
           kombinacje10[ilosc_k].l4:=zestaw[help4];
           kombinacje10[ilosc_k].l5:=zestaw[help5];
           kombinacje10[ilosc_k].l6:=zestaw[help6];
           kombinacje10[ilosc_k].l7:=zestaw[help7];
           kombinacje10[ilosc_k].l8:=zestaw[help8];
           kombinacje10[ilosc_k].l9:=zestaw[help9];
           kombinacje10[ilosc_k].l10:=zestaw[help10];
           kombinacje10[ilosc_k].il3:=0;
           kombinacje10[ilosc_k].il4:=0;
           kombinacje10[ilosc_k].il5:=0;
           kombinacje10[ilosc_k].il6:=0;
           kombinacje10[ilosc_k].il7:=0;
           kombinacje10[ilosc_k].il8:=0;
           kombinacje10[ilosc_k].il9:=0;
           kombinacje10[ilosc_k].il10:=0;
          end;



for help1:=1 to 10 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;

    if wylosowane[help1,kombinacje10[pomoc].l1] then inc(trafionych);
    if wylosowane[help1,kombinacje10[pomoc].l2] then inc(trafionych);
    if wylosowane[help1,kombinacje10[pomoc].l3] then inc(trafionych);
    if wylosowane[help1,kombinacje10[pomoc].l4] then inc(trafionych);
    if wylosowane[help1,kombinacje10[pomoc].l5] then inc(trafionych);
    if wylosowane[help1,kombinacje10[pomoc].l6] then inc(trafionych);
    if wylosowane[help1,kombinacje10[pomoc].l7] then inc(trafionych);
    if wylosowane[help1,kombinacje10[pomoc].l8] then inc(trafionych);
    if wylosowane[help1,kombinacje10[pomoc].l9] then inc(trafionych);
    if wylosowane[help1,kombinacje10[pomoc].l10] then inc(trafionych);

    if trafionych>0 then inc(trafien[trafionych]);
   end;
   kombinacje10[pomoc].il3:=trafien[3];
   kombinacje10[pomoc].il4:=trafien[4];
   kombinacje10[pomoc].il5:=trafien[5];
   kombinacje10[pomoc].il6:=trafien[6];
   kombinacje10[pomoc].il7:=trafien[7];
   kombinacje10[pomoc].il8:=trafien[8];
   kombinacje10[pomoc].il9:=trafien[9];
   kombinacje10[pomoc].il10:=trafien[10];
   gauge1.Progress:=pomoc;
   for help4:=1 to 10 do trafien[help4]:=0;
  end;

if gra=1 then
 begin
  stringgrid1.ColCount:=24;
  stringgrid1.cells[1,0]:='Dziesi¹tka';
  stringgrid1.ColWidths[1]:=195;
  stringgrid1.cells[2,0]:='Iloœæ 10';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 10';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 9';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 9';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 8';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 8';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Iloœæ 7';
  stringgrid1.ColWidths[11]:=43;
  stringgrid1.cells[12,0]:='Œr. co';
  stringgrid1.ColWidths[12]:=43;
  stringgrid1.cells[13,0]:='Brak 7';
  stringgrid1.ColWidths[13]:=43;
  stringgrid1.cells[14,0]:='Iloœæ 6';
  stringgrid1.ColWidths[14]:=43;
  stringgrid1.cells[15,0]:='Œr. co';
  stringgrid1.ColWidths[15]:=43;
  stringgrid1.cells[16,0]:='Brak 6';
  stringgrid1.ColWidths[16]:=43;
  stringgrid1.cells[17,0]:='Iloœæ 5';
  stringgrid1.ColWidths[17]:=43;
  stringgrid1.cells[18,0]:='Œr. co';
  stringgrid1.ColWidths[18]:=43;
  stringgrid1.cells[19,0]:='Brak 5';
  stringgrid1.ColWidths[19]:=43;
  stringgrid1.cells[20,0]:='Iloœæ 4';
  stringgrid1.ColWidths[20]:=43;
  stringgrid1.cells[21,0]:='Œr. co';
  stringgrid1.ColWidths[21]:=43;
  stringgrid1.cells[22,0]:='Brak 4';
  stringgrid1.ColWidths[22]:=43;
  stringgrid1.cells[23,0]:='Traf';
  stringgrid1.ColWidths[23]:=28;
 end;

if gra=2 then
 begin
  stringgrid1.ColCount:=15;
  stringgrid1.cells[1,0]:='Dziesi¹tka';
  stringgrid1.ColWidths[1]:=195;
  stringgrid1.cells[2,0]:='Iloœæ 6';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 6';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 5';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 5';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 4';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 4';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Iloœæ 3';
  stringgrid1.ColWidths[11]:=43;
  stringgrid1.cells[12,0]:='Œr. co';
  stringgrid1.ColWidths[12]:=43;
  stringgrid1.cells[13,0]:='Brak 3';
  stringgrid1.ColWidths[13]:=43;
  stringgrid1.cells[14,0]:='Traf';
  stringgrid1.ColWidths[14]:=28;
 end;

if gra=3 then
 begin
  stringgrid1.ColCount:=12;
  stringgrid1.cells[1,0]:='Dziesi¹tka';
  stringgrid1.ColWidths[1]:=195;
  stringgrid1.cells[2,0]:='Iloœæ 5';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 5';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 4';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 4';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 3';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 3';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Traf';
  stringgrid1.ColWidths[11]:=28;
 end;

sortuj0(spinedit4.Value,0,ilosc_k);
wypisz10;

speedbutton5.Enabled:=true;

form14.Caption:='Kombinacje... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
end;

procedure TForm14.licz4(od_, do_: integer);
var
help1,help2,help3,help4,pomoc,trafionych:integer;
trafien:array[1..4]of word;
begin
form1.stoper_start;
tytul:='Czwórki';
setlength(kombinacje10,1);
setlength(kombinacje9,1);
setlength(kombinacje8,1);
setlength(kombinacje7,1);
setlength(kombinacje6,1);
setlength(kombinacje5,1);
setlength(kombinacje4,1);
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
           kombinacje4[ilosc_k].l1:=zestaw[help1];
           kombinacje4[ilosc_k].l2:=zestaw[help2];
           kombinacje4[ilosc_k].l3:=zestaw[help3];
           kombinacje4[ilosc_k].l4:=zestaw[help4];
           kombinacje4[ilosc_k].il2:=0;
           kombinacje4[ilosc_k].il3:=0;
           kombinacje4[ilosc_k].il4:=0;
          end;

for help1:=1 to 4 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;
    if wylosowane[help1,kombinacje4[pomoc].l1] then inc(trafionych);
    if wylosowane[help1,kombinacje4[pomoc].l2] then inc(trafionych);
    if wylosowane[help1,kombinacje4[pomoc].l3] then inc(trafionych);
    if wylosowane[help1,kombinacje4[pomoc].l4] then inc(trafionych);

    if trafionych>0 then inc(trafien[trafionych]);
   end;
   kombinacje4[pomoc].il2:=trafien[2];
   kombinacje4[pomoc].il3:=trafien[3];
   kombinacje4[pomoc].il4:=trafien[4];
   gauge1.Progress:=pomoc;
   for help4:=1 to 4 do trafien[help4]:=0;
  end;


stringgrid1.ColCount:=12;
stringgrid1.cells[1,0]:='Czwórka';
stringgrid1.ColWidths[1]:=75;
stringgrid1.cells[2,0]:='Iloœæ 4';
stringgrid1.ColWidths[2]:=43;
stringgrid1.cells[3,0]:='Œr. co';
stringgrid1.ColWidths[3]:=43;
stringgrid1.cells[4,0]:='Brak 4';
stringgrid1.ColWidths[4]:=43;
stringgrid1.cells[5,0]:='Iloœæ 3';
stringgrid1.ColWidths[5]:=43;
stringgrid1.cells[6,0]:='Œr. co';
stringgrid1.ColWidths[6]:=43;
stringgrid1.cells[7,0]:='Brak 3';
stringgrid1.ColWidths[7]:=43;
stringgrid1.cells[8,0]:='Iloœæ 2';
stringgrid1.ColWidths[8]:=43;
stringgrid1.cells[9,0]:='Œr. co';
stringgrid1.ColWidths[9]:=43;
stringgrid1.cells[10,0]:='Brak 2';
stringgrid1.ColWidths[10]:=43;
stringgrid1.cells[11,0]:='Traf';
stringgrid1.ColWidths[11]:=28;

sortuj4(spinedit4.Value,0,ilosc_k);
wypisz4;
speedbutton5.Enabled:=true;
form14.Caption:='Kombinacje... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
end;

procedure TForm14.licz5(od_, do_: integer);
var
help1,help2,help3,help4,help5,pomoc,trafionych:integer;
trafien:array[1..5]of word;
begin
form1.stoper_start;
tytul:='Pi¹tki';
setlength(kombinacje10,1);
setlength(kombinacje9,1);
setlength(kombinacje8,1);
setlength(kombinacje7,1);
setlength(kombinacje6,1);
setlength(kombinacje5,1);
setlength(kombinacje4,1);
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
           kombinacje5[ilosc_k].l1:=zestaw[help1];
           kombinacje5[ilosc_k].l2:=zestaw[help2];
           kombinacje5[ilosc_k].l3:=zestaw[help3];
           kombinacje5[ilosc_k].l4:=zestaw[help4];
           kombinacje5[ilosc_k].l5:=zestaw[help5];
           kombinacje5[ilosc_k].il3:=0;
           kombinacje5[ilosc_k].il4:=0;
           kombinacje5[ilosc_k].il5:=0;
          end;


for help1:=1 to 5 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;
    if wylosowane[help1,kombinacje5[pomoc].l1] then inc(trafionych);
    if wylosowane[help1,kombinacje5[pomoc].l2] then inc(trafionych);
    if wylosowane[help1,kombinacje5[pomoc].l3] then inc(trafionych);
    if wylosowane[help1,kombinacje5[pomoc].l4] then inc(trafionych);
    if wylosowane[help1,kombinacje5[pomoc].l5] then inc(trafionych);

    if trafionych>0 then inc(trafien[trafionych]);
   end;
   kombinacje5[pomoc].il3:=trafien[3];
   kombinacje5[pomoc].il4:=trafien[4];
   kombinacje5[pomoc].il5:=trafien[5];
   gauge1.Progress:=pomoc;
   for help4:=1 to 5 do trafien[help4]:=0;
  end;

stringgrid1.ColCount:=12;
stringgrid1.cells[1,0]:='Pi¹tka';
stringgrid1.ColWidths[1]:=93;
stringgrid1.cells[2,0]:='Iloœæ 5';
stringgrid1.ColWidths[2]:=43;
stringgrid1.cells[3,0]:='Œr. co';
stringgrid1.ColWidths[3]:=43;
stringgrid1.cells[4,0]:='Brak 5';
stringgrid1.ColWidths[4]:=43;
stringgrid1.cells[5,0]:='Iloœæ 4';
stringgrid1.ColWidths[5]:=43;
stringgrid1.cells[6,0]:='Œr. co';
stringgrid1.ColWidths[6]:=43;
stringgrid1.cells[7,0]:='Brak 4';
stringgrid1.ColWidths[7]:=43;
stringgrid1.cells[8,0]:='Iloœæ 3';
stringgrid1.ColWidths[8]:=43;
stringgrid1.cells[9,0]:='Œr. co';
stringgrid1.ColWidths[9]:=43;
stringgrid1.cells[10,0]:='Brak 3';
stringgrid1.ColWidths[10]:=43;
stringgrid1.cells[11,0]:='Traf';
stringgrid1.ColWidths[11]:=28;
sortuj5(spinedit4.Value,0,ilosc_k);
wypisz5;
speedbutton5.Enabled:=true;
form14.Caption:='Kombinacje... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
end;

procedure TForm14.licz6(od_, do_: integer);
var
help1,help2,help3,help4,help5,help6,help7,help8,help9,help10,pomoc,trafionych:integer;
trafien:array[1..6]of word;
zmienna:real;
begin
form1.stoper_start;
tytul:='Szóstki';
setlength(kombinacje10,1);
setlength(kombinacje9,1);
setlength(kombinacje8,1);
setlength(kombinacje7,1);
setlength(kombinacje6,1);
setlength(kombinacje5,1);
setlength(kombinacje4,1);
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
           kombinacje6[ilosc_k].l1:=zestaw[help1];
           kombinacje6[ilosc_k].l2:=zestaw[help2];
           kombinacje6[ilosc_k].l3:=zestaw[help3];
           kombinacje6[ilosc_k].l4:=zestaw[help4];
           kombinacje6[ilosc_k].l5:=zestaw[help5];
           kombinacje6[ilosc_k].l6:=zestaw[help6];
           kombinacje6[ilosc_k].il3:=0;
           kombinacje6[ilosc_k].il4:=0;
           kombinacje6[ilosc_k].il5:=0;
           kombinacje6[ilosc_k].il6:=0;

          end;

for help1:=1 to 6 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;
    if wylosowane[help1,kombinacje6[pomoc].l1] then inc(trafionych);
    if wylosowane[help1,kombinacje6[pomoc].l2] then inc(trafionych);
    if wylosowane[help1,kombinacje6[pomoc].l3] then inc(trafionych);
    if wylosowane[help1,kombinacje6[pomoc].l4] then inc(trafionych);
    if wylosowane[help1,kombinacje6[pomoc].l5] then inc(trafionych);
    if wylosowane[help1,kombinacje6[pomoc].l6] then inc(trafionych);

    if trafionych>0 then inc(trafien[trafionych]);
   end;
   kombinacje6[pomoc].il3:=trafien[3];
   kombinacje6[pomoc].il4:=trafien[4];
   kombinacje6[pomoc].il5:=trafien[5];
   kombinacje6[pomoc].il6:=trafien[6];
   gauge1.Progress:=pomoc;
   for help4:=1 to 6 do trafien[help4]:=0;
  end;

if gra<>3 then
 begin
  stringgrid1.ColCount:=15;
  stringgrid1.cells[1,0]:='Szóstka';
  stringgrid1.ColWidths[1]:=115;
  stringgrid1.cells[2,0]:='Iloœæ 6';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 6';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 5';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 5';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 4';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 4';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Iloœæ 3';
  stringgrid1.ColWidths[11]:=43;
  stringgrid1.cells[12,0]:='Œr. co';
  stringgrid1.ColWidths[12]:=43;
  stringgrid1.cells[13,0]:='Brak 3';
  stringgrid1.ColWidths[13]:=43;
  stringgrid1.cells[14,0]:='Traf';
  stringgrid1.ColWidths[14]:=28;
 end;

if gra=3 then
 begin
  stringgrid1.ColCount:=12;
  stringgrid1.cells[1,0]:='Szóstka';
  stringgrid1.ColWidths[1]:=115;
  stringgrid1.cells[2,0]:='Iloœæ 5';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 5';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 4';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 4';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 3';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 3';
  stringgrid1.cells[11,0]:='Traf';
  stringgrid1.ColWidths[11]:=28;
 end;
sortuj6(spinedit4.Value,0,ilosc_k);
wypisz6;
speedbutton5.Enabled:=true;
form14.Caption:='Kombinacje... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
end;

procedure TForm14.licz7(od_, do_: integer);
var
help1,help2,help3,help4,help5,help6,help7,help8,help9,help10,pomoc,trafionych:integer;
trafien:array[1..7]of word;
zmienna:real;
begin
form1.stoper_start;
tytul:='Siódemki';
setlength(kombinacje10,1);
setlength(kombinacje9,1);
setlength(kombinacje8,1);
setlength(kombinacje7,1);
setlength(kombinacje6,1);
setlength(kombinacje5,1);
setlength(kombinacje4,1);
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
           kombinacje7[ilosc_k].l1:=zestaw[help1];
           kombinacje7[ilosc_k].l2:=zestaw[help2];
           kombinacje7[ilosc_k].l3:=zestaw[help3];
           kombinacje7[ilosc_k].l4:=zestaw[help4];
           kombinacje7[ilosc_k].l5:=zestaw[help5];
           kombinacje7[ilosc_k].l6:=zestaw[help6];
           kombinacje7[ilosc_k].l7:=zestaw[help7];

           kombinacje7[ilosc_k].il3:=0;
           kombinacje7[ilosc_k].il4:=0;
           kombinacje7[ilosc_k].il5:=0;
           kombinacje7[ilosc_k].il6:=0;
           kombinacje7[ilosc_k].il7:=0;
          end;


for help1:=1 to 7 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;
    if wylosowane[help1,kombinacje7[pomoc].l1] then inc(trafionych);
    if wylosowane[help1,kombinacje7[pomoc].l2] then inc(trafionych);
    if wylosowane[help1,kombinacje7[pomoc].l3] then inc(trafionych);
    if wylosowane[help1,kombinacje7[pomoc].l4] then inc(trafionych);
    if wylosowane[help1,kombinacje7[pomoc].l5] then inc(trafionych);
    if wylosowane[help1,kombinacje7[pomoc].l6] then inc(trafionych);
    if wylosowane[help1,kombinacje7[pomoc].l7] then inc(trafionych);

    if trafionych>0 then inc(trafien[trafionych]);
   end;
   kombinacje7[pomoc].il3:=trafien[3];
   kombinacje7[pomoc].il4:=trafien[4];
   kombinacje7[pomoc].il5:=trafien[5];
   kombinacje7[pomoc].il6:=trafien[6];
   kombinacje7[pomoc].il7:=trafien[7];
   gauge1.Progress:=pomoc;
   for help4:=1 to 7 do trafien[help4]:=0;
  end;


if gra=1 then
 begin
  stringgrid1.ColCount:=18;
  stringgrid1.cells[1,0]:='Siódemka';
  stringgrid1.ColWidths[1]:=135;
  stringgrid1.cells[2,0]:='Iloœæ 7';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 7';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 6';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 6';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 5';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 5';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Iloœæ 4';
  stringgrid1.ColWidths[11]:=43;
  stringgrid1.cells[12,0]:='Œr. co';
  stringgrid1.ColWidths[12]:=43;
  stringgrid1.cells[13,0]:='Brak 4';
  stringgrid1.ColWidths[13]:=43;
  stringgrid1.cells[14,0]:='Iloœæ 3';
  stringgrid1.ColWidths[14]:=43;
  stringgrid1.cells[15,0]:='Œr. co';
  stringgrid1.ColWidths[15]:=43;
  stringgrid1.cells[16,0]:='Brak 3';
  stringgrid1.ColWidths[16]:=43;
  stringgrid1.cells[17,0]:='Traf';
  stringgrid1.ColWidths[17]:=28;
 end;

if gra=2 then
 begin
  stringgrid1.ColCount:=15;
  stringgrid1.cells[1,0]:='Siódemka';
  stringgrid1.ColWidths[1]:=135;
  stringgrid1.cells[2,0]:='Iloœæ 6';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 6';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 5';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 5';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 4';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 4';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Iloœæ 3';
  stringgrid1.ColWidths[11]:=43;
  stringgrid1.cells[12,0]:='Œr. co';
  stringgrid1.ColWidths[12]:=43;
  stringgrid1.cells[13,0]:='Brak 3';
  stringgrid1.ColWidths[13]:=43;
  stringgrid1.cells[14,0]:='Traf';
  stringgrid1.ColWidths[14]:=28;
 end;

if gra=3 then
 begin
  stringgrid1.ColCount:=12;
  stringgrid1.cells[1,0]:='Siódemka';
  stringgrid1.ColWidths[1]:=135;
  stringgrid1.cells[2,0]:='Iloœæ 5';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 5';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 4';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 4';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 3';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 3';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Traf';
  stringgrid1.ColWidths[11]:=28;
 end;
sortuj7(spinedit4.Value,0,ilosc_k);
wypisz7;
speedbutton5.Enabled:=true;
form14.Caption:='Kombinacje... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
end;

procedure TForm14.licz8(od_, do_: integer);
var
help1,help2,help3,help4,help5,help6,help7,help8,help9,help10,pomoc,trafionych:integer;
trafien:array[1..8]of word;
zmienna:real;
begin
form1.stoper_start;
tytul:='Ósemki';
setlength(kombinacje10,1);
setlength(kombinacje9,1);
setlength(kombinacje8,1);
setlength(kombinacje7,1);
setlength(kombinacje6,1);
setlength(kombinacje5,1);
setlength(kombinacje4,1);
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
           kombinacje8[ilosc_k].l1:=zestaw[help1];
           kombinacje8[ilosc_k].l2:=zestaw[help2];
           kombinacje8[ilosc_k].l3:=zestaw[help3];
           kombinacje8[ilosc_k].l4:=zestaw[help4];
           kombinacje8[ilosc_k].l5:=zestaw[help5];
           kombinacje8[ilosc_k].l6:=zestaw[help6];
           kombinacje8[ilosc_k].l7:=zestaw[help7];
           kombinacje8[ilosc_k].l8:=zestaw[help8];

           kombinacje8[ilosc_k].il3:=0;
           kombinacje8[ilosc_k].il4:=0;
           kombinacje8[ilosc_k].il5:=0;
           kombinacje8[ilosc_k].il6:=0;
           kombinacje8[ilosc_k].il7:=0;
           kombinacje8[ilosc_k].il8:=0;
          end;


for help1:=1 to 8 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;
    if wylosowane[help1,kombinacje8[pomoc].l1] then inc(trafionych);
    if wylosowane[help1,kombinacje8[pomoc].l2] then inc(trafionych);
    if wylosowane[help1,kombinacje8[pomoc].l3] then inc(trafionych);
    if wylosowane[help1,kombinacje8[pomoc].l4] then inc(trafionych);
    if wylosowane[help1,kombinacje8[pomoc].l5] then inc(trafionych);
    if wylosowane[help1,kombinacje8[pomoc].l6] then inc(trafionych);
    if wylosowane[help1,kombinacje8[pomoc].l7] then inc(trafionych);
    if wylosowane[help1,kombinacje8[pomoc].l8] then inc(trafionych);

    if trafionych>0 then inc(trafien[trafionych]);
   end;
   kombinacje8[pomoc].il3:=trafien[3];
   kombinacje8[pomoc].il4:=trafien[4];
   kombinacje8[pomoc].il5:=trafien[5];
   kombinacje8[pomoc].il6:=trafien[6];
   kombinacje8[pomoc].il7:=trafien[7];
   kombinacje8[pomoc].il8:=trafien[8];
   gauge1.Progress:=pomoc;
   for help4:=1 to 8 do trafien[help4]:=0;
  end;

if gra=1 then
 begin
  stringgrid1.ColCount:=18;
  stringgrid1.cells[1,0]:='Ósemka';
  stringgrid1.ColWidths[1]:=155;
  stringgrid1.cells[2,0]:='Iloœæ 8';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 8';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 7';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 7';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 6';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 6';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Iloœæ 5';
  stringgrid1.ColWidths[11]:=43;
  stringgrid1.cells[12,0]:='Œr. co';
  stringgrid1.ColWidths[12]:=43;
  stringgrid1.cells[13,0]:='Brak 5';
  stringgrid1.ColWidths[13]:=43;
  stringgrid1.cells[14,0]:='Iloœæ 4';
  stringgrid1.ColWidths[14]:=43;
  stringgrid1.cells[15,0]:='Œr. co';
  stringgrid1.ColWidths[15]:=43;
  stringgrid1.cells[16,0]:='Brak 4';
  stringgrid1.ColWidths[16]:=43;
  stringgrid1.cells[17,0]:='Traf';
  stringgrid1.ColWidths[17]:=28;
 end;

if gra=2 then
 begin
  stringgrid1.ColCount:=15;
  stringgrid1.cells[1,0]:='Ósemka';
  stringgrid1.ColWidths[1]:=155;
  stringgrid1.cells[2,0]:='Iloœæ 6';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 6';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 5';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 5';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 4';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 4';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Iloœæ 3';
  stringgrid1.ColWidths[11]:=43;
  stringgrid1.cells[12,0]:='Œr. co';
  stringgrid1.ColWidths[12]:=43;
  stringgrid1.cells[13,0]:='Brak 3';
  stringgrid1.ColWidths[13]:=43;
  stringgrid1.cells[14,0]:='Traf';
  stringgrid1.ColWidths[14]:=28;
 end;

if gra=3 then
 begin
  stringgrid1.ColCount:=12;
  stringgrid1.cells[1,0]:='Ósemka';
  stringgrid1.ColWidths[1]:=155;
  stringgrid1.cells[2,0]:='Iloœæ 5';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 5';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 4';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 4';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 3';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 3';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Traf';
  stringgrid1.ColWidths[11]:=28;
 end;
sortuj8(spinedit4.Value,0,ilosc_k);
wypisz8;
speedbutton5.Enabled:=true;
form14.Caption:='Kombinacje... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
end;

procedure TForm14.licz9(od_, do_: integer);
var
help1,help2,help3,help4,help5,help6,help7,help8,help9,help10,pomoc,trafionych:integer;
trafien:array[1..9]of word;
zmienna:real;
begin
form1.stoper_start;
tytul:='Dziewi¹tki';
setlength(kombinacje10,1);
setlength(kombinacje9,1);
setlength(kombinacje8,1);
setlength(kombinacje7,1);
setlength(kombinacje6,1);
setlength(kombinacje5,1);
setlength(kombinacje4,1);
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
           kombinacje9[ilosc_k].l1:=zestaw[help1];
           kombinacje9[ilosc_k].l2:=zestaw[help2];
           kombinacje9[ilosc_k].l3:=zestaw[help3];
           kombinacje9[ilosc_k].l4:=zestaw[help4];
           kombinacje9[ilosc_k].l5:=zestaw[help5];
           kombinacje9[ilosc_k].l6:=zestaw[help6];
           kombinacje9[ilosc_k].l7:=zestaw[help7];
           kombinacje9[ilosc_k].l8:=zestaw[help8];
           kombinacje9[ilosc_k].l9:=zestaw[help9];
           kombinacje9[ilosc_k].il3:=0;
           kombinacje9[ilosc_k].il4:=0;
           kombinacje9[ilosc_k].il5:=0;
           kombinacje9[ilosc_k].il6:=0;
           kombinacje9[ilosc_k].il7:=0;
           kombinacje9[ilosc_k].il8:=0;
           kombinacje9[ilosc_k].il9:=0;
          end;


for help1:=1 to 9 do trafien[help1]:=0;

for pomoc:=1 to ilosc_k do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;
    if wylosowane[help1,kombinacje9[pomoc].l1] then inc(trafionych);
    if wylosowane[help1,kombinacje9[pomoc].l2] then inc(trafionych);
    if wylosowane[help1,kombinacje9[pomoc].l3] then inc(trafionych);
    if wylosowane[help1,kombinacje9[pomoc].l4] then inc(trafionych);
    if wylosowane[help1,kombinacje9[pomoc].l5] then inc(trafionych);
    if wylosowane[help1,kombinacje9[pomoc].l6] then inc(trafionych);
    if wylosowane[help1,kombinacje9[pomoc].l7] then inc(trafionych);
    if wylosowane[help1,kombinacje9[pomoc].l8] then inc(trafionych);
    if wylosowane[help1,kombinacje9[pomoc].l9] then inc(trafionych);

    if trafionych>0 then inc(trafien[trafionych]);
   end;
   kombinacje9[pomoc].il3:=trafien[3];
   kombinacje9[pomoc].il4:=trafien[4];
   kombinacje9[pomoc].il5:=trafien[5];
   kombinacje9[pomoc].il6:=trafien[6];
   kombinacje9[pomoc].il7:=trafien[7];
   kombinacje9[pomoc].il8:=trafien[8];
   kombinacje9[pomoc].il9:=trafien[9];
   gauge1.Progress:=pomoc;
   for help4:=1 to 9 do trafien[help4]:=0;
  end;

if gra=1 then
 begin
  stringgrid1.ColCount:=21;
  stringgrid1.cells[1,0]:='Dziewi¹tka';
  stringgrid1.ColWidths[1]:=175;
  stringgrid1.cells[2,0]:='Iloœæ 9';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 9';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 8';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 8';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 7';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 7';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Iloœæ 6';
  stringgrid1.ColWidths[11]:=43;
  stringgrid1.cells[12,0]:='Œr. co';
  stringgrid1.ColWidths[12]:=43;
  stringgrid1.cells[13,0]:='Brak 6';
  stringgrid1.ColWidths[13]:=43;
  stringgrid1.cells[14,0]:='Iloœæ 5';
  stringgrid1.ColWidths[14]:=43;
  stringgrid1.cells[15,0]:='Œr. co';
  stringgrid1.ColWidths[15]:=43;
  stringgrid1.cells[16,0]:='Brak 5';
  stringgrid1.ColWidths[16]:=43;
  stringgrid1.cells[17,0]:='Iloœæ 4';
  stringgrid1.ColWidths[17]:=43;
  stringgrid1.cells[18,0]:='Œr. co';
  stringgrid1.ColWidths[18]:=43;
  stringgrid1.cells[19,0]:='Brak 4';
  stringgrid1.ColWidths[19]:=43;
  stringgrid1.cells[20,0]:='Traf';
  stringgrid1.ColWidths[20]:=28;
 end;

if gra=2 then
 begin
  stringgrid1.ColCount:=15;
  stringgrid1.cells[1,0]:='Dziewi¹tka';
  stringgrid1.ColWidths[1]:=175;
  stringgrid1.cells[2,0]:='Iloœæ 6';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 6';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 5';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 5';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 4';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 4';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Iloœæ 3';
  stringgrid1.ColWidths[11]:=43;
  stringgrid1.cells[12,0]:='Œr. co';
  stringgrid1.ColWidths[12]:=43;
  stringgrid1.cells[13,0]:='Brak 3';
  stringgrid1.ColWidths[13]:=43;
  stringgrid1.cells[14,0]:='Traf';
  stringgrid1.ColWidths[14]:=28;
 end;

if gra=3 then
 begin
  stringgrid1.ColCount:=12;
  stringgrid1.cells[1,0]:='Dziewi¹tka';
  stringgrid1.ColWidths[1]:=175;
  stringgrid1.cells[2,0]:='Iloœæ 5';
  stringgrid1.ColWidths[2]:=43;
  stringgrid1.cells[3,0]:='Œr. co';
  stringgrid1.ColWidths[3]:=43;
  stringgrid1.cells[4,0]:='Brak 5';
  stringgrid1.ColWidths[4]:=43;
  stringgrid1.cells[5,0]:='Iloœæ 4';
  stringgrid1.ColWidths[5]:=43;
  stringgrid1.cells[6,0]:='Œr. co';
  stringgrid1.ColWidths[6]:=43;
  stringgrid1.cells[7,0]:='Brak 4';
  stringgrid1.ColWidths[7]:=43;
  stringgrid1.cells[8,0]:='Iloœæ 3';
  stringgrid1.ColWidths[8]:=43;
  stringgrid1.cells[9,0]:='Œr. co';
  stringgrid1.ColWidths[9]:=43;
  stringgrid1.cells[10,0]:='Brak 3';
  stringgrid1.ColWidths[10]:=43;
  stringgrid1.cells[11,0]:='Traf';
  stringgrid1.ColWidths[11]:=28;
 end;
sortuj9(spinedit4.Value,0,ilosc_k);
wypisz9;
speedbutton5.Enabled:=true;
form14.Caption:='Kombinacje... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
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
liczba:array[1..80] of boolean;
help1,help2,help3,help4,help5:integer;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=false;
if checkbox1.Checked then
 begin
    help1:=ilosc_l div 4;
    help2:=ilosc_l mod 4;
    if help2=0 then stringgrid1.rowcount:=help1+1 else stringgrid1.RowCount:=help1+2;
    help3:=0;
    help4:=0;
     while help3<help1 do
      begin
       inc(help4);
        if (liczba[kombinacje4[help4].l1]=false) and (liczba[kombinacje4[help4].l2]=false) and (liczba[kombinacje4[help4].l3]=false) and (liczba[kombinacje4[help4].l4]=false) then
         begin
          inc(help3);
          napisz4(help3,help4);
          liczba[kombinacje4[help4].l1]:=true;
          liczba[kombinacje4[help4].l2]:=true;
          liczba[kombinacje4[help4].l3]:=true;
          liczba[kombinacje4[help4].l4]:=true;
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while help5<>help2 do
        begin
         inc(help4);
         help5:=0;
         if (liczba[kombinacje4[help4].l1]=false) then inc(help5);
         if (liczba[kombinacje4[help4].l2]=false) then inc(help5);
         if (liczba[kombinacje4[help4].l3]=false) then inc(help5);
         if (liczba[kombinacje4[help4].l4]=false) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz4(help3,help4);
            liczba[kombinacje4[help4].l1]:=true;
            liczba[kombinacje4[help4].l2]:=true;
            liczba[kombinacje4[help4].l3]:=true;
            liczba[kombinacje4[help4].l4]:=true;
           end;
        end;
     end;
 end else
 begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if kombinacje4[help1].il4=0 then
      begin
       inc(help2);
       napisz4(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      stringgrid1.cells[1,1]:='-';
      stringgrid1.cells[2,1]:='-';
      stringgrid1.cells[3,1]:='-';
      stringgrid1.Cells[4,1]:='-';
      stringgrid1.cells[5,1]:='-';
      stringgrid1.cells[6,1]:='-';
      stringgrid1.Cells[7,1]:='-';
      stringgrid1.cells[8,1]:='-';
      stringgrid1.cells[9,1]:='-';
      stringgrid1.Cells[10,1]:='-';
      stringgrid1.cells[11,1]:='-';
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
liczba:array[1..80] of boolean;
help1,help2,help3,help4,help5:integer;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=false;
if checkbox1.Checked then
 begin
    help1:=ilosc_l div 5;
    help2:=ilosc_l mod 5;
    if help2=0 then stringgrid1.rowcount:=help1+1 else stringgrid1.RowCount:=help1+2;
    help3:=0;
    help4:=0;
     while help3<help1 do
      begin
       inc(help4);
        if (liczba[kombinacje5[help4].l1]=false) and (liczba[kombinacje5[help4].l2]=false) and (liczba[kombinacje5[help4].l3]=false) and (liczba[kombinacje5[help4].l4]=false) and (liczba[kombinacje5[help4].l5]=false) then
         begin
          inc(help3);
          napisz5(help3,help4);
          liczba[kombinacje5[help4].l1]:=true;
          liczba[kombinacje5[help4].l2]:=true;
          liczba[kombinacje5[help4].l3]:=true;
          liczba[kombinacje5[help4].l4]:=true;
          liczba[kombinacje5[help4].l5]:=true;
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while help5<>help2 do
        begin
         inc(help4);
         help5:=0;
         if (liczba[kombinacje5[help4].l1]=false) then inc(help5);
         if (liczba[kombinacje5[help4].l2]=false) then inc(help5);
         if (liczba[kombinacje5[help4].l3]=false) then inc(help5);
         if (liczba[kombinacje5[help4].l4]=false) then inc(help5);
         if (liczba[kombinacje5[help4].l5]=false) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz5(help3,help4);
            liczba[kombinacje5[help4].l1]:=true;
            liczba[kombinacje5[help4].l2]:=true;
            liczba[kombinacje5[help4].l3]:=true;
            liczba[kombinacje5[help4].l4]:=true;
            liczba[kombinacje5[help4].l5]:=true;
           end;
        end;
     end;
 end else
  begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if kombinacje5[help1].il5=0 then
      begin
       inc(help2);
       napisz5(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      stringgrid1.cells[1,1]:='-';
      stringgrid1.cells[2,1]:='-';
      stringgrid1.cells[3,1]:='-';
      stringgrid1.Cells[4,1]:='-';
      stringgrid1.cells[5,1]:='-';
      stringgrid1.cells[6,1]:='-';
      stringgrid1.Cells[7,1]:='-';
      stringgrid1.cells[8,1]:='-';
      stringgrid1.cells[9,1]:='-';
      stringgrid1.Cells[10,1]:='-';
      stringgrid1.cells[11,1]:='-';
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
liczba:array[1..80] of boolean;
help1,help2,help3,help4,help5:integer;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=false;
if checkbox1.Checked then
 begin
    help1:=ilosc_l div 6;
    help2:=ilosc_l mod 6;
    if help2=0 then stringgrid1.rowcount:=help1+1 else stringgrid1.RowCount:=help1+2;
    help3:=0;
    help4:=0;
     while help3<help1 do
      begin
       inc(help4);
        if (liczba[kombinacje6[help4].l1]=false) and (liczba[kombinacje6[help4].l2]=false) and (liczba[kombinacje6[help4].l3]=false) and (liczba[kombinacje6[help4].l4]=false) and (liczba[kombinacje6[help4].l5]=false) and (liczba[kombinacje6[help4].l6]=false) then
         begin
          inc(help3);
          napisz6(help3,help4);
          liczba[kombinacje6[help4].l1]:=true;
          liczba[kombinacje6[help4].l2]:=true;
          liczba[kombinacje6[help4].l3]:=true;
          liczba[kombinacje6[help4].l4]:=true;
          liczba[kombinacje6[help4].l5]:=true;
          liczba[kombinacje6[help4].l6]:=true;
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while help5<>help2 do
        begin
         inc(help4);
         help5:=0;
         if (liczba[kombinacje6[help4].l1]=false) then inc(help5);
         if (liczba[kombinacje6[help4].l2]=false) then inc(help5);
         if (liczba[kombinacje6[help4].l3]=false) then inc(help5);
         if (liczba[kombinacje6[help4].l4]=false) then inc(help5);
         if (liczba[kombinacje6[help4].l5]=false) then inc(help5);
         if (liczba[kombinacje6[help4].l6]=false) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz6(help3,help4);
            liczba[kombinacje6[help4].l1]:=true;
            liczba[kombinacje6[help4].l2]:=true;
            liczba[kombinacje6[help4].l3]:=true;
            liczba[kombinacje6[help4].l4]:=true;
            liczba[kombinacje6[help4].l5]:=true;
            liczba[kombinacje6[help4].l6]:=true;
           end;
        end;
     end;
 end else
  begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if gra=3 then if kombinacje6[help1].il5=0 then
      begin
       inc(help2);
       napisz6(help2,help1);
      end;
     if gra<3 then if kombinacje6[help1].il6=0 then
      begin
       inc(help2);
       napisz6(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      stringgrid1.cells[1,1]:='-';
      stringgrid1.cells[2,1]:='-';
      stringgrid1.cells[3,1]:='-';
      stringgrid1.Cells[4,1]:='-';
      stringgrid1.cells[5,1]:='-';
      stringgrid1.cells[6,1]:='-';
      stringgrid1.Cells[7,1]:='-';
      stringgrid1.cells[8,1]:='-';
      stringgrid1.cells[9,1]:='-';
      stringgrid1.Cells[10,1]:='-';
      stringgrid1.cells[11,1]:='-';
      stringgrid1.cells[12,1]:='-';
      stringgrid1.cells[13,1]:='-';
      stringgrid1.cells[14,1]:='-';
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
liczba:array[1..80] of boolean;
help1,help2,help3,help4,help5:integer;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=false;
if checkbox1.Checked then
 begin
    help1:=ilosc_l div 7;
    help2:=ilosc_l mod 7;
    if help2=0 then stringgrid1.rowcount:=help1+1 else stringgrid1.RowCount:=help1+2;
    help3:=0;
    help4:=0;
     while help3<help1 do
      begin
       inc(help4);
        if (liczba[kombinacje7[help4].l1]=false) and (liczba[kombinacje7[help4].l2]=false) and (liczba[kombinacje7[help4].l3]=false) and (liczba[kombinacje7[help4].l4]=false) and (liczba[kombinacje7[help4].l5]=false) and (liczba[kombinacje7[help4].l6]=false) and (liczba[kombinacje7[help4].l7]=false) then
         begin
          inc(help3);
          napisz7(help3,help4);
          liczba[kombinacje7[help4].l1]:=true;
          liczba[kombinacje7[help4].l2]:=true;
          liczba[kombinacje7[help4].l3]:=true;
          liczba[kombinacje7[help4].l4]:=true;
          liczba[kombinacje7[help4].l5]:=true;
          liczba[kombinacje7[help4].l6]:=true;
          liczba[kombinacje7[help4].l7]:=true;
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while help5<>help2 do
        begin
         inc(help4);
         help5:=0;
         if (liczba[kombinacje7[help4].l1]=false) then inc(help5);
         if (liczba[kombinacje7[help4].l2]=false) then inc(help5);
         if (liczba[kombinacje7[help4].l3]=false) then inc(help5);
         if (liczba[kombinacje7[help4].l4]=false) then inc(help5);
         if (liczba[kombinacje7[help4].l5]=false) then inc(help5);
         if (liczba[kombinacje7[help4].l6]=false) then inc(help5);
         if (liczba[kombinacje7[help4].l7]=false) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz7(help3,help4);
            liczba[kombinacje7[help4].l1]:=true;
            liczba[kombinacje7[help4].l2]:=true;
            liczba[kombinacje7[help4].l3]:=true;
            liczba[kombinacje7[help4].l4]:=true;
            liczba[kombinacje7[help4].l5]:=true;
            liczba[kombinacje7[help4].l6]:=true;
            liczba[kombinacje7[help4].l7]:=true;
           end;
        end;
     end;
 end else
  begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if gra=3 then if kombinacje7[help1].il5=0 then
      begin
       inc(help2);
       napisz7(help2,help1);
      end;
     if gra=2 then if kombinacje7[help1].il6=0 then
      begin
       inc(help2);
       napisz7(help2,help1);
      end;
     if gra=1 then if kombinacje7[help1].il7=0 then
      begin
       inc(help2);
       napisz7(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      stringgrid1.cells[1,1]:='-';
      stringgrid1.cells[2,1]:='-';
      stringgrid1.cells[3,1]:='-';
      stringgrid1.Cells[4,1]:='-';
      stringgrid1.cells[5,1]:='-';
      stringgrid1.cells[6,1]:='-';
      stringgrid1.Cells[7,1]:='-';
      stringgrid1.cells[8,1]:='-';
      stringgrid1.cells[9,1]:='-';
      stringgrid1.Cells[10,1]:='-';
      stringgrid1.cells[11,1]:='-';
      stringgrid1.cells[12,1]:='-';
      stringgrid1.cells[13,1]:='-';
      stringgrid1.cells[14,1]:='-';
      stringgrid1.cells[15,1]:='-';
      stringgrid1.cells[16,1]:='-';
      stringgrid1.cells[17,1]:='-';
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
liczba:array[1..80] of boolean;
help1,help2,help3,help4,help5:integer;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=false;
if checkbox1.Checked then
 begin
    help1:=ilosc_l div 8;
    help2:=ilosc_l mod 8;
    if help2=0 then stringgrid1.rowcount:=help1+1 else stringgrid1.RowCount:=help1+2;
    help3:=0;
    help4:=0;
     while help3<help1 do
      begin
       inc(help4);
        if (liczba[kombinacje8[help4].l1]=false) and (liczba[kombinacje8[help4].l2]=false) and (liczba[kombinacje8[help4].l3]=false) and (liczba[kombinacje8[help4].l4]=false) and (liczba[kombinacje8[help4].l5]=false) and (liczba[kombinacje8[help4].l6]=false) and (liczba[kombinacje8[help4].l7]=false) and (liczba[kombinacje8[help4].l8]=false) then
         begin
          inc(help3);
          napisz8(help3,help4);
          liczba[kombinacje8[help4].l1]:=true;
          liczba[kombinacje8[help4].l2]:=true;
          liczba[kombinacje8[help4].l3]:=true;
          liczba[kombinacje8[help4].l4]:=true;
          liczba[kombinacje8[help4].l5]:=true;
          liczba[kombinacje8[help4].l6]:=true;
          liczba[kombinacje8[help4].l7]:=true;
          liczba[kombinacje8[help4].l8]:=true;
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while help5<>help2 do
        begin
         inc(help4);
         help5:=0;
         if (liczba[kombinacje8[help4].l1]=false) then inc(help5);
         if (liczba[kombinacje8[help4].l2]=false) then inc(help5);
         if (liczba[kombinacje8[help4].l3]=false) then inc(help5);
         if (liczba[kombinacje8[help4].l4]=false) then inc(help5);
         if (liczba[kombinacje8[help4].l5]=false) then inc(help5);
         if (liczba[kombinacje8[help4].l6]=false) then inc(help5);
         if (liczba[kombinacje8[help4].l7]=false) then inc(help5);
         if (liczba[kombinacje8[help4].l8]=false) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz8(help3,help4);
            liczba[kombinacje8[help4].l1]:=true;
            liczba[kombinacje8[help4].l2]:=true;
            liczba[kombinacje8[help4].l3]:=true;
            liczba[kombinacje8[help4].l4]:=true;
            liczba[kombinacje8[help4].l5]:=true;
            liczba[kombinacje8[help4].l6]:=true;
            liczba[kombinacje8[help4].l7]:=true;
            liczba[kombinacje8[help4].l8]:=true;
           end;
        end;
     end;
 end else
  begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if gra=3 then if kombinacje8[help1].il5=0 then
      begin
       inc(help2);
       napisz8(help2,help1);
      end;
     if gra=2 then if kombinacje8[help1].il6=0 then
      begin
       inc(help2);
       napisz8(help2,help1);
      end;
     if gra=1 then if kombinacje8[help1].il8=0 then
      begin
       inc(help2);
       napisz8(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      stringgrid1.cells[1,1]:='-';
      stringgrid1.cells[2,1]:='-';
      stringgrid1.cells[3,1]:='-';
      stringgrid1.Cells[4,1]:='-';
      stringgrid1.cells[5,1]:='-';
      stringgrid1.cells[6,1]:='-';
      stringgrid1.Cells[7,1]:='-';
      stringgrid1.cells[8,1]:='-';
      stringgrid1.cells[9,1]:='-';
      stringgrid1.Cells[10,1]:='-';
      stringgrid1.cells[11,1]:='-';
      stringgrid1.cells[12,1]:='-';
      stringgrid1.cells[13,1]:='-';
      stringgrid1.cells[14,1]:='-';
      stringgrid1.cells[15,1]:='-';
      stringgrid1.cells[16,1]:='-';
      stringgrid1.cells[17,1]:='-';
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
liczba:array[1..80] of boolean;
help1,help2,help3,help4,help5:integer;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=false;
if checkbox1.Checked then
 begin
    help1:=ilosc_l div 9;
    help2:=ilosc_l mod 9;
    if help2=0 then stringgrid1.rowcount:=help1+1 else stringgrid1.RowCount:=help1+2;
    help3:=0;
    help4:=0;
     while help3<help1 do
      begin
       inc(help4);
        if (liczba[kombinacje9[help4].l1]=false) and (liczba[kombinacje9[help4].l2]=false) and (liczba[kombinacje9[help4].l3]=false) and (liczba[kombinacje9[help4].l4]=false) and (liczba[kombinacje9[help4].l5]=false) and (liczba[kombinacje9[help4].l6]=false) and (liczba[kombinacje9[help4].l7]=false) and (liczba[kombinacje9[help4].l8]=false) and (liczba[kombinacje9[help4].l9]=false) then
         begin
          inc(help3);
          napisz9(help3,help4);
          liczba[kombinacje9[help4].l1]:=true;
          liczba[kombinacje9[help4].l2]:=true;
          liczba[kombinacje9[help4].l3]:=true;
          liczba[kombinacje9[help4].l4]:=true;
          liczba[kombinacje9[help4].l5]:=true;
          liczba[kombinacje9[help4].l6]:=true;
          liczba[kombinacje9[help4].l7]:=true;
          liczba[kombinacje9[help4].l8]:=true;
          liczba[kombinacje9[help4].l9]:=true;
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while help5<>help2 do
        begin
         inc(help4);
         help5:=0;
         if (liczba[kombinacje9[help4].l1]=false) then inc(help5);
         if (liczba[kombinacje9[help4].l2]=false) then inc(help5);
         if (liczba[kombinacje9[help4].l3]=false) then inc(help5);
         if (liczba[kombinacje9[help4].l4]=false) then inc(help5);
         if (liczba[kombinacje9[help4].l5]=false) then inc(help5);
         if (liczba[kombinacje9[help4].l6]=false) then inc(help5);
         if (liczba[kombinacje9[help4].l7]=false) then inc(help5);
         if (liczba[kombinacje9[help4].l8]=false) then inc(help5);
         if (liczba[kombinacje9[help4].l9]=false) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz9(help3,help4);
            liczba[kombinacje9[help4].l1]:=true;
            liczba[kombinacje9[help4].l2]:=true;
            liczba[kombinacje9[help4].l3]:=true;
            liczba[kombinacje9[help4].l4]:=true;
            liczba[kombinacje9[help4].l5]:=true;
            liczba[kombinacje9[help4].l6]:=true;
            liczba[kombinacje9[help4].l7]:=true;
            liczba[kombinacje9[help4].l8]:=true;
            liczba[kombinacje9[help4].l9]:=true;
           end;
        end;
     end;
 end else
  begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if gra=3 then if kombinacje9[help1].il5=0 then
      begin
       inc(help2);
       napisz9(help2,help1);
      end;
     if gra=2 then if kombinacje9[help1].il6=0 then
      begin
       inc(help2);
       napisz9(help2,help1);
      end;
     if gra=1 then if kombinacje9[help1].il9=0 then
      begin
       inc(help2);
       napisz9(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      stringgrid1.cells[1,1]:='-';
      stringgrid1.cells[2,1]:='-';
      stringgrid1.cells[3,1]:='-';
      stringgrid1.Cells[4,1]:='-';
      stringgrid1.cells[5,1]:='-';
      stringgrid1.cells[6,1]:='-';
      stringgrid1.Cells[7,1]:='-';
      stringgrid1.cells[8,1]:='-';
      stringgrid1.cells[9,1]:='-';
      stringgrid1.Cells[10,1]:='-';
      stringgrid1.cells[11,1]:='-';
      stringgrid1.cells[12,1]:='-';
      stringgrid1.cells[13,1]:='-';
      stringgrid1.cells[14,1]:='-';
      stringgrid1.cells[15,1]:='-';
      stringgrid1.cells[16,1]:='-';
      stringgrid1.cells[17,1]:='-';
      stringgrid1.cells[18,1]:='-';
      stringgrid1.cells[19,1]:='-';
      stringgrid1.cells[20,1]:='-';
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
liczba:array[1..80] of boolean;
help1,help2,help3,help4,help5:integer;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;
for help1:=1 to 80 do liczba[help1]:=false;
if checkbox1.Checked then
 begin
    help1:=ilosc_l div 10;
    help2:=ilosc_l mod 10;
    if help2=0 then stringgrid1.rowcount:=help1+1 else stringgrid1.RowCount:=help1+2;
    help3:=0;
    help4:=0;
     while help3<help1 do
      begin
       inc(help4);
        if (liczba[kombinacje10[help4].l1]=false) and (liczba[kombinacje10[help4].l2]=false) and (liczba[kombinacje10[help4].l3]=false) and (liczba[kombinacje10[help4].l4]=false) and (liczba[kombinacje10[help4].l5]=false) and (liczba[kombinacje10[help4].l6]=false) and (liczba[kombinacje10[help4].l7]=false) and (liczba[kombinacje10[help4].l8]=false) and (liczba[kombinacje10[help4].l9]=false) and (liczba[kombinacje10[help4].l10]=false) then
         begin
          inc(help3);
          napisz10(help3,help4);
          liczba[kombinacje10[help4].l1]:=true;
          liczba[kombinacje10[help4].l2]:=true;
          liczba[kombinacje10[help4].l3]:=true;
          liczba[kombinacje10[help4].l4]:=true;
          liczba[kombinacje10[help4].l5]:=true;
          liczba[kombinacje10[help4].l6]:=true;
          liczba[kombinacje10[help4].l7]:=true;
          liczba[kombinacje10[help4].l8]:=true;
          liczba[kombinacje10[help4].l9]:=true;
          liczba[kombinacje10[help4].l10]:=true;
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while help5<>help2 do
        begin
         inc(help4);
         help5:=0;
         if (liczba[kombinacje10[help4].l1]=false) then inc(help5);
         if (liczba[kombinacje10[help4].l2]=false) then inc(help5);
         if (liczba[kombinacje10[help4].l3]=false) then inc(help5);
         if (liczba[kombinacje10[help4].l4]=false) then inc(help5);
         if (liczba[kombinacje10[help4].l5]=false) then inc(help5);
         if (liczba[kombinacje10[help4].l6]=false) then inc(help5);
         if (liczba[kombinacje10[help4].l7]=false) then inc(help5);
         if (liczba[kombinacje10[help4].l8]=false) then inc(help5);
         if (liczba[kombinacje10[help4].l9]=false) then inc(help5);
         if (liczba[kombinacje10[help4].l10]=false) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz10(help3,help4);
            liczba[kombinacje10[help4].l1]:=true;
            liczba[kombinacje10[help4].l2]:=true;
            liczba[kombinacje10[help4].l3]:=true;
            liczba[kombinacje10[help4].l4]:=true;
            liczba[kombinacje10[help4].l5]:=true;
            liczba[kombinacje10[help4].l6]:=true;
            liczba[kombinacje10[help4].l7]:=true;
            liczba[kombinacje10[help4].l8]:=true;
            liczba[kombinacje10[help4].l9]:=true;
            liczba[kombinacje10[help4].l10]:=true;
           end;
        end;
     end;
 end else
  begin
  if checkbox2.Checked then
   begin
    help1:=0;
    help2:=0;
    repeat
     inc(help1);
     if gra=3 then if kombinacje10[help1].il5=0 then
      begin
       inc(help2);
       napisz10(help2,help1);
      end;
     if gra=2 then if kombinacje10[help1].il6=0 then
      begin
       inc(help2);
       napisz10(help2,help1);
      end;
     if gra=1 then if kombinacje10[help1].il10=0 then
      begin
       inc(help2);
       napisz10(help2,help1);
      end;
    until (help1=ilosc_k) or (help2=wyswietlaj_wynikow.Value);
    if help2=0 then
     begin
      stringgrid1.rowcount:=2;
      stringgrid1.cells[1,1]:='-';
      stringgrid1.cells[2,1]:='-';
      stringgrid1.cells[3,1]:='-';
      stringgrid1.Cells[4,1]:='-';
      stringgrid1.cells[5,1]:='-';
      stringgrid1.cells[6,1]:='-';
      stringgrid1.Cells[7,1]:='-';
      stringgrid1.cells[8,1]:='-';
      stringgrid1.cells[9,1]:='-';
      stringgrid1.Cells[10,1]:='-';
      stringgrid1.cells[11,1]:='-';
      stringgrid1.cells[12,1]:='-';
      stringgrid1.cells[13,1]:='-';
      stringgrid1.cells[14,1]:='-';
      stringgrid1.cells[15,1]:='-';
      stringgrid1.cells[16,1]:='-';
      stringgrid1.cells[17,1]:='-';
      stringgrid1.cells[18,1]:='-';
      stringgrid1.cells[19,1]:='-';
      stringgrid1.cells[20,1]:='-';
      stringgrid1.cells[21,1]:='-';
      stringgrid1.cells[22,1]:='-';
      stringgrid1.cells[23,1]:='-';
     end else stringgrid1.rowcount:=help2+1;
   end else
    begin
     if ilosc_k>wyswietlaj_wynikow.Value then help1:=wyswietlaj_wynikow.Value else help1:=ilosc_k;
     stringgrid1.RowCount:=help1+1;
     for help4:=1 to help1 do napisz10(help4,help4);
    end;
 end;


end;

procedure TForm14.SpeedButton3Click(Sender: TObject);
begin
if (kombinacje1=true) and (komb1=spinedit3.Value) then
 begin
  case spinedit3.Value of
    4:wypisz4;
    5:wypisz5;
    6:wypisz6;
    7:wypisz7;
    8:wypisz8;
    9:wypisz9;
   10:wypisz10;
  end;
 end;
end;

function TForm14.oczekuje4(nr, ile: integer): integer;
var
help5,help3,help4:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 if wylosowane[help3,kombinacje4[nr].l1] then inc(help4);
 if wylosowane[help3,kombinacje4[nr].l2] then inc(help4);
 if wylosowane[help3,kombinacje4[nr].l3] then inc(help4);
 if wylosowane[help3,kombinacje4[nr].l4] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;
end;

function TForm14.oczekuje5(nr, ile: integer): integer;
var
help5,help3,help4:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 if wylosowane[help3,kombinacje5[nr].l1] then inc(help4);
 if wylosowane[help3,kombinacje5[nr].l2] then inc(help4);
 if wylosowane[help3,kombinacje5[nr].l3] then inc(help4);
 if wylosowane[help3,kombinacje5[nr].l4] then inc(help4);
 if wylosowane[help3,kombinacje5[nr].l5] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;
end;

function TForm14.oczekuje0(nr, ile: integer): integer;
var
help5,help3,help4:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 if wylosowane[help3,kombinacje10[nr].l1] then inc(help4);
 if wylosowane[help3,kombinacje10[nr].l2] then inc(help4);
 if wylosowane[help3,kombinacje10[nr].l3] then inc(help4);
 if wylosowane[help3,kombinacje10[nr].l4] then inc(help4);
 if wylosowane[help3,kombinacje10[nr].l5] then inc(help4);
 if wylosowane[help3,kombinacje10[nr].l6] then inc(help4);
 if wylosowane[help3,kombinacje10[nr].l7] then inc(help4);
 if wylosowane[help3,kombinacje10[nr].l8] then inc(help4);
 if wylosowane[help3,kombinacje10[nr].l9] then inc(help4);
 if wylosowane[help3,kombinacje10[nr].l10] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;
end;

function TForm14.oczekuje6(nr, ile: integer): integer;
var
help5,help3,help4:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 if wylosowane[help3,kombinacje6[nr].l1] then inc(help4);
 if wylosowane[help3,kombinacje6[nr].l2] then inc(help4);
 if wylosowane[help3,kombinacje6[nr].l3] then inc(help4);
 if wylosowane[help3,kombinacje6[nr].l4] then inc(help4);
 if wylosowane[help3,kombinacje6[nr].l5] then inc(help4);
 if wylosowane[help3,kombinacje6[nr].l6] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;

end;

function TForm14.oczekuje7(nr, ile: integer): integer;
var
help5,help3,help4:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 if wylosowane[help3,kombinacje7[nr].l1] then inc(help4);
 if wylosowane[help3,kombinacje7[nr].l2] then inc(help4);
 if wylosowane[help3,kombinacje7[nr].l3] then inc(help4);
 if wylosowane[help3,kombinacje7[nr].l4] then inc(help4);
 if wylosowane[help3,kombinacje7[nr].l5] then inc(help4);
 if wylosowane[help3,kombinacje7[nr].l6] then inc(help4);
 if wylosowane[help3,kombinacje7[nr].l7] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;

end;

function TForm14.oczekuje8(nr, ile: integer): integer;
var
help5,help3,help4:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 if wylosowane[help3,kombinacje8[nr].l1] then inc(help4);
 if wylosowane[help3,kombinacje8[nr].l2] then inc(help4);
 if wylosowane[help3,kombinacje8[nr].l3] then inc(help4);
 if wylosowane[help3,kombinacje8[nr].l4] then inc(help4);
 if wylosowane[help3,kombinacje8[nr].l5] then inc(help4);
 if wylosowane[help3,kombinacje8[nr].l6] then inc(help4);
 if wylosowane[help3,kombinacje8[nr].l7] then inc(help4);
 if wylosowane[help3,kombinacje8[nr].l8] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;

end;

function TForm14.oczekuje9(nr, ile: integer): integer;
var
help5,help3,help4:integer;
begin
help3:=do2+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 if wylosowane[help3,kombinacje9[nr].l1] then inc(help4);
 if wylosowane[help3,kombinacje9[nr].l2] then inc(help4);
 if wylosowane[help3,kombinacje9[nr].l3] then inc(help4);
 if wylosowane[help3,kombinacje9[nr].l4] then inc(help4);
 if wylosowane[help3,kombinacje9[nr].l5] then inc(help4);
 if wylosowane[help3,kombinacje9[nr].l6] then inc(help4);
 if wylosowane[help3,kombinacje9[nr].l7] then inc(help4);
 if wylosowane[help3,kombinacje9[nr].l8] then inc(help4);
 if wylosowane[help3,kombinacje9[nr].l9] then inc(help4);
 if help4<ile then inc(help5);
until (help4>=ile) or (help3=od2);
result:=help5;

end;

procedure TForm14.sortuj0(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje10[i].il3>x do inc(i);
    While x>kombinacje10[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol3(lewy,j);
   if i<prawy Then sortuj_wdol3(i,prawy);
  end;

 procedure sortuj_wgore3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje10[i].il3<x do inc(i);
    While x<kombinacje10[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore3(lewy,j);
   if i<prawy Then sortuj_wgore3(i,prawy);
  end;


procedure sortuj_wdol4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje10[i].il4>x do inc(i);
    While x>kombinacje10[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol4(lewy,j);
   if i<prawy Then sortuj_wdol4(i,prawy);
  end;

 procedure sortuj_wgore4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje10[i].il4<x do inc(i);
    While x<kombinacje10[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore4(lewy,j);
   if i<prawy Then sortuj_wgore4(i,prawy);
  end;

procedure sortuj_wdol5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje10[i].il5>x do inc(i);
    While x>kombinacje10[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol5(lewy,j);
   if i<prawy Then sortuj_wdol5(i,prawy);
  end;

 procedure sortuj_wgore5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje10[i].il5<x do inc(i);
    While x<kombinacje10[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore5(lewy,j);
   if i<prawy Then sortuj_wgore5(i,prawy);
  end;


procedure sortuj_wdol6(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il6;
   Repeat
    While kombinacje10[i].il6>x do inc(i);
    While x>kombinacje10[j].il6 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol6(lewy,j);
   if i<prawy Then sortuj_wdol6(i,prawy);
  end;

 procedure sortuj_wgore6(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il6;
   Repeat
    While kombinacje10[i].il6<x do inc(i);
    While x<kombinacje10[j].il6 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore6(lewy,j);
   if i<prawy Then sortuj_wgore6(i,prawy);
  end;

procedure sortuj_wdol7(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il7;
   Repeat
    While kombinacje10[i].il7>x do inc(i);
    While x>kombinacje10[j].il7 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol7(lewy,j);
   if i<prawy Then sortuj_wdol7(i,prawy);
  end;

 procedure sortuj_wgore7(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il7;
   Repeat
    While kombinacje10[i].il7<x do inc(i);
    While x<kombinacje10[j].il7 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore7(lewy,j);
   if i<prawy Then sortuj_wgore7(i,prawy);
  end;

procedure sortuj_wdol8(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il8;
   Repeat
    While kombinacje10[i].il8>x do inc(i);
    While x>kombinacje10[j].il8 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol8(lewy,j);
   if i<prawy Then sortuj_wdol8(i,prawy);
  end;

 procedure sortuj_wgore8(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il8;
   Repeat
    While kombinacje10[i].il8<x do inc(i);
    While x<kombinacje10[j].il8 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore8(lewy,j);
   if i<prawy Then sortuj_wgore8(i,prawy);
  end;


procedure sortuj_wdol9(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il9;
   Repeat
    While kombinacje10[i].il9>x do inc(i);
    While x>kombinacje10[j].il9 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol9(lewy,j);
   if i<prawy Then sortuj_wdol9(i,prawy);
  end;

 procedure sortuj_wgore9(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il9;
   Repeat
    While kombinacje10[i].il9<x do inc(i);
    While x<kombinacje10[j].il9 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore9(lewy,j);
   if i<prawy Then sortuj_wgore9(i,prawy);
  end;


procedure sortuj_wdol10(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il10;
   Repeat
    While kombinacje10[i].il10>x do inc(i);
    While x>kombinacje10[j].il10 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol10(lewy,j);
   if i<prawy Then sortuj_wdol10(i,prawy);
  end;

 procedure sortuj_wgore10(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb10;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje10[(lewy+prawy) div 2].il10;
   Repeat
    While kombinacje10[i].il10<x do inc(i);
    While x<kombinacje10[j].il10 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje10[i];
       kombinacje10[i]:=kombinacje10[j];
       kombinacje10[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore10(lewy,j);
   if i<prawy Then sortuj_wgore10(i,prawy);
  end;


begin

if wdol=0 then
 case pozycja of
  3:sortuj_wdol3(1,ilosc);
  4:sortuj_wdol4(1,ilosc);
  5:sortuj_wdol5(1,ilosc);
  6:sortuj_wdol6(1,ilosc);
  7:sortuj_wdol7(1,ilosc);
  8:sortuj_wdol8(1,ilosc);
  9:sortuj_wdol9(1,ilosc);
  10:sortuj_wdol10(1,ilosc);
 end;
if wdol=1 then
 case pozycja of
  3:sortuj_wgore3(1,ilosc);
  4:sortuj_wgore4(1,ilosc);
  5:sortuj_wgore5(1,ilosc);
  6:sortuj_wgore6(1,ilosc);
  7:sortuj_wgore7(1,ilosc);
  8:sortuj_wgore8(1,ilosc);
  9:sortuj_wgore9(1,ilosc);
  10:sortuj_wgore10(1,ilosc);
 end;
end;

procedure TForm14.sortuj4(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol2(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb4;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje4[(lewy+prawy) div 2].il2;
   Repeat
    While kombinacje4[i].il2>x do inc(i);
    While x>kombinacje4[j].il2 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje4[i];
       kombinacje4[i]:=kombinacje4[j];
       kombinacje4[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol2(lewy,j);
   if i<prawy Then sortuj_wdol2(i,prawy);
  end;

 procedure sortuj_wgore2(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb4;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje4[(lewy+prawy) div 2].il2;
   Repeat
    While kombinacje4[i].il2<x do inc(i);
    While x<kombinacje4[j].il2 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje4[i];
       kombinacje4[i]:=kombinacje4[j];
       kombinacje4[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore2(lewy,j);
   if i<prawy Then sortuj_wgore2(i,prawy);
  end;

procedure sortuj_wdol3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb4;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje4[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje4[i].il3>x do inc(i);
    While x>kombinacje4[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje4[i];
       kombinacje4[i]:=kombinacje4[j];
       kombinacje4[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol3(lewy,j);
   if i<prawy Then sortuj_wdol3(i,prawy);
  end;

 procedure sortuj_wgore3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb4;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje4[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje4[i].il3<x do inc(i);
    While x<kombinacje4[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje4[i];
       kombinacje4[i]:=kombinacje4[j];
       kombinacje4[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore3(lewy,j);
   if i<prawy Then sortuj_wgore3(i,prawy);
  end;


procedure sortuj_wdol4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb4;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje4[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje4[i].il4>x do inc(i);
    While x>kombinacje4[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje4[i];
       kombinacje4[i]:=kombinacje4[j];
       kombinacje4[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol4(lewy,j);
   if i<prawy Then sortuj_wdol4(i,prawy);
  end;

 procedure sortuj_wgore4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb4;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje4[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje4[i].il4<x do inc(i);
    While x<kombinacje4[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje4[i];
       kombinacje4[i]:=kombinacje4[j];
       kombinacje4[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore4(lewy,j);
   if i<prawy Then sortuj_wgore4(i,prawy);
  end;

begin

if wdol=0 then
 case pozycja of
  2:sortuj_wdol2(1,ilosc);
  3:sortuj_wdol3(1,ilosc);
  4:sortuj_wdol4(1,ilosc);
 end;
if wdol=1 then
 case pozycja of
  2:sortuj_wgore2(1,ilosc);
  3:sortuj_wgore3(1,ilosc);
  4:sortuj_wgore4(1,ilosc);
 end;

end;

procedure TForm14.sortuj5(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje5[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje5[i].il3>x do inc(i);
    While x>kombinacje5[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje5[i];
       kombinacje5[i]:=kombinacje5[j];
       kombinacje5[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol3(lewy,j);
   if i<prawy Then sortuj_wdol3(i,prawy);
  end;

 procedure sortuj_wgore3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje5[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje5[i].il3<x do inc(i);
    While x<kombinacje5[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje5[i];
       kombinacje5[i]:=kombinacje5[j];
       kombinacje5[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore3(lewy,j);
   if i<prawy Then sortuj_wgore3(i,prawy);
  end;

procedure sortuj_wdol4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje5[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje5[i].il4>x do inc(i);
    While x>kombinacje5[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje5[i];
       kombinacje5[i]:=kombinacje5[j];
       kombinacje5[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol4(lewy,j);
   if i<prawy Then sortuj_wdol4(i,prawy);
  end;

 procedure sortuj_wgore4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje5[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje5[i].il4<x do inc(i);
    While x<kombinacje5[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje5[i];
       kombinacje5[i]:=kombinacje5[j];
       kombinacje5[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore4(lewy,j);
   if i<prawy Then sortuj_wgore4(i,prawy);
  end;


procedure sortuj_wdol5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje5[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje5[i].il5>x do inc(i);
    While x>kombinacje5[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje5[i];
       kombinacje5[i]:=kombinacje5[j];
       kombinacje5[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol5(lewy,j);
   if i<prawy Then sortuj_wdol5(i,prawy);
  end;

 procedure sortuj_wgore5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje5[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje5[i].il5<x do inc(i);
    While x<kombinacje5[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje5[i];
       kombinacje5[i]:=kombinacje5[j];
       kombinacje5[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore5(lewy,j);
   if i<prawy Then sortuj_wgore5(i,prawy);
  end;

begin
if wdol=0 then
 case pozycja of
  3:sortuj_wdol3(1,ilosc);
  4:sortuj_wdol4(1,ilosc);
  5:sortuj_wdol5(1,ilosc);
 end;
if wdol=1 then
 case pozycja of
  3:sortuj_wgore3(1,ilosc);
  4:sortuj_wgore4(1,ilosc);
  5:sortuj_wgore5(1,ilosc);
 end;

end;

procedure TForm14.sortuj6(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb6;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje6[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje6[i].il3>x do inc(i);
    While x>kombinacje6[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje6[i];
       kombinacje6[i]:=kombinacje6[j];
       kombinacje6[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol3(lewy,j);
   if i<prawy Then sortuj_wdol3(i,prawy);
  end;

 procedure sortuj_wgore3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb6;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje6[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje6[i].il3<x do inc(i);
    While x<kombinacje6[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje6[i];
       kombinacje6[i]:=kombinacje6[j];
       kombinacje6[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore3(lewy,j);
   if i<prawy Then sortuj_wgore3(i,prawy);
  end;

procedure sortuj_wdol4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb6;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje6[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje6[i].il4>x do inc(i);
    While x>kombinacje6[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje6[i];
       kombinacje6[i]:=kombinacje6[j];
       kombinacje6[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol4(lewy,j);
   if i<prawy Then sortuj_wdol4(i,prawy);
  end;

 procedure sortuj_wgore4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb6;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje6[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje6[i].il4<x do inc(i);
    While x<kombinacje6[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje6[i];
       kombinacje6[i]:=kombinacje6[j];
       kombinacje6[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore4(lewy,j);
   if i<prawy Then sortuj_wgore4(i,prawy);
  end;


procedure sortuj_wdol5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb6;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje6[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje6[i].il5>x do inc(i);
    While x>kombinacje6[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje6[i];
       kombinacje6[i]:=kombinacje6[j];
       kombinacje6[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol5(lewy,j);
   if i<prawy Then sortuj_wdol5(i,prawy);
  end;

 procedure sortuj_wgore5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb6;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje6[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje6[i].il5<x do inc(i);
    While x<kombinacje6[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje6[i];
       kombinacje6[i]:=kombinacje6[j];
       kombinacje6[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore5(lewy,j);
   if i<prawy Then sortuj_wgore5(i,prawy);
  end;

procedure sortuj_wdol6(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb6;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje6[(lewy+prawy) div 2].il6;
   Repeat
    While kombinacje6[i].il6>x do inc(i);
    While x>kombinacje6[j].il6 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje6[i];
       kombinacje6[i]:=kombinacje6[j];
       kombinacje6[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol6(lewy,j);
   if i<prawy Then sortuj_wdol6(i,prawy);
  end;

 procedure sortuj_wgore6(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb6;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje6[(lewy+prawy) div 2].il6;
   Repeat
    While kombinacje6[i].il6<x do inc(i);
    While x<kombinacje6[j].il6 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje6[i];
       kombinacje6[i]:=kombinacje6[j];
       kombinacje6[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore6(lewy,j);
   if i<prawy Then sortuj_wgore6(i,prawy);
  end;

begin
if wdol=0 then
 case pozycja of
  3:sortuj_wdol3(1,ilosc);
  4:sortuj_wdol4(1,ilosc);
  5:sortuj_wdol5(1,ilosc);
  6:sortuj_wdol6(1,ilosc);
 end;
if wdol=1 then
 case pozycja of
  3:sortuj_wgore3(1,ilosc);
  4:sortuj_wgore4(1,ilosc);
  5:sortuj_wgore5(1,ilosc);
  6:sortuj_wgore6(1,ilosc);
 end;
end;

procedure TForm14.sortuj7(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje7[i].il3>x do inc(i);
    While x>kombinacje7[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol3(lewy,j);
   if i<prawy Then sortuj_wdol3(i,prawy);
  end;

 procedure sortuj_wgore3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje7[i].il3<x do inc(i);
    While x<kombinacje7[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore3(lewy,j);
   if i<prawy Then sortuj_wgore3(i,prawy);
  end;

procedure sortuj_wdol4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje7[i].il4>x do inc(i);
    While x>kombinacje7[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol4(lewy,j);
   if i<prawy Then sortuj_wdol4(i,prawy);
  end;

 procedure sortuj_wgore4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje7[i].il4<x do inc(i);
    While x<kombinacje7[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore4(lewy,j);
   if i<prawy Then sortuj_wgore4(i,prawy);
  end;


procedure sortuj_wdol5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje7[i].il5>x do inc(i);
    While x>kombinacje7[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol5(lewy,j);
   if i<prawy Then sortuj_wdol5(i,prawy);
  end;

 procedure sortuj_wgore5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje7[i].il5<x do inc(i);
    While x<kombinacje7[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore5(lewy,j);
   if i<prawy Then sortuj_wgore5(i,prawy);
  end;

procedure sortuj_wdol6(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].il6;
   Repeat
    While kombinacje7[i].il6>x do inc(i);
    While x>kombinacje7[j].il6 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol6(lewy,j);
   if i<prawy Then sortuj_wdol6(i,prawy);
  end;

 procedure sortuj_wgore6(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].il6;
   Repeat
    While kombinacje7[i].il6<x do inc(i);
    While x<kombinacje7[j].il6 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore6(lewy,j);
   if i<prawy Then sortuj_wgore6(i,prawy);
  end;

procedure sortuj_wdol7(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].il7;
   Repeat
    While kombinacje7[i].il7>x do inc(i);
    While x>kombinacje7[j].il7 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol7(lewy,j);
   if i<prawy Then sortuj_wdol7(i,prawy);
  end;

 procedure sortuj_wgore7(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb7;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje7[(lewy+prawy) div 2].il7;
   Repeat
    While kombinacje7[i].il7<x do inc(i);
    While x<kombinacje7[j].il7 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje7[i];
       kombinacje7[i]:=kombinacje7[j];
       kombinacje7[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore7(lewy,j);
   if i<prawy Then sortuj_wgore7(i,prawy);
  end;

begin
if wdol=0 then
 case pozycja of
  3:sortuj_wdol3(1,ilosc);
  4:sortuj_wdol4(1,ilosc);
  5:sortuj_wdol5(1,ilosc);
  6:sortuj_wdol6(1,ilosc);
  7:sortuj_wdol7(1,ilosc);
 end;
if wdol=1 then
 case pozycja of
  3:sortuj_wgore3(1,ilosc);
  4:sortuj_wgore4(1,ilosc);
  5:sortuj_wgore5(1,ilosc);
  6:sortuj_wgore6(1,ilosc);
  7:sortuj_wgore7(1,ilosc);
 end;        
end;

procedure TForm14.sortuj8(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje8[i].il3>x do inc(i);
    While x>kombinacje8[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol3(lewy,j);
   if i<prawy Then sortuj_wdol3(i,prawy);
  end;

 procedure sortuj_wgore3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje8[i].il3<x do inc(i);
    While x<kombinacje8[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore3(lewy,j);
   if i<prawy Then sortuj_wgore3(i,prawy);
  end;

procedure sortuj_wdol4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje8[i].il4>x do inc(i);
    While x>kombinacje8[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol4(lewy,j);
   if i<prawy Then sortuj_wdol4(i,prawy);
  end;

 procedure sortuj_wgore4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje8[i].il4<x do inc(i);
    While x<kombinacje8[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore4(lewy,j);
   if i<prawy Then sortuj_wgore4(i,prawy);
  end;

procedure sortuj_wdol5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje8[i].il5>x do inc(i);
    While x>kombinacje8[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol5(lewy,j);
   if i<prawy Then sortuj_wdol5(i,prawy);
  end;

 procedure sortuj_wgore5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje8[i].il5<x do inc(i);
    While x<kombinacje8[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore5(lewy,j);
   if i<prawy Then sortuj_wgore5(i,prawy);
  end;


procedure sortuj_wdol6(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il6;
   Repeat
    While kombinacje8[i].il6>x do inc(i);
    While x>kombinacje8[j].il6 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol6(lewy,j);
   if i<prawy Then sortuj_wdol6(i,prawy);
  end;

 procedure sortuj_wgore6(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il6;
   Repeat
    While kombinacje8[i].il6<x do inc(i);
    While x<kombinacje8[j].il6 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore6(lewy,j);
   if i<prawy Then sortuj_wgore6(i,prawy);
  end;

procedure sortuj_wdol7(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il7;
   Repeat
    While kombinacje8[i].il7>x do inc(i);
    While x>kombinacje8[j].il7 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol7(lewy,j);
   if i<prawy Then sortuj_wdol7(i,prawy);
  end;

 procedure sortuj_wgore7(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il7;
   Repeat
    While kombinacje8[i].il7<x do inc(i);
    While x<kombinacje8[j].il7 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore7(lewy,j);
   if i<prawy Then sortuj_wgore7(i,prawy);
  end;

procedure sortuj_wdol8(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il8;
   Repeat
    While kombinacje8[i].il8>x do inc(i);
    While x>kombinacje8[j].il8 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol8(lewy,j);
   if i<prawy Then sortuj_wdol8(i,prawy);
  end;

 procedure sortuj_wgore8(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb8;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje8[(lewy+prawy) div 2].il8;
   Repeat
    While kombinacje8[i].il8<x do inc(i);
    While x<kombinacje8[j].il8 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje8[i];
       kombinacje8[i]:=kombinacje8[j];
       kombinacje8[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore8(lewy,j);
   if i<prawy Then sortuj_wgore8(i,prawy);
  end;


begin
if wdol=0 then
 case pozycja of
  3:sortuj_wdol3(1,ilosc);
  4:sortuj_wdol4(1,ilosc);
  5:sortuj_wdol5(1,ilosc);
  6:sortuj_wdol6(1,ilosc);
  7:sortuj_wdol7(1,ilosc);
  8:sortuj_wdol8(1,ilosc);
 end;
if wdol=1 then
 case pozycja of
  3:sortuj_wgore3(1,ilosc);
  4:sortuj_wgore4(1,ilosc);
  5:sortuj_wgore5(1,ilosc);
  6:sortuj_wgore6(1,ilosc);
  7:sortuj_wgore7(1,ilosc);
  8:sortuj_wgore8(1,ilosc);
 end;
end;

procedure TForm14.sortuj9(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje9[i].il3>x do inc(i);
    While x>kombinacje9[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol3(lewy,j);
   if i<prawy Then sortuj_wdol3(i,prawy);
  end;

 procedure sortuj_wgore3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il3;
   Repeat
    While kombinacje9[i].il3<x do inc(i);
    While x<kombinacje9[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore3(lewy,j);
   if i<prawy Then sortuj_wgore3(i,prawy);
  end;


procedure sortuj_wdol4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje9[i].il4>x do inc(i);
    While x>kombinacje9[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol4(lewy,j);
   if i<prawy Then sortuj_wdol4(i,prawy);
  end;

 procedure sortuj_wgore4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il4;
   Repeat
    While kombinacje9[i].il4<x do inc(i);
    While x<kombinacje9[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore4(lewy,j);
   if i<prawy Then sortuj_wgore4(i,prawy);
  end;

procedure sortuj_wdol5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje9[i].il5>x do inc(i);
    While x>kombinacje9[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol5(lewy,j);
   if i<prawy Then sortuj_wdol5(i,prawy);
  end;

 procedure sortuj_wgore5(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il5;
   Repeat
    While kombinacje9[i].il5<x do inc(i);
    While x<kombinacje9[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore5(lewy,j);
   if i<prawy Then sortuj_wgore5(i,prawy);
  end;


procedure sortuj_wdol6(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il6;
   Repeat
    While kombinacje9[i].il6>x do inc(i);
    While x>kombinacje9[j].il6 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol6(lewy,j);
   if i<prawy Then sortuj_wdol6(i,prawy);
  end;

 procedure sortuj_wgore6(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il6;
   Repeat
    While kombinacje9[i].il6<x do inc(i);
    While x<kombinacje9[j].il6 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore6(lewy,j);
   if i<prawy Then sortuj_wgore6(i,prawy);
  end;

procedure sortuj_wdol7(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il7;
   Repeat
    While kombinacje9[i].il7>x do inc(i);
    While x>kombinacje9[j].il7 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol7(lewy,j);
   if i<prawy Then sortuj_wdol7(i,prawy);
  end;

 procedure sortuj_wgore7(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il7;
   Repeat
    While kombinacje9[i].il7<x do inc(i);
    While x<kombinacje9[j].il7 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore7(lewy,j);
   if i<prawy Then sortuj_wgore7(i,prawy);
  end;

procedure sortuj_wdol8(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il8;
   Repeat
    While kombinacje9[i].il8>x do inc(i);
    While x>kombinacje9[j].il8 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol8(lewy,j);
   if i<prawy Then sortuj_wdol8(i,prawy);
  end;

 procedure sortuj_wgore8(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il8;
   Repeat
    While kombinacje9[i].il8<x do inc(i);
    While x<kombinacje9[j].il8 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore8(lewy,j);
   if i<prawy Then sortuj_wgore8(i,prawy);
  end;


procedure sortuj_wdol9(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il9;
   Repeat
    While kombinacje9[i].il9>x do inc(i);
    While x>kombinacje9[j].il9 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol9(lewy,j);
   if i<prawy Then sortuj_wdol9(i,prawy);
  end;

 procedure sortuj_wgore9(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb9;
  begin
   i:=lewy;
   j:=prawy;
   X:=kombinacje9[(lewy+prawy) div 2].il9;
   Repeat
    While kombinacje9[i].il9<x do inc(i);
    While x<kombinacje9[j].il9 do dec(j);
     if i<=j Then
      Begin
       wpis:=kombinacje9[i];
       kombinacje9[i]:=kombinacje9[j];
       kombinacje9[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore9(lewy,j);
   if i<prawy Then sortuj_wgore9(i,prawy);
  end;

begin

if wdol=0 then
 case pozycja of
  3:sortuj_wdol3(1,ilosc);
  4:sortuj_wdol4(1,ilosc);
  5:sortuj_wdol5(1,ilosc);
  6:sortuj_wdol6(1,ilosc);
  7:sortuj_wdol7(1,ilosc);
  8:sortuj_wdol8(1,ilosc);
  9:sortuj_wdol9(1,ilosc);
 end;
if wdol=1 then
 case pozycja of
  3:sortuj_wgore3(1,ilosc);
  4:sortuj_wgore4(1,ilosc);
  5:sortuj_wgore5(1,ilosc);
  6:sortuj_wgore6(1,ilosc);
  7:sortuj_wgore7(1,ilosc);
  8:sortuj_wgore8(1,ilosc);
  9:sortuj_wgore9(1,ilosc);
 end;

end;

procedure TForm14.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked then wyswietlaj_wynikow.Enabled:=false else wyswietlaj_wynikow.Enabled:=true;
if checkbox1.Checked then checkbox2.Enabled:=false else checkbox2.Enabled:=true;
end;

procedure TForm14.napisz4(numers, numert: integer);
begin
   stringgrid1.cells[1,numers]:=(IntToStr(kombinacje4[numert].l1)+', '+IntToStr(kombinacje4[numert].l2)+', '+IntToStr(kombinacje4[numert].l3)+', '+IntToStr(kombinacje4[numert].l4));
   stringgrid1.cells[2,numers]:=IntToStr(kombinacje4[numert].il4);
    if kombinacje4[numert].il4>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje4[numert].il4) else stringgrid1.cells[3,numers]:='?';
   stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje4(numert,4));
   stringgrid1.cells[5,numers]:=IntToStr(kombinacje4[numert].il3);
    if kombinacje4[numert].il3>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje4[numert].il3) else stringgrid1.cells[6,numers]:='?';
   stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje4(numert,3));
   stringgrid1.cells[8,numers]:=IntToStr(kombinacje4[numert].il2);
    if kombinacje4[numert].il2>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje4[numert].il2) else stringgrid1.cells[9,numers]:='?';
   stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje4(numert,2));
   wpadlo:=ile_wpadlo4(do2+1,numert);
   stringgrid1.cells[11,numers]:='';
   if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
   if wpadlo=4 then stringgrid1.cells[11,numers]:='TAK';
end;

procedure TForm14.napisz5(numers, numert: integer);
begin
   stringgrid1.cells[1,numers]:=(IntToStr(kombinacje5[numert].l1)+', '+IntToStr(kombinacje5[numert].l2)+', '+IntToStr(kombinacje5[numert].l3)+', '+IntToStr(kombinacje5[numert].l4)+', '+IntToStr(kombinacje5[numert].l5));
   stringgrid1.cells[2,numers]:=IntToStr(kombinacje5[numert].il5);
    if kombinacje5[numert].il5<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje5[numert].il5) else stringgrid1.cells[3,numers]:='?';
   stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje5(numert,5));
   stringgrid1.cells[5,numers]:=IntToStr(kombinacje5[numert].il4);
    if kombinacje5[numert].il4<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje5[numert].il4) else stringgrid1.cells[6,numers]:='?';
   stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje5(numert,4));
   stringgrid1.cells[8,numers]:=IntToStr(kombinacje5[numert].il3);
    if kombinacje5[numert].il3<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje5[numert].il3) else stringgrid1.cells[9,numers]:='?';
   stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje5(numert,3));
   wpadlo:=ile_wpadlo5(do2+1,numert);
   stringgrid1.cells[11,numers]:='';
   if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
   if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
end;

procedure TForm14.napisz6(numers, numert: integer);
begin
if gra<>3 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje6[numert].l1)+', '+IntToStr(kombinacje6[numert].l2)+', '+IntToStr(kombinacje6[numert].l3)+', '+IntToStr(kombinacje6[numert].l4)+', '+IntToStr(kombinacje6[numert].l5)+', '+IntToStr(kombinacje6[numert].l6));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje6[numert].il6);
     if kombinacje6[numert].il6<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje6[numert].il6) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje6(numert,6));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje6[numert].il5);
     if kombinacje6[numert].il5<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje6[numert].il5) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje6(numert,5));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje6[numert].il4);
     if kombinacje6[numert].il4<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje6[numert].il4) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje6(numert,4));
    stringgrid1.cells[11,numers]:=IntToStr(kombinacje6[numert].il3);
     if kombinacje6[numert].il3<>0 then stringgrid1.cells[12,numers]:=FormatFloat('0.00',ilelos/kombinacje6[numert].il3) else stringgrid1.cells[12,numers]:='?';
    stringgrid1.Cells[13,numers]:=IntToSTr(oczekuje6(numert,3));
    wpadlo:=ile_wpadlo6(do2+1,numert);
    stringgrid1.cells[14,numers]:='';
    if wpadlo>0 then stringgrid1.cells[14,numers]:=IntToStr(wpadlo);
    if wpadlo=6 then stringgrid1.cells[14,numers]:='TAK';
 end;
if gra=3 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje6[numert].l1)+', '+IntToStr(kombinacje6[numert].l2)+', '+IntToStr(kombinacje6[numert].l3)+', '+IntToStr(kombinacje6[numert].l4)+', '+IntToStr(kombinacje6[numert].l5)+', '+IntToStr(kombinacje6[numert].l6));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje6[numert].il5);
     if kombinacje6[numert].il5<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje6[numert].il5) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje6(numert,5));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje6[numert].il4);
     if kombinacje6[numert].il4<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje6[numert].il4) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje6(numert,4));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje6[numert].il3);
     if kombinacje6[numert].il3<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje6[numert].il3) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje6(numert,3));
    wpadlo:=ile_wpadlo6(do2+1,numert);
    stringgrid1.cells[11,numers]:='';
    if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
    if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
 end;
end;

procedure TForm14.napisz7(numers, numert: integer);
begin
if gra=1 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje7[numert].l1)+', '+IntToStr(kombinacje7[numert].l2)+', '+IntToStr(kombinacje7[numert].l3)+', '+IntToStr(kombinacje7[numert].l4)+', '+IntToStr(kombinacje7[numert].l5)+', '+IntToStr(kombinacje7[numert].l6)+', '+IntToStr(kombinacje7[numert].l7));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje7[numert].il7);
     if kombinacje7[numert].il7<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il7) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje7(numert,7));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje7[numert].il6);
     if kombinacje7[numert].il6<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il6) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje7(numert,6));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje7[numert].il5);
     if kombinacje7[numert].il5<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il5) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje7(numert,5));
    stringgrid1.cells[11,numers]:=IntToStr(kombinacje7[numert].il4);
     if kombinacje7[numert].il4<>0 then stringgrid1.cells[12,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il4) else stringgrid1.cells[12,numers]:='?';
    stringgrid1.Cells[13,numers]:=IntToSTr(oczekuje7(numert,4));
    stringgrid1.cells[14,numers]:=IntToStr(kombinacje7[numert].il3);
     if kombinacje7[numert].il3<>0 then stringgrid1.cells[15,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il3) else stringgrid1.cells[15,numers]:='?';
    stringgrid1.Cells[16,numers]:=IntToSTr(oczekuje7(numert,3));
    wpadlo:=ile_wpadlo7(do2+1,numert);
    stringgrid1.cells[17,numers]:='';
    if wpadlo>0 then stringgrid1.cells[17,numers]:=IntToStr(wpadlo);
    if wpadlo=7 then stringgrid1.cells[17,numers]:='TAK';
 end;
if gra=2 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje7[numert].l1)+', '+IntToStr(kombinacje7[numert].l2)+', '+IntToStr(kombinacje7[numert].l3)+', '+IntToStr(kombinacje7[numert].l4)+', '+IntToStr(kombinacje7[numert].l5)+', '+IntToStr(kombinacje7[numert].l6)+', '+IntToStr(kombinacje7[numert].l7));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje7[numert].il6);
     if kombinacje7[numert].il6<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il6) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje7(numert,6));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje7[numert].il5);
     if kombinacje7[numert].il5<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il5) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje7(numert,5));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje7[numert].il4);
     if kombinacje7[numert].il4<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il4) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje7(numert,4));
    stringgrid1.cells[11,numers]:=IntToStr(kombinacje7[numert].il3);
     if kombinacje7[numert].il3<>0 then stringgrid1.cells[12,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il3) else stringgrid1.cells[12,numers]:='?';
    stringgrid1.Cells[13,numers]:=IntToSTr(oczekuje7(numert,3));
    wpadlo:=ile_wpadlo7(do2+1,numert);
    stringgrid1.cells[14,numers]:='';
    if wpadlo>0 then stringgrid1.cells[14,numers]:=IntToStr(wpadlo);
    if wpadlo=6 then stringgrid1.cells[14,numers]:='TAK';
 end;
if gra=3 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje7[numert].l1)+', '+IntToStr(kombinacje7[numert].l2)+', '+IntToStr(kombinacje7[numert].l3)+', '+IntToStr(kombinacje7[numert].l4)+', '+IntToStr(kombinacje7[numert].l5)+', '+IntToStr(kombinacje7[numert].l6)+', '+IntToStr(kombinacje7[numert].l7));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje7[numert].il5);
     if kombinacje7[numert].il5<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il5) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje7(numert,5));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje7[numert].il4);
     if kombinacje7[numert].il4<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il4) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje7(numert,4));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje7[numert].il3);
     if kombinacje7[numert].il3<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje7[numert].il3) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje7(numert,3));
    wpadlo:=ile_wpadlo7(do2+1,numert);
    stringgrid1.cells[11,numers]:='';
    if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
    if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
 end;
end;

procedure TForm14.napisz8(numers, numert: integer);
begin
if gra=1 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje8[numert].l1)+', '+IntToStr(kombinacje8[numert].l2)+', '+IntToStr(kombinacje8[numert].l3)+', '+IntToStr(kombinacje8[numert].l4)+', '+IntToStr(kombinacje8[numert].l5)+', '+IntToStr(kombinacje8[numert].l6)+', '+IntToStr(kombinacje8[numert].l7)+', '+IntToStr(kombinacje8[numert].l8));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje8[numert].il8);
     if kombinacje8[numert].il8<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il8) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje8(numert,8));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje8[numert].il7);
     if kombinacje8[numert].il7<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il7) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje8(numert,7));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje8[numert].il6);
     if kombinacje8[numert].il6<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il6) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje8(numert,6));
    stringgrid1.cells[11,numers]:=IntToStr(kombinacje8[numert].il5);
     if kombinacje8[numert].il5<>0 then stringgrid1.cells[12,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il5) else stringgrid1.cells[12,numers]:='?';
    stringgrid1.Cells[13,numers]:=IntToSTr(oczekuje8(numert,5));
    stringgrid1.cells[14,numers]:=IntToStr(kombinacje8[numert].il4);
     if kombinacje8[numert].il4<>0 then stringgrid1.cells[15,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il4) else stringgrid1.cells[15,numers]:='?';
    stringgrid1.Cells[16,numers]:=IntToSTr(oczekuje8(numert,4));
    wpadlo:=ile_wpadlo8(do2+1,numert);
    stringgrid1.cells[17,numers]:='';
    if wpadlo>0 then stringgrid1.cells[17,numers]:=IntToStr(wpadlo);
    if wpadlo=8 then stringgrid1.cells[17,numers]:='TAK';
 end;
if gra=2 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje8[numert].l1)+', '+IntToStr(kombinacje8[numert].l2)+', '+IntToStr(kombinacje8[numert].l3)+', '+IntToStr(kombinacje8[numert].l4)+', '+IntToStr(kombinacje8[numert].l5)+', '+IntToStr(kombinacje8[numert].l6)+', '+IntToStr(kombinacje8[numert].l7)+', '+IntToStr(kombinacje8[numert].l8));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje8[numert].il6);
     if kombinacje8[numert].il6<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il6) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje8(numert,6));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje8[numert].il5);
     if kombinacje8[numert].il5<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il5) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje8(numert,5));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje8[numert].il4);
     if kombinacje8[numert].il4<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il4) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje8(numert,4));
    stringgrid1.cells[11,numers]:=IntToStr(kombinacje8[numert].il3);
     if kombinacje8[numert].il3<>0 then stringgrid1.cells[12,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il3) else stringgrid1.cells[12,numers]:='?';
    stringgrid1.Cells[13,numers]:=IntToSTr(oczekuje8(numert,3));
    wpadlo:=ile_wpadlo8(do2+1,numert);
    stringgrid1.cells[14,numers]:='';
    if wpadlo>0 then stringgrid1.cells[14,numers]:=IntToStr(wpadlo);
    if wpadlo=6 then stringgrid1.cells[14,numers]:='TAK';
 end;
if gra=3 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje8[numert].l1)+', '+IntToStr(kombinacje8[numert].l2)+', '+IntToStr(kombinacje8[numert].l3)+', '+IntToStr(kombinacje8[numert].l4)+', '+IntToStr(kombinacje8[numert].l5)+', '+IntToStr(kombinacje8[numert].l6)+', '+IntToStr(kombinacje8[numert].l7)+', '+IntToStr(kombinacje8[numert].l8));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje8[numert].il5);
     if kombinacje8[numert].il5<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il5) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje8(numert,5));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje8[numert].il4);
     if kombinacje8[numert].il4<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il4) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje8(numert,4));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje8[numert].il3);
     if kombinacje8[numert].il3<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje8[numert].il3) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje8(numert,3));
    wpadlo:=ile_wpadlo8(do2+1,numert);
    stringgrid1.cells[11,numers]:='';
    if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
    if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
 end;
end;

procedure TForm14.napisz9(numers, numert: integer);
begin
if gra=1 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje9[numert].l1)+', '+IntToStr(kombinacje9[numert].l2)+', '+IntToStr(kombinacje9[numert].l3)+', '+IntToStr(kombinacje9[numert].l4)+', '+IntToStr(kombinacje9[numert].l5)+', '+IntToStr(kombinacje9[numert].l6)+', '+IntToStr(kombinacje9[numert].l7)+', '+IntToStr(kombinacje9[numert].l8)+', '+IntToStr(kombinacje9[numert].l9));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje9[numert].il9);
     if kombinacje9[numert].il9<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il9) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje9(numert,9));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje9[numert].il8);
     if kombinacje9[numert].il8<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il8) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje9(numert,8));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje9[numert].il7);
     if kombinacje9[numert].il7<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il7) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje9(numert,7));
    stringgrid1.cells[11,numers]:=IntToStr(kombinacje9[numert].il6);
     if kombinacje9[numert].il6<>0 then stringgrid1.cells[12,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il6) else stringgrid1.cells[12,numers]:='?';
    stringgrid1.Cells[13,numers]:=IntToSTr(oczekuje9(numert,6));
    stringgrid1.cells[14,numers]:=IntToStr(kombinacje9[numert].il5);
     if kombinacje9[numert].il5<>0 then stringgrid1.cells[15,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il5) else stringgrid1.cells[15,numers]:='?';
    stringgrid1.Cells[16,numers]:=IntToSTr(oczekuje9(numert,5));
    stringgrid1.cells[17,numers]:=IntToStr(kombinacje9[numert].il4);
     if kombinacje9[numert].il4<>0 then stringgrid1.cells[18,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il4) else stringgrid1.cells[18,numers]:='?';
    stringgrid1.Cells[19,numers]:=IntToSTr(oczekuje9(numert,4));
    wpadlo:=ile_wpadlo9(do2+1,numert);
    stringgrid1.cells[20,numers]:='';
    if wpadlo>0 then stringgrid1.cells[20,numers]:=IntToStr(wpadlo);
    if wpadlo=9 then stringgrid1.cells[20,numers]:='TAK';
 end;
if gra=2 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje9[numert].l1)+', '+IntToStr(kombinacje9[numert].l2)+', '+IntToStr(kombinacje9[numert].l3)+', '+IntToStr(kombinacje9[numert].l4)+', '+IntToStr(kombinacje9[numert].l5)+', '+IntToStr(kombinacje9[numert].l6)+', '+IntToStr(kombinacje9[numert].l7)+', '+IntToStr(kombinacje9[numert].l8)+', '+IntToStr(kombinacje9[numert].l9));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje9[numert].il6);
     if kombinacje9[numert].il6<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il6) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje9(numert,6));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje9[numert].il5);
     if kombinacje9[numert].il5<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il5) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje9(numert,5));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje9[numert].il4);
     if kombinacje9[numert].il4<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il4) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje9(numert,4));
    stringgrid1.cells[11,numers]:=IntToStr(kombinacje9[numert].il3);
     if kombinacje9[numert].il3<>0 then stringgrid1.cells[12,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il3) else stringgrid1.cells[12,numers]:='?';
    stringgrid1.Cells[13,numers]:=IntToSTr(oczekuje9(numert,3));
    wpadlo:=ile_wpadlo9(do2+1,numert);
    stringgrid1.cells[14,numers]:='';
    if wpadlo>0 then stringgrid1.cells[14,numers]:=IntToStr(wpadlo);
    if wpadlo=6 then stringgrid1.cells[14,numers]:='TAK';
 end;
if gra=3 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje9[numert].l1)+', '+IntToStr(kombinacje9[numert].l2)+', '+IntToStr(kombinacje9[numert].l3)+', '+IntToStr(kombinacje9[numert].l4)+', '+IntToStr(kombinacje9[numert].l5)+', '+IntToStr(kombinacje9[numert].l6)+', '+IntToStr(kombinacje9[numert].l7)+', '+IntToStr(kombinacje9[numert].l8)+', '+IntToStr(kombinacje9[numert].l9));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje9[numert].il5);
     if kombinacje9[numert].il5<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il5) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje9(numert,5));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje9[numert].il4);
     if kombinacje9[numert].il4<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il4) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje9(numert,4));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje9[numert].il3);
     if kombinacje9[numert].il3<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje9[numert].il3) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje9(numert,3));
    wpadlo:=ile_wpadlo9(do2+1,numert);
    stringgrid1.cells[11,numers]:='';
    if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
    if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
 end;
end;

procedure TForm14.napisz10(numers, numert: integer);
begin
if gra=1 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje10[numert].l1)+', '+IntToStr(kombinacje10[numert].l2)+', '+IntToStr(kombinacje10[numert].l3)+', '+IntToStr(kombinacje10[numert].l4)+', '+IntToStr(kombinacje10[numert].l5)+', '+IntToStr(kombinacje10[numert].l6)+', '+IntToStr(kombinacje10[numert].l7)+', '+IntToStr(kombinacje10[numert].l8)+', '+IntToStr(kombinacje10[numert].l9)+', '+IntToStr(kombinacje10[numert].l10));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje10[numert].il10);
     if kombinacje10[numert].il10<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il10) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje0(numert,10));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje10[numert].il9);
     if kombinacje10[numert].il9<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il9) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje0(numert,9));      
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje10[numert].il8);
     if kombinacje10[numert].il8<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il8) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje0(numert,8));
    stringgrid1.cells[11,numers]:=IntToStr(kombinacje10[numert].il7);
     if kombinacje10[numert].il7<>0 then stringgrid1.cells[12,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il7) else stringgrid1.cells[12,numers]:='?';
    stringgrid1.Cells[13,numers]:=IntToSTr(oczekuje0(numert,7));
    stringgrid1.cells[14,numers]:=IntToStr(kombinacje10[numert].il6);
     if kombinacje10[numert].il6<>0 then stringgrid1.cells[15,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il6) else stringgrid1.cells[15,numers]:='?';
    stringgrid1.Cells[16,numers]:=IntToSTr(oczekuje0(numert,6));
    stringgrid1.cells[17,numers]:=IntToStr(kombinacje10[numert].il5);
     if kombinacje10[numert].il5<>0 then stringgrid1.cells[18,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il5) else stringgrid1.cells[18,numers]:='?';
    stringgrid1.Cells[19,numers]:=IntToSTr(oczekuje0(numert,5));
    stringgrid1.cells[20,numers]:=IntToStr(kombinacje10[numert].il4);
     if kombinacje10[numert].il4<>0 then stringgrid1.cells[21,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il4) else stringgrid1.cells[21,numers]:='?';
    stringgrid1.Cells[22,numers]:=IntToSTr(oczekuje0(numert,4));
    wpadlo:=ile_wpadlo10(do2+1,numert);
    stringgrid1.cells[23,numers]:='';
    if wpadlo>0 then stringgrid1.cells[23,numers]:=IntToStr(wpadlo);
    if wpadlo=10 then stringgrid1.cells[23,numers]:='TAK';
 end;
if gra=2 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje10[numert].l1)+', '+IntToStr(kombinacje10[numert].l2)+', '+IntToStr(kombinacje10[numert].l3)+', '+IntToStr(kombinacje10[numert].l4)+', '+IntToStr(kombinacje10[numert].l5)+', '+IntToStr(kombinacje10[numert].l6)+', '+IntToStr(kombinacje10[numert].l7)+', '+IntToStr(kombinacje10[numert].l8)+', '+IntToStr(kombinacje10[numert].l9)+', '+IntToStr(kombinacje10[numert].l10));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje10[numert].il6);
     if kombinacje10[numert].il6<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il6) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje0(numert,6));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje10[numert].il5);
     if kombinacje10[numert].il5<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il5) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje0(numert,5));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje10[numert].il4);
     if kombinacje10[numert].il4<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il4) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje0(numert,4));
    stringgrid1.cells[11,numers]:=IntToStr(kombinacje10[numert].il3);
     if kombinacje10[numert].il3<>0 then stringgrid1.cells[12,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il3) else stringgrid1.cells[12,numers]:='?';
    stringgrid1.Cells[13,numers]:=IntToSTr(oczekuje0(numert,3));
    wpadlo:=ile_wpadlo10(do2+1,numert);
    stringgrid1.cells[14,numers]:='';
    if wpadlo>0 then stringgrid1.cells[14,numers]:=IntToStr(wpadlo);
    if wpadlo=6 then stringgrid1.cells[14,numers]:='TAK';
 end;
if gra=3 then
 begin
    stringgrid1.cells[1,numers]:=(IntToStr(kombinacje10[numert].l1)+', '+IntToStr(kombinacje10[numert].l2)+', '+IntToStr(kombinacje10[numert].l3)+', '+IntToStr(kombinacje10[numert].l4)+', '+IntToStr(kombinacje10[numert].l5)+', '+IntToStr(kombinacje10[numert].l6)+', '+IntToStr(kombinacje10[numert].l7)+', '+IntToStr(kombinacje10[numert].l8)+', '+IntToStr(kombinacje10[numert].l9)+', '+IntToStr(kombinacje10[numert].l10));
    stringgrid1.cells[2,numers]:=IntToStr(kombinacje10[numert].il5);
     if kombinacje10[numert].il5<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il5) else stringgrid1.cells[3,numers]:='?';
    stringgrid1.Cells[4,numers]:=IntToSTr(oczekuje0(numert,5));
    stringgrid1.cells[5,numers]:=IntToStr(kombinacje10[numert].il4);
     if kombinacje10[numert].il4<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il4) else stringgrid1.cells[6,numers]:='?';
    stringgrid1.Cells[7,numers]:=IntToSTr(oczekuje0(numert,4));
    stringgrid1.cells[8,numers]:=IntToStr(kombinacje10[numert].il3);
     if kombinacje10[numert].il3<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ilelos/kombinacje10[numert].il3) else stringgrid1.cells[9,numers]:='?';
    stringgrid1.Cells[10,numers]:=IntToSTr(oczekuje0(numert,3));
    wpadlo:=ile_wpadlo10(do2+1,numert);
    stringgrid1.cells[11,numers]:='';
    if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
    if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
 end;
end;

function TForm14.ile_wpadlo4(nr, nrc: integer): byte;
var help1:byte;
begin
help1:=0;
if wylosowane[nr,kombinacje4[nrc].l1] then inc(help1);
if wylosowane[nr,kombinacje4[nrc].l2] then inc(help1);
if wylosowane[nr,kombinacje4[nrc].l3] then inc(help1);
if wylosowane[nr,kombinacje4[nrc].l4] then inc(help1);
result:=help1;
end;

function TForm14.ile_wpadlo5(nr, nrc: integer): byte;
var help1:byte;
begin
help1:=0;
if wylosowane[nr,kombinacje5[nrc].l1] then inc(help1);
if wylosowane[nr,kombinacje5[nrc].l2] then inc(help1);
if wylosowane[nr,kombinacje5[nrc].l3] then inc(help1);
if wylosowane[nr,kombinacje5[nrc].l4] then inc(help1);
if wylosowane[nr,kombinacje5[nrc].l5] then inc(help1);
result:=help1;
end;

function TForm14.ile_wpadlo10(nr, nrc: integer): byte;
var help1:byte;
begin
help1:=0;
if wylosowane[nr,kombinacje10[nrc].l1] then inc(help1);
if wylosowane[nr,kombinacje10[nrc].l2] then inc(help1);
if wylosowane[nr,kombinacje10[nrc].l3] then inc(help1);
if wylosowane[nr,kombinacje10[nrc].l4] then inc(help1);
if wylosowane[nr,kombinacje10[nrc].l5] then inc(help1);
if wylosowane[nr,kombinacje10[nrc].l6] then inc(help1);
if wylosowane[nr,kombinacje10[nrc].l7] then inc(help1);
if wylosowane[nr,kombinacje10[nrc].l8] then inc(help1);
if wylosowane[nr,kombinacje10[nrc].l9] then inc(help1);
if wylosowane[nr,kombinacje10[nrc].l10] then inc(help1);
result:=help1;
end;

function TForm14.ile_wpadlo6(nr, nrc: integer): byte;
var help1:byte;
begin
help1:=0;
if wylosowane[nr,kombinacje6[nrc].l1] then inc(help1);
if wylosowane[nr,kombinacje6[nrc].l2] then inc(help1);
if wylosowane[nr,kombinacje6[nrc].l3] then inc(help1);
if wylosowane[nr,kombinacje6[nrc].l4] then inc(help1);
if wylosowane[nr,kombinacje6[nrc].l5] then inc(help1);
if wylosowane[nr,kombinacje6[nrc].l6] then inc(help1);
result:=help1;
end;

function TForm14.ile_wpadlo7(nr, nrc: integer): byte;
var help1:byte;
begin
help1:=0;
if wylosowane[nr,kombinacje7[nrc].l1] then inc(help1);
if wylosowane[nr,kombinacje7[nrc].l2] then inc(help1);
if wylosowane[nr,kombinacje7[nrc].l3] then inc(help1);
if wylosowane[nr,kombinacje7[nrc].l4] then inc(help1);
if wylosowane[nr,kombinacje7[nrc].l5] then inc(help1);
if wylosowane[nr,kombinacje7[nrc].l6] then inc(help1);
if wylosowane[nr,kombinacje7[nrc].l7] then inc(help1);
result:=help1;
end;

function TForm14.ile_wpadlo8(nr, nrc: integer): byte;
var help1:byte;
begin
help1:=0;
if wylosowane[nr,kombinacje8[nrc].l1] then inc(help1);
if wylosowane[nr,kombinacje8[nrc].l2] then inc(help1);
if wylosowane[nr,kombinacje8[nrc].l3] then inc(help1);
if wylosowane[nr,kombinacje8[nrc].l4] then inc(help1);
if wylosowane[nr,kombinacje8[nrc].l5] then inc(help1);
if wylosowane[nr,kombinacje8[nrc].l6] then inc(help1);
if wylosowane[nr,kombinacje8[nrc].l7] then inc(help1);
if wylosowane[nr,kombinacje8[nrc].l8] then inc(help1);
result:=help1;
end;

function TForm14.ile_wpadlo9(nr, nrc: integer): byte;
var help1:byte;
begin
help1:=0;
if wylosowane[nr,kombinacje9[nrc].l1] then inc(help1);
if wylosowane[nr,kombinacje9[nrc].l2] then inc(help1);
if wylosowane[nr,kombinacje9[nrc].l3] then inc(help1);
if wylosowane[nr,kombinacje9[nrc].l4] then inc(help1);
if wylosowane[nr,kombinacje9[nrc].l5] then inc(help1);
if wylosowane[nr,kombinacje9[nrc].l6] then inc(help1);
if wylosowane[nr,kombinacje9[nrc].l7] then inc(help1);
if wylosowane[nr,kombinacje9[nrc].l8] then inc(help1);
if wylosowane[nr,kombinacje9[nrc].l9] then inc(help1);
result:=help1;
end;

procedure TForm14.Czstocimalejco1Click(Sender: TObject);
begin
if kombinacje1 then
 begin
  case komb1 of
    4:sortuj4(spinedit4.Value,0,ilosc_k);
    5:sortuj5(spinedit4.Value,0,ilosc_k);
    6:sortuj6(spinedit4.Value,0,ilosc_k);
    7:sortuj7(spinedit4.Value,0,ilosc_k);
    8:sortuj8(spinedit4.Value,0,ilosc_k);
    9:sortuj9(spinedit4.Value,0,ilosc_k);
   10:sortuj0(spinedit4.Value,0,ilosc_k);
  end;
  case komb1 of
    4:wypisz4;
    5:wypisz5;
    6:wypisz6;
    7:wypisz7;
    8:wypisz8;
    9:wypisz9;
   10:wypisz10;
  end;
 end;
end;
{ TODO : kazda liczba tylko 1-5 razy }
procedure TForm14.Czstocirosnco1Click(Sender: TObject);
begin
if kombinacje1 then
 begin
  case komb1 of
    4:sortuj4(spinedit4.Value,1,ilosc_k);
    5:sortuj5(spinedit4.Value,1,ilosc_k);
    6:sortuj6(spinedit4.Value,1,ilosc_k);
    7:sortuj7(spinedit4.Value,1,ilosc_k);
    8:sortuj8(spinedit4.Value,1,ilosc_k);
    9:sortuj9(spinedit4.Value,1,ilosc_k);
   10:sortuj0(spinedit4.Value,1,ilosc_k);
  end;
  case komb1 of
    4:wypisz4;
    5:wypisz5;
    6:wypisz6;
    7:wypisz7;
    8:wypisz8;
    9:wypisz9;
   10:wypisz10;
  end;
 end;
end;

procedure TForm14.StringGrid1ContextPopup(Sender: TObject;   MousePos: TPoint; var Handled: Boolean);
var
  P : TPoint;
begin
  GetCursorPos(P);
  popupmenu1.Popup(P.X, P.Y);
end;

end.
