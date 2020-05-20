unit sprawdz_sys;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,main,
  StdCtrls, Buttons, Spin;

type
  TForm28 = class(TForm)
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    GroupBox2: TGroupBox;
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpeedButton2: TSpeedButton;
    OpenDialog1: TOpenDialog;
    CheckBox1: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure pisz_raport(od_,do_:integer);
  function wczytaj_sys:boolean;
  function czy_liczba(znak:string):boolean;
  function wygrana(trafionych,typowanych:word):integer;
    { Public declarations }
  end;

var
  Form28: TForm28;

  sys_spr:array[1..10000,1..10]of byte;
  wczytany_s:boolean;

  ilosc_z,ilosc_s:integer;

implementation

{$R *.DFM}

procedure TForm28.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
Form28:=nil;
end;

procedure TForm28.FormCreate(Sender: TObject);
begin
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

spinedit1.Value:=wspolne[Gra.Numer,1];
spinedit2.Value:=wspolne[Gra.Numer,2];
spinedit1.Hint:=(IntToStr(losowanie[wspolne[Gra.Numer,1],21])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,1],22])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,1],23]));
spinedit2.Hint:=(IntToStr(losowanie[wspolne[Gra.Numer,2],21])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,2],22])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,2],23]));

end;


procedure TForm28.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm28.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm28.SpeedButton1Click(Sender: TObject);
begin
 if opendialog1.Execute then
  begin
   wczytany_s:=true;
   listbox1.Items.LoadFromFile(opendialog1.filename);
  end;
end;

function TForm28.wczytaj_sys:boolean;
var
plik:textfile;
help1,help2,help3,help6:integer;
linia,liczba:string;
ok:boolean;
begin

ok:=true;

for help1:=1 to 10000 do for help2:=1 to 10 do sys_spr[help1,help2]:=0;

TRY

 assignfile(plik,opendialog1.filename);
 reset(plik);

  for help1:=1 to listbox1.Items.Count do
   begin
    linia:='';
    linia:=listbox1.Items.Strings[help1-1];
    help2:=0;
    help6:=0;
    help3:=length(linia)+1;

    if checkbox1.Checked then
     begin
      while czy_liczba(linia[help6])=false do inc(help6);
      while czy_liczba(linia[help6])=true do inc(help6);
      inc(help6);
     end;

     while help6<>help3 do
      begin
       inc(help2);
       liczba:='';
       while czy_liczba(linia[help6])=false do inc(help6);
       while czy_liczba(linia[help6])=true do
        begin
         liczba:=liczba+linia[help6];
         inc(help6);
        end;
       sys_spr[help1,help2]:=StrToInt(liczba);
      end;
   end;

 closefile(plik);

EXCEPT
 ok:=false;
END;

ilosc_z:=listbox1.Items.Count;
ilosc_s:=help2;
if (ok=true) and (ilosc_s<11) then wczytaj_sys:=true else wczytaj_sys:=false;

end;

function TForm28.czy_liczba(znak: string): boolean;
var
help1:byte;
begin
help1:=0;
if znak='0' then help1:=1;
if znak='1' then help1:=1;
if znak='2' then help1:=1;
if znak='3' then help1:=1;
if znak='4' then help1:=1;
if znak='5' then help1:=1;
if znak='6' then help1:=1;
if znak='7' then help1:=1;
if znak='8' then help1:=1;
if znak='9' then help1:=1;
if znak='10' then help1:=1;
if help1=1 then czy_liczba:=true else czy_liczba:=false;
end;

procedure TForm28.SpeedButton2Click(Sender: TObject);
begin
if wczytaj_sys then
 begin
  if (spinedit1.Value<spinedit2.Value) then pisz_raport(spinedit1.Value,spinedit2.Value);
  if (spinedit1.Value>spinedit2.Value) then pisz_raport(spinedit2.value,spinedit1.value);
 end else showmessage('B³êdny zapis systemu!');
end;

procedure TForm28.pisz_raport(od_,do_:integer);
var
help1,help2,help3,help4,help5:integer;
il_traf:array[0..10] of integer;
wygrana1:array[0..10] of integer;
traf:integer;
begin

help4:=do_-od_+1;

for help1:=0 to 10 do il_traf[help1]:=0;

for help1:=od_ to do_ do
 begin
  for help2:=1 to ilosc_z do
   begin
    traf:=0;
    for help3:=1 to ilosc_s do if wylosowane[help1,sys_spr[help2,help3]] then inc(traf);
    inc(il_traf[traf]);
   end;
 end;

memo1.clear;
if Gra.Numer=1 then
 begin
  for help1:=0 to ilosc_s do wygrana1[help1]:=wygrana(help1,ilosc_s)*il_traf[help1];
  help5:=0;
  for help1:=0 to ilosc_s do help5:=wygrana1[help1]+help5;
 end;

memo1.Lines.Add('Losowania: '+IntToStr(od_)+' - '+IntToStr(do_));
if Gra.Numer=1 then for help1:=0 to ilosc_s do memo1.Lines.Add('Trafieñ: '+IntToStr(help1)+' z '+IntToStr(ilosc_s)+ '  '+IntToStr(il_traf[help1])+'  '+FormatFloat('0.00',wygrana1[help1])+' z³');
if Gra.Numer<>1 then for help1:=0 to ilosc_s do memo1.Lines.Add('Trafieñ: '+IntToStr(help1)+' z '+IntToStr(ilosc_s)+ '  '+IntToStr(il_traf[help1]));
memo1.lines.add('');
memo1.Lines.Add('Koszt:   '+FormatFloat('0.00',ilosc_z*oplata*help4)+' z³');
if Gra.Numer=1 then memo1.Lines.Add('Wygrana: '+FormatFloat('0.00',help5)+' z³');
if Gra.Numer=1 then memo1.lines.add('Zysk:    '+FormatFloat('0.00',help5-(ilosc_z*oplata*help4))+' z³');
memo1.lines.add('--------------------------------');


if Gra.Numer=1 then
 begin
  for help1:=0 to 10 do il_traf[help1]:=0;
  for help1:=0 to ilosc_s do wygrana1[help1]:=0;
  memo1.Lines.Add('Ostatnie losowanie: '+IntToStr(do_));
  for help1:=1 to ilosc_z do
   begin
    traf:=0;
    for help3:=1 to ilosc_s do if wylosowane[do_,sys_spr[help1,help3]] then inc(traf);
    inc(il_traf[traf]);
   end;
  for help1:=0 to ilosc_s do wygrana1[help1]:=wygrana(help1,ilosc_s)*il_traf[help1];
  for help1:=0 to ilosc_s do memo1.Lines.Add('Trafieñ: '+IntToStr(help1)+' z '+IntToStr(ilosc_s)+ '  '+IntToStr(il_traf[help1])+'  '+FormatFloat('0.00',wygrana1[help1])+' z³');
  help5:=0;
  for help1:=0 to ilosc_s do help5:=wygrana1[help1]+help5;
  memo1.lines.add('');
  memo1.Lines.Add('Koszt:   '+FormatFloat('0.00',ilosc_z*oplata)+' z³');
  memo1.Lines.Add('Wygrana: '+FormatFloat('0.00',help5)+' z³');
  memo1.lines.add('Zysk:    '+FormatFloat('0.00',help5-(ilosc_z*oplata))+' z³');
 end;

if Gra.Numer<>1 then
 begin
  for help1:=0 to 10 do il_traf[help1]:=0;
  memo1.Lines.Add('Ostatnie losowanie: '+IntToStr(do_));
  for help1:=1 to ilosc_z do
   begin
    traf:=0;
    for help3:=1 to ilosc_s do if wylosowane[do_,sys_spr[help1,help3]] then inc(traf);
    inc(il_traf[traf]);
   end;
  for help1:=0 to ilosc_s do memo1.Lines.Add('Trafieñ: '+IntToStr(help1)+' z '+IntToStr(ilosc_s)+ '  '+IntToStr(il_traf[help1]));
  memo1.lines.add('');
  memo1.Lines.Add('Koszt:   '+FormatFloat('0.00',ilosc_z*oplata)+' z³');
 end;

end;

function TForm28.wygrana(trafionych, typowanych: word): integer;
var
help1:integer;
begin
help1:=0;
if typowanych=10 then
 case trafionych of
  10:help1:=100000;
   9:help1:=5000;
   8:help1:=260;
   7:help1:=70;
   6:help1:=6;
   5:help1:=2;
   4:help1:=1;
 end;
if typowanych=9 then
 case trafionych of
  9:help1:=24000;
  8:help1:=1000;
  7:help1:=150;
  6:help1:=20;
  5:help1:=4;
  4:help1:=1;
 end;
if typowanych=8 then
 case trafionych of
  8:help1:=10000;
  7:help1:=300;
  6:help1:=30;
  5:help1:=10;
  4:help1:=2;
 end;
if typowanych=7 then
 case trafionych of
  7:help1:=2500;
  6:help1:=100;
  5:help1:=10;
  4:help1:=2;
  3:help1:=1;
 end;
if typowanych=6 then
 case trafionych of
  6:help1:=600;
  5:help1:=60;
  4:help1:=4;
  3:help1:=1;
 end;
if typowanych=5 then
 case trafionych of
  5:help1:=330;
  4:help1:=10;
  3:help1:=2;
 end;
if typowanych=4 then
 case trafionych of
  4:help1:=40;
  3:help1:=4;
  2:help1:=1;
 end;
if typowanych=3 then
 case trafionych of
  3:help1:=26;
  2:help1:=1;
 end;
if (typowanych=2) and (trafionych=2) then help1:=8;
if (typowanych=1) and (trafionych=1) then help1:=2;
wygrana:=help1;

end;

end.
