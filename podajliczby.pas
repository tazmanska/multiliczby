unit podajliczby;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, kombinacje,main,mapa,dwojki,trojkiz4,czworki,testuj,piatki,zestawy,uklady;

type
  TForm16 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label7: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    CheckBox22: TCheckBox;
    CheckBox23: TCheckBox;
    CheckBox24: TCheckBox;
    CheckBox25: TCheckBox;
    CheckBox26: TCheckBox;
    CheckBox27: TCheckBox;
    CheckBox28: TCheckBox;
    CheckBox29: TCheckBox;
    CheckBox30: TCheckBox;
    CheckBox31: TCheckBox;
    CheckBox32: TCheckBox;
    CheckBox33: TCheckBox;
    CheckBox34: TCheckBox;
    CheckBox35: TCheckBox;
    CheckBox36: TCheckBox;
    CheckBox37: TCheckBox;
    CheckBox38: TCheckBox;
    CheckBox39: TCheckBox;
    CheckBox40: TCheckBox;
    CheckBox41: TCheckBox;
    CheckBox42: TCheckBox;
    CheckBox43: TCheckBox;
    CheckBox44: TCheckBox;
    CheckBox45: TCheckBox;
    CheckBox46: TCheckBox;
    CheckBox47: TCheckBox;
    CheckBox48: TCheckBox;
    CheckBox49: TCheckBox;
    CheckBox50: TCheckBox;
    CheckBox51: TCheckBox;
    CheckBox52: TCheckBox;
    CheckBox53: TCheckBox;
    CheckBox54: TCheckBox;
    CheckBox55: TCheckBox;
    CheckBox56: TCheckBox;
    CheckBox57: TCheckBox;
    CheckBox58: TCheckBox;
    CheckBox59: TCheckBox;
    CheckBox60: TCheckBox;
    CheckBox61: TCheckBox;
    CheckBox62: TCheckBox;
    CheckBox63: TCheckBox;
    CheckBox64: TCheckBox;
    CheckBox65: TCheckBox;
    CheckBox66: TCheckBox;
    CheckBox67: TCheckBox;
    CheckBox68: TCheckBox;
    CheckBox69: TCheckBox;
    CheckBox70: TCheckBox;
    CheckBox71: TCheckBox;
    CheckBox72: TCheckBox;
    CheckBox73: TCheckBox;
    CheckBox74: TCheckBox;
    CheckBox75: TCheckBox;
    CheckBox76: TCheckBox;
    CheckBox77: TCheckBox;
    CheckBox78: TCheckBox;
    CheckBox79: TCheckBox;
    CheckBox80: TCheckBox;
    Label9: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    SpeedButton24: TSpeedButton;
    SpeedButton25: TSpeedButton;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    SpeedButton38: TSpeedButton;
    SpeedButton39: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton24Click(Sender: TObject);
    
  private
    { Private declarations }
  public
   
   procedure ile_zaznaczonych(liczba:integer);
   procedure pokaz_zaznaczone;
   procedure zaznacz_liczbe(liczba:word;stan:boolean=true);
   procedure enabled_liczbe(liczba:word;stan:boolean=true);

   procedure zaznacz_koncowki(konc:byte;stan:boolean=true);
   procedure zaznacz_dziesiatki(dzies:byte;stan:boolean=true);
    { Public declarations }
  end;

var
  Form16: TForm16;
  wybr:byte;
  min_liczb,max_liczb:byte;

  zaznaczonych:integer=0;
  zaznaczone:array[1..80]of boolean;
  wprowadzone:array[1..80] of boolean;
  wprowadzone_ile:byte=0;

implementation

uses Addins;

{$R *.DFM}

procedure TForm16.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
Form16:=nil;
end;

procedure TForm16.SpeedButton1Click(Sender: TObject);
begin
  anuluj := true;
  close;
end;



procedure TForm16.FormCreate(Sender: TObject);
var i:byte;
begin
{
1-kombinacje
2-uniwersalna mapa 1
3-uniwersalna mapa 2
4-wybrane liczby dla 2/3
5-wybrane liczby dla utwórz parki
6-statystyki czworek
7-testuj liczby
8-piatki
9-zestawy
}
if liczby_dla_opcji=1 then
 begin
  min_liczb:=4;
  max_liczb:=ilosc_liczb_gry;
  form16.Caption:='Wybierz liczby... (Kombinacje)';
 end;
if liczby_dla_opcji=2 then
 begin
  min_liczb:=2;
  max_liczb:=10;
  form16.Caption:='Wybierz liczby... (Uniwersalna mapa II)';
 end;
if liczby_dla_opcji=3 then
 begin
  min_liczb:=2;
  max_liczb:=20;
  form16.Caption:='Wybierz liczby... (Uniwersalna mapa I)';
 end;
if liczby_dla_opcji=4 then
 begin
  min_liczb:=3;
  max_liczb:=ilosc_liczb_gry;
  form16.Caption:='Wybierz liczby... (Dwójki z trójki)';
 end;
if liczby_dla_opcji=5 then
 begin
  min_liczb:=3;
  max_liczb:=ilosc_liczb_gry;
  form16.Caption:='Wybierz liczby... (Utwórz parki)';
 end;
if liczby_dla_opcji=6 then
 begin
  min_liczb:=4;
  max_liczb:=ilosc_liczb_gry;
  form16.Caption:='Wybierz liczby... (Czwórki)';
 end;
if liczby_dla_opcji=7 then
 begin
  min_liczb:=1;
  max_liczb:=20;
  form16.Caption:='Wybierz liczby... (Testuj liczby)';
 end;
if liczby_dla_opcji=8 then
 begin
  min_liczb:=5;
  max_liczb:=ilosc_liczb_gry;
  form16.Caption:='Wybierz liczby... (Pi¹tki)';
 end;

if liczby_dla_opcji=9 then
 if pakiet <> nil then
  begin
   min_liczb:=ilosc_liczb_zestawu;
   max_liczb:=ilosc_liczb_zestawu;
   form16.Caption:='Wybierz liczby... (Zestawy)';
  end else
   begin
    min_liczb:=1;
    max_liczb:=10;
    form16.Caption:='Wybierz liczby... (Zestawy)';
   end;

if liczby_dla_opcji=10 then
 begin
  min_liczb:=1;
  max_liczb:=10;
  form16.Caption:='Wybierz liczby... (Uk³ady)';
 end;

if Gra.Numer=2 then for i:=50 to 80 do enabled_liczbe(i,false);


if Gra.Numer=3 then for i:=43 to 80 do enabled_liczbe(i,false);

if min_liczb=max_liczb then label2.Caption:='Podaj '+IntToStr(min_liczb)+' liczb.' else label2.Caption:='Podaj '+IntToStr(min_liczb)+' - '+IntToStr(max_liczb)+' liczb.';

zaznaczonych:=0;
ile_zaznaczonych(zaznaczonych);
SpeedButton3.Click;
end;

procedure TForm16.CheckBox1Click(Sender: TObject);
var numer:byte;
begin
numer:=StrToInt(Tcheckbox(sender).caption);
if Tcheckbox(sender).checked then
 begin
  zaznaczone[numer]:=true;
  inc(zaznaczonych);
  ile_zaznaczonych(zaznaczonych);
  Tcheckbox(sender).Font.Style := Tcheckbox(sender).Font.Style + [fsBold];
 end else
 begin
  zaznaczone[numer]:=false;
  dec(zaznaczonych);
  ile_zaznaczonych(zaznaczonych);
  Tcheckbox(sender).Font.Style := Tcheckbox(sender).Font.Style - [fsBold];
 end;
end;


procedure TForm16.SpeedButton2Click(Sender: TObject);
var
help1,help2:byte;
tablica2:array[1..80]of byte;
begin
for help1:=1 to 80 do tablica2[help1]:=0;

if checkbox1.checked then tablica2[1]:=1;
if checkbox2.checked then tablica2[2]:=2;
if checkbox3.checked then tablica2[3]:=3;
if checkbox4.checked then tablica2[4]:=4;
if checkbox5.checked then tablica2[5]:=5;
if checkbox6.checked then tablica2[6]:=6;
if checkbox7.checked then tablica2[7]:=7;
if checkbox8.checked then tablica2[8]:=8;
if checkbox9.checked then tablica2[9]:=9;
if checkbox10.checked then tablica2[10]:=10;
if checkbox11.checked then tablica2[11]:=11;
if checkbox12.checked then tablica2[12]:=12;
if checkbox13.checked then tablica2[13]:=13;
if checkbox14.checked then tablica2[14]:=14;
if checkbox15.checked then tablica2[15]:=15;
if checkbox16.checked then tablica2[16]:=16;
if checkbox17.checked then tablica2[17]:=17;
if checkbox18.checked then tablica2[18]:=18;
if checkbox19.checked then tablica2[19]:=19;
if checkbox20.checked then tablica2[20]:=20;
if checkbox21.checked then tablica2[21]:=21;
if checkbox22.checked then tablica2[22]:=22;
if checkbox23.checked then tablica2[23]:=23;
if checkbox24.checked then tablica2[24]:=24;
if checkbox25.checked then tablica2[25]:=25;
if checkbox26.checked then tablica2[26]:=26;
if checkbox27.checked then tablica2[27]:=27;
if checkbox28.checked then tablica2[28]:=28;
if checkbox29.checked then tablica2[29]:=29;
if checkbox30.checked then tablica2[30]:=30;
if checkbox31.checked then tablica2[31]:=31;
if checkbox32.checked then tablica2[32]:=32;
if checkbox33.checked then tablica2[33]:=33;
if checkbox34.checked then tablica2[34]:=34;
if checkbox35.checked then tablica2[35]:=35;
if checkbox36.checked then tablica2[36]:=36;
if checkbox37.checked then tablica2[37]:=37;
if checkbox38.checked then tablica2[38]:=38;
if checkbox39.checked then tablica2[39]:=39;
if checkbox40.checked then tablica2[40]:=40;
if checkbox41.checked then tablica2[41]:=41;
if checkbox42.checked then tablica2[42]:=42;
if checkbox43.checked then tablica2[43]:=43;
if checkbox44.checked then tablica2[44]:=44;
if checkbox45.checked then tablica2[45]:=45;
if checkbox46.checked then tablica2[46]:=46;
if checkbox47.checked then tablica2[47]:=47;
if checkbox48.checked then tablica2[48]:=48;
if checkbox49.checked then tablica2[49]:=49;
if checkbox50.checked then tablica2[50]:=50;
if checkbox51.checked then tablica2[51]:=51;
if checkbox52.checked then tablica2[52]:=52;
if checkbox53.checked then tablica2[53]:=53;
if checkbox54.checked then tablica2[54]:=54;
if checkbox55.checked then tablica2[55]:=55;
if checkbox56.checked then tablica2[56]:=56;
if checkbox57.checked then tablica2[57]:=57;
if checkbox58.checked then tablica2[58]:=58;
if checkbox59.checked then tablica2[59]:=59;
if checkbox60.checked then tablica2[60]:=60;
if checkbox61.checked then tablica2[61]:=61;
if checkbox62.checked then tablica2[62]:=62;
if checkbox63.checked then tablica2[63]:=63;
if checkbox64.checked then tablica2[64]:=64;
if checkbox65.checked then tablica2[65]:=65;
if checkbox66.checked then tablica2[66]:=66;
if checkbox67.checked then tablica2[67]:=67;
if checkbox68.checked then tablica2[68]:=68;
if checkbox69.checked then tablica2[69]:=69;
if checkbox70.checked then tablica2[70]:=70;
if checkbox71.checked then tablica2[71]:=71;
if checkbox72.checked then tablica2[72]:=72;
if checkbox73.checked then tablica2[73]:=73;
if checkbox74.checked then tablica2[74]:=74;
if checkbox75.checked then tablica2[75]:=75;
if checkbox76.checked then tablica2[76]:=76;
if checkbox77.checked then tablica2[77]:=77;
if checkbox78.checked then tablica2[78]:=78;
if checkbox79.checked then tablica2[79]:=79;
if checkbox80.checked then tablica2[80]:=80;

if liczby_dla_opcji=1 then
 begin
  help2:=0;
  for help1:=1 to 80 do
   if tablica2[help1]<>0 then
    begin
     help2:=help2+1;
     zestaw[help2]:=help1;
    end;
  ilosc_l:=help2;
 end;

if liczby_dla_opcji=2 then
 begin
  help2:=0;
  for help1:=1 to 80 do
   if tablica2[help1]<>0 then
    begin
     help2:=help2+1;
     mapa_liczby[help2]:=help1;
    end;
  ilosc_liczb1:=help2;
 end;

if liczby_dla_opcji=3 then
 begin
  help2:=0;
  for help1:=1 to 80 do
   if tablica2[help1]<>0 then
    begin
     help2:=help2+1;
     mapa_liczby2[help2]:=help1;
    end;
  ilosc_liczb2:=help2;
 end;

if liczby_dla_opcji=4 then
 begin
  help2:=0;
  for help1:=1 to 80 do
   if tablica2[help1]<>0 then
    begin
     help2:=help2+1;
     dwojki_liczby[help2]:=help1;
    end;
  ilosc_liczb3:=help2;
 end;

if liczby_dla_opcji=5 then
 begin
  help2:=0;
  for help1:=1 to 80 do
   if tablica2[help1]<>0 then
    begin
     help2:=help2+1;
     parki_liczby[help2]:=help1;
    end;
  ilosc_liczb4:=help2;
 end;

if liczby_dla_opcji=6 then
 begin
  help2:=0;
  for help1:=1 to 80 do
   if tablica2[help1]<>0 then
    begin
     help2:=help2+1;
     czworki_liczby[help2]:=help1;
    end;
  ilosc_liczb5:=help2;
 end;

if liczby_dla_opcji=7 then
 begin
  help2:=0;
  for help1:=1 to 80 do
   if tablica2[help1]<>0 then
    begin
     help2:=help2+1;
     tab[help2]:=help1;
    end;
  ilosc_liczb7:=help2;
 end;

if liczby_dla_opcji=8 then
 begin
  help2:=0;
  for help1:=1 to 80 do
   if tablica2[help1]<>0 then
    begin
     help2:=help2+1;
     piatki_liczby[help2]:=help1;
    end;
  ilosc_liczb8:=help2;
 end;

if liczby_dla_opcji=9 then
 begin
  help2:=0;
  for help1:=1 to 80 do
   if tablica2[help1]<>0 then
    begin
     help2:=help2+1;
     tab_temp[help2]:=help1;
    end;
  ilosc_liczb9:=help2;
 end;

if liczby_dla_opcji=10 then
 begin
  help2:=0;
  for help1:=1 to 80 do
   if tablica2[help1]<>0 then
    begin
     help2:=help2+1;
     liczby_uklady[help2]:=help1;
    end;
  ilosc_liczb10:=help2;
 end;

anuluj:=false;
close;
end;

procedure TForm16.ile_zaznaczonych(liczba: integer);
begin
label7.caption:=IntToStr(liczba);
if (liczba>=min_liczb) and (liczba<=max_liczb) then
 begin
  speedbutton2.Enabled:=true;
  label7.Font.color:=clRed;
  label9.Font.Color:=clred;
 end else
  begin
   speedbutton2.Enabled:=false;
   label7.font.Color:=clBlack;
   label9.Font.Color:=clblue;
  end;
pokaz_zaznaczone;
end;

procedure TForm16.pokaz_zaznaczone;
var
help1:integer;
linia:string;
begin
linia:='';
for help1:=1 to ilosc_liczb_gry do if zaznaczone[help1] then linia:=linia+IntToStr(help1)+', ';
label9.Caption:=linia;
end;

procedure TForm16.zaznacz_liczbe(liczba: word; stan: boolean);
begin
     if liczba=1 then checkbox1.Checked:=stan;
     if liczba=2 then checkbox2.Checked:=stan;
     if liczba=3 then checkbox3.Checked:=stan;
     if liczba=4 then checkbox4.Checked:=stan;
     if liczba=5 then checkbox5.Checked:=stan;
     if liczba=6 then checkbox6.Checked:=stan;
     if liczba=7 then checkbox7.Checked:=stan;
     if liczba=8 then checkbox8.Checked:=stan;
     if liczba=9 then checkbox9.Checked:=stan;
     if liczba=10 then checkbox10.Checked:=stan;
     if liczba=11 then checkbox11.Checked:=stan;
     if liczba=12 then checkbox12.Checked:=stan;
     if liczba=13 then checkbox13.Checked:=stan;
     if liczba=14 then checkbox14.Checked:=stan;
     if liczba=15 then checkbox15.Checked:=stan;
     if liczba=16 then checkbox16.Checked:=stan;
     if liczba=17 then checkbox17.Checked:=stan;
     if liczba=18 then checkbox18.Checked:=stan;
     if liczba=19 then checkbox19.Checked:=stan;
     if liczba=20 then checkbox20.Checked:=stan;
     if liczba=21 then checkbox21.Checked:=stan;
     if liczba=22 then checkbox22.Checked:=stan;
     if liczba=23 then checkbox23.Checked:=stan;
     if liczba=24 then checkbox24.Checked:=stan;
     if liczba=25 then checkbox25.Checked:=stan;
     if liczba=26 then checkbox26.Checked:=stan;
     if liczba=27 then checkbox27.Checked:=stan;
     if liczba=28 then checkbox28.Checked:=stan;
     if liczba=29 then checkbox29.Checked:=stan;
     if liczba=30 then checkbox30.Checked:=stan;
     if liczba=31 then checkbox31.Checked:=stan;
     if liczba=32 then checkbox32.Checked:=stan;
     if liczba=33 then checkbox33.Checked:=stan;
     if liczba=34 then checkbox34.Checked:=stan;
     if liczba=35 then checkbox35.Checked:=stan;
     if liczba=36 then checkbox36.Checked:=stan;
     if liczba=37 then checkbox37.Checked:=stan;
     if liczba=38 then checkbox38.Checked:=stan;
     if liczba=39 then checkbox39.Checked:=stan;
     if liczba=40 then checkbox40.Checked:=stan;
     if liczba=41 then checkbox41.Checked:=stan;
     if liczba=42 then checkbox42.Checked:=stan;
     if liczba=43 then checkbox43.Checked:=stan;
     if liczba=44 then checkbox44.Checked:=stan;
     if liczba=45 then checkbox45.Checked:=stan;
     if liczba=46 then checkbox46.Checked:=stan;
     if liczba=47 then checkbox47.Checked:=stan;
     if liczba=48 then checkbox48.Checked:=stan;
     if liczba=49 then checkbox49.Checked:=stan;
     if liczba=50 then checkbox50.Checked:=stan;
     if liczba=51 then checkbox51.Checked:=stan;
     if liczba=52 then checkbox52.Checked:=stan;
     if liczba=53 then checkbox53.Checked:=stan;
     if liczba=54 then checkbox54.Checked:=stan;
     if liczba=55 then checkbox55.Checked:=stan;
     if liczba=56 then checkbox56.Checked:=stan;
     if liczba=57 then checkbox57.Checked:=stan;
     if liczba=58 then checkbox58.Checked:=stan;
     if liczba=59 then checkbox59.Checked:=stan;
     if liczba=60 then checkbox60.Checked:=stan;
     if liczba=61 then checkbox61.Checked:=stan;
     if liczba=62 then checkbox62.Checked:=stan;
     if liczba=63 then checkbox63.Checked:=stan;
     if liczba=64 then checkbox64.Checked:=stan;
     if liczba=65 then checkbox65.Checked:=stan;
     if liczba=66 then checkbox66.Checked:=stan;
     if liczba=67 then checkbox67.Checked:=stan;
     if liczba=68 then checkbox68.Checked:=stan;
     if liczba=69 then checkbox69.Checked:=stan;
     if liczba=70 then checkbox70.Checked:=stan;
     if liczba=71 then checkbox71.Checked:=stan;
     if liczba=72 then checkbox72.Checked:=stan;
     if liczba=73 then checkbox73.Checked:=stan;
     if liczba=74 then checkbox74.Checked:=stan;
     if liczba=75 then checkbox75.Checked:=stan;
     if liczba=76 then checkbox76.Checked:=stan;
     if liczba=77 then checkbox77.Checked:=stan;
     if liczba=78 then checkbox78.Checked:=stan;
     if liczba=79 then checkbox79.Checked:=stan;
     if liczba=80 then checkbox80.Checked:=stan;
end;

procedure TForm16.SpeedButton3Click(Sender: TObject);
var help1:byte;
begin
for help1:=1 to ilosc_liczb_gry do
 begin
  wprowadzone[help1]:=false;
  zaznaczone[help1]:=false;
  zaznacz_liczbe(help1,false);
 end;
zaznaczonych:=0;
ile_zaznaczonych(zaznaczonych);
speedbutton2.Enabled:=false;
edit1.text:='';
label8.Caption:='0';
end;

procedure TForm16.Edit1KeyPress(Sender: TObject; var Key: Char);
var i:byte;
linia:string;
begin
if key=chr(13) then
 begin
  linia:='';
  for i:=1 to ilosc_liczb_gry do if wprowadzone[i] then begin linia:=linia+IntToStr(i)+', '; zaznacz_liczbe(i); end;
  edit1.Text:=linia;
 end;
if (key<>'1') and (key<>'2') and (key<>'3') and (key<>'4') and (key<>'5') and (key<>'6') and (key<>'7') and (key<>'8') and (key<>'9') and (key<>'0') and (key<>',') and (key<>' ') and (key<>chr(8)) then key:=chr(0);
end;

procedure TForm16.Edit1Change(Sender: TObject);
begin
wprowadzone_ile:=odczytaj_liczby2(wprowadzone,edit1.Text, 1, Gra.IloscLiczbGry);
label8.Caption:=IntToStr(wprowadzone_ile);
end;

procedure TForm16.enabled_liczbe(liczba: word; stan: boolean);
begin       
     if liczba=1 then checkbox1.enabled:=stan;
     if liczba=2 then checkbox2.enabled:=stan;
     if liczba=3 then checkbox3.enabled:=stan;
     if liczba=4 then checkbox4.enabled:=stan;
     if liczba=5 then checkbox5.enabled:=stan;
     if liczba=6 then checkbox6.enabled:=stan;
     if liczba=7 then checkbox7.enabled:=stan;
     if liczba=8 then checkbox8.enabled:=stan;
     if liczba=9 then checkbox9.enabled:=stan;
     if liczba=10 then checkbox10.enabled:=stan;
     if liczba=11 then checkbox11.enabled:=stan;
     if liczba=12 then checkbox12.enabled:=stan;
     if liczba=13 then checkbox13.enabled:=stan;
     if liczba=14 then checkbox14.enabled:=stan;
     if liczba=15 then checkbox15.enabled:=stan;
     if liczba=16 then checkbox16.enabled:=stan;
     if liczba=17 then checkbox17.enabled:=stan;
     if liczba=18 then checkbox18.enabled:=stan;
     if liczba=19 then checkbox19.enabled:=stan;
     if liczba=20 then checkbox20.enabled:=stan;
     if liczba=21 then checkbox21.enabled:=stan;
     if liczba=22 then checkbox22.enabled:=stan;
     if liczba=23 then checkbox23.enabled:=stan;
     if liczba=24 then checkbox24.enabled:=stan;
     if liczba=25 then checkbox25.enabled:=stan;
     if liczba=26 then checkbox26.enabled:=stan;
     if liczba=27 then checkbox27.enabled:=stan;
     if liczba=28 then checkbox28.enabled:=stan;
     if liczba=29 then checkbox29.enabled:=stan;
     if liczba=30 then checkbox30.enabled:=stan;
     if liczba=31 then checkbox31.enabled:=stan;
     if liczba=32 then checkbox32.enabled:=stan;
     if liczba=33 then checkbox33.enabled:=stan;
     if liczba=34 then checkbox34.enabled:=stan;
     if liczba=35 then checkbox35.enabled:=stan;
     if liczba=36 then checkbox36.enabled:=stan;
     if liczba=37 then checkbox37.enabled:=stan;
     if liczba=38 then checkbox38.enabled:=stan;
     if liczba=39 then checkbox39.enabled:=stan;
     if liczba=40 then checkbox40.enabled:=stan;
     if liczba=41 then checkbox41.enabled:=stan;
     if liczba=42 then checkbox42.enabled:=stan;
     if liczba=43 then checkbox43.enabled:=stan;
     if liczba=44 then checkbox44.enabled:=stan;
     if liczba=45 then checkbox45.enabled:=stan;
     if liczba=46 then checkbox46.enabled:=stan;
     if liczba=47 then checkbox47.enabled:=stan;
     if liczba=48 then checkbox48.enabled:=stan;
     if liczba=49 then checkbox49.enabled:=stan;
     if liczba=50 then checkbox50.enabled:=stan;
     if liczba=51 then checkbox51.enabled:=stan;
     if liczba=52 then checkbox52.enabled:=stan;
     if liczba=53 then checkbox53.enabled:=stan;
     if liczba=54 then checkbox54.enabled:=stan;
     if liczba=55 then checkbox55.enabled:=stan;
     if liczba=56 then checkbox56.enabled:=stan;
     if liczba=57 then checkbox57.enabled:=stan;
     if liczba=58 then checkbox58.enabled:=stan;
     if liczba=59 then checkbox59.enabled:=stan;
     if liczba=60 then checkbox60.enabled:=stan;
     if liczba=61 then checkbox61.enabled:=stan;
     if liczba=62 then checkbox62.enabled:=stan;
     if liczba=63 then checkbox63.enabled:=stan;
     if liczba=64 then checkbox64.enabled:=stan;
     if liczba=65 then checkbox65.enabled:=stan;
     if liczba=66 then checkbox66.enabled:=stan;
     if liczba=67 then checkbox67.enabled:=stan;
     if liczba=68 then checkbox68.enabled:=stan;
     if liczba=69 then checkbox69.enabled:=stan;
     if liczba=70 then checkbox70.enabled:=stan;
     if liczba=71 then checkbox71.enabled:=stan;
     if liczba=72 then checkbox72.enabled:=stan;
     if liczba=73 then checkbox73.enabled:=stan;
     if liczba=74 then checkbox74.enabled:=stan;
     if liczba=75 then checkbox75.enabled:=stan;
     if liczba=76 then checkbox76.enabled:=stan;
     if liczba=77 then checkbox77.enabled:=stan;
     if liczba=78 then checkbox78.enabled:=stan;
     if liczba=79 then checkbox79.enabled:=stan;
     if liczba=80 then checkbox80.enabled:=stan;
end;

procedure TForm16.zaznacz_koncowki(konc: byte; stan: boolean);
var
i:integer;
begin
for i:=1 to ilosc_liczb_gry do if i mod 10 = konc then
 begin
  if zaznaczone[i]<>stan then
   begin
    zaznacz_liczbe(i,stan);
    zaznaczone[i]:=stan;
    ile_zaznaczonych(zaznaczonych);
   end;
 end;
end;

procedure TForm16.SpeedButton4Click(Sender: TObject);      
begin
if TSpeedButton(sender).caption='-' then zaznacz_koncowki(TSpeedButton(sender).tag,false) else zaznacz_koncowki(TSpeedButton(sender).tag,true);
end;

procedure TForm16.zaznacz_dziesiatki(dzies: byte; stan: boolean);
var
i:integer;
begin
for i:=1 to ilosc_liczb_gry do if (i <(dzies* 10)+11) and (i >=(dzies* 10)+1) then
 begin
  if zaznaczone[i]<>stan then
   begin
    zaznacz_liczbe(i,stan);
    zaznaczone[i]:=stan;
    ile_zaznaczonych(zaznaczonych);
   end;
 end;
end;

procedure TForm16.SpeedButton24Click(Sender: TObject);
begin
if TSpeedButton(sender).caption='-' then zaznacz_dziesiatki(TSpeedButton(sender).tag,false) else zaznacz_dziesiatki(TSpeedButton(sender).tag,true);
end;

end.
