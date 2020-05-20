unit trojki;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, StdCtrls, ComCtrls, Spin, Buttons,main, Gauges, Menus;

type
  TForm10 = class(TForm)
    StringGrid1: TStringGrid;
    GroupBox2: TGroupBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpeedButton5: TSpeedButton;
    GroupBox3: TGroupBox;
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
    GroupBox4: TGroupBox;
    CheckBox1: TCheckBox;
    RadioButton3: TRadioButton;
    RadioButton7: TRadioButton;
    SpeedButton2: TSpeedButton;
    Gauge1: TGauge;
    PopupMenu1: TPopupMenu;
    Czstocimalejco1: TMenuItem;
    Czstocirosnco1: TMenuItem;
    N1: TMenuItem;
    Maxmalejco1: TMenuItem;
    Maxrosnco1: TMenuItem;
    N2: TMenuItem;
    Oczekiwaniemalejco1: TMenuItem;
    Oczekiwanierosnco1: TMenuItem;
    Label18: TLabel;
    wyswietlaj_wynikow: TSpinEdit;
    Label19: TLabel;
    Button1: TButton;
    SpinEdit9: TSpinEdit;
    SB_pamietaj: TSpeedButton;
    CheckBox3: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure Czstocimalejco1Click(Sender: TObject);
    procedure Czstocirosnco1Click(Sender: TObject);
    procedure Maxmalejco1Click(Sender: TObject);
    procedure Maxrosnco1Click(Sender: TObject);
    procedure Oczekiwaniemalejco1Click(Sender: TObject);
    procedure Oczekiwanierosnco1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure policz(od_,do_:integer);
  procedure sortuj(pozycja,wdol,ile_k:integer);
  procedure wypisz1(od_,do_,ile_k:integer);
  procedure napisz(numers,numert:integer);
  function ile_wpadlo(liczba1,liczba2,liczba3,nr:integer):byte;
  function max(ilosc,na:word):word;
  function oczekuje(od_,do_,na_ile:integer):integer;
    { Public declarations }
  end;

var
  Form10: TForm10;
  trojki:array[1..82160,1..12]of word;

  oczekiwania3:array[1..5000,1..2]of word;

  dwojki_liczby:array[1..80]of byte;
  ilosc_liczb3:byte;
  czy_wybrane_liczby:boolean;

  wybrane,trojki_ok:boolean;

  trojki_:boolean;
  trojki1:byte;
  ile_kom:integer;

  zak1,zak2:word;

  ile3,do_ilu:integer;

  ilosc_trojek,ilosc_trojek2:integer;
  do2,trojka:integer;


implementation
 uses podajliczby, dodatkowe_funkcje;

{$R *.DFM}

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
var help1:byte;
begin
zapisz_opcje('dwojki','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
if radiobutton4.Checked then help1:=1 else
 if radiobutton5.Checked then help1:=2 else help1:=3;
zapisz_opcje('dwojki','sortuj_wedlug_'+prefiks_gry,help1);
zapisz_opcje('dwojki','kazda_liczba_tylko_'+prefiks_gry,checkbox1.Checked);
zapisz_opcje('dwojki','kazda_liczba_razy_'+prefiks_gry,spinedit9.value);
zapisz_opcje('dwojki','wyswietlaj_'+prefiks_gry,wyswietlaj_wynikow.value);
zapisz_opcje('dwojki','od_'+prefiks_gry,spinedit1.value);
zapisz_opcje('dwojki','do_'+prefiks_gry,spinedit2.value);
Action := caFree;
Form10:=nil;
end;

procedure TForm10.FormCreate(Sender: TObject);
var
help1,help2:integer;
pamietaj:boolean;
begin
trojki_ok:=false;
wybrane:=false;
if gra=1 then
 begin
  radiobutton3.Caption:='Wszystkie 80 liczb';
  ilosc_trojek:=82160;
  ilosc_trojek2:=26;
 end;

if gra=2 then
 begin
  radiobutton3.Caption:='Wszystkie 49 liczb';
  ilosc_trojek:=18424;
  ilosc_trojek2:=16;
 end;

if gra=3 then
 begin
  radiobutton3.Caption:='Wszystkie 42 liczby';
  ilosc_trojek:=11480;
  ilosc_trojek2:=14;
 end;

trojki_:=false;
trojki1:=0;

czy_wybrane_liczby:=false;

stringgrid1.ColWidths[0]:=32;
stringgrid1.cells[0,0]:='Lp.';
stringgrid1.ColWidths[1]:=60;
stringgrid1.cells[1,0]:='Trójka';
stringgrid1.ColWidths[2]:=43;
stringgrid1.cells[2,0]:='Iloœæ 3';
stringgrid1.ColWidths[3]:=43;
stringgrid1.cells[3,0]:='Max 3';
stringgrid1.ColWidths[4]:=43;
stringgrid1.cells[4,0]:='Ocz. 3';
stringgrid1.ColWidths[5]:=43;
stringgrid1.cells[5,0]:='Iloœæ 2';
stringgrid1.ColWidths[6]:=43;
stringgrid1.Cells[6,0]:='Max 2';
stringgrid1.ColWidths[7]:=43;
stringgrid1.cells[7,0]:='Ocz. 2';
stringgrid1.ColWidths[8]:=43;
stringgrid1.ColWidths[9]:=43;
stringgrid1.cells[8,0]:='Iloœæ 1';
stringgrid1.colwidths[10]:=43;
stringgrid1.cells[9,0]:='Max 1';
stringgrid1.colwidths[11]:=43;
stringgrid1.cells[10,0]:='Ocz. 1';
stringgrid1.cells[11,0]:='Traf';
stringgrid1.ColWidths[11]:=28;

for help1:=1 to 5000 do stringgrid1.cells[0,help1]:=IntToStr(help1);

help1:=wspolne[gra,1];
help2:=wspolne[gra,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

pamietaj:=wczytaj_opcje('dwojki','pamietaj_ustawienia_'+prefiks_gry,false);
if pamietaj then
 begin
  help1:=wczytaj_opcje('dwojki','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('dwojki','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[gra,1]; help2:=wspolne[gra,2]; end;
 end;

  spinedit1.Value:=help1;
  spinedit2.Value:=help2;
  spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

SB_pamietaj.Down:=pamietaj;
if pamietaj then
 begin
  help1:=wczytaj_opcje('dwojki','sortuj_wedlug_'+prefiks_gry,1);
  if help1=1 then radiobutton4.Checked:=true else
   if help1=2 then radiobutton5.Checked:=true else radiobutton6.Checked:=true;
  checkbox1.Checked:=wczytaj_opcje('dwojki','kazda_liczba_tylko_'+prefiks_gry,false);
  spinedit9.Value:=wczytaj_opcje('dwojki','kazda_liczba_razy_'+prefiks_gry,1);
  wyswietlaj_wynikow.value:=wczytaj_opcje('dwojki','wyswietlaj_'+prefiks_gry,100);
 end;
speedbutton5.Enabled:=false;
end;

procedure TForm10.policz(od_, do_: integer);
var
help1,help2,help3,help4,help5,max1,max2,max3,pomoc,trafionych,ostatnio:integer;
numerek:array[1..3]of integer;
ile,ile_los,min1,min2,min3:integer;
trafien:array[1..3]of integer;
zmienna:real;
liczba:array[1..80] of word;
begin
  form10.Enabled := false;
do2:=do_;
form1.stoper_start;
trojki_:=true;
trojki1:=1;

zak1:=od_;
zak2:=do_;

do_ilu:=0;

gauge1.Progress:=0;
gauge1.MaxValue:=ilosc_trojek;
ile_los:=do_-od_+1;

if wybrane then do_ilu:=ilosc_liczb3 else do_ilu:=ilosc_liczb_gry;

ile:=0;

//stworzenie trojek
if wybrane=false then
 begin
  for help1:=1 to do_ilu do
   for help2:=help1+1 to do_ilu do
    for help3:=help2+1 to do_ilu do
       begin
        inc(ile);
        trojki[ile,1]:=help1;
        trojki[ile,2]:=help2;
        trojki[ile,3]:=help3;
         for help4:=4 to 12 do trojki[ile,help4]:=0;
       end;
 end else
  begin
   for help1:=1 to do_ilu do
    for help2:=help1+1 to do_ilu do
     for help3:=help2+1 to do_ilu do
       begin
        inc(ile);
        trojki[ile,1]:=dwojki_liczby[help1];
        trojki[ile,2]:=dwojki_liczby[help2];
        trojki[ile,3]:=dwojki_liczby[help3];
         for help4:=4 to 12 do trojki[ile,help4]:=0;
       end;
  end;

gauge1.MaxValue:=ile;

ile_kom:=ile;

for help1:=1 to 3 do trafien[help1]:=0;
max1:=0;
max2:=0;
max3:=0;
min1:=losowan;
min2:=losowan;
min3:=losowan;

//obliczenie czestosci
for pomoc:=1 to ile do
 begin
  ostatnio:=0;
  trojka:=pomoc;
  for help1:=od_ to do_ do
   begin
    trafionych:=0;
    for help2:=1 to 3 do if wylosowane[help1,trojki[pomoc,help2]] then inc(trafionych);
    if trafionych>0 then
     begin
      inc(trafien[trafionych]);
      inc(ostatnio);
      oczekiwania3[ostatnio,1]:=help1;
      oczekiwania3[ostatnio,2]:=trafionych;
     end;
   end;

   trojki[pomoc,4]:=trafien[1];     //ilosc 1/3
   trojki[pomoc,5]:=trafien[2];     //ilosc 2/3
   trojki[pomoc,6]:=trafien[3];     //ilosc 3/3

   if trafien[1] + trafien[2] + trafien[3] > 0 then trojki[pomoc,7]:=oczekuje(od_,do_,1) else trojki[pomoc, 7] := ile_los;
   if trafien[2] + trafien[3] > 0 then trojki[pomoc,8]:=oczekuje(od_,do_,2) else trojki[pomoc, 8] := ile_los;
   if trafien[3] > 0 then trojki[pomoc,9]:=oczekuje(od_,do_,3) else trojki[pomoc, 9] := ile_los;

   if trafien[1]+trafien[2]+trafien[3]>1 then trojki[pomoc,10]:=max(ostatnio,1) else trojki[pomoc,10]:= ile_los;     //max 1/3
   if trafien[2]+trafien[3]>1 then trojki[pomoc,11]:=max(ostatnio,2) else trojki[pomoc,11]:= ile_los;     //max 2/3
   if trafien[3]>1 then trojki[pomoc,12]:=max(ostatnio,3) else trojki[pomoc,12]:= ile_los;     //max 3/3

   if trojki[pomoc,4]>max1 then max1:=trojki[pomoc,4];
   if trojki[pomoc,5]>max2 then max2:=trojki[pomoc,5];
   if trojki[pomoc,6]>max3 then max3:=trojki[pomoc,6];
   if trojki[pomoc,4]<min1 then min1:=trojki[pomoc,4];
   if trojki[pomoc,5]<min2 then min2:=trojki[pomoc,5];
   if trojki[pomoc,6]<min3 then min3:=trojki[pomoc,6];
   gauge1.Progress:=pomoc;
   for help4:=1 to 3 do trafien[help4]:=0;
   application.ProcessMessages;
  end;

if radiobutton4.Checked then sortuj(6,0,ile);
if radiobutton5.Checked then sortuj(5,0,ile);
if radiobutton6.checked then sortuj(4,0,ile);

wypisz1(od_,do_,ile);

label12.Caption:=IntToStr(max3);
label13.Caption:=IntToStr(max2);
label14.Caption:=IntToStr(max1);
label15.caption:=IntToStr(min3);
label16.caption:=IntToStr(min2);
label17.caption:=IntToStr(min1);

speedbutton5.Enabled:=true;

form10.Caption:='Dwójki z trójki... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
  form10.Enabled := true;
end;

procedure TForm10.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm10.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm10.SpeedButton1Click(Sender: TObject);
begin
if radiobutton3.Checked then
 begin
  wybrane:=false;
  if (spinedit1.Value<spinedit2.Value) then policz(spinedit1.Value,spinedit2.Value);
  if (spinedit1.Value>spinedit2.Value) then policz(spinedit2.value,spinedit1.value);
 end;
if (radiobutton3.Checked=false) and (czy_wybrane_liczby=true) then
   begin
    wybrane:=true;
    if (spinedit1.Value<spinedit2.Value) then policz(spinedit1.Value,spinedit2.Value);
    if (spinedit1.Value>spinedit2.Value) then policz(spinedit2.value,spinedit1.value);
   end;
end;


procedure TForm10.sortuj(pozycja, wdol,ile_k: integer);
procedure sortuj_wdol(lewy,prawy:integer);
 var
 i,j    : Integer;
 x,help1: Integer;
 temp:array[1..12]of word;
  begin
   i:=lewy;
   j:=prawy;
   X:=trojki[(lewy+prawy) div 2,pozycja];
   Repeat
    While trojki[i,pozycja]>x do inc(i);
    While x>trojki[j,pozycja] do dec(j);
     if i<=j Then
      Begin
       for help1:=1 to 12 do temp[help1]:=trojki[i,help1];
       for help1:=1 to 12 do trojki[i,help1]:=trojki[j,help1];
       for help1:=1 to 12 do trojki[j,help1]:=temp[help1];
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
 x,help1: Integer;
 temp:array[1..12]of word;
  begin
   i:=lewy;
   j:=prawy;
   X:=trojki[(lewy+prawy) div 2,pozycja];
   Repeat
    While trojki[i,pozycja]<x do inc(i);
    While x<trojki[j,pozycja] do dec(j);
     if i<=j Then
      Begin
       for help1:=1 to 12 do temp[help1]:=trojki[i,help1];
       for help1:=1 to 12 do trojki[i,help1]:=trojki[j,help1];
       for help1:=1 to 12 do trojki[j,help1]:=temp[help1];
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore(lewy,j);
   if i<prawy Then sortuj_wgore(i,prawy);
  end;
begin
  case wdol of
   0: sortuj_wdol(1,ile_k);
   1: sortuj_wgore(1,ile_k);
  end;
end;


procedure TForm10.SpeedButton5Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='DwójkiTrójki';
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm|Plik zestawu liczb (*.zes)|*.zes';

if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid1.rowcount-1 do writeln(filename,stringgrid1.cells[0,help1]+';'+stringgrid1.cells[1,help1]+';'+stringgrid1.cells[2,help1]+';'+stringgrid1.cells[3,help1]+';'+stringgrid1.cells[4,help1]+';'+stringgrid1.cells[5,help1]+';'+stringgrid1.cells[6,help1]+';'+stringgrid1.cells[7,help1]+';'+stringgrid1.cells[8,help1]+';'+stringgrid1.cells[9,help1]+';'+stringgrid1.cells[10,help1]+';'+stringgrid1.cells[11,help1]);
  closefile(filename);
 end else
  if form1.SaveDialog1.FilterIndex=2 then form1.zapiszHTML(form10.stringgrid1,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Dwójki z Trójki','',1,zak1,zak2) else zapisz_tablice_zestawow(form10.stringgrid1,1,form1.savedialog1.filename);


form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

procedure TForm10.RadioButton3Click(Sender: TObject);
begin
if radiobutton3.Checked then speedbutton2.Enabled:=false;
end;

procedure TForm10.RadioButton7Click(Sender: TObject);
begin
if radiobutton7.Checked then speedbutton2.Enabled:=true;
end;

procedure TForm10.SpeedButton2Click(Sender: TObject);
begin
liczby_dla_opcji:=4;
Application.CreateForm(TForm16,form16);
form16.Showmodal;
if (ilosc_liczb3>2) and (ilosc_liczb3<81) then czy_wybrane_liczby:=true else czy_wybrane_liczby:=false;
end;

procedure TForm10.wypisz1(od_,do_,ile_k:integer);
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

    help1:=do_ilu*ile_razy div 3;
    help2:=do_ilu*ile_razy mod 3;

    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ile_k then stringgrid1.RowCount:=ile_k+1 else stringgrid1.rowcount:=help1+help6+1;

    help3:=0;
    help4:=0;

     while (help3<help1) and (help4<ile_k) do
      begin
       inc(help4);
        if (liczba[trojki[help4,1]]<ile_razy) and (liczba[trojki[help4,2]]<ile_razy) and (liczba[trojki[help4,3]]<ile_razy) then
         begin
          inc(help3);
          napisz(help3,help4);
          inc(liczba[trojki[help4,1]]);
          inc(liczba[trojki[help4,2]]);
          inc(liczba[trojki[help4,3]]);
         end;
      end;



    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ile_k) do
        begin
         inc(help4);
         help5:=0;
         if (liczba[trojki[help4,1]]<ile_razy) then inc(help5);
         if (liczba[trojki[help4,2]]<ile_razy) then inc(help5);
         if (liczba[trojki[help4,3]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz(help3,help4);
            inc(liczba[trojki[help4,1]]);
            inc(liczba[trojki[help4,2]]);
            inc(liczba[trojki[help4,3]]);
           end;
        end;
     end;
    if (help4=ile_k) and (help3<help1+help6) then stringgrid1.RowCount:=help3+1;
 end else
 begin
     if ile_k>wyswietlaj_wynikow.Value then help1:=wyswietlaj_wynikow.Value else help1:=ile_k;
     stringgrid1.RowCount:=help1+1;
     for help4:=1 to help1 do napisz(help4,help4);

 end;

end;

function TForm10.ile_wpadlo(liczba1, liczba2, liczba3, nr: integer): byte;
var
wpadlo:byte;
begin
wpadlo:=0;
if wylosowane[nr,liczba1] then inc(wpadlo);
if wylosowane[nr,liczba2] then inc(wpadlo);
if wylosowane[nr,liczba3] then inc(wpadlo);
result:=wpadlo;
end;

procedure TForm10.StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
var
  P : TPoint;
begin
  GetCursorPos(P);
if trojki_ then popupmenu1.Popup(P.X, P.Y);
end;

function TForm10.max(ilosc,na:word): word;
var
help1,help2,help3,help4:integer;
begin
help2:=0;
help4:=0;

 while help2<ilosc do
  begin
   help1:=help2-1;

   repeat
    inc(help1);
   until oczekiwania3[help1,2]>=na;

    help2:=help1;
   repeat
    inc(help2);
   until (oczekiwania3[help2,2]>=na) or (help2=ilosc);

   if help2<>ilosc then
    begin
     help3:=oczekiwania3[help2,1]-oczekiwania3[help1,1]-1;
      if help3>help4 then help4:=help3;
    end;
  end;

max:=help4;
end;

procedure TForm10.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked then wyswietlaj_wynikow.Enabled:=false else wyswietlaj_wynikow.Enabled:=true;
  checkbox3.Enabled := checkbox1.Checked;
end;

procedure TForm10.Czstocimalejco1Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgrid1.RowCount < 200) then
  begin
    if radiobutton4.Checked then sortujStringGrid(stringgrid1, 2, false);
    if radiobutton5.Checked then sortujStringGrid(stringgrid1, 5, false);
    if radiobutton6.Checked then sortujStringGrid(stringgrid1, 8, false);
  end else
  begin
    if radiobutton4.Checked then sortuj(6,0,ile_kom);
    if radiobutton5.Checked then sortuj(5,0,ile_kom);
    if radiobutton6.Checked then sortuj(4,0,ile_kom);
    wypisz1(zak1,zak2,ile_kom);
  end;
end;

procedure TForm10.Czstocirosnco1Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgrid1.RowCount < 200) then
  begin
    if radiobutton4.Checked then sortujStringGrid(stringgrid1, 2);
    if radiobutton5.Checked then sortujStringGrid(stringgrid1, 5);
    if radiobutton6.Checked then sortujStringGrid(stringgrid1, 8);
  end else
  begin
    if radiobutton4.Checked then sortuj(6,1,ile_kom);
    if radiobutton5.Checked then sortuj(5,1,ile_kom);
    if radiobutton6.Checked then sortuj(4,1,ile_kom);
    wypisz1(zak1,zak2,ile_kom);
  end;
end;

procedure TForm10.Maxmalejco1Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgrid1.RowCount < 200) then
  begin
    if radiobutton4.Checked then sortujStringGrid(stringgrid1, 3, false);
    if radiobutton5.Checked then sortujStringGrid(stringgrid1, 6, false);
    if radiobutton6.Checked then sortujStringGrid(stringgrid1, 9, false);
  end else
  begin
    if radiobutton4.Checked then sortuj(12,0,ile_kom);
    if radiobutton5.Checked then sortuj(11,0,ile_kom);
    if radiobutton6.Checked then sortuj(10,0,ile_kom);
    wypisz1(zak1,zak2,ile_kom);
  end;
end;

procedure TForm10.Maxrosnco1Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgrid1.RowCount < 200) then
  begin
    if radiobutton4.Checked then sortujStringGrid(stringgrid1, 3);
    if radiobutton5.Checked then sortujStringGrid(stringgrid1, 6);
    if radiobutton6.Checked then sortujStringGrid(stringgrid1, 9);
  end else
  begin
    if radiobutton4.Checked then sortuj(12,1,ile_kom);
    if radiobutton5.Checked then sortuj(11,1,ile_kom);
    if radiobutton6.Checked then sortuj(10,1,ile_kom);
    wypisz1(zak1,zak2,ile_kom);
  end;
end;

procedure TForm10.Oczekiwaniemalejco1Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgrid1.RowCount < 200) then
  begin
    if radiobutton4.Checked then sortujStringGrid(stringgrid1, 4, false);
    if radiobutton5.Checked then sortujStringGrid(stringgrid1, 7, false);
    if radiobutton6.Checked then sortujStringGrid(stringgrid1, 10, false);
  end else
  begin
    if radiobutton4.Checked then sortuj(9,0,ile_kom);
    if radiobutton5.Checked then sortuj(8,0,ile_kom);
    if radiobutton6.Checked then sortuj(7,0,ile_kom);
    wypisz1(zak1,zak2,ile_kom);
  end;
end;

procedure TForm10.Oczekiwanierosnco1Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgrid1.RowCount < 200) then
  begin
    if radiobutton4.Checked then sortujStringGrid(stringgrid1, 4);
    if radiobutton5.Checked then sortujStringGrid(stringgrid1, 7);
    if radiobutton6.Checked then sortujStringGrid(stringgrid1, 10);
  end else
  begin
    if radiobutton4.Checked then sortuj(9,1,ile_kom);
    if radiobutton5.Checked then sortuj(8,1,ile_kom);
    if radiobutton6.Checked then sortuj(7,1,ile_kom);
    wypisz1(zak1,zak2,ile_kom);
  end;
end;

procedure TForm10.napisz(numers, numert: integer);
var wpadlo:byte;
begin
stringgrid1.cells[1,numers]:=(IntToStr(trojki[numert,1])+', '+IntToStr(trojki[numert,2])+', '+IntToStr(trojki[numert,3]));

stringgrid1.cells[2,numers]:=IntToStr(trojki[numert,6]);
 //if trojki[numert,12]=0 then stringgrid1.cells[3,numers]:='?' else stringgrid1.cells[3,numers]:=IntToStr(trojki[numert,12]);
 stringgrid1.cells[3,numers]:=IntToStr(trojki[numert,12]);
stringgrid1.cells[4,numers]:=IntToStr(trojki[numert,9]);

stringgrid1.cells[5,numers]:=IntToStr(trojki[numert,5]);
 //if trojki[numert,11]=0 then stringgrid1.cells[6,numers]:='?' else stringgrid1.cells[6,numers]:=IntToStr(trojki[numert,11]);
 stringgrid1.cells[6,numers]:=IntToStr(trojki[numert,11]);
stringgrid1.cells[7,numers]:=IntToStr(trojki[numert,8]);

stringgrid1.cells[8,numers]:=IntToStr(trojki[numert,4]);
 //if trojki[numert,10]=0 then stringgrid1.cells[9,numers]:='?' else stringgrid1.cells[9,numers]:=IntToStr(trojki[numert,10]);
 stringgrid1.cells[9,numers]:=IntToStr(trojki[numert,10]);
stringgrid1.cells[10,numers]:=IntToStr(trojki[numert,7]);

wpadlo:=ile_wpadlo(trojki[numert,1],trojki[numert,2],trojki[numert,3],do2+1);
stringgrid1.cells[11,numers]:='';
 if wpadlo<>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
 if wpadlo=3 then stringgrid1.cells[11,numers]:='TAK';
end;

function TForm10.oczekuje(od_, do_, na_ile: integer): integer;
var
help1,help2,help3:integer;
begin
  help1 := -1;
help2:=do_+1;
 repeat
  help3:=0;
  inc(help1);
  dec(help2);
   if wylosowane[help2,trojki[trojka,1]] then inc(help3);
   if wylosowane[help2,trojki[trojka,2]] then inc(help3);
   if wylosowane[help2,trojki[trojka,3]] then inc(help3);
 until (help2=od_) or (help3>=na_ile);
oczekuje:=help1;
end;

procedure TForm10.Button1Click(Sender: TObject);
var
help1:integer;
filename:textfile;
linia:string;
begin
form1.SaveDialog1.FileName:='DwójkiTrójki';

if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  linia:='';
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=1 to stringgrid1.rowcount-1 do linia:=linia+stringgrid1.cells[1,help1]+';';
  writeln(filename,linia);
  closefile(filename);
 end;
end;

procedure TForm10.CheckBox3Click(Sender: TObject);
begin
  checkbox1.Enabled := not checkbox3.Checked;
  spinedit9.Enabled := not checkbox3.Checked;
end;

end.
