unit czworki;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,main,
  StdCtrls, ComCtrls, Spin, Grids, Buttons, Gauges, Menus;

type
  TForm15 = class(TForm)
    _okno: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    Gauge1: TGauge;
    SB_pamietaj: TSpeedButton;
    StringGrid1: TStringGrid;
    GroupBox2: TGroupBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    GroupBox4: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    CheckBox1: TCheckBox;
    RadioButton3: TRadioButton;
    RadioButton7: TRadioButton;
    wyswietlaj_wynikow: TSpinEdit;
    CheckBox2: TCheckBox;
    SpinEdit9: TSpinEdit;
    PopupMenu1: TPopupMenu;
    Czstocimalejco1: TMenuItem;
    Czstocirosnco1: TMenuItem;
    N1: TMenuItem;
    Oczekiwaniemalejco1: TMenuItem;
    Oczekiwanierosnco1: TMenuItem;
    Label20: TLabel;
    CheckBox3: TCheckBox;
    N2: TMenuItem;
    Kopiujdozestaww1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Czstocimalejco1Click(Sender: TObject);
    procedure Czstocirosnco1Click(Sender: TObject);
    procedure StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Oczekiwaniemalejco1Click(Sender: TObject);
    procedure Oczekiwanierosnco1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure Kopiujdozestaww1Click(Sender: TObject);
  private
    { Private declarations }
    procedure wlacz_kontrolki(stan: boolean = true);
  public
  procedure policz(od_,do_:integer);
  procedure sortuj(pozycja,wdol,ilosc:integer);
  procedure wypisz1(od_,do_:word);
  procedure napisz(numers, numert: integer);
  function oczekuje(od_,do_,na_ile:integer):integer;
  function ile_wpadlo(liczba1,liczba2,liczba3,liczba4,nr:integer):byte;
    { Public declarations }
  end;

  komb = packed record
    l1,l2,l3,l4:byte;
    il2,il3,il4,ocz2,ocz3,ocz4: WORD;
  end;

var
  Form15: TForm15;
  czy_czworki,wybrane:boolean;
  czworki_:boolean;
  czworki1:byte;
  zak1,zak2,ile4,ile_los,min4,do_ilu:integer;
  kom_czworki:array[1..1581580] of komb;
  czworki_liczby:array[1..80]of byte;
  ilosc_liczb5:byte;

  do2,czworka:integer;

implementation
 uses podajliczby, Addins;

{$R *.DFM}

procedure TForm15.FormClose(Sender: TObject; var Action: TCloseAction);
var help1:integer;
begin
zapisz_opcje('czworki','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
if radiobutton4.Checked then help1:=1 else
 if radiobutton5.Checked then help1:=2 else help1:=3;
zapisz_opcje('czworki','sortuj_wedlug_'+prefiks_gry,help1);
zapisz_opcje('czworki','kazda_liczba_tylko_'+prefiks_gry,checkbox1.Checked);
zapisz_opcje('czworki','kazda_liczba_razy_'+prefiks_gry,spinedit9.value);
zapisz_opcje('czworki','wyswietlaj_'+prefiks_gry,wyswietlaj_wynikow.value);
zapisz_opcje('czworki','redukuj_'+prefiks_gry,checkbox2.Checked);
zapisz_opcje('czworki','od_'+prefiks_gry,spinedit1.value);
zapisz_opcje('czworki','do_'+prefiks_gry,spinedit2.value);

Action := caFree;
Form15:=nil;
end;

procedure TForm15.FormCreate(Sender: TObject);
var help1,help2:integer;
pamietaj:boolean;
begin
czworki_:=false;
czworki1:=0;

if Gra.Numer=1 then
 begin
  radiobutton3.Caption:='Wszystkie 80 liczb';

 end;

if Gra.Numer=2 then
 begin
  radiobutton3.Caption:='Wszystkie 49 liczb';

 end;

if Gra.Numer=3 then
 begin
  radiobutton3.Caption:='Wszystkie 42 liczby';

 end;

czy_czworki:=false;


stringgrid1.ColWidths[0]:=32;
stringgrid1.cells[0,0]:='Lp.';
stringgrid1.ColWidths[1]:=75;
stringgrid1.cells[1,0]:='Czwórka';
stringgrid1.ColWidths[2]:=43;
stringgrid1.cells[2,0]:='Iloœæ 4';
stringgrid1.ColWidths[3]:=43;
stringgrid1.cells[3,0]:='Œr. 4 co';
stringgrid1.ColWidths[4]:=43;
stringgrid1.cells[4,0]:='Brak 4';
stringgrid1.ColWidths[5]:=43;
stringgrid1.cells[5,0]:='Iloœæ 3';
stringgrid1.ColWidths[6]:=43;
stringgrid1.Cells[6,0]:='Œr. 3 co';
stringgrid1.ColWidths[7]:=43;
stringgrid1.cells[7,0]:='Brak 3';
stringgrid1.ColWidths[8]:=43;
stringgrid1.ColWidths[9]:=43;
stringgrid1.cells[8,0]:='Iloœæ 2';
stringgrid1.colwidths[10]:=43;
stringgrid1.cells[9,0]:='Œr. 2 co';
stringgrid1.colwidths[10]:=43;
stringgrid1.cells[10,0]:='Brak 2';

stringgrid1.cells[11,0]:='Traf';
stringgrid1.ColWidths[11]:=28;

for help1:=1 to 5000 do stringgrid1.cells[0,help1]:=IntToStr(help1);

help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

pamietaj:=wczytaj_opcje('czworki','pamietaj_ustawienia_'+prefiks_gry,false);
if pamietaj then
 begin
  help1:=wczytaj_opcje('czworki','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('czworki','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

  spinedit1.Value:=help1;
  spinedit2.Value:=help2;
  spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

SB_pamietaj.Down:=pamietaj;
if pamietaj then
 begin
  help1:=wczytaj_opcje('czworki','sortuj_wedlug_'+prefiks_gry,1);
  if help1=1 then radiobutton4.Checked:=true else
   if help1=2 then radiobutton5.Checked:=true else radiobutton6.Checked:=true;
  checkbox1.Checked:=wczytaj_opcje('czworki','kazda_liczba_tylko_'+prefiks_gry,false);
  spinedit9.Value:=wczytaj_opcje('czworki','kazda_liczba_razy_'+prefiks_gry,1);
  wyswietlaj_wynikow.value:=wczytaj_opcje('czworki','wyswietlaj_'+prefiks_gry,100);
  checkbox2.Checked:=wczytaj_opcje('czworki','redukuj_'+prefiks_gry,false);
 end;
speedbutton5.Enabled:=false;
end;

procedure TForm15.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm15.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm15.RadioButton7Click(Sender: TObject);
begin
if radiobutton7.Checked then speedbutton2.Enabled:=true;
end;

procedure TForm15.RadioButton3Click(Sender: TObject);
begin
if radiobutton3.checked then speedbutton2.Enabled:=false;
end;

procedure TForm15.SpeedButton1Click(Sender: TObject);
begin
if radiobutton3.Checked then
 begin
  wybrane:=false;
  if (spinedit1.Value<spinedit2.Value) then policz(spinedit1.Value,spinedit2.Value);
  if (spinedit1.Value>spinedit2.Value) then policz(spinedit2.value,spinedit1.value);
 end;
if (radiobutton3.Checked=false) and (czy_czworki=true) then
   begin
    wybrane:=true;
    if (spinedit1.Value<spinedit2.Value) then policz(spinedit1.Value,spinedit2.Value);
    if (spinedit1.Value>spinedit2.Value) then policz(spinedit2.value,spinedit1.value);
   end;
end;

procedure TForm15.policz(od_, do_: integer);
var
help1,help2,help3,help4,help5,max2,max3,max4,pomoc,trafionych:integer;
ile,min2,min3:integer;
trafien:array[1..4]of integer;
zmienna:real;
liczba:array[1..80] of word;
begin
  wlacz_kontrolki(false);
do2:=do_;
form1.stoper_start;
czworki_:=true;
czworki1:=1;
zak1:=od_;
zak2:=do_;
gauge1.Progress:=0;
ile_los:=do_-od_+1;
ile:=0;

if wybrane then do_ilu:=ilosc_liczb5 else do_ilu:=ilosc_liczb_gry;


if wybrane=false then
 begin
  for help1:=1 to do_ilu do
   for help2:=help1+1 to do_ilu do
    for help3:=help2+1 to do_ilu do
     for help4:=help3+1 to do_ilu do
      begin
       inc(ile);
       kom_czworki[ile].l1:=help1;
       kom_czworki[ile].l2:=help2;
       kom_czworki[ile].l3:=help3;
       kom_czworki[ile].l4:=help4;
       kom_czworki[ile].il2:=0;
       kom_czworki[ile].il3:=0;
       kom_czworki[ile].il4:=0;
       kom_czworki[ile].ocz2:=0;
       kom_czworki[ile].ocz3:=0;
       kom_czworki[ile].ocz4:=0;
      end;
 end else
 begin
  for help1:=1 to do_ilu do
   for help2:=help1+1 to do_ilu do
    for help3:=help2+1 to do_ilu do
     for help4:=help3+1 to do_ilu do
      begin
       inc(ile);
       kom_czworki[ile].l1:=czworki_liczby[help1];
       kom_czworki[ile].l2:=czworki_liczby[help2];
       kom_czworki[ile].l3:=czworki_liczby[help3];
       kom_czworki[ile].l4:=czworki_liczby[help4];
       kom_czworki[ile].il2:=0;
       kom_czworki[ile].il3:=0;
       kom_czworki[ile].il4:=0;
       kom_czworki[ile].ocz2:=0;
       kom_czworki[ile].ocz3:=0;
       kom_czworki[ile].ocz4:=0;
      end;
 end;

ile4:=ile;

for help1:=1 to 4 do trafien[help1]:=0;
max2:=0;
max3:=0;
max4:=0;
min2:=losowan;
min3:=losowan;
min4:=losowan;

//ile:=1000;
gauge1.MaxValue:=ile;

//obliczenie czestosci
for pomoc:=1 to ile do
 begin
  czworka:=pomoc;
  for help1:=od_ to do_ do
   begin
    trafionych:=0;
    if wylosowane[help1,kom_czworki[pomoc].l1] then inc(trafionych);
    if wylosowane[help1,kom_czworki[pomoc].l2] then inc(trafionych);
    if wylosowane[help1,kom_czworki[pomoc].l3] then inc(trafionych);
    if wylosowane[help1,kom_czworki[pomoc].l4] then inc(trafionych);
    if trafionych>0 then inc(trafien[trafionych]); 
   end;

   kom_czworki[pomoc].il4:=trafien[4];
   kom_czworki[pomoc].il3:=trafien[3];
   kom_czworki[pomoc].il2:=trafien[2];
                                         
   kom_czworki[pomoc].ocz2:=oczekuje(od_,do_,2);
   kom_czworki[pomoc].ocz3:=oczekuje(od_,do_,3);
   kom_czworki[pomoc].ocz4:=oczekuje(od_,do_,4);

   if kom_czworki[pomoc].il4>max4 then max4:=kom_czworki[pomoc].il4;
   if kom_czworki[pomoc].il3>max3 then max3:=kom_czworki[pomoc].il3;
   if kom_czworki[pomoc].il2>max2 then max2:=kom_czworki[pomoc].il2;
   if kom_czworki[pomoc].il4<min4 then min4:=kom_czworki[pomoc].il4;
   if kom_czworki[pomoc].il3<min3 then min3:=kom_czworki[pomoc].il3;
   if kom_czworki[pomoc].il2<min2 then min2:=kom_czworki[pomoc].il2;
   gauge1.Progress:=pomoc;
   for help4:=1 to 4 do trafien[help4]:=0;
   application.ProcessMessages;
  end;

if radiobutton4.Checked then sortuj(4,0,ile);
if radiobutton5.Checked then sortuj(3,0,ile);
if radiobutton6.checked then sortuj(2,0,ile);

wypisz1(od_,do_);

speedbutton5.Enabled:=true;

label12.Caption:=IntToStr(max4);
label13.Caption:=IntToStr(max3);
label14.Caption:=IntToStr(max2);
label15.caption:=IntToStr(min4);
label16.caption:=IntToStr(min3);
label17.caption:=IntToStr(min2);

form15.Caption:='Czwórki...' +IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
  wlacz_kontrolki();
end;

procedure TForm15.SpeedButton2Click(Sender: TObject);
begin
liczby_dla_opcji:=6;
Application.CreateForm(TForm16,form16);
form16.Showmodal;
if (ilosc_liczb5>3) and (ilosc_liczb5<81) then czy_czworki:=true else czy_czworki:=false;
end;

function TForm15.oczekuje(od_, do_, na_ile: integer): integer;
var
help1,help2,help3:integer;
begin
help1:=-1;
help2:=do_+1;
 repeat
  help3:=0;
  inc(help1);
  dec(help2);
   if wylosowane[help2,kom_czworki[czworka].l1] then inc(help3);
   if wylosowane[help2,kom_czworki[czworka].l2] then inc(help3);
   if wylosowane[help2,kom_czworki[czworka].l3] then inc(help3);
   if wylosowane[help2,kom_czworki[czworka].l4] then inc(help3);
 until (help2=od_) or (help3>=na_ile);
oczekuje:=help1;
end;

procedure TForm15.SpeedButton5Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='Czwórki';
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm|Plik zestawu liczb (*.zes)|*.zes';
if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid1.rowcount-1 do writeln(filename,stringgrid1.cells[0,help1]+';'+stringgrid1.cells[1,help1]+';'+stringgrid1.cells[2,help1]+';'+stringgrid1.cells[3,help1]+';'+stringgrid1.cells[4,help1]+';'+stringgrid1.cells[5,help1]+';'+stringgrid1.cells[6,help1]+';'+stringgrid1.cells[7,help1]+';'+stringgrid1.cells[8,help1]+';'+stringgrid1.cells[9,help1]+';'+stringgrid1.cells[10,help1]+';'+stringgrid1.cells[11,help1]);
  closefile(filename);
 end else if form1.SaveDialog1.FilterIndex=2 then form1.zapiszHTML(form15.stringgrid1,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Czwórki','',1,zak1,zak2) else zapisz_tablice_zestawow(form15.stringgrid1,1,form1.savedialog1.filename);
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

procedure TForm15.sortuj(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].il4;
   Repeat
    While kom_czworki[i].il4>x do inc(i);
    While x>kom_czworki[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
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
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].il4;
   Repeat
    While kom_czworki[i].il4<x do inc(i);
    While x<kom_czworki[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore4(lewy,j);
   if i<prawy Then sortuj_wgore4(i,prawy);
  end;
procedure sortuj_wdol3(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].il3;
   Repeat
    While kom_czworki[i].il3>x do inc(i);
    While x>kom_czworki[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
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
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].il3;
   Repeat
    While kom_czworki[i].il3<x do inc(i);
    While x<kom_czworki[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore3(lewy,j);
   if i<prawy Then sortuj_wgore3(i,prawy);
  end;
procedure sortuj_wdol2(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].il2;
   Repeat
    While kom_czworki[i].il2>x do inc(i);
    While x>kom_czworki[j].il2 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
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
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].il2;
   Repeat
    While kom_czworki[i].il2<x do inc(i);
    While x<kom_czworki[j].il2 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore2(lewy,j);
   if i<prawy Then sortuj_wgore2(i,prawy);
  end;


procedure sortuj_wdol4o(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].ocz4;
   Repeat
    While kom_czworki[i].ocz4>x do inc(i);
    While x>kom_czworki[j].ocz4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol4o(lewy,j);
   if i<prawy Then sortuj_wdol4o(i,prawy);
  end;

 procedure sortuj_wgore4o(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].ocz4;
   Repeat
    While kom_czworki[i].ocz4<x do inc(i);
    While x<kom_czworki[j].ocz4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore4o(lewy,j);
   if i<prawy Then sortuj_wgore4o(i,prawy);
  end;
procedure sortuj_wdol3o(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].ocz3;
   Repeat
    While kom_czworki[i].ocz3>x do inc(i);
    While x>kom_czworki[j].ocz3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol3o(lewy,j);
   if i<prawy Then sortuj_wdol3o(i,prawy);
  end;

 procedure sortuj_wgore3o(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].ocz3;
   Repeat
    While kom_czworki[i].ocz3<x do inc(i);
    While x<kom_czworki[j].ocz3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore3o(lewy,j);
   if i<prawy Then sortuj_wgore3o(i,prawy);
  end;
procedure sortuj_wdol2o(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].ocz2;
   Repeat
    While kom_czworki[i].ocz2>x do inc(i);
    While x>kom_czworki[j].ocz2 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wdol2o(lewy,j);
   if i<prawy Then sortuj_wdol2o(i,prawy);
  end;

 procedure sortuj_wgore2o(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_czworki[(lewy+prawy) div 2].ocz2;
   Repeat
    While kom_czworki[i].ocz2<x do inc(i);
    While x<kom_czworki[j].ocz2 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_czworki[i];
       kom_czworki[i]:=kom_czworki[j];
       kom_czworki[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore2o(lewy,j);
   if i<prawy Then sortuj_wgore2o(i,prawy);
  end;


begin
if wdol=0 then
 case pozycja of
  2:sortuj_wdol2(1,ilosc);
  3:sortuj_wdol3(1,ilosc);
  4:sortuj_wdol4(1,ilosc);
  5:sortuj_wdol2o(1,ilosc);
  6:sortuj_wdol3o(1,ilosc);
  7:sortuj_wdol4o(1,ilosc);
 end;
if wdol=1 then
 case pozycja of
  2:sortuj_wgore2(1,ilosc);
  3:sortuj_wgore3(1,ilosc);
  4:sortuj_wgore4(1,ilosc);
  5:sortuj_wgore2o(1,ilosc);
  6:sortuj_wgore3o(1,ilosc);
  7:sortuj_wgore4o(1,ilosc);
 end;
end;

procedure TForm15.wypisz1(od_, do_: word);
var
help1,help2,help3,help4,help5,help6:integer;
liczba:array[1..80] of byte;
ile_razy:byte;
begin
if wyswietlaj_wynikow.Value>5000 then wyswietlaj_wynikow.Value:=wyswietlaj_wynikow.MaxValue;

if checkbox1.Checked then
 begin

    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=0;
    ile_razy:=spinedit9.Value;

    help1:=do_ilu*ile_razy div 4;
    help2:=do_ilu*ile_razy mod 4;

    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ile4 then stringgrid1.RowCount:=ile4+1 else stringgrid1.rowcount:=help1+help6+1;


    help3:=0;
    help4:=0;

     while (help3<help1) and (help4<ile4) do
      begin
       inc(help4);
        if (liczba[kom_czworki[help4].l1]<ile_razy) and (liczba[kom_czworki[help4].l2]<ile_razy) and (liczba[kom_czworki[help4].l3]<ile_razy) and (liczba[kom_czworki[help4].l4]<ile_razy) then
         begin
          inc(help3);
          napisz(help3,help4);
          inc(liczba[kom_czworki[help4].l1]);
          inc(liczba[kom_czworki[help4].l2]);
          inc(liczba[kom_czworki[help4].l3]);
          inc(liczba[kom_czworki[help4].l4]);
         end;
      end;

    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ile4) do
        begin
         inc(help4);
         help5:=0;
         if (liczba[kom_czworki[help4].l1]<ile_razy) then inc(help5);
         if (liczba[kom_czworki[help4].l2]<ile_razy) then inc(help5);
         if (liczba[kom_czworki[help4].l3]<ile_razy) then inc(help5);
         if (liczba[kom_czworki[help4].l4]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz(help3,help4);
            inc(liczba[kom_czworki[help4].l1]);
            inc(liczba[kom_czworki[help4].l2]);
            inc(liczba[kom_czworki[help4].l3]);
            inc(liczba[kom_czworki[help4].l4]);
           end;
        end;
     end;
    if (help4=ile4) and (help3<help1+help6) then stringgrid1.RowCount:=help3+1;
 end else
 begin
  if checkbox2.Checked=false then
   begin
     if ile4>wyswietlaj_wynikow.Value then help1:=wyswietlaj_wynikow.Value else help1:=ile4;
     stringgrid1.RowCount:=help1+1;
     for help4:=1 to help1 do napisz(help4,help4);
   end else
    begin
     if min4>0 then
      begin
       stringgrid1.RowCount:=2;
       wyswietlaj_wynikow.Value:=1;
       stringgrid1.cells[1,1]:='-';
       stringgrid1.cells[2,1]:='-';
       stringgrid1.cells[3,1]:='-';
       stringgrid1.cells[4,1]:='-';
       stringgrid1.cells[5,1]:='-';
       stringgrid1.cells[6,1]:='-';
       stringgrid1.cells[7,1]:='-';
       stringgrid1.cells[8,1]:='-';
       stringgrid1.cells[9,1]:='-';
       stringgrid1.cells[10,1]:='-';
       stringgrid1.cells[11,1]:='-';
      end else
       begin
        help1:=0;
        help2:=0;
        repeat
         inc(help1);
         if kom_czworki[help1].il4=0 then
          begin
           inc(help2);
           napisz(help2,help1);
          end;
        until (help2=wyswietlaj_wynikow.Value) or (help1=ile4);
        stringgrid1.RowCount:=help2+1;
       end;
    end;
 end;

end;

function TForm15.ile_wpadlo(liczba1, liczba2, liczba3, liczba4, nr: integer): byte;
var
wpadlo:byte;
begin
wpadlo:=0;
if wylosowane[nr,liczba1] then inc(wpadlo);
if wylosowane[nr,liczba2] then inc(wpadlo);
if wylosowane[nr,liczba3] then inc(wpadlo);
if wylosowane[nr,liczba4] then inc(wpadlo);
result:=wpadlo;
end;

procedure TForm15.napisz(numers, numert: integer);
var
wpadlo:byte;
begin
stringgrid1.cells[1,numers]:=(IntToStr(kom_czworki[numert].l1)+', '+IntToStr(kom_czworki[numert].l2)+', '+IntToStr(kom_czworki[numert].l3)+', '+IntToStr(kom_czworki[numert].l4));

stringgrid1.cells[2,numers]:=IntToStr(kom_czworki[numert].il4);
 if kom_czworki[numert].il4=0 then stringgrid1.Cells[3,numers]:='?' else stringgrid1.cells[3,numers]:=FormatFloat('0.00',ile_los/kom_czworki[numert].il4);
stringgrid1.cells[4,numers]:=IntToStr(kom_czworki[numert].ocz4);

stringgrid1.cells[5,numers]:=IntToStr(kom_czworki[numert].il3);
 if kom_czworki[numert].il3=0 then stringgrid1.Cells[6,numers]:='?' else stringgrid1.cells[6,numers]:=FormatFloat('0.00',ile_los/kom_czworki[numert].il3);
stringgrid1.cells[7,numers]:=IntToStr(kom_czworki[numert].ocz3);

stringgrid1.cells[8,numers]:=IntToStr(kom_czworki[numert].il2);
 if kom_czworki[numert].il2=0 then stringgrid1.Cells[9,numers]:='?' else stringgrid1.cells[9,numers]:=FormatFloat('0.00',ile_los/kom_czworki[numert].il2);
stringgrid1.cells[10,numers]:=IntToStr(kom_czworki[numert].ocz2);

wpadlo:=ile_wpadlo(kom_czworki[numert].l1,kom_czworki[numert].l2,kom_czworki[numert].l3,kom_czworki[numert].l4,do2+1);
stringgrid1.cells[11,numers]:='';
 if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
 if wpadlo=4 then stringgrid1.cells[11,numers]:='TAK';

end;

procedure TForm15.Czstocimalejco1Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgrid1.RowCount < 200) then
  begin
    if radiobutton4.Checked then sortujStringGrid(stringgrid1, 2, false);
    if radiobutton5.Checked then sortujStringGrid(stringgrid1, 5, false);
    if radiobutton6.Checked then sortujStringGrid(stringgrid1, 8, false);
  end else
  begin
    if radiobutton4.Checked then sortuj(4,0,ile4);
    if radiobutton5.Checked then sortuj(3,0,ile4);
    if radiobutton6.Checked then sortuj(2,0,ile4);
    wypisz1(zak1,zak2);
  end;
end;

procedure TForm15.Czstocirosnco1Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgrid1.RowCount < 200) then
  begin
    if radiobutton4.Checked then sortujStringGrid(stringgrid1, 2);
    if radiobutton5.Checked then sortujStringGrid(stringgrid1, 5);
    if radiobutton6.Checked then sortujStringGrid(stringgrid1, 8);
  end else
  begin
    if radiobutton4.Checked then sortuj(4,1,ile4);
    if radiobutton5.Checked then sortuj(3,1,ile4);
    if radiobutton6.Checked then sortuj(2,1,ile4);
    wypisz1(zak1,zak2);
  end;
end;

procedure TForm15.StringGrid1ContextPopup(Sender: TObject;  MousePos: TPoint; var Handled: Boolean);
var
  P : TPoint;
begin
  GetCursorPos(P);
if czworki_ then popupmenu1.Popup(P.X, P.Y);   
end;

procedure TForm15.Oczekiwaniemalejco1Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgrid1.RowCount < 200) then
  begin
    if radiobutton4.Checked then sortujStringGrid(stringgrid1, 4, false);
    if radiobutton5.Checked then sortujStringGrid(stringgrid1, 7, false);
    if radiobutton6.Checked then sortujStringGrid(stringgrid1, 10, false);
  end else
  begin
    if radiobutton4.Checked then sortuj(7,0,ile4);
    if radiobutton5.Checked then sortuj(6,0,ile4);
    if radiobutton6.Checked then sortuj(5,0,ile4);
    wypisz1(zak1,zak2);
  end;
end;

procedure TForm15.Oczekiwanierosnco1Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgrid1.RowCount < 200) then
  begin
    if radiobutton4.Checked then sortujStringGrid(stringgrid1, 4);
    if radiobutton5.Checked then sortujStringGrid(stringgrid1, 7);
    if radiobutton6.Checked then sortujStringGrid(stringgrid1, 10);
  end else
  begin
    if radiobutton4.Checked then sortuj(7,1,ile4);
    if radiobutton5.Checked then sortuj(6,1,ile4);
    if radiobutton6.Checked then sortuj(5,1,ile4);
    wypisz1(zak1,zak2);
  end;
end;

procedure TForm15.CheckBox1Click(Sender: TObject);
begin
  wyswietlaj_wynikow.Enabled := not checkbox1.Checked;
  checkbox2.Enabled := not checkbox1.Checked;
  checkbox3.Enabled := checkbox1.Checked;
  spinedit9.Enabled := checkbox1.Checked;
end;

procedure TForm15.wlacz_kontrolki(stan: boolean);
begin
  _okno.Enabled := stan;
  speedbutton1.Visible := stan;
  label20.Visible := not stan;
end;

procedure TForm15.CheckBox3Click(Sender: TObject);
begin
  checkbox1.Enabled := not checkbox3.Checked;
  spinedit9.Enabled := not checkbox3.Checked;
end;

procedure TForm15.Kopiujdozestaww1Click(Sender: TObject);
begin
  form1.dodajDoZesatwow(stringgrid1, 1, 1);
end;

end.
