unit uklady;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, main,
  Buttons, StdCtrls, Spin;

type
  TForm29 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    sdlugosc_u: TSpinEdit;
    Label4: TLabel;
    suklad_1: TSpinEdit;
    suklad_2: TSpinEdit;
    suklad_3: TSpinEdit;
    suklad_4: TSpinEdit;
    suklad_5: TSpinEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    GroupBox3: TGroupBox;
    lraport: TListBox;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    sdlugosc_u2: TSpinEdit;
    Label10: TLabel;
    smax_u: TSpinEdit;
    Label11: TLabel;
    smin_u: TSpinEdit;
    SpeedButton3: TSpeedButton;
    GroupBox5: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    GroupBox6: TGroupBox;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure sdlugosc_uChange(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public

  procedure ustaw_spiny;
  procedure sprawdz_uklad(od_,do_,dlugosc,u1,u2,u3,u4,u5:integer);
  procedure sprawdz_uklady(od_,do_,dlugosc,max,min:integer);
  procedure sprawdz_aktualne(od_,do_:integer);
    { Public declarations }
  end;

var
  Form29: TForm29;

  liczby_uklady:array[1..10]of byte;
  ilosc_liczb10:byte;
  czy_liczby_u:boolean;

implementation
uses podajliczby;

{$R *.DFM}

procedure TForm29.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
Form29:=nil;
end;

procedure TForm29.FormCreate(Sender: TObject);
var help1:integer;
begin
speedbutton5.Enabled:=false;
czy_liczby_u:=false;
for help1:=1 to 10 do liczby_uklady[help1]:=0;
ilosc_liczb10:=0;
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;   

spinedit1.Value:=wspolne[Gra.Numer,1];
spinedit2.Value:=wspolne[Gra.Numer,2];
spinedit1.Hint:=(IntToStr(losowanie[wspolne[Gra.Numer,1],21])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,1],22])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,1],23]));
spinedit2.Hint:=(IntToStr(losowanie[wspolne[Gra.Numer,2],21])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,2],22])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,2],23]));

end;

procedure TForm29.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm29.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm29.SpeedButton1Click(Sender: TObject);
var help1:byte;
begin
liczby_dla_opcji:=10;
Application.CreateForm(TForm16,form16);
form16.Showmodal;
if ilosc_liczb10<>0 then
 begin
  label2.Caption:=IntToStr(ilosc_liczb10)+':'+#13;
  if ilosc_liczb10<>0 then for help1:=1 to ilosc_liczb10 do label2.caption:=(label2.caption+IntToStr(liczby_uklady[help1])+', ');
  if (ilosc_liczb10>0) and (ilosc_liczb10<11) then czy_liczby_u:=true else czy_liczby_u:=false;
  ustaw_spiny;
 end;
end;

procedure TForm29.ustaw_spiny;
begin
 if suklad_1.Value>ilosc_liczb10 then suklad_1.Value:=ilosc_liczb10;
 if suklad_2.Value>ilosc_liczb10 then suklad_2.Value:=ilosc_liczb10;
 if suklad_3.Value>ilosc_liczb10 then suklad_3.Value:=ilosc_liczb10;
 if suklad_4.Value>ilosc_liczb10 then suklad_4.Value:=ilosc_liczb10;
 if suklad_5.Value>ilosc_liczb10 then suklad_5.Value:=ilosc_liczb10;

 suklad_1.MaxValue:=ilosc_liczb10;
 suklad_2.MaxValue:=ilosc_liczb10;
 suklad_3.MaxValue:=ilosc_liczb10;
 suklad_4.MaxValue:=ilosc_liczb10;
 suklad_5.MaxValue:=ilosc_liczb10;

 if smax_u.Value>ilosc_liczb10 then smax_u.Value:=ilosc_liczb10;
 smin_u.Value:=0;

 smax_u.MaxValue:=ilosc_liczb10;
 smin_u.MaxValue:=ilosc_liczb10;

end;

procedure TForm29.SpeedButton2Click(Sender: TObject);
begin
if czy_liczby_u then
 begin
  if spinedit1.Value<spinedit2.Value then
   begin
    if spinedit2.Value-spinedit1.Value>sdlugosc_u.Value then sprawdz_uklad(spinedit1.value,spinedit2.value,sdlugosc_u.value,suklad_5.Value,suklad_4.Value,suklad_3.Value,suklad_2.Value,suklad_1.Value);
   end;
  if spinedit2.Value<spinedit1.Value then
   begin
    if spinedit1.Value-spinedit2.Value>sdlugosc_u.Value then sprawdz_uklad(spinedit2.value,spinedit1.value,sdlugosc_u.value,suklad_5.Value,suklad_4.Value,suklad_3.Value,suklad_2.Value,suklad_1.Value);
   end;
 end;
end;

procedure TForm29.sprawdz_uklad(od_, do_, dlugosc, u1, u2, u3, u4, u5: integer);
var
help1,help2,help3,help4,help5,help6,max,min:integer;
tab_temp:array[1..5000,1..2]of word;
tab_temp1:array[1..5000]of byte;
begin

for help1:=1 to losowan do
 begin
  tab_temp[help1,1]:=0;
  tab_temp[help1,2]:=0;
  tab_temp1[help1]:=0;
 end;

for help1:=od_ to do_ do
 begin
  help3:=0;
  for help2:=1 to ilosc_liczb10 do if wylosowane[help1,liczby_uklady[help2]] then inc(help3);
  tab_temp1[help1]:=help3;
 end;


max:=0;
min:=10;

help4:=0;
help5:=0;

lraport.Clear;

if dlugosc=2 then
 begin
  for help1:=od_+1 to do_-1 do
   begin
    if (tab_temp1[help1-1]=u2) and (tab_temp1[help1]=u1) then
     begin
      inc(help4);
      tab_temp[help4,1]:=help1;
      tab_temp[help4,2]:=tab_temp1[help1+1];
      help5:=help5+tab_temp1[help1+1];
      if tab_temp1[help1+1]>max then max:=tab_temp1[help1+1];
      if tab_temp1[help1+1]<min then min:=tab_temp1[help1+1];
     end;
   end;
  if help4<>0 then
   begin
    lraport.Items.Add('Uk³ad: '+IntToStr(u2)+' - '+IntToStr(u1));
    lraport.items.add('Iloœæ: '+IntToStr(help4));
    lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-1)/help4));
    lraport.items.add('Max: '+IntToStr(max)+'  Min: '+IntToStr(min)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
    lraport.items.add('-------------------------------');
     for help6:=1 to help4 do lraport.items.add(IntToStr(tab_temp[help6,1])+' => '+IntToStr(tab_temp[help6,2]));
   end else lraport.Items.add('Uk³ad nie znaleziony.');
 end;

if dlugosc=3 then
 begin
  for help1:=od_+2 to do_-1 do
   begin
    if (tab_temp1[help1-2]=u3) and (tab_temp1[help1-1]=u2) and (tab_temp1[help1]=u1) then
     begin
      inc(help4);
      tab_temp[help4,1]:=help1;
      tab_temp[help4,2]:=tab_temp1[help1+1];
      help5:=help5+tab_temp1[help1+1];
      if tab_temp1[help1+1]>max then max:=tab_temp1[help1+1];
      if tab_temp1[help1+1]<min then min:=tab_temp1[help1+1];
     end;
   end;
  if help4<>0 then
   begin
    lraport.Items.Add('Uk³ad: '+IntToStr(u3)+' - '+IntToStr(u2)+' - '+IntToStr(u1));
    lraport.items.add('Iloœæ: '+IntToStr(help4));
    lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-2)/help4));
    lraport.items.add('Max: '+IntToStr(max)+'  Min: '+IntToStr(min)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
    lraport.items.add('-------------------------------');
     for help6:=1 to help4 do lraport.items.add(IntToStr(tab_temp[help6,1])+' => '+IntToStr(tab_temp[help6,2]));
   end else lraport.Items.add('Uk³ad nie znaleziony.');
 end;

if dlugosc=4 then
 begin
  for help1:=od_+3 to do_-1 do
   begin
    if (tab_temp1[help1-3]=u4) and (tab_temp1[help1-2]=u3) and (tab_temp1[help1-1]=u2) and (tab_temp1[help1]=u1) then
     begin
      inc(help4);
      tab_temp[help4,1]:=help1;
      tab_temp[help4,2]:=tab_temp1[help1+1];
      help5:=help5+tab_temp1[help1+1];
      if tab_temp1[help1+1]>max then max:=tab_temp1[help1+1];
      if tab_temp1[help1+1]<min then min:=tab_temp1[help1+1];
     end;
   end;
  if help4<>0 then
   begin
    lraport.Items.Add('Uk³ad: '+IntToStr(u4)+' - '+IntToStr(u3)+' - '+IntToStr(u2)+' - '+IntToStr(u1));
    lraport.items.add('Iloœæ: '+IntToStr(help4));
    lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-3)/help4));
    lraport.items.add('Max: '+IntToStr(max)+'  Min: '+IntToStr(min)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
    lraport.items.add('-------------------------------');
     for help6:=1 to help4 do lraport.items.add(IntToStr(tab_temp[help6,1])+' => '+IntToStr(tab_temp[help6,2]));
   end else lraport.Items.add('Uk³ad nie znaleziony.');
 end;

if dlugosc=5 then
 begin
  for help1:=od_+4 to do_-1 do
   begin
    if (tab_temp1[help1-4]=u5) and (tab_temp1[help1-3]=u4) and (tab_temp1[help1-2]=u3) and (tab_temp1[help1-1]=u2) and (tab_temp1[help1]=u1) then
     begin
      inc(help4);
      tab_temp[help4,1]:=help1;
      tab_temp[help4,2]:=tab_temp1[help1+1];
      help5:=help5+tab_temp1[help1+1];
      if tab_temp1[help1+1]>max then max:=tab_temp1[help1+1];
      if tab_temp1[help1+1]<min then min:=tab_temp1[help1+1];
     end;
   end;
  if help4<>0 then
   begin
    lraport.Items.Add('Uk³ad: '+IntToStr(u5)+' - '+IntToStr(u4)+' - '+IntToStr(u3)+' - '+IntToStr(u2)+' - '+IntToStr(u1));
    lraport.items.add('Iloœæ: '+IntToStr(help4));
    lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-4)/help4));
    lraport.items.add('Max: '+IntToStr(max)+'  Min: '+IntToStr(min)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
    lraport.items.add('-------------------------------');
     for help6:=1 to help4 do lraport.items.add(IntToStr(tab_temp[help6,1])+' => '+IntToStr(tab_temp[help6,2]));
   end else lraport.Items.add('Uk³ad nie znaleziony.');
 end;

speedbutton5.Enabled:=true;
end;

procedure TForm29.sdlugosc_uChange(Sender: TObject);
begin
if sdlugosc_u.Value=2 then
 begin
  suklad_1.Enabled:=false;
  suklad_2.Enabled:=false;
  suklad_3.Enabled:=false;
  suklad_4.Enabled:=true;
  suklad_5.Enabled:=true;
 end;
if sdlugosc_u.Value=3 then
 begin
  suklad_1.Enabled:=false;
  suklad_2.Enabled:=false;
  suklad_3.Enabled:=true;
  suklad_4.Enabled:=true;
  suklad_5.Enabled:=true;
 end;
if sdlugosc_u.Value=4 then
 begin
  suklad_1.Enabled:=false;
  suklad_2.Enabled:=true;
  suklad_3.Enabled:=true;
  suklad_4.Enabled:=true;
  suklad_5.Enabled:=true;
 end;
if sdlugosc_u.Value=5 then
 begin
  suklad_1.Enabled:=true;
  suklad_2.Enabled:=true;
  suklad_3.Enabled:=true;
  suklad_4.Enabled:=true;
  suklad_5.Enabled:=true;
 end;
end;

procedure TForm29.SpeedButton5Click(Sender: TObject);
begin
form1.savedialog1.FileName:='Raport_uk³ad';
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt';
if form1.savedialog1.Execute then lraport.Items.SaveToFile(form1.savedialog1.filename);
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

procedure TForm29.sprawdz_uklady(od_, do_, dlugosc, max, min: integer);
var
help1,help2,help3,help4,help5,max_,min_:integer;
u1,u2,u3,u4,u5:integer;
tab_temp:array[1..5000,1..2]of word;
tab_temp1:array[1..5000]of byte;
begin


lraport.Clear;

for help1:=1 to losowan do
 begin
  tab_temp[help1,1]:=0;
  tab_temp[help1,2]:=0;
  tab_temp1[help1]:=0;
 end;

for help1:=od_ to do_ do
 begin
  help3:=0;
  for help2:=1 to ilosc_liczb10 do if wylosowane[help1,liczby_uklady[help2]] then inc(help3);
  tab_temp1[help1]:=help3;
 end;



if dlugosc=2 then
 begin
  for help1:=min to max do
   for help2:=min to max do
    begin
     max_:=0;
     min_:=10;
     help4:=0;
     help5:=0;
     for help3:=od_+1 to do_-1 do
      begin
       if (tab_temp1[help3-1]=help1) and (tab_temp1[help3]=help2) then
        begin
         inc(help4);
         tab_temp[help4,1]:=help3;
         tab_temp[help4,2]:=tab_temp1[help3+1];
         help5:=help5+tab_temp1[help3+1];
         if tab_temp1[help3+1]>max_ then max_:=tab_temp1[help3+1];
         if tab_temp1[help3+1]<min_ then min_:=tab_temp1[help3+1];
        end;
      end;
     if help4<>0 then
      begin
       lraport.Items.Add('Uk³ad: '+IntToStr(help1)+' - '+IntToStr(help2));
       lraport.items.add('Iloœæ: '+IntToStr(help4));
       lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-1)/help4));
       lraport.items.add('Max: '+IntToStr(max_)+'  Min: '+IntToStr(min_)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
       lraport.items.add('-------------------------------');
//       for help6:=1 to help4 do lraport.items.add(IntToStr(tab_temp[help6,1])+' => '+IntToStr(tab_temp[help6,2]));
      end else
       begin
        lraport.Items.Add('Uk³ad: '+IntToStr(help1)+' - '+IntToStr(help2));
        lraport.Items.add('Uk³ad nie znaleziony.');
        lraport.items.add('-------------------------------');
       end;
    end;
 end;


if dlugosc=3 then
 begin
  for u1:=min to max do
   for u2:=min to max do
    for u3:=min to max do
    begin
     max_:=0;
     min_:=10;
     help4:=0;
     help5:=0;
     for help3:=od_+2 to do_-1 do
      begin
       if (tab_temp1[help3-2]=u1) and (tab_temp1[help3-1]=u2) and (tab_temp1[help3]=u3) then
        begin
         inc(help4);
         tab_temp[help4,1]:=help3;
         tab_temp[help4,2]:=tab_temp1[help3+1];
         help5:=help5+tab_temp1[help3+1];
         if tab_temp1[help3+1]>max_ then max_:=tab_temp1[help3+1];
         if tab_temp1[help3+1]<min_ then min_:=tab_temp1[help3+1];
        end;
      end;
     if help4<>0 then
      begin
       lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3));
       lraport.items.add('Iloœæ: '+IntToStr(help4));
       lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-2)/help4));
       lraport.items.add('Max: '+IntToStr(max_)+'  Min: '+IntToStr(min_)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
       lraport.items.add('-------------------------------');
//       for help6:=1 to help4 do lraport.items.add(IntToStr(tab_temp[help6,1])+' => '+IntToStr(tab_temp[help6,2]));
      end else
       begin
        lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3));
        lraport.Items.add('Uk³ad nie znaleziony.');
        lraport.items.add('-------------------------------');
       end;
    end;
 end;


if dlugosc=4 then
 begin
  for u1:=min to max do
   for u2:=min to max do
    for u3:=min to max do
     for u4:=min to max do
    begin
     max_:=0;
     min_:=10;
     help4:=0;
     help5:=0;
     for help3:=od_+3 to do_-1 do
      begin
       if (tab_temp1[help3-3]=u1) and (tab_temp1[help3-2]=u2) and (tab_temp1[help3-1]=u3) and (tab_temp1[help3]=u4) then
        begin
         inc(help4);
         tab_temp[help4,1]:=help3;
         tab_temp[help4,2]:=tab_temp1[help3+1];
         help5:=help5+tab_temp1[help3+1];
         if tab_temp1[help3+1]>max_ then max_:=tab_temp1[help3+1];
         if tab_temp1[help3+1]<min_ then min_:=tab_temp1[help3+1];
        end;
      end;
     if help4<>0 then
      begin
       lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3)+' - '+IntToStr(u4));
       lraport.items.add('Iloœæ: '+IntToStr(help4));
       lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-3)/help4));
       lraport.items.add('Max: '+IntToStr(max_)+'  Min: '+IntToStr(min_)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
       lraport.items.add('-------------------------------');
//       for help6:=1 to help4 do lraport.items.add(IntToStr(tab_temp[help6,1])+' => '+IntToStr(tab_temp[help6,2]));
      end else
       begin
        lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3)+' - '+IntToStr(u4));
        lraport.Items.add('Uk³ad nie znaleziony.');
        lraport.items.add('-------------------------------');
       end;
    end;
 end;


if dlugosc=5 then
 begin
  for u1:=min to max do
   for u2:=min to max do
    for u3:=min to max do
     for u4:=min to max do
      for u5:=min to max do
    begin
     max_:=0;
     min_:=10;
     help4:=0;
     help5:=0;
     for help3:=od_+4 to do_-1 do
      begin
       if (tab_temp1[help3-4]=u1) and (tab_temp1[help3-3]=u2) and (tab_temp1[help3-2]=u3) and (tab_temp1[help3-1]=u4) and (tab_temp1[help3]=u5) then
        begin
         inc(help4);
         tab_temp[help4,1]:=help3;
         tab_temp[help4,2]:=tab_temp1[help3+1];
         help5:=help5+tab_temp1[help3+1];
         if tab_temp1[help3+1]>max_ then max_:=tab_temp1[help3+1];
         if tab_temp1[help3+1]<min_ then min_:=tab_temp1[help3+1];
        end;
      end;
     if help4<>0 then
      begin
       lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3)+' - '+IntToStr(u4)+' - '+IntToStr(u5));
       lraport.items.add('Iloœæ: '+IntToStr(help4));
       lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-4)/help4));
       lraport.items.add('Max: '+IntToStr(max_)+'  Min: '+IntToStr(min_)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
       lraport.items.add('-------------------------------');
//       for help6:=1 to help4 do lraport.items.add(IntToStr(tab_temp[help6,1])+' => '+IntToStr(tab_temp[help6,2]));
      end else
       begin
        lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3)+' - '+IntToStr(u4)+' - '+IntToStr(u5));
        lraport.Items.add('Uk³ad nie znaleziony.');
        lraport.items.add('-------------------------------');
       end;
    end;
 end;


speedbutton5.Enabled:=true;
end;

procedure TForm29.SpeedButton3Click(Sender: TObject);
begin
if czy_liczby_u then
 begin
  if spinedit1.Value<spinedit2.Value then
   begin
    if spinedit2.Value-spinedit1.Value>sdlugosc_u2.Value then sprawdz_uklady(spinedit1.value,spinedit2.value,sdlugosc_u2.value,smax_u.Value,smin_u.Value);
   end;
  if spinedit2.Value<spinedit1.Value then
   begin
    if spinedit1.Value-spinedit2.Value>sdlugosc_u2.Value then sprawdz_uklady(spinedit2.value,spinedit1.value,sdlugosc_u2.value,smax_u.Value,smin_u.Value);
   end;
 end;
end;

procedure TForm29.sprawdz_aktualne(od_, do_: integer);
var
help1,help2,help3,help4,help5:integer;
u1,u2,u3,u4,u5,max_,min_:integer;
tab_temp:array[1..5000,1..2]of word;
tab_temp1:array[1..5000]of byte;
begin


lraport.Clear;

for help1:=1 to losowan do
 begin
  tab_temp[help1,1]:=0;
  tab_temp[help1,2]:=0;
  tab_temp1[help1]:=0;
 end;

for help1:=od_ to do_ do
 begin
  help3:=0;
  for help2:=1 to ilosc_liczb10 do if wylosowane[help1,liczby_uklady[help2]] then inc(help3);
  tab_temp1[help1]:=help3;
 end;


max_:=0;
min_:=10;
help4:=0;
help5:=0;

u1:=tab_temp1[do_-1];
u2:=tab_temp1[do_];

 for help3:=od_+1 to do_-1 do
  begin
   if (tab_temp1[help3-1]=u1) and (tab_temp1[help3]=u2) then
    begin
     inc(help4);
     tab_temp[help4,1]:=help3;
     tab_temp[help4,2]:=tab_temp1[help3+1];
     help5:=help5+tab_temp1[help3+1];
      if tab_temp1[help3+1]>max_ then max_:=tab_temp1[help3+1];
      if tab_temp1[help3+1]<min_ then min_:=tab_temp1[help3+1];
    end;
  end;
 if help4<>0 then
  begin
   lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2));
   lraport.items.add('Iloœæ: '+IntToStr(help4));
   lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-1)/help4));
   lraport.items.add('Max: '+IntToStr(max_)+'  Min: '+IntToStr(min_)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
   lraport.items.add('-------------------------------');
  end else
   begin
    lraport.Items.Add('Uk³ad: '+IntToStr(help1)+' - '+IntToStr(help2));
    lraport.Items.add('Uk³ad nie znaleziony.');
    lraport.items.add('-------------------------------');
   end;



max_:=0;
min_:=10;
help4:=0;
help5:=0;

u1:=tab_temp1[do_-2];
u2:=tab_temp1[do_-1];
u3:=tab_temp1[do_];

 for help3:=od_+2 to do_-1 do
  begin
   if (tab_temp1[help3-2]=u1) and (tab_temp1[help3-1]=u2) and (tab_temp1[help3]=u3) then
    begin
     inc(help4);
     tab_temp[help4,1]:=help3;
     tab_temp[help4,2]:=tab_temp1[help3+1];
     help5:=help5+tab_temp1[help3+1];
      if tab_temp1[help3+1]>max_ then max_:=tab_temp1[help3+1];
      if tab_temp1[help3+1]<min_ then min_:=tab_temp1[help3+1];
    end;
  end;
 if help4<>0 then
  begin
   lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3));
   lraport.items.add('Iloœæ: '+IntToStr(help4));
   lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-2)/help4));
   lraport.items.add('Max: '+IntToStr(max_)+'  Min: '+IntToStr(min_)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
   lraport.items.add('-------------------------------');
// for help6:=1 to help4 do lraport.items.add(IntToStr(tab_temp[help6,1])+' => '+IntToStr(tab_temp[help6,2]));
  end else
   begin
    lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3));
    lraport.Items.add('Uk³ad nie znaleziony.');
    lraport.items.add('-------------------------------');
   end;

max_:=0;
min_:=10;
help4:=0;
help5:=0;

u1:=tab_temp1[do_-3];
u2:=tab_temp1[do_-2];
u3:=tab_temp1[do_-1];
u4:=tab_temp1[do_];

 for help3:=od_+3 to do_-1 do
  begin
   if (tab_temp1[help3-3]=u1) and (tab_temp1[help3-2]=u2) and (tab_temp1[help3-1]=u3) and (tab_temp1[help3]=u4) then
    begin
     inc(help4);
     tab_temp[help4,1]:=help3;
     tab_temp[help4,2]:=tab_temp1[help3+1];
     help5:=help5+tab_temp1[help3+1];
      if tab_temp1[help3+1]>max_ then max_:=tab_temp1[help3+1];
      if tab_temp1[help3+1]<min_ then min_:=tab_temp1[help3+1];
    end;
  end;
 if help4<>0 then
  begin
   lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3)+' - '+IntToStr(u4));
   lraport.items.add('Iloœæ: '+IntToStr(help4));
   lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-3)/help4));
   lraport.items.add('Max: '+IntToStr(max_)+'  Min: '+IntToStr(min_)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
   lraport.items.add('-------------------------------');
// for help6:=1 to help4 do lraport.items.add(IntToStr(tab_temp[help6,1])+' => '+IntToStr(tab_temp[help6,2]));
  end else
   begin
    lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3)+' - '+IntToStr(u4));
    lraport.Items.add('Uk³ad nie znaleziony.');
    lraport.items.add('-------------------------------');
   end;


max_:=0;
min_:=10;
help4:=0;
help5:=0;

u1:=tab_temp1[do_-4];
u2:=tab_temp1[do_-3];
u3:=tab_temp1[do_-2];
u4:=tab_temp1[do_-1];
u5:=tab_temp1[do_];

 for help3:=od_+4 to do_-1 do
  begin
   if (tab_temp1[help3-4]=u1) and (tab_temp1[help3-3]=u2) and (tab_temp1[help3-2]=u3) and (tab_temp1[help3-1]=u4) and (tab_temp1[help3]=u5) then
    begin
     inc(help4);
     tab_temp[help4,1]:=help3;
     tab_temp[help4,2]:=tab_temp1[help3+1];
     help5:=help5+tab_temp1[help3+1];
      if tab_temp1[help3+1]>max_ then max_:=tab_temp1[help3+1];
      if tab_temp1[help3+1]<min_ then min_:=tab_temp1[help3+1];
    end;
  end;
 if help4<>0 then
  begin
   lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3)+' - '+IntToStr(u4)+' - '+IntToStr(u5));
   lraport.items.add('Iloœæ: '+IntToStr(help4));
   lraport.items.add('Œrednio co: '+FormatFloat('0.00',(do_-od_-4)/help4));
   lraport.items.add('Max: '+IntToStr(max_)+'  Min: '+IntToStr(min_)+'  Œrednio: '+FormatFloat('0.00',help5/help4));
   lraport.items.add('-------------------------------');
// for help6:=1 to help4 do lraport.items.add(IntToStr(tab_temp[help6,1])+' => '+IntToStr(tab_temp[help6,2]));
  end else
   begin
    lraport.Items.Add('Uk³ad: '+IntToStr(u1)+' - '+IntToStr(u2)+' - '+IntToStr(u3)+' - '+IntToStr(u4)+' - '+IntToStr(u5));
    lraport.Items.add('Uk³ad nie znaleziony.');
    lraport.items.add('-------------------------------');
   end;



speedbutton5.Enabled:=true;
end;

procedure TForm29.SpeedButton4Click(Sender: TObject);
begin
if czy_liczby_u then
 begin
  if spinedit1.Value<spinedit2.Value then
   begin
    if spinedit2.Value-spinedit1.Value>5 then sprawdz_aktualne(spinedit1.value,spinedit2.value);
   end;
  if spinedit2.Value<spinedit1.Value then
   begin
    if spinedit1.Value-spinedit2.Value>5 then sprawdz_aktualne(spinedit2.value,spinedit1.value);
   end;
 end;
end;

end.
