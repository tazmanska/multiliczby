unit dodajliczby;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, kombinuj,main;

type
  TForm17 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure CheckBox16Click(Sender: TObject);
    procedure CheckBox17Click(Sender: TObject);
    procedure CheckBox18Click(Sender: TObject);
    procedure CheckBox19Click(Sender: TObject);
    procedure CheckBox20Click(Sender: TObject);
    procedure CheckBox21Click(Sender: TObject);
    procedure CheckBox22Click(Sender: TObject);
    procedure CheckBox23Click(Sender: TObject);
    procedure CheckBox24Click(Sender: TObject);
    procedure CheckBox25Click(Sender: TObject);
    procedure CheckBox26Click(Sender: TObject);
    procedure CheckBox27Click(Sender: TObject);
    procedure CheckBox28Click(Sender: TObject);
    procedure CheckBox29Click(Sender: TObject);
    procedure CheckBox30Click(Sender: TObject);
    procedure CheckBox31Click(Sender: TObject);
    procedure CheckBox32Click(Sender: TObject);
    procedure CheckBox33Click(Sender: TObject);
    procedure CheckBox34Click(Sender: TObject);
    procedure CheckBox35Click(Sender: TObject);
    procedure CheckBox36Click(Sender: TObject);
    procedure CheckBox37Click(Sender: TObject);
    procedure CheckBox38Click(Sender: TObject);
    procedure CheckBox39Click(Sender: TObject);
    procedure CheckBox40Click(Sender: TObject);
    procedure CheckBox41Click(Sender: TObject);
    procedure CheckBox42Click(Sender: TObject);
    procedure CheckBox43Click(Sender: TObject);
    procedure CheckBox44Click(Sender: TObject);
    procedure CheckBox45Click(Sender: TObject);
    procedure CheckBox46Click(Sender: TObject);
    procedure CheckBox47Click(Sender: TObject);
    procedure CheckBox48Click(Sender: TObject);
    procedure CheckBox49Click(Sender: TObject);
    procedure CheckBox50Click(Sender: TObject);
    procedure CheckBox51Click(Sender: TObject);
    procedure CheckBox52Click(Sender: TObject);
    procedure CheckBox53Click(Sender: TObject);
    procedure CheckBox54Click(Sender: TObject);
    procedure CheckBox55Click(Sender: TObject);
    procedure CheckBox56Click(Sender: TObject);
    procedure CheckBox57Click(Sender: TObject);
    procedure CheckBox58Click(Sender: TObject);
    procedure CheckBox59Click(Sender: TObject);
    procedure CheckBox60Click(Sender: TObject);
    procedure CheckBox61Click(Sender: TObject);
    procedure CheckBox62Click(Sender: TObject);
    procedure CheckBox63Click(Sender: TObject);
    procedure CheckBox64Click(Sender: TObject);
    procedure CheckBox65Click(Sender: TObject);
    procedure CheckBox66Click(Sender: TObject);
    procedure CheckBox67Click(Sender: TObject);
    procedure CheckBox68Click(Sender: TObject);
    procedure CheckBox69Click(Sender: TObject);
    procedure CheckBox70Click(Sender: TObject);
    procedure CheckBox71Click(Sender: TObject);
    procedure CheckBox72Click(Sender: TObject);
    procedure CheckBox73Click(Sender: TObject);
    procedure CheckBox74Click(Sender: TObject);
    procedure CheckBox75Click(Sender: TObject);
    procedure CheckBox76Click(Sender: TObject);
    procedure CheckBox77Click(Sender: TObject);
    procedure CheckBox78Click(Sender: TObject);
    procedure CheckBox79Click(Sender: TObject);
    procedure CheckBox80Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure wybranych(ilosc:word);
    { Public declarations }
  end;

var
  Form17: TForm17;
  lwybranych:word;


implementation

{$R *.DFM}

procedure TForm17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
Form17:=nil;
end;

procedure TForm17.SpeedButton1Click(Sender: TObject);
begin
form17.Close;
end;

procedure TForm17.FormCreate(Sender: TObject);
var
help1:integer;
begin

if Gra.Numer=2 then
 begin
  checkbox50.Enabled:=false;
  checkbox51.Enabled:=false;
  checkbox52.Enabled:=false;
  checkbox53.Enabled:=false;
  checkbox54.Enabled:=false;
  checkbox55.Enabled:=false;
  checkbox56.Enabled:=false;
  checkbox57.Enabled:=false;
  checkbox58.Enabled:=false;
  checkbox59.Enabled:=false;
  checkbox60.Enabled:=false;
  checkbox61.Enabled:=false;
  checkbox62.Enabled:=false;
  checkbox63.Enabled:=false;
  checkbox64.Enabled:=false;
  checkbox65.Enabled:=false;
  checkbox66.Enabled:=false;
  checkbox67.Enabled:=false;
  checkbox68.Enabled:=false;
  checkbox69.Enabled:=false;
  checkbox70.Enabled:=false;
  checkbox71.Enabled:=false;
  checkbox72.Enabled:=false;
  checkbox73.Enabled:=false;
  checkbox74.Enabled:=false;
  checkbox75.Enabled:=false;
  checkbox76.Enabled:=false;
  checkbox77.Enabled:=false;
  checkbox78.Enabled:=false;
  checkbox79.Enabled:=false;
  checkbox80.Enabled:=false;
 end;

if Gra.Numer=3 then
 begin
  checkbox43.Enabled:=false;
  checkbox44.Enabled:=false;
  checkbox45.Enabled:=false;
  checkbox46.Enabled:=false;
  checkbox47.Enabled:=false;
  checkbox48.Enabled:=false;
  checkbox49.Enabled:=false;
  checkbox50.Enabled:=false;
  checkbox51.Enabled:=false;
  checkbox52.Enabled:=false;
  checkbox53.Enabled:=false;
  checkbox54.Enabled:=false;
  checkbox55.Enabled:=false;
  checkbox56.Enabled:=false;
  checkbox57.Enabled:=false;
  checkbox58.Enabled:=false;
  checkbox59.Enabled:=false;
  checkbox60.Enabled:=false;
  checkbox61.Enabled:=false;
  checkbox62.Enabled:=false;
  checkbox63.Enabled:=false;
  checkbox64.Enabled:=false;
  checkbox65.Enabled:=false;
  checkbox66.Enabled:=false;
  checkbox67.Enabled:=false;
  checkbox68.Enabled:=false;
  checkbox69.Enabled:=false;
  checkbox70.Enabled:=false;
  checkbox71.Enabled:=false;
  checkbox72.Enabled:=false;
  checkbox73.Enabled:=false;
  checkbox74.Enabled:=false;
  checkbox75.Enabled:=false;
  checkbox76.Enabled:=false;
  checkbox77.Enabled:=false;
  checkbox78.Enabled:=false;
  checkbox79.Enabled:=false;
  checkbox80.Enabled:=false;
 end;

speedbutton2.enabled:=false;
lwybranych:=0;
wybranych(lwybranych);

if (nr_liczb=1) and (ilosc_2<>0) then
 begin
  for help1:=1 to 10 do
   begin
    if tablica[help1,2]=1 then checkbox1.enabled:=false;
    if tablica[help1,2]=2 then checkbox2.enabled:=false;
    if tablica[help1,2]=3 then checkbox3.enabled:=false;
    if tablica[help1,2]=4 then checkbox4.enabled:=false;
    if tablica[help1,2]=5 then checkbox5.enabled:=false;
    if tablica[help1,2]=6 then checkbox6.enabled:=false;
    if tablica[help1,2]=7 then checkbox7.enabled:=false;
    if tablica[help1,2]=8 then checkbox8.enabled:=false;
    if tablica[help1,2]=9 then checkbox9.enabled:=false;
    if tablica[help1,2]=10 then checkbox10.enabled:=false;
    if tablica[help1,2]=11 then checkbox11.enabled:=false;
    if tablica[help1,2]=12 then checkbox12.enabled:=false;
    if tablica[help1,2]=13 then checkbox13.enabled:=false;
    if tablica[help1,2]=14 then checkbox14.enabled:=false;
    if tablica[help1,2]=15 then checkbox15.enabled:=false;
    if tablica[help1,2]=16 then checkbox16.enabled:=false;
    if tablica[help1,2]=17 then checkbox17.enabled:=false;
    if tablica[help1,2]=18 then checkbox18.enabled:=false;
    if tablica[help1,2]=19 then checkbox19.enabled:=false;
    if tablica[help1,2]=20 then checkbox20.enabled:=false;
    if tablica[help1,2]=21 then checkbox21.enabled:=false;
    if tablica[help1,2]=22 then checkbox22.enabled:=false;
    if tablica[help1,2]=23 then checkbox23.enabled:=false;
    if tablica[help1,2]=24 then checkbox24.enabled:=false;
    if tablica[help1,2]=25 then checkbox25.enabled:=false;
    if tablica[help1,2]=26 then checkbox26.enabled:=false;
    if tablica[help1,2]=27 then checkbox27.enabled:=false;
    if tablica[help1,2]=28 then checkbox28.enabled:=false;
    if tablica[help1,2]=29 then checkbox29.enabled:=false;
    if tablica[help1,2]=30 then checkbox30.enabled:=false;
    if tablica[help1,2]=31 then checkbox31.enabled:=false;
    if tablica[help1,2]=32 then checkbox32.enabled:=false;
    if tablica[help1,2]=33 then checkbox33.enabled:=false;
    if tablica[help1,2]=34 then checkbox34.enabled:=false;
    if tablica[help1,2]=35 then checkbox35.enabled:=false;
    if tablica[help1,2]=36 then checkbox36.enabled:=false;
    if tablica[help1,2]=37 then checkbox37.enabled:=false;
    if tablica[help1,2]=38 then checkbox38.enabled:=false;
    if tablica[help1,2]=39 then checkbox39.enabled:=false;
    if tablica[help1,2]=40 then checkbox40.enabled:=false;
    if tablica[help1,2]=41 then checkbox41.enabled:=false;
    if tablica[help1,2]=42 then checkbox42.enabled:=false;
    if tablica[help1,2]=43 then checkbox43.enabled:=false;
    if tablica[help1,2]=44 then checkbox44.enabled:=false;
    if tablica[help1,2]=45 then checkbox45.enabled:=false;
    if tablica[help1,2]=46 then checkbox46.enabled:=false;
    if tablica[help1,2]=47 then checkbox47.enabled:=false;
    if tablica[help1,2]=48 then checkbox48.enabled:=false;
    if tablica[help1,2]=49 then checkbox49.enabled:=false;
    if tablica[help1,2]=50 then checkbox50.enabled:=false;
    if tablica[help1,2]=51 then checkbox51.enabled:=false;
    if tablica[help1,2]=52 then checkbox52.enabled:=false;
    if tablica[help1,2]=53 then checkbox53.enabled:=false;
    if tablica[help1,2]=54 then checkbox54.enabled:=false;
    if tablica[help1,2]=55 then checkbox55.enabled:=false;
    if tablica[help1,2]=56 then checkbox56.enabled:=false;
    if tablica[help1,2]=57 then checkbox57.enabled:=false;
    if tablica[help1,2]=58 then checkbox58.enabled:=false;
    if tablica[help1,2]=59 then checkbox59.enabled:=false;
    if tablica[help1,2]=60 then checkbox60.enabled:=false;
    if tablica[help1,2]=61 then checkbox61.enabled:=false;
    if tablica[help1,2]=62 then checkbox62.enabled:=false;
    if tablica[help1,2]=63 then checkbox63.enabled:=false;
    if tablica[help1,2]=64 then checkbox64.enabled:=false;
    if tablica[help1,2]=65 then checkbox65.enabled:=false;
    if tablica[help1,2]=66 then checkbox66.enabled:=false;
    if tablica[help1,2]=67 then checkbox67.enabled:=false;
    if tablica[help1,2]=68 then checkbox68.enabled:=false;
    if tablica[help1,2]=69 then checkbox69.enabled:=false;
    if tablica[help1,2]=70 then checkbox70.enabled:=false;
    if tablica[help1,2]=71 then checkbox71.enabled:=false;
    if tablica[help1,2]=72 then checkbox72.enabled:=false;
    if tablica[help1,2]=73 then checkbox73.enabled:=false;
    if tablica[help1,2]=74 then checkbox74.enabled:=false;
    if tablica[help1,2]=75 then checkbox75.enabled:=false;
    if tablica[help1,2]=76 then checkbox76.enabled:=false;
    if tablica[help1,2]=77 then checkbox77.enabled:=false;
    if tablica[help1,2]=78 then checkbox78.enabled:=false;
    if tablica[help1,2]=79 then checkbox79.enabled:=false;
    if tablica[help1,2]=80 then checkbox80.enabled:=false;
   end;
 end;

if (nr_liczb=1) and (ilosc_3<>0) then
 begin
  for help1:=1 to 10 do
   begin
    if tablica[help1,3]=1 then checkbox1.enabled:=false;
    if tablica[help1,3]=2 then checkbox2.enabled:=false;
    if tablica[help1,3]=3 then checkbox3.enabled:=false;
    if tablica[help1,3]=4 then checkbox4.enabled:=false;
    if tablica[help1,3]=5 then checkbox5.enabled:=false;
    if tablica[help1,3]=6 then checkbox6.enabled:=false;
    if tablica[help1,3]=7 then checkbox7.enabled:=false;
    if tablica[help1,3]=8 then checkbox8.enabled:=false;
    if tablica[help1,3]=9 then checkbox9.enabled:=false;
    if tablica[help1,3]=10 then checkbox10.enabled:=false;
    if tablica[help1,3]=11 then checkbox11.enabled:=false;
    if tablica[help1,3]=12 then checkbox12.enabled:=false;
    if tablica[help1,3]=13 then checkbox13.enabled:=false;
    if tablica[help1,3]=14 then checkbox14.enabled:=false;
    if tablica[help1,3]=15 then checkbox15.enabled:=false;
    if tablica[help1,3]=16 then checkbox16.enabled:=false;
    if tablica[help1,3]=17 then checkbox17.enabled:=false;
    if tablica[help1,3]=18 then checkbox18.enabled:=false;
    if tablica[help1,3]=19 then checkbox19.enabled:=false;
    if tablica[help1,3]=20 then checkbox20.enabled:=false;
    if tablica[help1,3]=21 then checkbox21.enabled:=false;
    if tablica[help1,3]=22 then checkbox22.enabled:=false;
    if tablica[help1,3]=23 then checkbox23.enabled:=false;
    if tablica[help1,3]=24 then checkbox24.enabled:=false;
    if tablica[help1,3]=25 then checkbox25.enabled:=false;
    if tablica[help1,3]=26 then checkbox26.enabled:=false;
    if tablica[help1,3]=27 then checkbox27.enabled:=false;
    if tablica[help1,3]=28 then checkbox28.enabled:=false;
    if tablica[help1,3]=29 then checkbox29.enabled:=false;
    if tablica[help1,3]=30 then checkbox30.enabled:=false;
    if tablica[help1,3]=31 then checkbox31.enabled:=false;
    if tablica[help1,3]=32 then checkbox32.enabled:=false;
    if tablica[help1,3]=33 then checkbox33.enabled:=false;
    if tablica[help1,3]=34 then checkbox34.enabled:=false;
    if tablica[help1,3]=35 then checkbox35.enabled:=false;
    if tablica[help1,3]=36 then checkbox36.enabled:=false;
    if tablica[help1,3]=37 then checkbox37.enabled:=false;
    if tablica[help1,3]=38 then checkbox38.enabled:=false;
    if tablica[help1,3]=39 then checkbox39.enabled:=false;
    if tablica[help1,3]=40 then checkbox40.enabled:=false;
    if tablica[help1,3]=41 then checkbox41.enabled:=false;
    if tablica[help1,3]=42 then checkbox42.enabled:=false;
    if tablica[help1,3]=43 then checkbox43.enabled:=false;
    if tablica[help1,3]=44 then checkbox44.enabled:=false;
    if tablica[help1,3]=45 then checkbox45.enabled:=false;
    if tablica[help1,3]=46 then checkbox46.enabled:=false;
    if tablica[help1,3]=47 then checkbox47.enabled:=false;
    if tablica[help1,3]=48 then checkbox48.enabled:=false;
    if tablica[help1,3]=49 then checkbox49.enabled:=false;
    if tablica[help1,3]=50 then checkbox50.enabled:=false;
    if tablica[help1,3]=51 then checkbox51.enabled:=false;
    if tablica[help1,3]=52 then checkbox52.enabled:=false;
    if tablica[help1,3]=53 then checkbox53.enabled:=false;
    if tablica[help1,3]=54 then checkbox54.enabled:=false;
    if tablica[help1,3]=55 then checkbox55.enabled:=false;
    if tablica[help1,3]=56 then checkbox56.enabled:=false;
    if tablica[help1,3]=57 then checkbox57.enabled:=false;
    if tablica[help1,3]=58 then checkbox58.enabled:=false;
    if tablica[help1,3]=59 then checkbox59.enabled:=false;
    if tablica[help1,3]=60 then checkbox60.enabled:=false;
    if tablica[help1,3]=61 then checkbox61.enabled:=false;
    if tablica[help1,3]=62 then checkbox62.enabled:=false;
    if tablica[help1,3]=63 then checkbox63.enabled:=false;
    if tablica[help1,3]=64 then checkbox64.enabled:=false;
    if tablica[help1,3]=65 then checkbox65.enabled:=false;
    if tablica[help1,3]=66 then checkbox66.enabled:=false;
    if tablica[help1,3]=67 then checkbox67.enabled:=false;
    if tablica[help1,3]=68 then checkbox68.enabled:=false;
    if tablica[help1,3]=69 then checkbox69.enabled:=false;
    if tablica[help1,3]=70 then checkbox70.enabled:=false;
    if tablica[help1,3]=71 then checkbox71.enabled:=false;
    if tablica[help1,3]=72 then checkbox72.enabled:=false;
    if tablica[help1,3]=73 then checkbox73.enabled:=false;
    if tablica[help1,3]=74 then checkbox74.enabled:=false;
    if tablica[help1,3]=75 then checkbox75.enabled:=false;
    if tablica[help1,3]=76 then checkbox76.enabled:=false;
    if tablica[help1,3]=77 then checkbox77.enabled:=false;
    if tablica[help1,3]=78 then checkbox78.enabled:=false;
    if tablica[help1,3]=79 then checkbox79.enabled:=false;
    if tablica[help1,3]=80 then checkbox80.enabled:=false;
   end;
 end;


if (nr_liczb=2) and (ilosc_1<>0) then
 begin
  for help1:=1 to 10 do
   begin
    if tablica[help1,1]=1 then checkbox1.enabled:=false;
    if tablica[help1,1]=2 then checkbox2.enabled:=false;
    if tablica[help1,1]=3 then checkbox3.enabled:=false;
    if tablica[help1,1]=4 then checkbox4.enabled:=false;
    if tablica[help1,1]=5 then checkbox5.enabled:=false;
    if tablica[help1,1]=6 then checkbox6.enabled:=false;
    if tablica[help1,1]=7 then checkbox7.enabled:=false;
    if tablica[help1,1]=8 then checkbox8.enabled:=false;
    if tablica[help1,1]=9 then checkbox9.enabled:=false;
    if tablica[help1,1]=10 then checkbox10.enabled:=false;
    if tablica[help1,1]=11 then checkbox11.enabled:=false;
    if tablica[help1,1]=12 then checkbox12.enabled:=false;
    if tablica[help1,1]=13 then checkbox13.enabled:=false;
    if tablica[help1,1]=14 then checkbox14.enabled:=false;
    if tablica[help1,1]=15 then checkbox15.enabled:=false;
    if tablica[help1,1]=16 then checkbox16.enabled:=false;
    if tablica[help1,1]=17 then checkbox17.enabled:=false;
    if tablica[help1,1]=18 then checkbox18.enabled:=false;
    if tablica[help1,1]=19 then checkbox19.enabled:=false;
    if tablica[help1,1]=20 then checkbox20.enabled:=false;
    if tablica[help1,1]=21 then checkbox21.enabled:=false;
    if tablica[help1,1]=22 then checkbox22.enabled:=false;
    if tablica[help1,1]=23 then checkbox23.enabled:=false;
    if tablica[help1,1]=24 then checkbox24.enabled:=false;
    if tablica[help1,1]=25 then checkbox25.enabled:=false;
    if tablica[help1,1]=26 then checkbox26.enabled:=false;
    if tablica[help1,1]=27 then checkbox27.enabled:=false;
    if tablica[help1,1]=28 then checkbox28.enabled:=false;
    if tablica[help1,1]=29 then checkbox29.enabled:=false;
    if tablica[help1,1]=30 then checkbox30.enabled:=false;
    if tablica[help1,1]=31 then checkbox31.enabled:=false;
    if tablica[help1,1]=32 then checkbox32.enabled:=false;
    if tablica[help1,1]=33 then checkbox33.enabled:=false;
    if tablica[help1,1]=34 then checkbox34.enabled:=false;
    if tablica[help1,1]=35 then checkbox35.enabled:=false;
    if tablica[help1,1]=36 then checkbox36.enabled:=false;
    if tablica[help1,1]=37 then checkbox37.enabled:=false;
    if tablica[help1,1]=38 then checkbox38.enabled:=false;
    if tablica[help1,1]=39 then checkbox39.enabled:=false;
    if tablica[help1,1]=40 then checkbox40.enabled:=false;
    if tablica[help1,1]=41 then checkbox41.enabled:=false;
    if tablica[help1,1]=42 then checkbox42.enabled:=false;
    if tablica[help1,1]=43 then checkbox43.enabled:=false;
    if tablica[help1,1]=44 then checkbox44.enabled:=false;
    if tablica[help1,1]=45 then checkbox45.enabled:=false;
    if tablica[help1,1]=46 then checkbox46.enabled:=false;
    if tablica[help1,1]=47 then checkbox47.enabled:=false;
    if tablica[help1,1]=48 then checkbox48.enabled:=false;
    if tablica[help1,1]=49 then checkbox49.enabled:=false;
    if tablica[help1,1]=50 then checkbox50.enabled:=false;
    if tablica[help1,1]=51 then checkbox51.enabled:=false;
    if tablica[help1,1]=52 then checkbox52.enabled:=false;
    if tablica[help1,1]=53 then checkbox53.enabled:=false;
    if tablica[help1,1]=54 then checkbox54.enabled:=false;
    if tablica[help1,1]=55 then checkbox55.enabled:=false;
    if tablica[help1,1]=56 then checkbox56.enabled:=false;
    if tablica[help1,1]=57 then checkbox57.enabled:=false;
    if tablica[help1,1]=58 then checkbox58.enabled:=false;
    if tablica[help1,1]=59 then checkbox59.enabled:=false;
    if tablica[help1,1]=60 then checkbox60.enabled:=false;
    if tablica[help1,1]=61 then checkbox61.enabled:=false;
    if tablica[help1,1]=62 then checkbox62.enabled:=false;
    if tablica[help1,1]=63 then checkbox63.enabled:=false;
    if tablica[help1,1]=64 then checkbox64.enabled:=false;
    if tablica[help1,1]=65 then checkbox65.enabled:=false;
    if tablica[help1,1]=66 then checkbox66.enabled:=false;
    if tablica[help1,1]=67 then checkbox67.enabled:=false;
    if tablica[help1,1]=68 then checkbox68.enabled:=false;
    if tablica[help1,1]=69 then checkbox69.enabled:=false;
    if tablica[help1,1]=70 then checkbox70.enabled:=false;
    if tablica[help1,1]=71 then checkbox71.enabled:=false;
    if tablica[help1,1]=72 then checkbox72.enabled:=false;
    if tablica[help1,1]=73 then checkbox73.enabled:=false;
    if tablica[help1,1]=74 then checkbox74.enabled:=false;
    if tablica[help1,1]=75 then checkbox75.enabled:=false;
    if tablica[help1,1]=76 then checkbox76.enabled:=false;
    if tablica[help1,1]=77 then checkbox77.enabled:=false;
    if tablica[help1,1]=78 then checkbox78.enabled:=false;
    if tablica[help1,1]=79 then checkbox79.enabled:=false;
    if tablica[help1,1]=80 then checkbox80.enabled:=false;
   end;
 end;

if (nr_liczb=2) and (ilosc_3<>0) then
 begin
  for help1:=1 to 10 do
   begin
    if tablica[help1,3]=1 then checkbox1.enabled:=false;
    if tablica[help1,3]=2 then checkbox2.enabled:=false;
    if tablica[help1,3]=3 then checkbox3.enabled:=false;
    if tablica[help1,3]=4 then checkbox4.enabled:=false;
    if tablica[help1,3]=5 then checkbox5.enabled:=false;
    if tablica[help1,3]=6 then checkbox6.enabled:=false;
    if tablica[help1,3]=7 then checkbox7.enabled:=false;
    if tablica[help1,3]=8 then checkbox8.enabled:=false;
    if tablica[help1,3]=9 then checkbox9.enabled:=false;
    if tablica[help1,3]=10 then checkbox10.enabled:=false;
    if tablica[help1,3]=11 then checkbox11.enabled:=false;
    if tablica[help1,3]=12 then checkbox12.enabled:=false;
    if tablica[help1,3]=13 then checkbox13.enabled:=false;
    if tablica[help1,3]=14 then checkbox14.enabled:=false;
    if tablica[help1,3]=15 then checkbox15.enabled:=false;
    if tablica[help1,3]=16 then checkbox16.enabled:=false;
    if tablica[help1,3]=17 then checkbox17.enabled:=false;
    if tablica[help1,3]=18 then checkbox18.enabled:=false;
    if tablica[help1,3]=19 then checkbox19.enabled:=false;
    if tablica[help1,3]=20 then checkbox20.enabled:=false;
    if tablica[help1,3]=21 then checkbox21.enabled:=false;
    if tablica[help1,3]=22 then checkbox22.enabled:=false;
    if tablica[help1,3]=23 then checkbox23.enabled:=false;
    if tablica[help1,3]=24 then checkbox24.enabled:=false;
    if tablica[help1,3]=25 then checkbox25.enabled:=false;
    if tablica[help1,3]=26 then checkbox26.enabled:=false;
    if tablica[help1,3]=27 then checkbox27.enabled:=false;
    if tablica[help1,3]=28 then checkbox28.enabled:=false;
    if tablica[help1,3]=29 then checkbox29.enabled:=false;
    if tablica[help1,3]=30 then checkbox30.enabled:=false;
    if tablica[help1,3]=31 then checkbox31.enabled:=false;
    if tablica[help1,3]=32 then checkbox32.enabled:=false;
    if tablica[help1,3]=33 then checkbox33.enabled:=false;
    if tablica[help1,3]=34 then checkbox34.enabled:=false;
    if tablica[help1,3]=35 then checkbox35.enabled:=false;
    if tablica[help1,3]=36 then checkbox36.enabled:=false;
    if tablica[help1,3]=37 then checkbox37.enabled:=false;
    if tablica[help1,3]=38 then checkbox38.enabled:=false;
    if tablica[help1,3]=39 then checkbox39.enabled:=false;
    if tablica[help1,3]=40 then checkbox40.enabled:=false;
    if tablica[help1,3]=41 then checkbox41.enabled:=false;
    if tablica[help1,3]=42 then checkbox42.enabled:=false;
    if tablica[help1,3]=43 then checkbox43.enabled:=false;
    if tablica[help1,3]=44 then checkbox44.enabled:=false;
    if tablica[help1,3]=45 then checkbox45.enabled:=false;
    if tablica[help1,3]=46 then checkbox46.enabled:=false;
    if tablica[help1,3]=47 then checkbox47.enabled:=false;
    if tablica[help1,3]=48 then checkbox48.enabled:=false;
    if tablica[help1,3]=49 then checkbox49.enabled:=false;
    if tablica[help1,3]=50 then checkbox50.enabled:=false;
    if tablica[help1,3]=51 then checkbox51.enabled:=false;
    if tablica[help1,3]=52 then checkbox52.enabled:=false;
    if tablica[help1,3]=53 then checkbox53.enabled:=false;
    if tablica[help1,3]=54 then checkbox54.enabled:=false;
    if tablica[help1,3]=55 then checkbox55.enabled:=false;
    if tablica[help1,3]=56 then checkbox56.enabled:=false;
    if tablica[help1,3]=57 then checkbox57.enabled:=false;
    if tablica[help1,3]=58 then checkbox58.enabled:=false;
    if tablica[help1,3]=59 then checkbox59.enabled:=false;
    if tablica[help1,3]=60 then checkbox60.enabled:=false;
    if tablica[help1,3]=61 then checkbox61.enabled:=false;
    if tablica[help1,3]=62 then checkbox62.enabled:=false;
    if tablica[help1,3]=63 then checkbox63.enabled:=false;
    if tablica[help1,3]=64 then checkbox64.enabled:=false;
    if tablica[help1,3]=65 then checkbox65.enabled:=false;
    if tablica[help1,3]=66 then checkbox66.enabled:=false;
    if tablica[help1,3]=67 then checkbox67.enabled:=false;
    if tablica[help1,3]=68 then checkbox68.enabled:=false;
    if tablica[help1,3]=69 then checkbox69.enabled:=false;
    if tablica[help1,3]=70 then checkbox70.enabled:=false;
    if tablica[help1,3]=71 then checkbox71.enabled:=false;
    if tablica[help1,3]=72 then checkbox72.enabled:=false;
    if tablica[help1,3]=73 then checkbox73.enabled:=false;
    if tablica[help1,3]=74 then checkbox74.enabled:=false;
    if tablica[help1,3]=75 then checkbox75.enabled:=false;
    if tablica[help1,3]=76 then checkbox76.enabled:=false;
    if tablica[help1,3]=77 then checkbox77.enabled:=false;
    if tablica[help1,3]=78 then checkbox78.enabled:=false;
    if tablica[help1,3]=79 then checkbox79.enabled:=false;
    if tablica[help1,3]=80 then checkbox80.enabled:=false;
   end;
 end;

if (nr_liczb=3) and (ilosc_1<>0) then
 begin
  for help1:=1 to 10 do
   begin
    if tablica[help1,1]=1 then checkbox1.enabled:=false;
    if tablica[help1,1]=2 then checkbox2.enabled:=false;
    if tablica[help1,1]=3 then checkbox3.enabled:=false;
    if tablica[help1,1]=4 then checkbox4.enabled:=false;
    if tablica[help1,1]=5 then checkbox5.enabled:=false;
    if tablica[help1,1]=6 then checkbox6.enabled:=false;
    if tablica[help1,1]=7 then checkbox7.enabled:=false;
    if tablica[help1,1]=8 then checkbox8.enabled:=false;
    if tablica[help1,1]=9 then checkbox9.enabled:=false;
    if tablica[help1,1]=10 then checkbox10.enabled:=false;
    if tablica[help1,1]=11 then checkbox11.enabled:=false;
    if tablica[help1,1]=12 then checkbox12.enabled:=false;
    if tablica[help1,1]=13 then checkbox13.enabled:=false;
    if tablica[help1,1]=14 then checkbox14.enabled:=false;
    if tablica[help1,1]=15 then checkbox15.enabled:=false;
    if tablica[help1,1]=16 then checkbox16.enabled:=false;
    if tablica[help1,1]=17 then checkbox17.enabled:=false;
    if tablica[help1,1]=18 then checkbox18.enabled:=false;
    if tablica[help1,1]=19 then checkbox19.enabled:=false;
    if tablica[help1,1]=20 then checkbox20.enabled:=false;
    if tablica[help1,1]=21 then checkbox21.enabled:=false;
    if tablica[help1,1]=22 then checkbox22.enabled:=false;
    if tablica[help1,1]=23 then checkbox23.enabled:=false;
    if tablica[help1,1]=24 then checkbox24.enabled:=false;
    if tablica[help1,1]=25 then checkbox25.enabled:=false;
    if tablica[help1,1]=26 then checkbox26.enabled:=false;
    if tablica[help1,1]=27 then checkbox27.enabled:=false;
    if tablica[help1,1]=28 then checkbox28.enabled:=false;
    if tablica[help1,1]=29 then checkbox29.enabled:=false;
    if tablica[help1,1]=30 then checkbox30.enabled:=false;
    if tablica[help1,1]=31 then checkbox31.enabled:=false;
    if tablica[help1,1]=32 then checkbox32.enabled:=false;
    if tablica[help1,1]=33 then checkbox33.enabled:=false;
    if tablica[help1,1]=34 then checkbox34.enabled:=false;
    if tablica[help1,1]=35 then checkbox35.enabled:=false;
    if tablica[help1,1]=36 then checkbox36.enabled:=false;
    if tablica[help1,1]=37 then checkbox37.enabled:=false;
    if tablica[help1,1]=38 then checkbox38.enabled:=false;
    if tablica[help1,1]=39 then checkbox39.enabled:=false;
    if tablica[help1,1]=40 then checkbox40.enabled:=false;
    if tablica[help1,1]=41 then checkbox41.enabled:=false;
    if tablica[help1,1]=42 then checkbox42.enabled:=false;
    if tablica[help1,1]=43 then checkbox43.enabled:=false;
    if tablica[help1,1]=44 then checkbox44.enabled:=false;
    if tablica[help1,1]=45 then checkbox45.enabled:=false;
    if tablica[help1,1]=46 then checkbox46.enabled:=false;
    if tablica[help1,1]=47 then checkbox47.enabled:=false;
    if tablica[help1,1]=48 then checkbox48.enabled:=false;
    if tablica[help1,1]=49 then checkbox49.enabled:=false;
    if tablica[help1,1]=50 then checkbox50.enabled:=false;
    if tablica[help1,1]=51 then checkbox51.enabled:=false;
    if tablica[help1,1]=52 then checkbox52.enabled:=false;
    if tablica[help1,1]=53 then checkbox53.enabled:=false;
    if tablica[help1,1]=54 then checkbox54.enabled:=false;
    if tablica[help1,1]=55 then checkbox55.enabled:=false;
    if tablica[help1,1]=56 then checkbox56.enabled:=false;
    if tablica[help1,1]=57 then checkbox57.enabled:=false;
    if tablica[help1,1]=58 then checkbox58.enabled:=false;
    if tablica[help1,1]=59 then checkbox59.enabled:=false;
    if tablica[help1,1]=60 then checkbox60.enabled:=false;
    if tablica[help1,1]=61 then checkbox61.enabled:=false;
    if tablica[help1,1]=62 then checkbox62.enabled:=false;
    if tablica[help1,1]=63 then checkbox63.enabled:=false;
    if tablica[help1,1]=64 then checkbox64.enabled:=false;
    if tablica[help1,1]=65 then checkbox65.enabled:=false;
    if tablica[help1,1]=66 then checkbox66.enabled:=false;
    if tablica[help1,1]=67 then checkbox67.enabled:=false;
    if tablica[help1,1]=68 then checkbox68.enabled:=false;
    if tablica[help1,1]=69 then checkbox69.enabled:=false;
    if tablica[help1,1]=70 then checkbox70.enabled:=false;
    if tablica[help1,1]=71 then checkbox71.enabled:=false;
    if tablica[help1,1]=72 then checkbox72.enabled:=false;
    if tablica[help1,1]=73 then checkbox73.enabled:=false;
    if tablica[help1,1]=74 then checkbox74.enabled:=false;
    if tablica[help1,1]=75 then checkbox75.enabled:=false;
    if tablica[help1,1]=76 then checkbox76.enabled:=false;
    if tablica[help1,1]=77 then checkbox77.enabled:=false;
    if tablica[help1,1]=78 then checkbox78.enabled:=false;
    if tablica[help1,1]=79 then checkbox79.enabled:=false;
    if tablica[help1,1]=80 then checkbox80.enabled:=false;
   end;
 end;

if (nr_liczb=3) and (ilosc_2<>0) then
 begin
  for help1:=1 to 10 do
   begin
    if tablica[help1,2]=1 then checkbox1.enabled:=false;
    if tablica[help1,2]=2 then checkbox2.enabled:=false;
    if tablica[help1,2]=3 then checkbox3.enabled:=false;
    if tablica[help1,2]=4 then checkbox4.enabled:=false;
    if tablica[help1,2]=5 then checkbox5.enabled:=false;
    if tablica[help1,2]=6 then checkbox6.enabled:=false;
    if tablica[help1,2]=7 then checkbox7.enabled:=false;
    if tablica[help1,2]=8 then checkbox8.enabled:=false;
    if tablica[help1,2]=9 then checkbox9.enabled:=false;
    if tablica[help1,2]=10 then checkbox10.enabled:=false;
    if tablica[help1,2]=11 then checkbox11.enabled:=false;
    if tablica[help1,2]=12 then checkbox12.enabled:=false;
    if tablica[help1,2]=13 then checkbox13.enabled:=false;
    if tablica[help1,2]=14 then checkbox14.enabled:=false;
    if tablica[help1,2]=15 then checkbox15.enabled:=false;
    if tablica[help1,2]=16 then checkbox16.enabled:=false;
    if tablica[help1,2]=17 then checkbox17.enabled:=false;
    if tablica[help1,2]=18 then checkbox18.enabled:=false;
    if tablica[help1,2]=19 then checkbox19.enabled:=false;
    if tablica[help1,2]=20 then checkbox20.enabled:=false;
    if tablica[help1,2]=21 then checkbox21.enabled:=false;
    if tablica[help1,2]=22 then checkbox22.enabled:=false;
    if tablica[help1,2]=23 then checkbox23.enabled:=false;
    if tablica[help1,2]=24 then checkbox24.enabled:=false;
    if tablica[help1,2]=25 then checkbox25.enabled:=false;
    if tablica[help1,2]=26 then checkbox26.enabled:=false;
    if tablica[help1,2]=27 then checkbox27.enabled:=false;
    if tablica[help1,2]=28 then checkbox28.enabled:=false;
    if tablica[help1,2]=29 then checkbox29.enabled:=false;
    if tablica[help1,2]=30 then checkbox30.enabled:=false;
    if tablica[help1,2]=31 then checkbox31.enabled:=false;
    if tablica[help1,2]=32 then checkbox32.enabled:=false;
    if tablica[help1,2]=33 then checkbox33.enabled:=false;
    if tablica[help1,2]=34 then checkbox34.enabled:=false;
    if tablica[help1,2]=35 then checkbox35.enabled:=false;
    if tablica[help1,2]=36 then checkbox36.enabled:=false;
    if tablica[help1,2]=37 then checkbox37.enabled:=false;
    if tablica[help1,2]=38 then checkbox38.enabled:=false;
    if tablica[help1,2]=39 then checkbox39.enabled:=false;
    if tablica[help1,2]=40 then checkbox40.enabled:=false;
    if tablica[help1,2]=41 then checkbox41.enabled:=false;
    if tablica[help1,2]=42 then checkbox42.enabled:=false;
    if tablica[help1,2]=43 then checkbox43.enabled:=false;
    if tablica[help1,2]=44 then checkbox44.enabled:=false;
    if tablica[help1,2]=45 then checkbox45.enabled:=false;
    if tablica[help1,2]=46 then checkbox46.enabled:=false;
    if tablica[help1,2]=47 then checkbox47.enabled:=false;
    if tablica[help1,2]=48 then checkbox48.enabled:=false;
    if tablica[help1,2]=49 then checkbox49.enabled:=false;
    if tablica[help1,2]=50 then checkbox50.enabled:=false;
    if tablica[help1,2]=51 then checkbox51.enabled:=false;
    if tablica[help1,2]=52 then checkbox52.enabled:=false;
    if tablica[help1,2]=53 then checkbox53.enabled:=false;
    if tablica[help1,2]=54 then checkbox54.enabled:=false;
    if tablica[help1,2]=55 then checkbox55.enabled:=false;
    if tablica[help1,2]=56 then checkbox56.enabled:=false;
    if tablica[help1,2]=57 then checkbox57.enabled:=false;
    if tablica[help1,2]=58 then checkbox58.enabled:=false;
    if tablica[help1,2]=59 then checkbox59.enabled:=false;
    if tablica[help1,2]=60 then checkbox60.enabled:=false;
    if tablica[help1,2]=61 then checkbox61.enabled:=false;
    if tablica[help1,2]=62 then checkbox62.enabled:=false;
    if tablica[help1,2]=63 then checkbox63.enabled:=false;
    if tablica[help1,2]=64 then checkbox64.enabled:=false;
    if tablica[help1,2]=65 then checkbox65.enabled:=false;
    if tablica[help1,2]=66 then checkbox66.enabled:=false;
    if tablica[help1,2]=67 then checkbox67.enabled:=false;
    if tablica[help1,2]=68 then checkbox68.enabled:=false;
    if tablica[help1,2]=69 then checkbox69.enabled:=false;
    if tablica[help1,2]=70 then checkbox70.enabled:=false;
    if tablica[help1,2]=71 then checkbox71.enabled:=false;
    if tablica[help1,2]=72 then checkbox72.enabled:=false;
    if tablica[help1,2]=73 then checkbox73.enabled:=false;
    if tablica[help1,2]=74 then checkbox74.enabled:=false;
    if tablica[help1,2]=75 then checkbox75.enabled:=false;
    if tablica[help1,2]=76 then checkbox76.enabled:=false;
    if tablica[help1,2]=77 then checkbox77.enabled:=false;
    if tablica[help1,2]=78 then checkbox78.enabled:=false;
    if tablica[help1,2]=79 then checkbox79.enabled:=false;
    if tablica[help1,2]=80 then checkbox80.enabled:=false;
   end;
 end;



if nr_liczb=1 then form17.Caption:='Dodaj liczby I';
if nr_liczb=2 then form17.caption:='Dodaj liczby II';
if nr_liczb=3 then form17.caption:='Dodaj liczby III';

end;

procedure TForm17.wybranych(ilosc: word);
begin
label2.caption:=IntToStr(ilosc);
if (ilosc>0) and (ilosc<11) then
 begin
  speedbutton2.Enabled:=true;
 end else speedbutton2.enabled:=false;
end;

procedure TForm17.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox2Click(Sender: TObject);
begin
if checkbox2.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox3Click(Sender: TObject);
begin
if checkbox3.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox4Click(Sender: TObject);
begin
if checkbox4.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox5Click(Sender: TObject);
begin
if checkbox5.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox6Click(Sender: TObject);
begin
if checkbox6.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox7Click(Sender: TObject);
begin
if checkbox7.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox8Click(Sender: TObject);
begin
if checkbox8.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox9Click(Sender: TObject);
begin
if checkbox9.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox10Click(Sender: TObject);
begin
if checkbox10.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox11Click(Sender: TObject);
begin
if checkbox11.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox12Click(Sender: TObject);
begin
if checkbox12.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox13Click(Sender: TObject);
begin
if checkbox13.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox14Click(Sender: TObject);
begin
if checkbox14.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox15Click(Sender: TObject);
begin
if checkbox15.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox16Click(Sender: TObject);
begin
if checkbox16.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox17Click(Sender: TObject);
begin
if checkbox17.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox18Click(Sender: TObject);
begin
if checkbox18.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox19Click(Sender: TObject);
begin
if checkbox19.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox20Click(Sender: TObject);
begin
if checkbox20.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox21Click(Sender: TObject);
begin
if checkbox21.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox22Click(Sender: TObject);
begin
if checkbox22.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox23Click(Sender: TObject);
begin
if checkbox23.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox24Click(Sender: TObject);
begin
if checkbox24.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox25Click(Sender: TObject);
begin
if checkbox25.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox26Click(Sender: TObject);
begin
if checkbox26.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox27Click(Sender: TObject);
begin
if checkbox27.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox28Click(Sender: TObject);
begin
if checkbox28.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox29Click(Sender: TObject);
begin
if checkbox29.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox30Click(Sender: TObject);
begin
if checkbox30.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox31Click(Sender: TObject);
begin
if checkbox31.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox32Click(Sender: TObject);
begin
if checkbox32.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox33Click(Sender: TObject);
begin
if checkbox33.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox34Click(Sender: TObject);
begin
if checkbox34.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox35Click(Sender: TObject);
begin
if checkbox35.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox36Click(Sender: TObject);
begin
if checkbox36.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox37Click(Sender: TObject);
begin
if checkbox37.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox38Click(Sender: TObject);
begin
if checkbox38.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox39Click(Sender: TObject);
begin
if checkbox39.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox40Click(Sender: TObject);
begin
if checkbox40.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox41Click(Sender: TObject);
begin
if checkbox41.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox42Click(Sender: TObject);
begin
if checkbox42.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox43Click(Sender: TObject);
begin
if checkbox43.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox44Click(Sender: TObject);
begin
if checkbox44.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox45Click(Sender: TObject);
begin
if checkbox45.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox46Click(Sender: TObject);
begin
if checkbox46.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox47Click(Sender: TObject);
begin
if checkbox47.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox48Click(Sender: TObject);
begin
if checkbox48.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox49Click(Sender: TObject);
begin
if checkbox49.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox50Click(Sender: TObject);
begin
if checkbox50.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox51Click(Sender: TObject);
begin
if checkbox51.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox52Click(Sender: TObject);
begin
if checkbox52.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox53Click(Sender: TObject);
begin
if checkbox53.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox54Click(Sender: TObject);
begin
if checkbox54.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox55Click(Sender: TObject);
begin
if checkbox55.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox56Click(Sender: TObject);
begin
if checkbox56.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox57Click(Sender: TObject);
begin
if checkbox57.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox58Click(Sender: TObject);
begin
if checkbox58.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox59Click(Sender: TObject);
begin
if checkbox59.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox60Click(Sender: TObject);
begin
if checkbox60.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox61Click(Sender: TObject);
begin
if checkbox61.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox62Click(Sender: TObject);
begin
if checkbox62.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox63Click(Sender: TObject);
begin
if checkbox63.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox64Click(Sender: TObject);
begin
if checkbox64.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox65Click(Sender: TObject);
begin
if checkbox65.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox66Click(Sender: TObject);
begin
if checkbox66.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox67Click(Sender: TObject);
begin
if checkbox67.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox68Click(Sender: TObject);
begin
if checkbox68.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox69Click(Sender: TObject);
begin
if checkbox69.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox70Click(Sender: TObject);
begin
if checkbox70.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox71Click(Sender: TObject);
begin
if checkbox71.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox72Click(Sender: TObject);
begin
if checkbox72.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox73Click(Sender: TObject);
begin
if checkbox73.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox74Click(Sender: TObject);
begin
if checkbox74.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox75Click(Sender: TObject);
begin
if checkbox75.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox76Click(Sender: TObject);
begin
if checkbox76.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox77Click(Sender: TObject);
begin
if checkbox77.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox78Click(Sender: TObject);
begin
if checkbox78.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox79Click(Sender: TObject);
begin
if checkbox79.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.CheckBox80Click(Sender: TObject);
begin
if checkbox80.Checked then lwybranych:=lwybranych+1 else lwybranych:=lwybranych-1;
wybranych(lwybranych);
end;

procedure TForm17.SpeedButton2Click(Sender: TObject);
var
help1,help2:integer;
tablica2:array[1..80]of word;
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

help2:=0;
for help1:=1 to ilosc_liczb_gry do
 if tablica2[help1]<>0 then
  begin
   help2:=help2+1;
   tablica[help2,nr_liczb]:=help1;
  end;

for help1:=help2+1 to 10 do tablica[help1,nr_liczb]:=0;

if nr_liczb=1 then ilosc_1:=help2;
if nr_liczb=2 then ilosc_2:=help2;
if nr_liczb=3 then ilosc_3:=help2;
close;
end;

end.
