unit piatki;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, main,
  StdCtrls, Spin, Grids, Gauges, Buttons, Menus;

type
  TForm23 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
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
    Label20: TLabel;
    N1: TMenuItem;
    KopiujdoZestaww1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Czstocimalejco1Click(Sender: TObject);
    procedure Czstocirosnco1Click(Sender: TObject);
    procedure StringGrid1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure KopiujdoZestaww1Click(Sender: TObject);
  private

    { Private declarations }
  public
   procedure policz(od_,do_:integer);
   procedure sortuj(pozycja,wdol,ilosc:integer);
   procedure wypisz1(od_,do_:integer);
   procedure napisz(numers,numert:integer);

   function oczekuje(ilosc,nr_zestawu,od_,do_:integer):integer;
   function ile_wpadlo(liczba1,liczba2,liczba3,liczba4,liczba5,nr:integer):byte;
    { Public declarations }
  end;
 
  komb5 = packed record
    l1,l2,l3,l4,l5,il5:byte;
    il4,il3: WORD;
  end;




var
  Form23: TForm23;
  czy_piatki,wybrane:boolean;
  zak1,zak2,ile_k,do_ilu,ile_los,min4:integer;
  kom_piatki:array of komb5;
  piatki_liczby:array[1..80]of byte;
  ilosc_liczb8:byte;
  ilosc_kk:integer;

  piatki1:byte;
  piatki_:boolean;

  do2,od2:integer;



implementation
 uses podajliczby, Addins;
{$R *.DFM}

{ DONE : wczytanie ustawien }
procedure TForm23.FormCreate(Sender: TObject);
var
pamietaj:boolean;
help1,help2:integer;
begin
setlength(kom_piatki,1);
piatki1:=0;
piatki_:=false;
czy_piatki:=false;

if Gra.Numer=1 then
 begin
  radiobutton3.Caption:='Wszystkie 80 liczb';
  ilosc_kk:=24040016;
 end;

if Gra.Numer=2 then
 begin
  radiobutton3.Caption:='Wszystkie 49 liczb';
  ilosc_kk:=1906884;
 end;

if Gra.Numer=3 then
 begin
  radiobutton3.Caption:='Wszystkie 42 liczby';
  ilosc_kk:=850668;
 end;   

stringgrid1.ColWidths[0]:=32;
stringgrid1.cells[0,0]:='Lp.';
stringgrid1.ColWidths[1]:=95;
stringgrid1.cells[1,0]:='Pi¹tka';
stringgrid1.ColWidths[2]:=43;
stringgrid1.cells[2,0]:='Iloœæ 5';
stringgrid1.ColWidths[3]:=43;
stringgrid1.cells[3,0]:='Œr. 5 co';
stringgrid1.ColWidths[4]:=43;
stringgrid1.cells[4,0]:='Brak 5';
stringgrid1.ColWidths[5]:=43;
stringgrid1.cells[5,0]:='Iloœæ 4';
stringgrid1.ColWidths[6]:=43;
stringgrid1.Cells[6,0]:='Œr. 4 co';
stringgrid1.ColWidths[7]:=43;
stringgrid1.cells[7,0]:='Brak 4';
stringgrid1.ColWidths[8]:=43;
stringgrid1.ColWidths[9]:=43;
stringgrid1.cells[8,0]:='Iloœæ 3';
stringgrid1.colwidths[10]:=43;
stringgrid1.cells[9,0]:='Œr. 3 co';
stringgrid1.colwidths[10]:=43;
stringgrid1.cells[10,0]:='Brak 3';

stringgrid1.cells[11,0]:='Traf';
stringgrid1.ColWidths[11]:=28;

for help1:=1 to 5000 do stringgrid1.cells[0,help1]:=IntToStr(help1);

help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

pamietaj:=wczytaj_opcje('piatki','pamietaj_ustawienia_'+prefiks_gry,false);
if pamietaj then
 begin
  help1:=wczytaj_opcje('piatki','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('piatki','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

  spinedit1.Value:=help1;
  spinedit2.Value:=help2;
  spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

SB_pamietaj.Down:=pamietaj;
if pamietaj then
 begin
  help1:=wczytaj_opcje('piatki','sortuj_wedlug_'+prefiks_gry,1);
  if help1=1 then radiobutton4.Checked:=true else
   if help1=2 then radiobutton5.Checked:=true else radiobutton6.Checked:=true;
  checkbox1.Checked:=wczytaj_opcje('piatki','kazda_liczba_tylko_'+prefiks_gry,false);
  spinedit9.Value:=wczytaj_opcje('piatki','kazda_liczba_razy_'+prefiks_gry,1);
  wyswietlaj_wynikow.value:=wczytaj_opcje('piatki','wyswietlaj_'+prefiks_gry,100);
  checkbox2.checked:=wczytaj_opcje('piatki','redukuj_'+prefiks_gry,false);
 end;
speedbutton5.Enabled:=false;

end;

procedure TForm23.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm23.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm23.RadioButton3Click(Sender: TObject);
begin
if radiobutton3.checked then speedbutton2.Enabled:=false;
end;

procedure TForm23.RadioButton7Click(Sender: TObject);
begin
if radiobutton7.Checked then speedbutton2.Enabled:=true;
end;

procedure TForm23.SpeedButton5Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='Pi¹tki';
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm|Plik zestawu liczb (*.zes)|*.zes';
if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid1.rowcount-1 do writeln(filename,stringgrid1.cells[0,help1]+';'+stringgrid1.cells[1,help1]+';'+stringgrid1.cells[2,help1]+';'+stringgrid1.cells[3,help1]+';'+stringgrid1.cells[4,help1]+';'+stringgrid1.cells[5,help1]+';'+stringgrid1.cells[6,help1]+';'+stringgrid1.cells[7,help1]+';'+stringgrid1.cells[8,help1]+';'+stringgrid1.cells[9,help1]+';'+stringgrid1.cells[10,help1]);
  closefile(filename);
 end else if form1.SaveDialog1.FilterIndex=2 then form1.zapiszHTML(form23.stringgrid1,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pi¹tki','',1,zak1,zak2) else zapisz_tablice_zestawow(form23.stringgrid1,1,form1.savedialog1.filename);
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

procedure TForm23.policz(od_, do_: integer);
var
help1,help2,help3,help4,help5,max2,max3,max4,pomoc,trafionych:integer;
ile,min2,min3:integer;
trafien:array[0..5]of integer;
zmienna:real;
liczba:array[1..80] of word;
begin
  speedbutton1.Visible := false;
  label20.Visible := true;
  GroupBox1.Enabled := false;
  Application.ProcessMessages();
do2:=do_;
form1.stoper_start;
piatki1:=1;
piatki_:=true;
zak1:=od_;
zak2:=do_;
gauge1.Progress:=0;
ile_los:=do_-od_+1;
ile:=0;

if wybrane then do_ilu:=ilosc_liczb8 else do_ilu:=ilosc_liczb_gry;

  for help1:=1 to do_ilu do
   for help2:=help1+1 to do_ilu do
    for help3:=help2+1 to do_ilu do
     for help4:=help3+1 to do_ilu do
      for help5:=help4+1 to do_ilu do inc(ile);

setlength(kom_piatki,ile+1);
gauge1.MaxValue:=ile;
gauge1.Progress:=0;

ile:=0;

if wybrane=false then
 begin
  for help1:=1 to do_ilu do
   for help2:=help1+1 to do_ilu do
    for help3:=help2+1 to do_ilu do
     for help4:=help3+1 to do_ilu do
      for help5:=help4+1 to do_ilu do
       begin
        inc(ile);
        kom_piatki[ile].l1:=help1;
        kom_piatki[ile].l2:=help2;
        kom_piatki[ile].l3:=help3;
        kom_piatki[ile].l4:=help4;
        kom_piatki[ile].l5:=help5;
        gauge1.Progress:=ile;
       end;
 end else
 begin
  for help1:=1 to do_ilu do
   for help2:=help1+1 to do_ilu do
    for help3:=help2+1 to do_ilu do
     for help4:=help3+1 to do_ilu do
      for help5:=help4+1 to do_ilu do
       begin
        inc(ile);
        kom_piatki[ile].l1:=piatki_liczby[help1];
        kom_piatki[ile].l2:=piatki_liczby[help2];
        kom_piatki[ile].l3:=piatki_liczby[help3];
        kom_piatki[ile].l4:=piatki_liczby[help4];
        kom_piatki[ile].l5:=piatki_liczby[help5];
        gauge1.Progress:=ile;
       end;
 end;




for help1:=0 to 5 do trafien[help1]:=0;
max2:=0;
max3:=0;
max4:=0;
min2:=losowan;
min3:=losowan;
min4:=losowan;

//ile:=1000;
ile_k:=ile;
gauge1.Progress:=0;
gauge1.MaxValue:=ile;

//obliczenie czestosci
for pomoc:=1 to ile do
 begin
  for help1:=od_ to do_ do
   begin
    trafionych:=0;
    if wylosowane[help1,kom_piatki[pomoc].l1] then inc(trafionych);
    if wylosowane[help1,kom_piatki[pomoc].l2] then inc(trafionych);
    if wylosowane[help1,kom_piatki[pomoc].l3] then inc(trafionych);
    if wylosowane[help1,kom_piatki[pomoc].l4] then inc(trafionych);
    if wylosowane[help1,kom_piatki[pomoc].l5] then inc(trafionych);
    inc(trafien[trafionych]);
   end;
   kom_piatki[pomoc].il5:=trafien[5];
   kom_piatki[pomoc].il4:=trafien[4];
   kom_piatki[pomoc].il3:=trafien[3];
   if kom_piatki[pomoc].il5>max4 then max4:=kom_piatki[pomoc].il5;
   if kom_piatki[pomoc].il4>max3 then max3:=kom_piatki[pomoc].il4;
   if kom_piatki[pomoc].il3>max2 then max2:=kom_piatki[pomoc].il3;
   if kom_piatki[pomoc].il5<min4 then min4:=kom_piatki[pomoc].il5;
   if kom_piatki[pomoc].il4<min3 then min3:=kom_piatki[pomoc].il4;
   if kom_piatki[pomoc].il3<min2 then min2:=kom_piatki[pomoc].il3;
   gauge1.Progress:=pomoc;
   for help4:=0 to 5 do trafien[help4]:=0;
   Application.ProcessMessages();
  end;

if radiobutton4.Checked then sortuj(5,0,ile);
if radiobutton5.Checked then sortuj(4,0,ile);
if radiobutton6.checked then sortuj(3,0,ile);

wypisz1(od_,do_);

speedbutton5.Enabled:=true;

label12.Caption:=IntToStr(max4);
label13.Caption:=IntToStr(max3);
label14.Caption:=IntToStr(max2);
label15.caption:=IntToStr(min4);
label16.caption:=IntToStr(min3);
label17.caption:=IntToStr(min2);

form23.Caption:='Pi¹tki...' +IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
  speedbutton1.Visible := true;
  label20.Visible := false;
  GroupBox1.Enabled := true;
end;

procedure TForm23.SpeedButton1Click(Sender: TObject);
begin
if radiobutton3.Checked then
 begin
  wybrane:=false;
  if (spinedit1.Value<spinedit2.Value) then policz(spinedit1.Value,spinedit2.Value);
  if (spinedit1.Value>spinedit2.Value) then policz(spinedit2.value,spinedit1.value);
 end
  else if czy_piatki=true then
   begin
    wybrane:=true;
    if (spinedit1.Value<spinedit2.Value) then policz(spinedit1.Value,spinedit2.Value);
    if (spinedit1.Value>spinedit2.Value) then policz(spinedit2.value,spinedit1.value);
   end;
end;

{ DONE : zapisanie ustawien }
procedure TForm23.FormClose(Sender: TObject; var Action: TCloseAction);
var help1:byte;
begin
zapisz_opcje('piatki','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
if radiobutton4.Checked then help1:=1 else
 if radiobutton5.Checked then help1:=2 else help1:=3;
zapisz_opcje('piatki','sortuj_wedlug_'+prefiks_gry,help1);
zapisz_opcje('piatki','kazda_liczba_tylko_'+prefiks_gry,checkbox1.Checked);
zapisz_opcje('piatki','kazda_liczba_razy_'+prefiks_gry,spinedit9.value);
zapisz_opcje('piatki','wyswietlaj_'+prefiks_gry,wyswietlaj_wynikow.value);
zapisz_opcje('piatki','redukuj_'+prefiks_gry,checkbox2.checked);
zapisz_opcje('piatki','od_'+prefiks_gry,spinedit1.value);
zapisz_opcje('piatki','do_'+prefiks_gry,spinedit2.value);
kom_piatki:=nil;
action:=cafree;
form23:=nil;
end;

procedure TForm23.sortuj(pozycja, wdol, ilosc: integer);
procedure sortuj_wdol4(lewy,prawy:integer);
 var
 i,j    : Integer;
 x : Integer;
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_piatki[(lewy+prawy) div 2].il5;
   Repeat
    While kom_piatki[i].il5>x do inc(i);
    While x>kom_piatki[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_piatki[i];
       kom_piatki[i]:=kom_piatki[j];
       kom_piatki[j]:=wpis;
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
   X:=kom_piatki[(lewy+prawy) div 2].il5;
   Repeat
    While kom_piatki[i].il5<x do inc(i);
    While x<kom_piatki[j].il5 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_piatki[i];
       kom_piatki[i]:=kom_piatki[j];
       kom_piatki[j]:=wpis;
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
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_piatki[(lewy+prawy) div 2].il4;
   Repeat
    While kom_piatki[i].il4>x do inc(i);
    While x>kom_piatki[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_piatki[i];
       kom_piatki[i]:=kom_piatki[j];
       kom_piatki[j]:=wpis;
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
   X:=kom_piatki[(lewy+prawy) div 2].il4;
   Repeat
    While kom_piatki[i].il4<x do inc(i);
    While x<kom_piatki[j].il4 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_piatki[i];
       kom_piatki[i]:=kom_piatki[j];
       kom_piatki[j]:=wpis;
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
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_piatki[(lewy+prawy) div 2].il3;
   Repeat
    While kom_piatki[i].il3>x do inc(i);
    While x>kom_piatki[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_piatki[i];
       kom_piatki[i]:=kom_piatki[j];
       kom_piatki[j]:=wpis;
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
 wpis:komb5;
  begin
   i:=lewy;
   j:=prawy;
   X:=kom_piatki[(lewy+prawy) div 2].il3;
   Repeat
    While kom_piatki[i].il3<x do inc(i);
    While x<kom_piatki[j].il3 do dec(j);
     if i<=j Then
      Begin
       wpis:=kom_piatki[i];
       kom_piatki[i]:=kom_piatki[j];
       kom_piatki[j]:=wpis;
       inc(i);
       dec(j);
      End;
   Until i>j;
   if lewy<j Then sortuj_wgore2(lewy,j);
   if i<prawy Then sortuj_wgore2(i,prawy);
  end;


begin
if wdol=0 then
 case pozycja of
  3:sortuj_wdol2(1,ilosc);
  4:sortuj_wdol3(1,ilosc);
  5:sortuj_wdol4(1,ilosc);
 end;
if wdol=1 then
 case pozycja of
  3:sortuj_wgore2(1,ilosc);
  4:sortuj_wgore3(1,ilosc);
  5:sortuj_wgore4(1,ilosc);
 end;

end;

procedure TForm23.wypisz1(od_, do_: integer);
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

    help1:=do_ilu*ile_razy div 5;
    help2:=do_ilu*ile_razy mod 5;

    if help2>0 then help6:=1 else help6:=0;
    if help1+help6>ile_k then stringgrid1.RowCount:=ile_k+1 else stringgrid1.rowcount:=help1+help6+1;

    help3:=0;
    help4:=0;

     while (help3<help1) and (help4<ile_k) do
      begin
       inc(help4);
        if (liczba[kom_piatki[help4].l1]<ile_razy) and (liczba[kom_piatki[help4].l2]<ile_razy) and (liczba[kom_piatki[help4].l3]<ile_razy) and (liczba[kom_piatki[help4].l4]<ile_razy) and (liczba[kom_piatki[help4].l5]<ile_razy) then
         begin
          inc(help3);
          napisz(help3,help4);
          inc(liczba[kom_piatki[help4].l1]);
          inc(liczba[kom_piatki[help4].l2]);
          inc(liczba[kom_piatki[help4].l3]);
          inc(liczba[kom_piatki[help4].l4]);
          inc(liczba[kom_piatki[help4].l5]);
         end;
      end;
    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ile_k) do
        begin
         inc(help4);
         help5:=0;
         if (liczba[kom_piatki[help4].l1]<ile_razy) then inc(help5);
         if (liczba[kom_piatki[help4].l2]<ile_razy) then inc(help5);
         if (liczba[kom_piatki[help4].l3]<ile_razy) then inc(help5);
         if (liczba[kom_piatki[help4].l4]<ile_razy) then inc(help5);
         if (liczba[kom_piatki[help4].l5]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            napisz(help3,help4);
            inc(liczba[kom_piatki[help4].l1]);
            inc(liczba[kom_piatki[help4].l2]);
            inc(liczba[kom_piatki[help4].l3]);
            inc(liczba[kom_piatki[help4].l4]);
            inc(liczba[kom_piatki[help4].l5]);
           end;
        end;
     end;
    if (help4=ile_k) and (help3<help1+help6) then stringgrid1.RowCount:=help3+1; 
 end else
 begin
  if checkbox2.Checked=false then
   begin
     if ile_k>wyswietlaj_wynikow.Value then help1:=wyswietlaj_wynikow.Value else help1:=ile_k;
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
         if kom_piatki[help1].il5=0 then
          begin
           inc(help2);
           napisz(help2,help1);
          end;
        until (help2=wyswietlaj_wynikow.Value) or (help1=ile_k);
        stringgrid1.RowCount:=help2+1;
       end;
    end;
 end;
end;

function TForm23.oczekuje(ilosc, nr_zestawu, od_, do_: integer): integer;
var
help5,help3,help4:integer;
begin
help3:=do_+1;
help5:=0;
repeat
 help3:=help3-1;
 help4:=0;
  if wylosowane[help3,kom_piatki[nr_zestawu].l1] then inc(help4);// if czy_byla_liczba(kom_czworki[nr_zestawu].l1,help3)=true then inc(help4);
  if wylosowane[help3,kom_piatki[nr_zestawu].l2] then inc(help4);// if czy_byla_liczba(kom_czworki[nr_zestawu].l2,help3)=true then inc(help4);
  if wylosowane[help3,kom_piatki[nr_zestawu].l3] then inc(help4);// if czy_byla_liczba(kom_czworki[nr_zestawu].l3,help3)=true then inc(help4);
  if wylosowane[help3,kom_piatki[nr_zestawu].l4] then inc(help4);// if czy_byla_liczba(kom_czworki[nr_zestawu].l4,help3)=true then inc(help4);
  if wylosowane[help3,kom_piatki[nr_zestawu].l5] then inc(help4);
 if help4<ilosc then inc(help5);
until (help4>=ilosc) or (help3=od_);
oczekuje:=help5;
end;

procedure TForm23.SpeedButton2Click(Sender: TObject);
begin
liczby_dla_opcji:=8;
Application.CreateForm(TForm16,form16);
form16.Showmodal;
if (ilosc_liczb8>4) and (ilosc_liczb8<81) then czy_piatki:=true else czy_piatki:=false;
end;

function TForm23.ile_wpadlo(liczba1, liczba2, liczba3, liczba4, liczba5,  nr: integer): byte;
var
wpadlo:byte;
begin
wpadlo:=0;
if wylosowane[nr,liczba1] then inc(wpadlo);
if wylosowane[nr,liczba2] then inc(wpadlo);
if wylosowane[nr,liczba3] then inc(wpadlo);
if wylosowane[nr,liczba4] then inc(wpadlo);
if wylosowane[nr,liczba5] then inc(wpadlo);
result:=wpadlo;
end;

procedure TForm23.napisz(numers, numert: integer);
var wpadlo:byte;
begin
    stringgrid1.cells[1,numers]:=(IntToStr(kom_piatki[numert].l1)+', '+IntToStr(kom_piatki[numert].l2)+', '+IntToStr(kom_piatki[numert].l3)+', '+IntToStr(kom_piatki[numert].l4)+', '+IntToStr(kom_piatki[numert].l5));
    stringgrid1.cells[2,numers]:=IntToStr(kom_piatki[numert].il5);
     if kom_piatki[numert].il5<>0 then stringgrid1.cells[3,numers]:=FormatFloat('0.00',ile_los/kom_piatki[numert].il5) else stringgrid1.Cells[3,numers]:='?';
    stringgrid1.cells[4,numers]:=IntToStr(oczekuje(5,numert,od2,do2));
    stringgrid1.cells[5,numers]:=IntToStr(kom_piatki[numert].il4);
     if kom_piatki[numert].il4<>0 then stringgrid1.cells[6,numers]:=FormatFloat('0.00',ile_los/kom_piatki[numert].il4) else stringgrid1.Cells[6,numers]:='?';
    stringgrid1.cells[7,numers]:=IntToStr(oczekuje(4,numert,od2,do2));
    stringgrid1.cells[8,numers]:=IntToStr(kom_piatki[numert].il3);
     if kom_piatki[numert].il3<>0 then stringgrid1.cells[9,numers]:=FormatFloat('0.00',ile_los/kom_piatki[numert].il3) else stringgrid1.Cells[9,numers]:='?';
    stringgrid1.cells[10,numers]:=IntToStr(oczekuje(3,numert,od2,do2));
    wpadlo:=ile_wpadlo(kom_piatki[numert].l1,kom_piatki[numert].l2,kom_piatki[numert].l3,kom_piatki[numert].l4,kom_piatki[numert].l5,do2+1);
    stringgrid1.cells[11,numers]:='';
    if wpadlo>0 then stringgrid1.cells[11,numers]:=IntToStr(wpadlo);
    if wpadlo=5 then stringgrid1.cells[11,numers]:='TAK';
end;

procedure TForm23.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked then wyswietlaj_wynikow.Enabled:=false else wyswietlaj_wynikow.Enabled:=true;
if checkbox1.checked then checkbox2.Enabled:=false else checkbox2.Enabled:=true;
end;

procedure TForm23.Czstocimalejco1Click(Sender: TObject);
begin
if radiobutton4.Checked then sortuj(5,0,ile_k);
if radiobutton5.Checked then sortuj(4,0,ile_k);
if radiobutton6.Checked then sortuj(3,0,ile_k);
wypisz1(od2,do2);
end;

procedure TForm23.Czstocirosnco1Click(Sender: TObject);
begin
if radiobutton4.Checked then sortuj(5,1,ile_k);
if radiobutton5.Checked then sortuj(4,1,ile_k);
if radiobutton6.Checked then sortuj(3,1,ile_k);
wypisz1(od2,do2);
end;

procedure TForm23.StringGrid1ContextPopup(Sender: TObject;  MousePos: TPoint; var Handled: Boolean);
var
  P : TPoint;
begin
  GetCursorPos(P);
if piatki_ then popupmenu1.Popup(P.X, P.Y); 
end;

procedure TForm23.KopiujdoZestaww1Click(Sender: TObject);
begin
  form1.dodajDoZesatwow(stringgrid1, 1, 1);
end;

end.
