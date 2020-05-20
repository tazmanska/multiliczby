unit poszukiwacz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, main,
  StdCtrls, Spin, Gauges, Buttons, ShellApi;

type
  TForm33 = class(TForm)
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    Label2: TLabel;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    Gauge1: TGauge;
    Label7: TLabel;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    Label8: TLabel;
    SaveDialog1: TSaveDialog;
    SB_pamietaj: TSpeedButton;
    CheckBox1: TCheckBox;
    SpinEdit7: TSpinEdit;
    CheckBox2: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SpinEdit8: TSpinEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpinEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit5Change(Sender: TObject);
    procedure SpinEdit6Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    procedure szukaj(od_, do_, komb, liczb, min, max: integer);
    procedure szukaj2(od_, do_, komb, liczb, min: integer);

    function oczekuje(liczb,naile,od_,do_:integer):integer;
    function oczekuje2(liczb,naile,min,od_,do_:integer):boolean;
    { Private declarations }
  public


    { Public declarations }
  end;

var
  Form33: TForm33;

  liczby:array[1..10]of integer;

  do_pliku:textfile;

implementation

uses Addins;

{$R *.DFM}
{ DONE : zapisanie ustawien }
procedure TForm33.FormClose(Sender: TObject; var Action: TCloseAction);
var help1:byte;
begin
zapisz_opcje('poszukiwacz','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
zapisz_opcje('poszukiwacz','szukaj_kombinacji_'+prefiks_gry,spinedit1.value);
zapisz_opcje('poszukiwacz','oczekuje_na_'+prefiks_gry,spinedit2.value);
if radiobutton1.Checked then help1:=1 else help1:=2;
zapisz_opcje('poszukiwacz','oczekuje_'+prefiks_gry,help1);
zapisz_opcje('poszukiwacz','oczekuje_min_'+prefiks_gry,spinedit8.value);
zapisz_opcje('poszukiwacz','oczekuje_od_'+prefiks_gry,spinedit3.value);
zapisz_opcje('poszukiwacz','oczekuje_do_'+prefiks_gry,spinedit4.value);
zapisz_opcje('poszukiwacz','od_'+prefiks_gry,spinedit5.value);
zapisz_opcje('poszukiwacz','do_'+prefiks_gry,spinedit6.value);
zapisz_opcje('poszukiwacz','max_wynikow_'+prefiks_gry,checkbox1.checked);
zapisz_opcje('poszukiwacz','max_wynikow_ilosc_'+prefiks_gry,spinedit7.value);
zapisz_opcje('poszukiwacz','otworz_plik_'+prefiks_gry,checkbox2.checked);
Action := caFree;
Form33:=nil;
end;

procedure TForm33.SpinEdit1Change(Sender: TObject);
begin
label4.Caption:=IntToStr(spinedit1.value);
if spinedit2.Value>spinedit1.Value then spinedit2.Value:=spinedit1.Value;
spinedit2.MaxValue:=spinedit1.Value;
end;

{ DONE : wczytanie ustawien }
procedure TForm33.FormCreate(Sender: TObject);
var
help1,help2:integer;
pamietaj:boolean;
begin
 case Gra.Numer of
     1:spinedit1.MaxValue:=10;
  2..3:spinedit1.MaxValue:=ilosc_liczb_los;
 end;

spinedit8.MaxValue:=losowan;
spinedit3.MaxValue:=losowan;
spinedit4.MaxValue:=losowan;
spinedit4.Value:=losowan;

pamietaj:=wczytaj_opcje('poszukiwacz','pamietaj_ustawienia_'+prefiks_gry,false);
SB_pamietaj.Down:=pamietaj;

if pamietaj then
 begin
  help1:=wczytaj_opcje('poszukiwacz','szukaj_kombinacji_'+prefiks_gry,5);
  if (help1<1) or (help1>spinedit1.MaxValue) then help1:=5;
  spinedit5.Value:=help1;

  help1:=wczytaj_opcje('poszukiwacz','oczekuje_na_'+prefiks_gry,5);
  if (help1<1) or (help1>spinedit1.MaxValue) then help1:=5;
  spinedit2.value:=help1;

  help1:=wczytaj_opcje('poszukiwacz','oczekuje_'+prefiks_gry,1);
  if help1=1 then radiobutton1.Checked:=true else radiobutton2.Checked:=true;

  help1:=wczytaj_opcje('poszukiwacz','oczekuje_min_'+prefiks_gry,10);
  if (help1<1) or (help1>losowan) then help1:=10;
  spinedit8.Value:=help1;

  help1:=wczytaj_opcje('poszukiwacz','oczekuje_od_'+prefiks_gry,0);
  if (help1<0) or (help1>losowan) then help1:=10;
  spinedit3.Value:=help1;

  help1:=wczytaj_opcje('poszukiwacz','oczekuje_do_'+prefiks_gry,losowan);
  if (help1<0) or (help1>losowan) then help1:=losowan;
  spinedit4.Value:=help1;

  checkbox1.Checked:=wczytaj_opcje('poszukiwacz','max_wynikow_'+prefiks_gry,false);
  help1:=wczytaj_opcje('poszukiwacz','max_wynikow_ilosc_'+prefiks_gry,100);
  if (help1<1) or (help1>10000) then help1:=100;
  spinedit7.Value:=help1;

  checkbox2.Checked:=wczytaj_opcje('poszukiwacz','otworz_plik_'+prefiks_gry,false);
 end;

help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit5.MinValue:=1;
spinedit5.MaxValue:=losowan;
spinedit6.MinValue:=1;
spinedit6.MaxValue:=losowan;

if pamietaj then
 begin
  help1:=wczytaj_opcje('poszukiwacz','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('poszukiwacz','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

spinedit5.Value:=help1;
spinedit6.Value:=help2;
spinedit5.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
spinedit6.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

end;

procedure TForm33.SpinEdit5Change(Sender: TObject);
begin
spinedit5.Hint:=(IntToStr(losowanie[spinedit5.Value,21])+'.'+IntToStr(losowanie[spinedit5.Value,22])+'.'+IntToStr(losowanie[spinedit5.Value,23]));
end;

procedure TForm33.SpinEdit6Change(Sender: TObject);
begin
spinedit6.Hint:=(IntToStr(losowanie[spinedit6.Value,21])+'.'+IntToStr(losowanie[spinedit6.Value,22])+'.'+IntToStr(losowanie[spinedit6.Value,23]));
end;

procedure TForm33.szukaj(od_, do_, komb, liczb, min, max: integer);
var
temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9,temp10:byte;
help1,help2:integer;
znal:int64;
czas:string;
label KONIEC, KONIEC2, KONIEC3, KONIEC4, KONIEC5, KONIEC6, KONIEC7, KONIEC8, KONIEC9, KONIEC10;
begin
form1.stoper_start;
gauge1.MaxValue:=ilosc_liczb_gry-komb+1;
gauge1.Progress:=0;

znal:=0;

if komb=1 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     help2:=oczekuje(komb,liczb,od_,do_)-1;
     if (help2>=min) and (help2<=max) then
      begin
       writeln(do_pliku,Format(' %2d - %4d',[liczby[1], help2]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC;
      end;
     gauge1.Progress:=temp1;
    end;

   KONIEC:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=2 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     help2:=oczekuje(komb,liczb,od_,do_);
     if (help2>=min) and (help2<=max) then
      begin
       writeln(do_pliku,Format(' %2d, %2d - %4d',[liczby[1], liczby[2], help2]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC2;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC2:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=3 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     help2:=oczekuje(komb,liczb,od_,do_);
     if (help2>=min) and (help2<=max) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d - %4d',[liczby[1], liczby[2], liczby[3], help2]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC3;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC3:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=4 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     help2:=oczekuje(komb,liczb,od_,do_);
     if (help2>=min) and (help2<=max) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d - %4d',[liczby[1], liczby[2], liczby[3], liczby[4], help2]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC4;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC4:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=5 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     help2:=oczekuje(komb,liczb,od_,do_);
     if (help2>=min) and (help2<=max) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d - %4d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5], help2]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC5;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC5:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=6 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
        for temp6:=temp5+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     liczby[6]:=temp6;
     help2:=oczekuje(komb,liczb,od_,do_);
     if (help2>=min) and (help2<=max) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d, %2d - %4d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5], liczby[6], help2]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC6;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC6:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=7 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
        for temp6:=temp5+1 to ilosc_liczb_gry do
         for temp7:=temp6+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     liczby[6]:=temp6;
     liczby[7]:=temp7;
     help2:=oczekuje(komb,liczb,od_,do_);
     if (help2>=min) and (help2<=max) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d, %2d, %2d - %4d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5], liczby[6], liczby[7], help2]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC7;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC7:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=8 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
        for temp6:=temp5+1 to ilosc_liczb_gry do
         for temp7:=temp6+1 to ilosc_liczb_gry do
          for temp8:=temp7+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     liczby[6]:=temp6;
     liczby[7]:=temp7;
     liczby[8]:=temp8;
     help2:=oczekuje(komb,liczb,od_,do_);
     if (help2>=min) and (help2<=max) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d - %4d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5], liczby[6], liczby[7], liczby[8], help2]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC8;
      end;

     gauge1.Progress:=temp1;
    end;
   KONIEC8:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=9 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
        for temp6:=temp5+1 to ilosc_liczb_gry do
         for temp7:=temp6+1 to ilosc_liczb_gry do
          for temp8:=temp7+1 to ilosc_liczb_gry do
           for temp9:=temp8+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     liczby[6]:=temp6;
     liczby[7]:=temp7;
     liczby[8]:=temp8;
     liczby[9]:=temp9;
     help2:=oczekuje(komb,liczb,od_,do_);
     if (help2>=min) and (help2<=max) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d - %4d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5], liczby[6], liczby[7], liczby[8], liczby[9], help2]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC9;
      end;

     gauge1.Progress:=temp1;
    end;
   KONIEC9:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=10 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
        for temp6:=temp5+1 to ilosc_liczb_gry do
         for temp7:=temp6+1 to ilosc_liczb_gry do
          for temp8:=temp7+1 to ilosc_liczb_gry do
           for temp9:=temp8+1 to ilosc_liczb_gry do
            for temp10:=temp9+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     liczby[6]:=temp6;
     liczby[7]:=temp7;
     liczby[8]:=temp8;
     liczby[9]:=temp9;
     liczby[10]:=temp10;
     help2:=oczekuje(komb,liczb,od_,do_);
     if (help2>=min) and (help2<=max) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d - %4d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5], liczby[6], liczby[7], liczby[8], liczby[9], liczby[10], help2]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC10;
      end;

     gauge1.Progress:=temp1;
    end;
   KONIEC10:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

czas:=form1.stoper_stop;
showmessage('Znalaz³em '+IntToStr(znal)+' kombinacji spe³niaj¹cych za³o¿enia w czasie '+czas+'.');
if checkbox2.Checked then ShellExecute(Handle, 'open', PCHar(savedialog1.filename), nil, nil, SW_SHOWNORMAL);
form33.Caption:='Poszukiwacz   '+czas;
end;

procedure TForm33.SpeedButton1Click(Sender: TObject);
var
max,min,od_,do_:integer;
begin
if radiobutton2.Checked then
 begin
  if spinedit5.Value<>spinedit6.Value then
   begin
    if spinedit5.Value>spinedit6.Value then
     begin
      od_:=spinedit6.Value;
      do_:=spinedit5.Value;
     end else
     begin
      od_:=spinedit5.Value;
      do_:=spinedit6.Value;
     end;

    if spinedit3.Value>spinedit4.Value then
     begin
      min:=spinedit4.Value;
      max:=spinedit3.Value;
     end else
     begin
      min:=spinedit3.Value;
      max:=spinedit4.Value;
     end;
    if savedialog1.Execute then szukaj(od_,do_,spinedit1.Value,spinedit2.Value,min,max);
   end;
 end else
  if spinedit5.Value<>spinedit6.Value then
   begin
    if spinedit5.Value>spinedit6.Value then
     begin
      od_:=spinedit6.Value;
      do_:=spinedit5.Value;
     end else
     begin
      od_:=spinedit5.Value;
      do_:=spinedit6.Value;
     end;
    if savedialog1.Execute then szukaj2(od_,do_,spinedit1.Value,spinedit2.Value,spinedit8.Value);
   end;
end;

function TForm33.oczekuje(liczb, naile, od_, do_: integer): integer;
var
help5,help3,help4,help1:integer;
begin
help3:=do_+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 for help1:=1 to liczb do if wylosowane[help3,liczby[help1]] then inc(help4);
 if help4<naile then inc(help5);
until (help4>=naile) or (help3=od_);
result:=help5;
end;

function TForm33.oczekuje2(liczb, naile, min, od_, do_: integer): boolean;
var
help5,help3,help4,help1:integer;
begin
help3:=do_+1;
help5:=0;
repeat
 dec(help3);
 help4:=0;
 for help1:=1 to liczb do if wylosowane[help3,liczby[help1]] then inc(help4);
 if help4<naile then inc(help5);
 if help5>=min then help3:=od_;
until (help4>=naile) or (help3=od_);
if help5>=min then result:=true else result:=false;
end;

procedure TForm33.szukaj2(od_, do_, komb, liczb, min: integer);
var
temp1,temp2,temp3,temp4,temp5,temp6,temp7,temp8,temp9,temp10:byte;
help1,help2:integer;
znal:int64;
czas:string;
label KONIEC, KONIEC2, KONIEC3, KONIEC4, KONIEC5, KONIEC6, KONIEC7, KONIEC8, KONIEC9, KONIEC10;
begin
form1.stoper_start;
gauge1.MaxValue:=ilosc_liczb_gry-komb+1;
gauge1.Progress:=0;

znal:=0;

if komb=1 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     if oczekuje2(komb, liczb, min, od_, do_) then
      begin
       writeln(do_pliku,Format(' %2d',[liczby[1]]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC;
      end;
     gauge1.Progress:=temp1;
    end;

   KONIEC:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=2 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     if oczekuje2(komb, liczb, min, od_, do_) then
      begin
       writeln(do_pliku,Format(' %2d, %2d',[liczby[1], liczby[2]]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC2;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC2:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=3 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     if oczekuje2(komb, liczb, min, od_, do_) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d',[liczby[1], liczby[2], liczby[3]]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC3;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC3:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=4 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     if oczekuje2(komb, liczb, min, od_, do_) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d',[liczby[1], liczby[2], liczby[3], liczby[4]]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC4;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC4:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=5 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     if oczekuje2(komb, liczb, min, od_, do_) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5]]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC5;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC5:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=6 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
        for temp6:=temp5+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     liczby[6]:=temp6;
     if oczekuje2(komb, liczb, min, od_, do_) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d, %2d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5], liczby[6]]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC6;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC6:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=7 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
        for temp6:=temp5+1 to ilosc_liczb_gry do
         for temp7:=temp6+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     liczby[6]:=temp6;
     liczby[7]:=temp7;
     if oczekuje2(komb, liczb, min, od_, do_) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d, %2d, %2d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5], liczby[6], liczby[7]]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC7;
      end;
     gauge1.Progress:=temp1;
    end;
   KONIEC7:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=8 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
        for temp6:=temp5+1 to ilosc_liczb_gry do
         for temp7:=temp6+1 to ilosc_liczb_gry do
          for temp8:=temp7+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     liczby[6]:=temp6;
     liczby[7]:=temp7;
     liczby[8]:=temp8;
     if oczekuje2(komb, liczb, min, od_, do_) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5], liczby[6], liczby[7], liczby[8]]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC8;
      end;

     gauge1.Progress:=temp1;
    end;
   KONIEC8:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=9 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
        for temp6:=temp5+1 to ilosc_liczb_gry do
         for temp7:=temp6+1 to ilosc_liczb_gry do
          for temp8:=temp7+1 to ilosc_liczb_gry do
           for temp9:=temp8+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     liczby[6]:=temp6;
     liczby[7]:=temp7;
     liczby[8]:=temp8;
     liczby[9]:=temp9;
     if oczekuje2(komb, liczb, min, od_, do_) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5], liczby[6], liczby[7], liczby[8], liczby[9]]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC9;
      end;

     gauge1.Progress:=temp1;
    end;
   KONIEC9:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

if komb=10 then
 begin
  TRY
   assignfile(do_pliku,savedialog1.filename);
   rewrite(do_pliku);

   for temp1:=1 to ilosc_liczb_gry do
    for temp2:=temp1+1 to ilosc_liczb_gry do
     for temp3:=temp2+1 to ilosc_liczb_gry do
      for temp4:=temp3+1 to ilosc_liczb_gry do
       for temp5:=temp4+1 to ilosc_liczb_gry do
        for temp6:=temp5+1 to ilosc_liczb_gry do
         for temp7:=temp6+1 to ilosc_liczb_gry do
          for temp8:=temp7+1 to ilosc_liczb_gry do
           for temp9:=temp8+1 to ilosc_liczb_gry do
            for temp10:=temp9+1 to ilosc_liczb_gry do
    begin
     liczby[1]:=temp1;
     liczby[2]:=temp2;
     liczby[3]:=temp3;
     liczby[4]:=temp4;
     liczby[5]:=temp5;
     liczby[6]:=temp6;
     liczby[7]:=temp7;
     liczby[8]:=temp8;
     liczby[9]:=temp9;
     liczby[10]:=temp10;
     if oczekuje2(komb, liczb, min, od_, do_) then
      begin
       writeln(do_pliku,Format(' %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d',[liczby[1], liczby[2], liczby[3], liczby[4], liczby[5], liczby[6], liczby[7], liczby[8], liczby[9], liczby[10]]));
       inc(znal);
       if (checkbox1.Checked) and (znal>=spinedit7.Value) then goto KONIEC10;
      end;

     gauge1.Progress:=temp1;
    end;
   KONIEC10:
   closefile(do_pliku);
  EXCEPT
   Application.MessageBox('Wyst¹pi³ nieoczekiwany b³¹d!', 'Uwaga', MB_OK + MB_ICONERROR);
  END;
 end;

czas:=form1.stoper_stop;
showmessage('Znalaz³em '+IntToStr(znal)+' kombinacji spe³niaj¹cych za³o¿enia w czasie '+czas+'.');
if checkbox2.Checked then ShellExecute(Handle, 'open', PCHar(savedialog1.filename), nil, nil, SW_SHOWNORMAL);
form33.Caption:='Poszukiwacz   '+czas;
end;

end.
