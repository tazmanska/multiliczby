unit generator_liczb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,main,
  StdCtrls, Spin, Buttons, Gauges;

type
  TForm32 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    se_ilosc_liczb: TSpinEdit;
    cb_nie_byly: TCheckBox;
    RadioButton1: TRadioButton;
    se_od: TSpinEdit;
    Label2: TLabel;
    se_do: TSpinEdit;
    RadioButton2: TRadioButton;
    se_losowanie: TSpinEdit;
    cb_parzyste: TCheckBox;
    cb_jeden_zakres: TCheckBox;
    cb_suma: TCheckBox;
    cb_kolejne: TCheckBox;
    cb_zakres: TCheckBox;
    cb_koncowka: TCheckBox;
    se_parzystych_min: TSpinEdit;
    se_parzystych_max: TSpinEdit;
    se_liczb_zakres_min: TSpinEdit;
    se_liczb_zakres_max: TSpinEdit;
    se_suma_max: TSpinEdit;
    se_suma_min: TSpinEdit;
    se_kolejnych_max: TSpinEdit;
    se_kolejnych_min: TSpinEdit;
    se_koncowka_max: TSpinEdit;
    se_koncowka_min: TSpinEdit;
    se_zakres_max: TSpinEdit;
    se_zakres_min: TSpinEdit;
    SpeedButton2: TSpeedButton;
    e_liczby: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ilosc_prob: TSpinEdit;
    Label10: TLabel;
    Label11: TLabel;
    Gauge1: TGauge;
    SB_pamietaj: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cb_nie_bylyClick(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure cb_parzysteClick(Sender: TObject);
    procedure cb_jeden_zakresClick(Sender: TObject);
    procedure cb_sumaClick(Sender: TObject);
    procedure cb_kolejneClick(Sender: TObject);
    procedure cb_koncowkaClick(Sender: TObject);
    procedure cb_zakresClick(Sender: TObject);
    procedure se_odChange(Sender: TObject);
    procedure se_doChange(Sender: TObject);
    procedure se_losowanieChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
   procedure szukaj(od2,do2,los2:integer);

   function czy_byly(nr:integer):boolean;
  end;

var
  Form32: TForm32;

  liczby_g:array[1..20]of byte;
  od_,do_,los:integer;

implementation

{$R *.DFM}

procedure TForm32.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
Form32:=nil;
end;

procedure TForm32.FormCreate(Sender: TObject);
var
help1,help2:integer;
begin
se_ilosc_liczb.MaxValue:=ilosc_liczb_los;
se_ilosc_liczb.Value:=se_ilosc_liczb.MaxValue;


se_od.MinValue:=1;
se_od.MaxValue:=losowan;
se_do.MinValue:=1;
se_do.MaxValue:=losowan;


se_od.Value:=wspolne[Gra.Numer,1];
se_do.Value:=wspolne[Gra.Numer,2];
se_od.Hint:=(IntToStr(losowanie[wspolne[Gra.Numer,1],21])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,1],22])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,1],23]));
se_do.Hint:=(IntToStr(losowanie[wspolne[Gra.Numer,2],21])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,2],22])+'.'+IntToStr(losowanie[wspolne[Gra.Numer,2],23]));

se_losowanie.MinValue:=1;
se_losowanie.MaxValue:=losowan;

se_losowanie.Value:=losowan;
se_losowanie.Hint:=(IntToStr(losowanie[losowan,21])+'.'+IntToStr(losowanie[losowan,22])+'.'+IntToStr(losowanie[losowan,23]));

se_parzystych_min.MaxValue:=ilosc_liczb_los;
se_parzystych_min.Value:=0;
se_parzystych_max.MaxValue:=ilosc_liczb_los;
se_parzystych_max.Value:=ilosc_liczb_los;

se_kolejnych_min.MaxValue:=ilosc_liczb_los;
se_kolejnych_min.Value:=0;
se_kolejnych_max.MaxValue:=ilosc_liczb_los;
se_kolejnych_max.Value:=ilosc_liczb_los;



help2:=0;
for help1:=ilosc_liczb_gry downto ilosc_liczb_gry-ilosc_liczb_los do inc(help2,help1);
se_suma_max.maxValue:=help2;
se_suma_max.Value:=help2;
se_suma_min.MaxValue:=help2;
se_suma_min.Value:=3;

if Gra.Numer=1 then
 begin
  se_koncowka_min.MaxValue:=8;
  se_koncowka_min.Value:=1;
  se_koncowka_max.MaxValue:=8;
  se_koncowka_max.Value:=8;
 end;

if Gra.Numer<>1 then
 begin
  se_koncowka_min.MaxValue:=5;
  se_koncowka_min.Value:=1;
  se_koncowka_max.MaxValue:=5;
  se_koncowka_max.Value:=5;
 end;

se_zakres_min.MaxValue:=ilosc_liczb_gry;
se_zakres_min.Value:=1;
se_zakres_max.MaxValue:=ilosc_liczb_gry;
se_zakres_max.Value:=ilosc_liczb_gry;

end;

procedure TForm32.cb_nie_bylyClick(Sender: TObject);
begin
if cb_nie_byly.Checked then
 begin
  radiobutton1.Enabled:=true;
  radiobutton2.Enabled:=true;
  radiobutton1click(sender);
 end else
  begin
   radiobutton1.Enabled:=false;
   radiobutton2.Enabled:=false;
   se_od.Enabled:=false;
   se_do.Enabled:=false;
   se_losowanie.Enabled:=false;
  end;
end;

procedure TForm32.RadioButton1Click(Sender: TObject);
begin
if radiobutton1.Checked then
 begin
  se_od.Enabled:=true;
  se_do.Enabled:=true;
  se_losowanie.Enabled:=false;
 end else
  begin
  se_od.Enabled:=false;
  se_do.Enabled:=false;
  se_losowanie.Enabled:=true;
  end;
end;

procedure TForm32.RadioButton2Click(Sender: TObject);
begin
if radiobutton2.Checked then
 begin
  se_od.Enabled:=false;
  se_do.Enabled:=false;
  se_losowanie.Enabled:=true;
 end else
  begin
   se_od.Enabled:=true;
   se_do.Enabled:=true;
   se_losowanie.Enabled:=false;
  end;
end;

procedure TForm32.cb_parzysteClick(Sender: TObject);
begin
if cb_parzyste.Checked then
 begin
  se_parzystych_min.Enabled:=true;
  se_parzystych_max.Enabled:=true;
 end else
  begin
   se_parzystych_min.Enabled:=false;
   se_parzystych_max.Enabled:=false;
  end;
end;

procedure TForm32.cb_jeden_zakresClick(Sender: TObject);
begin
if cb_jeden_zakres.Checked then
 begin
  se_liczb_zakres_min.Enabled:=true;
  se_liczb_zakres_max.Enabled:=true;
 end else
  begin
   se_liczb_zakres_min.Enabled:=false;
   se_liczb_zakres_max.Enabled:=false;
  end;
end;

procedure TForm32.cb_sumaClick(Sender: TObject);
begin
if cb_suma.Checked then
 begin
  se_suma_min.Enabled:=true;
  se_suma_max.Enabled:=true;
 end else
  begin
   se_suma_min.Enabled:=false;
   se_suma_max.Enabled:=false;
  end;
end;

procedure TForm32.cb_kolejneClick(Sender: TObject);
begin
if cb_kolejne.Checked then
 begin
  se_kolejnych_min.Enabled:=true;
  se_kolejnych_max.Enabled:=true;
 end else
  begin
   se_kolejnych_min.Enabled:=false;
   se_kolejnych_max.Enabled:=false;
  end;
end;

procedure TForm32.cb_koncowkaClick(Sender: TObject);
begin
if cb_koncowka.Checked then
 begin
  se_koncowka_min.Enabled:=true;
  se_koncowka_max.Enabled:=true;
 end else
  begin
   se_koncowka_min.Enabled:=false;
   se_koncowka_max.Enabled:=false;
  end;
end;

procedure TForm32.cb_zakresClick(Sender: TObject);
begin
if cb_zakres.Checked then
 begin
  se_zakres_min.Enabled:=true;
  se_zakres_max.Enabled:=true;
 end else
  begin
   se_zakres_min.Enabled:=false;
   se_zakres_max.Enabled:=false;
  end;
end;

procedure TForm32.se_odChange(Sender: TObject);
begin
se_od.Hint:=(IntToStr(losowanie[se_od.Value,21])+'.'+IntToStr(losowanie[se_od.Value,22])+'.'+IntToStr(losowanie[se_od.Value,23]));
end;

procedure TForm32.se_doChange(Sender: TObject);
begin
se_do.Hint:=(IntToStr(losowanie[se_do.Value,21])+'.'+IntToStr(losowanie[se_do.Value,22])+'.'+IntToStr(losowanie[se_do.Value,23]));
end;

procedure TForm32.se_losowanieChange(Sender: TObject);
begin
se_losowanie.Hint:=(IntToStr(losowanie[se_losowanie.Value,21])+'.'+IntToStr(losowanie[se_losowanie.Value,22])+'.'+IntToStr(losowanie[se_losowanie.Value,23]));
end;

procedure TForm32.szukaj(od2,do2,los2:integer);
var
help1,help2,help3,help4,i,j:integer;
warunkow,spelnia:byte;
zak:array[0..9] of byte;
prawda:boolean;
begin
form1.stoper_start;
gauge1.Progress:=0;
gauge1.MaxValue:=ilosc_prob.Value;

warunkow:=0;
if cb_nie_byly.Checked then inc(warunkow);
if cb_parzyste.Checked then inc(warunkow);
if cb_jeden_zakres.Checked then inc(warunkow);
if cb_suma.Checked then inc(warunkow);
if cb_kolejne.Checked then inc(warunkow);
if cb_koncowka.Checked then inc(warunkow);
if cb_zakres.Checked then inc(warunkow);

for help2:=1 to ilosc_liczb_gry do liczby_g[help2]:=help2;
help1:=0;
randomize;

repeat
 inc(help1);
 prawda:=true;

 spelnia:=0;



 for help2:=1 to ilosc_liczb_gry do
  begin
   help3:=liczby_g[help2];
   help4:=random(ilosc_liczb_gry)+1;
   liczby_g[help2]:=liczby_g[help4];
   liczby_g[help4]:=help3;
  end;

    for i:=2 to se_ilosc_liczb.Value do
     begin
      for j:=se_ilosc_liczb.Value DownTo i Do
       if liczby_g[j-1]>liczby_g[j] Then
        begin
         help2:=liczby_g[j-1];
         liczby_g[j-1]:=liczby_g[j];
         liczby_g[j]:=help2;
         End;
     end;


  if cb_nie_byly.Checked then
   begin
    if radiobutton1.Checked then
     begin
      help3:=0;
      for help2:=od2 to do2 do if czy_byly(help2) then inc(help3);
      if help3=0 then inc(spelnia) else prawda:=false;
     end;
    if radiobutton2.Checked then if not czy_byly(los2) then inc(spelnia) else prawda:=false;
   end;

  if cb_parzyste.Checked and prawda then
   begin
    help3:=0;
    for help2:=1 to se_ilosc_liczb.Value do if liczby_g[help2] mod 2 = 0 then inc(help3);
    if (help3>=se_parzystych_min.Value) and (help3<=se_parzystych_max.Value) then inc(spelnia) else prawda:=false;
   end;

  if cb_jeden_zakres.Checked and prawda then
   begin
    for help2:=1 to 8 do zak[help2]:=0;
    for help2:=1 to se_ilosc_liczb.Value do
     begin
      if liczby_g[help2]<=10 then inc(zak[1]) else
       if liczby_g[help2]<=20 then inc(zak[2]) else
        if liczby_g[help2]<=30 then inc(zak[3]) else
         if liczby_g[help2]<=40 then inc(zak[4]) else
          if liczby_g[help2]<=50 then inc(zak[5]) else
           if liczby_g[help2]<=60 then inc(zak[6]) else
            if liczby_g[help2]<=70 then inc(zak[7]) else inc(zak[8]);
     end;
    help3:=0;
    help4:=0;
    for help2:=1 to 8 do if (zak[help2]>0) then
     begin
      inc(help4);
      if (zak[help2]>=se_liczb_zakres_min.Value) and (zak[help2]<=se_liczb_zakres_max.Value) then inc(help3);
     end;
    if help3=help4 then inc(spelnia) else prawda:=false;
   end;

  if cb_suma.Checked and prawda then
   begin
    help3:=0;
    for help2:=1 to se_ilosc_liczb.Value do inc(help3,liczby_g[help2]);
    if (help3>=se_suma_min.Value) and (help3<=se_suma_max.Value) then inc(spelnia) else prawda:=false;
   end;

  if cb_kolejne.Checked and prawda then
   begin
    help3:=0;
    for help2:=1 to se_ilosc_liczb.Value-1 do if liczby_g[help2+1]-liczby_g[help2]=1 then inc(help3);
    if (help3>=se_kolejnych_min.Value) and (help3<=se_kolejnych_max.Value) then inc(spelnia) else prawda:=false;
   end;

  if cb_koncowka.Checked and prawda then
   begin
    for help2:=0 to 9 do zak[help2]:=0;
    for help2:=1 to se_ilosc_liczb.Value do inc(zak[liczby_g[help2] mod 10]);
    help3:=0;
    help4:=0;
    for help2:=0 to 9 do if zak[help2]>0 then
     begin
      inc(help4);
      if (zak[help2]>=se_koncowka_min.Value) and (zak[help2]<=se_koncowka_max.Value) then inc(help3);
     end;
    if help3=help4 then inc(spelnia) else prawda:=false;
   end;

  if cb_zakres.Checked and prawda then if (liczby_g[1]>=se_zakres_min.Value) and (liczby_g[se_ilosc_liczb.Value]<=se_zakres_max.Value) then inc(spelnia) else prawda:=false;

 gauge1.Progress:=help1;

until (help1=ilosc_prob.Value) or (spelnia=warunkow);

label11.Caption:=IntToStr(help1);

e_liczby.Text:='';
if warunkow=spelnia then for help1:=1 to se_ilosc_liczb.Value do e_liczby.text:=e_liczby.text+IntToStr(liczby_g[help1])+', ' else e_liczby.Text:='Nie znalaz³em liczb';

form32.Caption:='Generator liczb...  (szuka³: '+form1.stoper_stop+')';
end;

procedure TForm32.SpeedButton2Click(Sender: TObject);
begin

if cb_nie_byly.Checked then
 begin
  if radiobutton1.Checked then
   begin
    if se_od.Value<=se_do.Value then
     begin
      od_:=se_od.Value;
      do_:=se_do.Value;
     end;
    if se_od.Value>se_do.Value then
     begin
      do_:=se_od.Value;
      od_:=se_do.Value;
     end;
   end else los:=se_losowanie.Value;
 end;

//showmessage('OD: '+IntToStr(od_)+'  DO: '+IntToStr(do_)+'  LOS: '+IntToStr(los));
szukaj(od_,do_,los);
end;

function TForm32.czy_byly(nr: integer): boolean;
var
help1,help2:integer;
begin
help2:=0;
for help1:=1 to se_ilosc_liczb.Value do if wylosowane[nr,liczby_g[help1]] then inc(help2);
if help2=se_ilosc_liczb.value then result:=true else result:=false;
end;

end.
