unit testuj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Spin, Buttons,main, Grids;

type
  TForm13 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    StringGrid1: TStringGrid;
    SpeedButton5: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure pokaz_traf(od_,do_:word);
  function oczekuje(od_,do_,nrzestawu,ileliczb,ile:integer):integer;
  function max_ocz(od_,do_,naile,ileliczb:integer):integer;
    { Public declarations }
  end;

var
  Form13: TForm13;
  tab:array[1..20]of word;
  ilosc_liczb7:byte;
  testujl:boolean;
  zak1,zak2:word;

implementation
uses podajliczby;
{$R *.DFM}

procedure TForm13.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
Form13:=nil;
end;



procedure TForm13.FormCreate(Sender: TObject);
var
help1:integer;
begin
testujl:=false;
speedbutton5.Enabled:=false;

spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;


  spinedit1.Value:=wspolne[Gra.Numer,1];
  spinedit2.Value:=wspolne[Gra.Numer,2];
  spinedit1.Hint:=(IntToStr(losowanie[wspolne[Gra.Numer,1],21])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,1],22])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,1],23]));
  spinedit2.Hint:=(IntToStr(losowanie[wspolne[Gra.Numer,2],21])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,2],22])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,2],23]));


stringgrid1.cells[0,0]:='Trafionych';
stringgrid1.cells[1,0]:='Iloœæ';
stringgrid1.cells[2,0]:='Œrednio co';
stringgrid1.cells[3,0]:='Max';
stringgrid1.cells[4,0]:='Oczekuje';
stringgrid1.RowCount:=ilosc_liczb_los+1;
for help1:=1 to ilosc_liczb_los do stringgrid1.cells[0,help1]:=IntToStr(help1);
end;

procedure TForm13.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm13.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm13.SpeedButton1Click(Sender: TObject);
begin
if testujl=true then
 if spinedit1.Value<>spinedit2.Value then
  if spinedit1.Value<spinedit2.Value then pokaz_traf(spinedit1.value,spinedit2.value) else pokaz_traf(spinedit2.value,spinedit1.value);

end;

procedure TForm13.pokaz_traf(od_, do_: word);
var
traf:array[1..20]of word;
help1,help2,ilosc,trafionych:integer;
begin
zak1:=od_;
zak2:=do_;
ilosc:=ilosc_liczb7;

for help1:=1 to 20 do traf[help1]:=0;
for help1:=1 to 20 do
 begin
  stringgrid1.cells[2,help1]:='';
  stringgrid1.cells[3,help1]:='';
 end;



for help1:=od_ to do_ do
 begin
  trafionych:=0;
  for help2:=1 to ilosc do if wylosowane[help1,tab[help2]] {czy_byla_liczba(tab[help2],help1)=true} then inc(trafionych);
  if trafionych<>0 then traf[trafionych]:=traf[trafionych]+1;
 end;


  for help1:=1 to ilosc_liczb_los do
   begin
    stringgrid1.cells[1,help1]:=IntToStr(traf[help1]);
    if traf[help1]<>0 then stringgrid1.cells[2,help1]:=FormatFloat('0.00',(do_-od_+1)/traf[help1]) else stringgrid1.cells[2,help1]:='?';
    if traf[help1]<>0 then stringgrid1.cells[3,help1]:=IntToStr(max_ocz(od_,do_,help1,ilosc)) else stringgrid1.cells[3,help1]:='?';
    stringgrid1.Cells[4,help1]:=IntToSTr(oczekuje(od_,do_,help1,help1,ilosc));
   end;                         {
  if ilosc<ilosc_liczb_los then for help1:=ilosc+1 to ilosc_liczb_los do}
   //begin
   if ilosc<=ilosc_liczb_los then stringgrid1.RowCount:=ilosc+1 else stringgrid1.RowCount:=ilosc_liczb_los+1;{
    stringgrid1.Cells[1,help1]:='-';
    stringgrid1.Cells[2,help1]:='-';
    stringgrid1.Cells[3,help1]:='-';}
   //end;


speedbutton5.Enabled:=true;   

form13.Caption:='Testuj liczby... '+IntToStr(od_)+' - '+IntToStr(do_);
end;


function TForm13.oczekuje(od_, do_, nrzestawu, ileliczb,  ile: integer): integer;
var
help5,help2,help3,help4:integer;
begin
//help1:=-1;
help3:=do_+1;
help5:=0;
repeat
 help3:=help3-1;
 help4:=0;
 for help2:=1 to ile do if wylosowane[help3,tab[help2]] {czy_byla_liczba(tab[help2],help3)=true} then inc(help4);
 if help4<ileliczb then inc(help5);
until (help4>=ileliczb) or (help3=od_);
oczekuje:=help5;
end;

procedure TForm13.SpeedButton5Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='TestujLiczby';
if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid1.rowcount-1 do writeln(filename,stringgrid1.cells[0,help1]+';'+stringgrid1.cells[1,help1]+';'+stringgrid1.cells[2,help1]+';'+stringgrid1.cells[3,help1]+';'+stringgrid1.cells[4,help1]);
  closefile(filename);
 end else form1.zapiszHTML(form13.stringgrid1,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Testuj liczby',label4.caption,1,zak1,zak2);
end;

procedure TForm13.SpeedButton9Click(Sender: TObject);
var help1:byte;
begin
liczby_dla_opcji:=7;
Application.CreateForm(TForm16,form16);
form16.Showmodal;
label6.Caption:=IntToStr(ilosc_liczb7);
if ilosc_liczb7<>0 then label4.Caption:='';
if ilosc_liczb7<>0 then for help1:=1 to ilosc_liczb7 do label4.caption:=(label4.caption+IntToStr(tab[help1])+',');
if (ilosc_liczb7>0) and (ilosc_liczb7<21) then testujl:=true else testujl:=false;
end;

function TForm13.max_ocz(od_, do_, naile, ileliczb: integer): integer;
var
help2,help1,help3,max,max1:integer;
begin
max:=0;
max1:=0;
for help2:=od_ to do_ do
 begin
  help1:=0;
  for help3:=1 to ileliczb do if wylosowane[help2,tab[help3]]=true then inc(help1);
  if help1>=naile then
   begin
    if max>max1 then max1:=max;
    max:=0;
   end else max:=max+1;
 end;
max_ocz:=max1;

end;

end.
