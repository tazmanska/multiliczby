unit okresy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, main,
  StdCtrls, Spin, ExtCtrls, Grids, Gauges, Buttons;

type
  TForm21 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    SpeedButton1: TSpeedButton;
    Gauge1: TGauge;
    Label2: TLabel;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    SpinEdit3: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    StringGrid1: TStringGrid;
    CheckBox1: TCheckBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CheckBox2: TCheckBox;
    SpinEdit4: TSpinEdit;
    SB_pamietaj: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
   procedure zmaz_wykres;
   procedure oblicz(do_,dl_o:word);
   procedure rysuj_wykres(liczba_,ilosc,dlugosc,max,min:word);

    { Public declarations }
  end;

var
  Form21: TForm21;
  liczba:array[1..80,1..20]of byte;
  dlugosc_o,ilosc_o,max_,min_, do_los, zazebiaj : word;
  czy_liczone:boolean;

implementation

uses Addins, Stale;

{$R *.DFM}

procedure TForm21.FormClose(Sender: TObject; var Action: TCloseAction);
begin
zapisz_opcje('okresy','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
zapisz_opcje('okresy','wyswietla_ilosc_'+prefiks_gry,checkbox1.checked);
zapisz_opcje('okresy','zazebiaj_'+prefiks_gry,checkbox2.checked);
zapisz_opcje('okresy','zazebiaj_o_'+prefiks_gry,spinedit4.value);
zapisz_opcje('okresy','dlugosc_okresu_'+prefiks_gry,spinedit2.value);
zapisz_opcje('okresy','pokaz_dla_'+prefiks_gry,combobox1.itemindex+1);
zapisz_opcje('okresy','max_ilosc_'+prefiks_gry,spinedit3.value);
zapisz_opcje('okresy','do_losowania_'+prefiks_gry,spinedit1.value);
Action := caFree;
Form21:=nil;
end;

procedure TForm21.FormCreate(Sender: TObject);
var
help1:integer;
pamietaj:boolean;
begin
pamietaj:=wczytaj_opcje('okresy','pamietaj_ustawienia_'+prefiks_gry,false);
SB_pamietaj.Down:=pamietaj;

for help1:=1 to ilosc_liczb_gry do combobox1.Items.Add(IntToStr(help1));
if pamietaj then help1:=wczytaj_opcje('okresy','pokaz_dla_'+prefiks_gry,1) else help1:=1;
if (help1<1) or (help1>ilosc_liczb_gry) then help1:=1;
combobox1.ItemIndex:=help1-1;

if pamietaj then help1:=wczytaj_opcje('okresy','dlugosc_okresu_'+prefiks_gry,5) else help1:=5;
if (help1<5) or (help1>100) then help1:=5;
spinedit2.Value:=help1;

if pamietaj then help1:=wczytaj_opcje('okresy','zazebiaj_o_'+prefiks_gry,4) else help1:=4;
if (help1<1) or (help1>49) then help1:=2;
spinedit4.Value:=help1;
if spinedit4.Value>=spinedit2.Value then spinedit4.Value:=spinedit2.Value-1;

if pamietaj then help1:=wczytaj_opcje('okresy','max_ilosc_'+prefiks_gry,10) else help1:=10;
if (help1<2) or (help1>20) then help1:=10;
spinedit3.Value:=help1;

if pamietaj then checkbox1.checked:=wczytaj_opcje('okresy','wyswietla_ilosc_'+prefiks_gry,true);
if pamietaj then checkbox2.checked:=wczytaj_opcje('okresy','zazebiaj_'+prefiks_gry,false);

if pamietaj then help1:=wczytaj_opcje('okresy','do_losowania_'+prefiks_gry,wspolne[Gra.Numer,2]) else help1:=wspolne[Gra.Numer,2];
if not czy_dobre_losowanie(help1) then help1:=wspolne[Gra.Numer,2];

spinedit1.MinValue:=1;
spinedit1.MaxValue:=help1;
spinedit1.Value:=help1;
spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));

zmaz_wykres;
czy_liczone:=false;

end;

procedure TForm21.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm21.zmaz_wykres;
begin
image1.Repaint;
image1.Canvas.Pen.Color:=clblack;
image1.canvas.pen.Style:=psSolid;
image1.Canvas.rectangle(0,0,513,129);
image1.Canvas.moveto(30,5);
image1.Canvas.LineTo(30,113);
image1.Canvas.MoveTo(30,5);
image1.Canvas.LineTo(27,15);
image1.Canvas.MoveTo(30,5);
image1.Canvas.LineTo(33,15);
image1.Canvas.MoveTo(25,108);
image1.Canvas.LineTo(498,108);
image1.Canvas.LineTo(488,111);
image1.Canvas.LineTo(498,108);
image1.Canvas.LineTo(488,105);
end;

procedure TForm21.SpeedButton1Click(Sender: TObject);
begin
if spinedit1.Value>spinedit2.Value*2 then oblicz(spinedit1.value,spinedit2.value);
end;

procedure TForm21.oblicz(do_,dl_o: word);
var
help1,help2,help3:integer;
ile_o,start,max,min,zab,krok:integer;
begin
if checkbox2.Checked then zab:=spinedit4.Value else zab:=0;
max:=0;
min:=100;
//dl_o:=dl_o-1;
//ile_o:=do_ div dl_o;
ile_o:=spinedit3.Value;
if ile_o*dl_o>=do_ then ile_o:=do_ div dl_o;
gauge1.Progress:=0;
gauge1.MaxValue:=ile_o;
start:=(do_-(ile_o*dl_o)-dl_o);

for help1:=1 to ilosc_liczb_gry do for help2:=1 to 20 do liczba[help1,help2]:=0;
if zab=0 then
 begin
  for help1:=1 to ile_o do
   begin
    help3:=start+(dl_o*help1);
    for help2:=help3+1 to help3+dl_o do for help3:=1 to ilosc_liczb_gry do if wylosowane[help2,help3] {czy_byla_liczba(help3,help2)=true} then inc(liczba[help3,help1]);
    gauge1.Progress:=help1;
   end;
 end;

if zab<>0 then
 begin
  krok:=dl_o-zab;
  start:=do_-(((ile_o-1)*zab)+(2*krok)+((ile_o-2)*(dl_o-(2*zab)))+krok);
  for help1:=1 to ile_o do
   begin
    help3:=start+(krok*help1);
    for help2:=help3+1 to help3+dl_o do for help3:=1 to ilosc_liczb_gry do if wylosowane[help2,help3] {czy_byla_liczba(help3,help2)=true} then inc(liczba[help3,help1]);
    gauge1.Progress:=help1;
   end;
 end;

for help1:=1 to ilosc_liczb_gry do for help2:=1 to 20 do
 begin
  if liczba[help1,help2]>max then max:=liczba[help1,help2];
  if liczba[help1,help2]<min then min:=liczba[help1,help2];
 end;
rysuj_wykres(combobox1.itemindex+1,ile_o,dl_o,max,min);

label7.Caption:=IntToStr(max);
label8.Caption:=IntToStr(min);

dlugosc_o:=dl_o;
ilosc_o:=ile_o;
max_:=max;
min_:=min;
czy_liczone:=true;
  speedbutton5.Enabled := true;
  do_los := do_;
  zazebiaj := zab;
end;

procedure TForm21.rysuj_wykres(liczba_,ilosc, dlugosc, max,min: word);
var
help1,help2:integer;
krok,krok3,krok4:word;
krok2:real;
prawd:byte;
begin
 case Gra.Numer of
  1:prawd:=4;
  2:prawd:=8;
  3:prawd:=8;
 end;

help2:=0;
for help1:=1 to ilosc do help2:=liczba[liczba_,help1]+help2;
if help2<>0 then
 begin
  if ((ilosc*(dlugosc))/help2)>prawd then label10.Font.Color:=clblue;
  if ((ilosc*(dlugosc))/help2)=prawd then label10.Font.Color:=clblack;
  if ((ilosc*(dlugosc))/help2)<prawd then label10.Font.Color:=clred;
  label10.Caption:=FormatFloat('0.00',(ilosc*(dlugosc))/help2);
  if (help2/ilosc)<round((dlugosc+1)/prawd) then label12.Font.Color:=clblue;
  if (help2/ilosc)=round((dlugosc+1)/prawd) then label12.Font.Color:=clblack;
  if (help2/ilosc)>round((dlugosc+1)/prawd) then label12.Font.Color:=clred;
  label12.Caption:=FormatFloat('0.00',help2/ilosc);
 end else
  begin
   label10.Caption:='?';
   label12.Caption:='?';
  end;

label14.Caption:=IntToStr(help2);

for help1:=1 to 20 do stringgrid1.cells[help1-1,0]:='';
for help1:=1 to ilosc do stringgrid1.cells[help1-1,0]:=IntToStr(liczba[liczba_,help1]);

zmaz_wykres;

//krok:=453 div ilosc;
//start:=26;
//stop:=krok*ilosc;

krok2:=-1/(100/max);

krok3:=31;
krok4:=108;

help1:=round(dlugosc/prawd);

image1.Canvas.Pen.Color:=clblue;
image1.Canvas.MoveTo(30,round(max/krok2)+krok4);
image1.Canvas.LineTo(453,round(max/krok2)+krok4);
image1.Canvas.TextOut(5,round(max/krok2)+krok4,'Max');
image1.Canvas.MoveTo(30,round(min/krok2)+krok4);
image1.Canvas.LineTo(453,round(min/krok2)+krok4);
image1.Canvas.TextOut(5,round(min/krok2)+krok4,'Min');

image1.Canvas.Pen.Color:=clgreen;
image1.Canvas.MoveTo(30,round(help1/krok2)+krok4);
image1.Canvas.LineTo(453,round(help1/krok2)+krok4);
image1.Canvas.TextOut(15,round(help1/krok2)+krok4,IntToStr(help1));


with image1.Canvas do
 begin
    MoveTo(krok3,round(liczba[liczba_,1]/krok2)+krok4);
    if checkbox1.checked then TextOut(krok3,round(liczba[liczba_,1]/krok2)+krok4,IntToStr(liczba[liczba_,1]));
    pixels[krok3-1,round(liczba[liczba_,1]/krok2)+krok4]:=clred;
    pixels[krok3,round(liczba[liczba_,1]/krok2)+krok4]:=clred;
    pixels[krok3+1,round(liczba[liczba_,1]/krok2)+krok4]:=clred;
    pixels[krok3-1,round(liczba[liczba_,1]/krok2)+krok4-1]:=clred;
    pixels[krok3,round(liczba[liczba_,1]/krok2)+krok4-1]:=clred;
    pixels[krok3+1,round(liczba[liczba_,1]/krok2)+krok4-1]:=clred;
    pixels[krok3-1,round(liczba[liczba_,1]/krok2)+krok4+1]:=clred;
    pixels[krok3,round(liczba[liczba_,1]/krok2)+krok4+1]:=clred;
    pixels[krok3+1,round(liczba[liczba_,1]/krok2)+krok4+1]:=clred;
 end;

krok:=453 div ilosc;

for help1:=1 to ilosc-1 do
 begin
  with image1.canvas do
   begin
    pen.Color:=clred;
    lineto(krok3+help1*krok,round(liczba[liczba_,help1+1]/krok2)+krok4);
    if checkbox1.checked then TextOut(krok3+help1*krok,round(liczba[liczba_,help1+1]/krok2)+krok4,IntToStr(liczba[liczba_,help1+1]));

    pixels[krok3+help1*krok-1,round(liczba[liczba_,help1+1]/krok2)+krok4]:=clred;
    pixels[krok3+help1*krok,round(liczba[liczba_,help1+1]/krok2)+krok4]:=clred;
    pixels[krok3+help1*krok+1,round(liczba[liczba_,help1+1]/krok2)+krok4]:=clred;
    pixels[krok3+help1*krok-1,round(liczba[liczba_,help1+1]/krok2)+krok4-1]:=clred;
    pixels[krok3+help1*krok,round(liczba[liczba_,help1+1]/krok2)+krok4-1]:=clred;
    pixels[krok3+help1*krok+1,round(liczba[liczba_,help1+1]/krok2)+krok4-1]:=clred;
    pixels[krok3+help1*krok-1,round(liczba[liczba_,help1+1]/krok2)+krok4+1]:=clred;
    pixels[krok3+help1*krok,round(liczba[liczba_,help1+1]/krok2)+krok4+1]:=clred;
    pixels[krok3+help1*krok+1,round(liczba[liczba_,help1+1]/krok2)+krok4+1]:=clred;
   end;
 end;


end;

procedure TForm21.ComboBox1Change(Sender: TObject);
begin
if czy_liczone=true then rysuj_wykres(combobox1.itemindex+1,ilosc_o,dlugosc_o,max_,min_);
end;

procedure TForm21.SpinEdit2Change(Sender: TObject);
begin
spinedit4.MaxValue:=spinedit2.Value-1;
if spinedit4.Value>=spinedit2.Value then spinedit4.Value:=spinedit2.Value-1;
end;

procedure TForm21.CheckBox2Click(Sender: TObject);
begin
if checkbox2.Checked then spinedit4.Enabled:=true else spinedit4.Enabled:=false;
end;

procedure TForm21.SpeedButton5Click(Sender: TObject);
var
  strl : TStringList;
  i, j, ile : integer;
  linia : String;
  tab : array of integer;
begin
  form1.SaveDialog1.FileName := 'Okresowoœæ';
  form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt';
  if form1.savedialog1.Execute then
  begin
    strl := TStringList.Create();
    //strl.Add('Raport Okresowoœæ wygenerowany: ' + DateTimeToStr(now()));
    //strl.Add('Gra: ' + nazwa_gry);
    //strl.Add('Licz do losowania: ' + IntToStr(do_los) + ' [' + form1.data_losowania(do_los) + ']');
    //strl.Add('D³ugoœæ okresu: ' + IntToStr(dlugosc_o));
    //if zazebiaj > 0 then strl.Add('Zazêbiaj losowania: ' + IntToStr(zazebiaj));
    //strl.Add('Iloœæ okresów: ' + IntToStr(ilosc_o));
    strl.Add(DateTimeToStr(now()));
    strl.Add(Format('%d, %d, %d', [zazebiaj, dlugosc_o, ilosc_o]));

    strl.Add('');
    strl.Add('Liczba' + C_TABULATOR + 'Œr. 1' + C_TABULATOR + 'Œr. 2' + C_TABULATOR + 'Suma' + C_TABULATOR + 'Iloœæ');
    strl.Add('--------------------------------------------------------------------------');
    setlength(tab, ilosc_o);
    for i := 1 to ilosc_liczb_gry do
    begin
       linia := '';
       linia := linia + Format('  %2d', [i]) + C_TABULATOR;
       ile := 0;
       for j := 1 to ilosc_o do inc(ile, liczba[i, j]);
       linia := linia + Format('%6f', [ile / ilosc_o]) + C_TABULATOR;
       if ile > 0 then linia := linia + Format('%5f', [(ilosc_o * dlugosc_o ) / ile]) + C_TABULATOR + Format(' %3d', [ile]) + C_TABULATOR else linia := linia + '   ???' + C_TABULATOR + Format('  %2d', [ile]) + C_TABULATOR;
       for j := 1 to ilosc_o do tab[j - 1] := liczba[i, j];
       linia := linia + ImplodeInt(', ', tab);
       strl.Add(linia);
    end;
    tab := nil;
    strl.SaveToFile(form1.SaveDialog1.FileName);
    strl.Free();
  end;
  form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

end.
