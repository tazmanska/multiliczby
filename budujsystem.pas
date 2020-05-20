unit budujsystem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, main,
  StdCtrls, Spin, Grids, Buttons, ComCtrls, Menus;

type
  TForm25 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    StringGrid1: TStringGrid;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    SpinEdit2: TSpinEdit;
    Label3: TLabel;
    SpinEdit3: TSpinEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    memo1: TRichEdit;
    SpeedButton5: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Zapiszdoplikutekstowego1: TMenuItem;
    Zapiszjakomatryce1: TMenuItem;
    SaveDialog1: TSaveDialog;
    Label10: TLabel;
    SpinEdit4: TSpinEdit;
    Label11: TLabel;
    Label12: TLabel;
    SB_pamietaj: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpinEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Zapiszdoplikutekstowego1Click(Sender: TObject);
    procedure Zapiszjakomatryce1Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure generuj_pokaz;
  function sprawdz_poprawnosc:boolean;
  function sprawdz_poprawnosc2:boolean;
    { Public declarations }
  end;

var
  Form25: TForm25;

  liczby:array[1..10,1..5] of byte;
  liczby_z:array[1..10,1..5,1..5]of byte;
  komb_stref:array[1..10,1..10,1..10] of byte;

  ilosc_stref,ilosc_liczb_strefy,wybieraj_liczb,ilosc_liczb:byte;

implementation

uses Addins;

{$R *.DFM}

procedure TForm25.FormClose(Sender: TObject; var Action: TCloseAction);
begin
zapisz_opcje('buduj_system','pamietaj_ustawienia',SB_pamietaj.down);
zapisz_opcje('buduj_system','ilosc_stref',spinedit1.value);
zapisz_opcje('buduj_system','ilosc_liczb_w_strefie',spinedit2.value);
zapisz_opcje('buduj_system','wybieraj_liczb',spinedit3.value);
zapisz_opcje('buduj_system','ilosc_liczb',spinedit4.value);
Action := caFree;
Form25:=nil;
end;

procedure TForm25.SpinEdit1Change(Sender: TObject);
begin
stringgrid1.RowCount:=spinedit1.Value+1;
end;

procedure TForm25.FormCreate(Sender: TObject);
var pamietaj:boolean;
begin
savedialog1.InitialDir:=sciezka_raporty;
stringgrid1.Cells[0,0]:='Strefa';
stringgrid1.cells[1,0]:='Liczba/y';
stringgrid1.cells[2,0]:='Liczba/y';
stringgrid1.cells[3,0]:='Liczba/y';
stringgrid1.cells[4,0]:='Liczba/y';
stringgrid1.cells[5,0]:='Liczba/y';
stringgrid1.ColWidths[0]:=40;
stringgrid1.Cells[0,1]:=' 1';
stringgrid1.Cells[0,2]:=' 2';
stringgrid1.Cells[0,3]:=' 3';
stringgrid1.Cells[0,4]:=' 4';
stringgrid1.Cells[0,5]:=' 5';
stringgrid1.Cells[0,6]:=' 6';
stringgrid1.Cells[0,7]:=' 7';
stringgrid1.Cells[0,8]:=' 8';
stringgrid1.Cells[0,9]:=' 9';
stringgrid1.Cells[0,10]:='10';
speedbutton5.Enabled:=false;
pamietaj:=wczytaj_opcje('buduj_system','pamietaj_ustawienia',false);
SB_pamietaj.Down:=pamietaj;
if pamietaj then spinedit1.Value:=wczytaj_opcje('buduj_system','ilosc_stref',2);
if pamietaj then spinedit2.Value:=wczytaj_opcje('buduj_system','ilosc_liczb_w_strefie',2);
if pamietaj then spinedit3.Value:=wczytaj_opcje('buduj_system','wybieraj_liczb',1);
if pamietaj then spinedit4.Value:=wczytaj_opcje('buduj_system','ilosc_liczb',1);
end;

procedure TForm25.SpinEdit2Change(Sender: TObject);
begin
if spinedit3.Value>=spinedit2.Value then spinedit3.Value:=spinedit2.Value-1;
spinedit3.MaxValue:=spinedit2.Value-1;
spinedit3.MinValue:=1;
stringgrid1.ColCount:=spinedit2.Value+1;
if spinedit2.Value=2 then spinedit3.ReadOnly:=true else spinedit3.ReadOnly:=false;
end;

procedure TForm25.StringGrid1KeyPress(Sender: TObject; var Key: Char);

begin
if (key<>'1') and (key<>'2') and (key<>'3') and (key<>'4') and (key<>'5') and (key<>'6') and (key<>'7') and (key<>'8') and (key<>'9') and (key<>'0') and (key<>',') and (key<>chr(8)) and (key<>chr(13)) then key:=chr(0);
end;

procedure TForm25.SpeedButton1Click(Sender: TObject);
begin
if sprawdz_poprawnosc=false then showmessage('B³êdnie wpisane liczby!');
if sprawdz_poprawnosc2=false then showmessage('B³êdne ustawienia, za du¿o skreœleñ!');
if (sprawdz_poprawnosc=true) and (sprawdz_poprawnosc2=true) then generuj_pokaz;

end;

function TForm25.sprawdz_poprawnosc: boolean;
var
help1,help2,help3,help4,help5:integer;
liczba:integer;
dobrze:boolean;
linia:string;
jeden:string[1];
liczbas:string;
begin
dobrze:=true;
ilosc_stref:=spinedit1.Value;
ilosc_liczb_strefy:=spinedit2.Value;
wybieraj_liczb:=spinedit3.Value;
ilosc_liczb:=spinedit4.Value;

for help1:=1 to 10 do for help2:=1 to 5 do for help3:=1 to 5 do liczby_z[help1,help2,help3]:=0;

for help1:=1 to 10 do for help2:=1 to 5 do liczby[help1,help2]:=0;



if ilosc_liczb=1 then
 begin
  TRY
   for help1:=1 to ilosc_stref do
    for help2:=1 to ilosc_liczb_strefy do
     begin
      liczba:=StrToInt(stringgrid1.cells[help2,help1]);
      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,1]:=liczba;
     end;
  EXCEPT
   dobrze:=false;
  END;
 end;

if ilosc_liczb=2 then
 begin
  TRY
   for help1:=1 to ilosc_stref do
    for help2:=1 to ilosc_liczb_strefy do
     begin
      linia:=stringgrid1.cells[help2,help1];
      help3:=0;
       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';

      case help3 of
       2:liczba:=StrToInt(linia[1]);
       3:liczba:=StrToInt(linia[1]+linia[2]);
      end;

      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,1]:=liczba;

      liczba:=StrToInt(linia[help3+1]+linia[help3+2]);

      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,2]:=liczba;

     end;
  EXCEPT
   dobrze:=false;
  END;
 end;


if ilosc_liczb=3 then
 begin
  TRY
   for help1:=1 to ilosc_stref do
    for help2:=1 to ilosc_liczb_strefy do
     begin
      linia:=stringgrid1.cells[help2,help1];
      help3:=0;
       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';

      case help3 of
       2:liczba:=StrToInt(linia[1]);
       3:liczba:=StrToInt(linia[1]+linia[2]);
      end;

      help4:=help3;

      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,1]:=liczba;

       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';

      liczbas:='';

      for help5:=help4+1 to help3-1 do liczbas:=liczbas+linia[help5];

      liczba:=StrToInt(liczbas);

      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,2]:=liczba;

      liczba:=StrToInt(linia[help3+1]+linia[help3+2]);

      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,3]:=liczba;

     end;
  EXCEPT
   dobrze:=false;
  END;
 end;


if ilosc_liczb=4 then
 begin
  TRY
   for help1:=1 to ilosc_stref do
    for help2:=1 to ilosc_liczb_strefy do
     begin
      linia:=stringgrid1.cells[help2,help1];
      help3:=0;
       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';
      case help3 of
       2:liczba:=StrToInt(linia[1]);
       3:liczba:=StrToInt(linia[1]+linia[2]);
      end;
      help4:=help3;
      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,1]:=liczba;
       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';
      liczbas:='';
      for help5:=help4+1 to help3-1 do liczbas:=liczbas+linia[help5];
      liczba:=StrToInt(liczbas);
      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,2]:=liczba;
      help4:=help3;
       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';
      liczbas:='';
      for help5:=help4+1 to help3-1 do liczbas:=liczbas+linia[help5];
      liczba:=StrToInt(liczbas);
      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,3]:=liczba;

      liczba:=StrToInt(linia[help3+1]+linia[help3+2]);

      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,4]:=liczba;

     end;
  EXCEPT
   dobrze:=false;
  END;
 end;


if ilosc_liczb=5 then
 begin
  TRY
   for help1:=1 to ilosc_stref do
    for help2:=1 to ilosc_liczb_strefy do
     begin
      linia:=stringgrid1.cells[help2,help1];
      help3:=0;
       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';
      case help3 of
       2:liczba:=StrToInt(linia[1]);
       3:liczba:=StrToInt(linia[1]+linia[2]);
      end;
      help4:=help3;
      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,1]:=liczba;
       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';
      liczbas:='';
      for help5:=help4+1 to help3-1 do liczbas:=liczbas+linia[help5];
      liczba:=StrToInt(liczbas);
      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,2]:=liczba;
      help4:=help3;
       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';
      liczbas:='';
      for help5:=help4+1 to help3-1 do liczbas:=liczbas+linia[help5];
      liczba:=StrToInt(liczbas);
      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,3]:=liczba;
      help4:=help3;
       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';
      liczbas:='';
      for help5:=help4+1 to help3-1 do liczbas:=liczbas+linia[help5];
      liczba:=StrToInt(liczbas);
      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,4]:=liczba;


      liczba:=StrToInt(linia[help3+1]+linia[help3+2]);

      if (liczba<1) or (liczba>80) then dobrze:=false else liczby_z[help1,help2,5]:=liczba;

     end;
  EXCEPT
   dobrze:=false;
  END;
 end;


if dobrze=true then sprawdz_poprawnosc:=true else sprawdz_poprawnosc:=false;
        {
if dobrze then
 begin
  memo1.Clear;
  memo1.Lines.Add(IntToStr(liczby_z[1,1,1])+'  -  '+IntToStr(liczby_z[1,1,2])+'  -  '+IntToStr(liczby_z[1,1,3])+'  -  '+IntToStr(liczby_z[1,1,4])+'  -  '+IntToStr(liczby_z[1,1,5])+'  +  '+IntToStr(liczby_z[1,2,1])+'  -  '+IntToStr(liczby_z[1,2,2])+'  -  '+IntToStr(liczby_z[1,2,3])+'  -  '+IntToStr(liczby_z[1,2,4])+'  -  '+IntToStr(liczby_z[1,2,5]));
  memo1.Lines.Add(IntToStr(liczby_z[2,1,1])+'  -  '+IntToStr(liczby_z[2,1,2])+'  -  '+IntToStr(liczby_z[2,1,3])+'  -  '+IntToStr(liczby_z[2,1,4])+'  -  '+IntToStr(liczby_z[2,1,5])+'  +  '+IntToStr(liczby_z[2,2,1])+'  -  '+IntToStr(liczby_z[2,2,2])+'  -  '+IntToStr(liczby_z[2,2,3])+'  -  '+IntToStr(liczby_z[2,2,4])+'  -  '+IntToStr(liczby_z[2,2,5]));
 end;  }

end;

procedure TForm25.generuj_pokaz;
var
help1,help2,help3,help4,help5,help6,help7,help8,help9,help10,help11,help12,help13,iloscz,ilosck,dlugosck:integer;
linia,numerz:string;
liczba:array[1..50] of string;
liczby2:array[1..50,1..5]of byte;
begin
memo1.Clear;
linia:='';

for help1:=1 to 50 do liczba[1]:='';

for help1:=1 to 50 do for help2:=1 to 5 do liczby2[help1,help2]:=0;

for help1:=1 to 10 do
 for help2:=1 to 10 do
  for help3:=1 to 10 do komb_stref[help1,help2,help3]:=0;



iloscz:=0;
dlugosck:=ilosc_stref*wybieraj_liczb*ilosc_liczb;

help3:=0;

for help1:=1 to ilosc_stref do
 for help2:=1 to ilosc_liczb_strefy do
  begin
   inc(help3);
   liczby[help1,help2]:=help3;
   for help4:=1 to ilosc_liczb do liczby2[help3,help4]:=liczby_z[help1,help2,help4];
   //memo1.Lines.Add(IntToStr(liczby2[help3,1])+' '+IntToStr(liczby2[help3,2])+' '+IntToStr(liczby2[help3,3])+' '+IntToStr(liczby2[help3,4])+' '+IntToStr(liczby2[help3,5]));
  end;

if wybieraj_liczb=1 then
 begin
  help5:=ilosc_liczb_strefy;
  for help1:=1 to ilosc_stref do
   for help2:=1 to ilosc_liczb_strefy do komb_stref[help1,help2,1]:=liczby[help1,help2];
 end;

if wybieraj_liczb=2 then
 begin
  for help1:=1 to ilosc_stref do
   begin
    help5:=0;
    for help2:=1 to ilosc_liczb_strefy do
     for help3:=help2+1 to ilosc_liczb_strefy do
      begin
       inc(help5);
       komb_stref[help1,help5,1]:=liczby[help1,help2];
       komb_stref[help1,help5,2]:=liczby[help1,help3];
      end;
   end;
 end;

if wybieraj_liczb=3 then
 begin
  for help1:=1 to ilosc_stref do
   begin
    help5:=0;
    for help2:=1 to ilosc_liczb_strefy do
     for help3:=help2+1 to ilosc_liczb_strefy do
      for help4:=help3+1 to ilosc_liczb_strefy do
       begin
        inc(help5);
        komb_stref[help1,help5,1]:=liczby[help1,help2];
        komb_stref[help1,help5,2]:=liczby[help1,help3];
        komb_stref[help1,help5,3]:=liczby[help1,help4];
       end;
   end;
 end;

if wybieraj_liczb=4 then
 begin
  for help1:=1 to ilosc_stref do
   begin
    help5:=0;
    for help2:=1 to ilosc_liczb_strefy do
     for help3:=help2+1 to ilosc_liczb_strefy do
      for help4:=help3+1 to ilosc_liczb_strefy do
       for help6:=help4+1 to ilosc_liczb_strefy do
        begin
         inc(help5);
         komb_stref[help1,help5,1]:=liczby[help1,help2];
         komb_stref[help1,help5,2]:=liczby[help1,help3];
         komb_stref[help1,help5,3]:=liczby[help1,help4];
         komb_stref[help1,help5,4]:=liczby[help1,help6];
        end;
   end;
 end;

ilosck:=help5;

help4:=1;

for help1:=1 to ilosc_stref do help4:=help4*ilosck;

label7.Caption:=IntToStr(dlugosck);
label8.Caption:=IntToStr(help4);
label9.Caption:=FormatFloat('0.00',help4*oplata)+' z³';
label12.caption:=IntToStr(ilosc_stref*ilosc_liczb_strefy*ilosc_liczb);
speedbutton5.Enabled:=true;


if ilosc_stref=2 then
 begin
  for help1:=1 to ilosck do
   for help2:=1 to ilosck do
    begin
     liczba[1]:='';
     liczba[2]:='';
     inc(iloscz);

     for help3:=1 to wybieraj_liczb do
      for help4:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help3],help4]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help3],help4]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help3],help4]);

     for help3:=1 to wybieraj_liczb do
      for help4:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help3],help4]<10 then liczba[2]:=liczba[2]+'  '+IntToStr(liczby2[komb_stref[2,help2,help3],help4]) else liczba[2]:=liczba[2]+' '+IntToStr(liczby2[komb_stref[2,help2,help3],help4]);

     if iloscz<10 then memo1.Lines.Add('   '+IntToStr(iloscz)+ ': '+liczba[1]+liczba[2]) else
      if iloscz<100 then memo1.Lines.Add('  '+IntToStr(iloscz)+ ': '+liczba[1]+liczba[2]) else
       if iloscz<1000 then memo1.Lines.Add(' '+IntToStr(iloscz)+ ': '+liczba[1]+liczba[2]) else memo1.Lines.Add(IntToStr(iloscz)+ ': '+liczba[1]+liczba[2]);
    end;
 end;

if ilosc_stref=3 then
 begin
  for help1:=1 to ilosck do
   for help2:=1 to ilosck do
    for help3:=1 to ilosck do
     begin
      liczba[1]:='';
      liczba[2]:='';
      liczba[3]:='';
      inc(iloscz);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);


      if iloscz<10 then numerz:='   '+IntToStr(iloscz) else
       if iloscz<100 then numerz:='  '+IntToStr(iloscz) else
        if iloscz<1000 then numerz:=' '+IntToStr(iloscz) else numerz:=IntToStr(iloscz);

      memo1.Lines.Add(numerz+ ': '+liczba[1]+liczba[2]+liczba[3]);
     end;
 end;

if ilosc_stref=4 then
 begin
  for help1:=1 to ilosck do
   for help2:=1 to ilosck do
    for help3:=1 to ilosck do
     for help4:=1 to ilosck do
      begin
       liczba[1]:='';
       liczba[2]:='';
       liczba[3]:='';
       liczba[4]:='';
       inc(iloscz);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);


       if iloscz<10 then numerz:='   '+IntToStr(iloscz) else
        if iloscz<100 then numerz:='  '+IntToStr(iloscz) else
         if iloscz<1000 then numerz:=' '+IntToStr(iloscz) else numerz:=IntToStr(iloscz);

       memo1.Lines.Add(numerz+ ': '+liczba[1]+liczba[2]+liczba[3]+liczba[4]);
      end;
 end;

if ilosc_stref=5 then
 begin
  for help1:=1 to ilosck do
   for help2:=1 to ilosck do
    for help3:=1 to ilosck do
     for help4:=1 to ilosck do
      for help5:=1 to ilosck do
      begin
       liczba[1]:='';
       liczba[2]:='';
       liczba[3]:='';
       liczba[4]:='';
       liczba[5]:='';
       inc(iloscz);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);


       if iloscz<10 then numerz:='   '+IntToStr(iloscz) else
        if iloscz<100 then numerz:='  '+IntToStr(iloscz) else
         if iloscz<1000 then numerz:=' '+IntToStr(iloscz) else numerz:=IntToStr(iloscz);

       memo1.Lines.Add(numerz+ ': '+liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]);
      end;
 end;

if ilosc_stref=6 then
 begin
  for help1:=1 to ilosck do
   for help2:=1 to ilosck do
    for help3:=1 to ilosck do
     for help4:=1 to ilosck do
      for help5:=1 to ilosck do
       for help6:=1 to ilosck do
      begin
       liczba[1]:='';
       liczba[2]:='';
       liczba[3]:='';
       liczba[4]:='';
       liczba[5]:='';
       liczba[6]:='';
       inc(iloscz);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[6,help6,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]);


       if iloscz<10 then numerz:='   '+IntToStr(iloscz) else
        if iloscz<100 then numerz:='  '+IntToStr(iloscz) else
         if iloscz<1000 then numerz:=' '+IntToStr(iloscz) else numerz:=IntToStr(iloscz);

       memo1.Lines.Add(numerz+ ': '+liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]+liczba[6]);
      end;
 end;

if ilosc_stref=7 then
 begin
  for help1:=1 to ilosck do
   for help2:=1 to ilosck do
    for help3:=1 to ilosck do
     for help4:=1 to ilosck do
      for help5:=1 to ilosck do
       for help6:=1 to ilosck do
        for help7:=1 to ilosck do
      begin
       liczba[1]:='';
       liczba[2]:='';
       liczba[3]:='';
       liczba[4]:='';
       liczba[5]:='';
       liczba[6]:='';
       liczba[7]:='';
       inc(iloscz);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[6,help6,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[7,help7,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]);


       if iloscz<10 then numerz:='   '+IntToStr(iloscz) else
        if iloscz<100 then numerz:='  '+IntToStr(iloscz) else
         if iloscz<1000 then numerz:=' '+IntToStr(iloscz) else numerz:=IntToStr(iloscz);

       memo1.Lines.Add(numerz+ ': '+liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]+liczba[6]+liczba[7]);
      end;
 end;

if ilosc_stref=8 then
 begin
  for help1:=1 to ilosck do
   for help2:=1 to ilosck do
    for help3:=1 to ilosck do
     for help4:=1 to ilosck do
      for help5:=1 to ilosck do
       for help6:=1 to ilosck do
        for help7:=1 to ilosck do
         for help8:=1 to ilosck do
      begin
       liczba[1]:='';
       liczba[2]:='';
       liczba[3]:='';
       liczba[4]:='';
       liczba[5]:='';
       liczba[6]:='';
       liczba[7]:='';
       liczba[8]:='';
       inc(iloscz);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[6,help6,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[7,help7,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[8,help8,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]);


       if iloscz<10 then numerz:='   '+IntToStr(iloscz) else
        if iloscz<100 then numerz:='  '+IntToStr(iloscz) else
         if iloscz<1000 then numerz:=' '+IntToStr(iloscz) else numerz:=IntToStr(iloscz);

       memo1.Lines.Add(numerz+ ': '+liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]+liczba[6]+liczba[7]+liczba[8]);
      end;
 end;

if ilosc_stref=9 then
 begin
  for help1:=1 to ilosck do
   for help2:=1 to ilosck do
    for help3:=1 to ilosck do
     for help4:=1 to ilosck do
      for help5:=1 to ilosck do
       for help6:=1 to ilosck do
        for help7:=1 to ilosck do
         for help8:=1 to ilosck do
          for help9:=1 to ilosck do
      begin
       liczba[1]:='';
       liczba[2]:='';
       liczba[3]:='';
       liczba[4]:='';
       liczba[5]:='';
       liczba[6]:='';
       liczba[7]:='';
       liczba[8]:='';
       liczba[9]:='';
       inc(iloscz);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[6,help6,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[7,help7,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[8,help8,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[9,help9,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[9,help9,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[9,help9,help11],help12]);


       if iloscz<10 then numerz:='   '+IntToStr(iloscz) else
        if iloscz<100 then numerz:='  '+IntToStr(iloscz) else
         if iloscz<1000 then numerz:=' '+IntToStr(iloscz) else numerz:=IntToStr(iloscz);

       memo1.Lines.Add(numerz+ ': '+liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]+liczba[6]+liczba[7]+liczba[8]+liczba[9]);
      end;
 end;

if ilosc_stref=10 then
 begin
  for help1:=1 to ilosck do
   for help2:=1 to ilosck do
    for help3:=1 to ilosck do
     for help4:=1 to ilosck do
      for help5:=1 to ilosck do
       for help6:=1 to ilosck do
        for help7:=1 to ilosck do
         for help8:=1 to ilosck do
          for help9:=1 to ilosck do
           for help10:=1 to ilosck do
      begin
       liczba[1]:='';
       liczba[2]:='';
       liczba[3]:='';
       liczba[4]:='';
       liczba[5]:='';
       liczba[6]:='';
       liczba[7]:='';
       liczba[8]:='';
       liczba[9]:='';
       liczba[10]:='';
       inc(iloscz);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[6,help6,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[7,help7,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[8,help8,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[9,help9,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[9,help9,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[9,help9,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[10,help10,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[10,help10,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[10,help10,help11],help12]);


       if iloscz<10 then numerz:='   '+IntToStr(iloscz) else
        if iloscz<100 then numerz:='  '+IntToStr(iloscz) else
         if iloscz<1000 then numerz:=' '+IntToStr(iloscz) else numerz:=IntToStr(iloscz);

       memo1.Lines.Add(numerz+ ': '+liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]+liczba[6]+liczba[7]+liczba[8]+liczba[9]+liczba[10]);
      end;
 end;


end;

function TForm25.sprawdz_poprawnosc2: boolean;
begin
if spinedit1.Value*spinedit3.Value*spinedit4.Value>10 then sprawdz_poprawnosc2:=false else sprawdz_poprawnosc2:=true;
end;

procedure TForm25.SpeedButton5Click(Sender: TObject);
var
  P : TPoint;
begin
  GetCursorPos(P);
  popupmenu1.Popup(P.X, P.Y);
end;

procedure TForm25.Zapiszdoplikutekstowego1Click(Sender: TObject);
begin
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt';
form1.SaveDialog1.FileName:='System_'+label7.Caption+'_'+IntToStr(ilosc_stref*ilosc_liczb_strefy*ilosc_liczb)+'_'+label8.Caption;
if form1.savedialog1.Execute then memo1.Lines.SaveToFile(form1.savedialog1.filename);
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

procedure TForm25.Zapiszjakomatryce1Click(Sender: TObject);
var
plik:textfile;
help1,help2,help3,help4,help5,help6,help7,help8,help9,help10,help11,help12,iloscz,ilosck,dlugosck:integer;
liczba:array[1..50] of string;
liczby2:array[1..50,1..5]of byte;
begin
savedialog1.FileName:='System_'+label7.Caption+'_'+IntToStr(ilosc_stref*ilosc_liczb_strefy*ilosc_liczb)+'_'+label8.Caption;
if savedialog1.Execute then
 begin
  assignfile(plik,savedialog1.filename);
  rewrite(plik);
  writeln(plik,'System strefowy '+IntToStr(ilosc_stref)+'x'+IntToStr(ilosc_liczb_strefy)+'-'+IntToStr(wybieraj_liczb)+' , wygenerowany przez program MultiLiczby.');
  writeln(plik,label7.caption); //ilosc skreslen
  writeln(plik,IntToStr(ilosc_stref*ilosc_liczb_strefy*ilosc_liczb)); //ilosc liczb
  writeln(plik,label8.caption); //ilosc zakladow

  help4:=0;
   for help1:=1 to ilosc_stref do for help2:=1 to ilosc_liczb_strefy do for help3:=1 to ilosc_liczb do
    begin
     inc(help4);
     liczby_z[help1,help2,help3]:=help4;
    end;

  help3:=0;
  for help1:=1 to ilosc_stref do
   for help2:=1 to ilosc_liczb_strefy do
    begin
     inc(help3);
     liczby[help1,help2]:=help3;
      for help4:=1 to ilosc_liczb do liczby2[help3,help4]:=liczby_z[help1,help2,help4];
    end;


  for help1:=1 to 50 do liczba[1]:='';

  for help1:=1 to 10 do
   for help2:=1 to 10 do
    for help3:=1 to 10 do komb_stref[help1,help2,help3]:=0;



 // ilosck:=0;
 // iloscz:=0;
  dlugosck:=ilosc_stref*wybieraj_liczb;



  if wybieraj_liczb=1 then
   begin
    help5:=ilosc_liczb_strefy;
    for help1:=1 to ilosc_stref do
     for help2:=1 to ilosc_liczb_strefy do komb_stref[help1,help2,1]:=liczby[help1,help2];
   end;

  if wybieraj_liczb=2 then
   begin
    for help1:=1 to ilosc_stref do
     begin
      help5:=0;
      for help2:=1 to ilosc_liczb_strefy do
       for help3:=help2+1 to ilosc_liczb_strefy do
        begin
         inc(help5);
         komb_stref[help1,help5,1]:=liczby[help1,help2];
         komb_stref[help1,help5,2]:=liczby[help1,help3];
        end;
     end;
   end;

  if wybieraj_liczb=3 then
   begin
    for help1:=1 to ilosc_stref do
     begin
      help5:=0;
      for help2:=1 to ilosc_liczb_strefy do
       for help3:=help2+1 to ilosc_liczb_strefy do
        for help4:=help3+1 to ilosc_liczb_strefy do
         begin
          inc(help5);
          komb_stref[help1,help5,1]:=liczby[help1,help2];
          komb_stref[help1,help5,2]:=liczby[help1,help3];
          komb_stref[help1,help5,3]:=liczby[help1,help4];
         end;
     end;
   end;

  if wybieraj_liczb=4 then
   begin
    for help1:=1 to ilosc_stref do
     begin
      help5:=0;
      for help2:=1 to ilosc_liczb_strefy do
       for help3:=help2+1 to ilosc_liczb_strefy do
        for help4:=help3+1 to ilosc_liczb_strefy do
         for help6:=help4+1 to ilosc_liczb_strefy do
          begin
           inc(help5);
           komb_stref[help1,help5,1]:=liczby[help1,help2];
           komb_stref[help1,help5,2]:=liczby[help1,help3];
           komb_stref[help1,help5,3]:=liczby[help1,help4];
           komb_stref[help1,help5,4]:=liczby[help1,help6];
          end;
     end;
   end;

  ilosck:=help5;


  if ilosc_stref=2 then
   begin
    for help1:=1 to ilosck do
     for help2:=1 to ilosck do
      begin
       liczba[1]:='';
       liczba[2]:='';

     for help3:=1 to wybieraj_liczb do
      for help4:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help3],help4]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help3],help4]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help3],help4]);

     for help3:=1 to wybieraj_liczb do
      for help4:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help3],help4]<10 then liczba[2]:=liczba[2]+'  '+IntToStr(liczby2[komb_stref[2,help2,help3],help4]) else liczba[2]:=liczba[2]+' '+IntToStr(liczby2[komb_stref[2,help2,help3],help4]);

       writeln(plik,liczba[1]+liczba[2]);
      end;
   end;

  if ilosc_stref=3 then
   begin
    for help1:=1 to ilosck do
     for help2:=1 to ilosck do
      for help3:=1 to ilosck do
       begin
        liczba[1]:='';
        liczba[2]:='';
        liczba[3]:='';
     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

          writeln(plik,liczba[1]+liczba[2]+liczba[3]);
       end;
   end;

  if ilosc_stref=4 then
   begin
    for help1:=1 to ilosck do
     for help2:=1 to ilosck do
      for help3:=1 to ilosck do
       for help4:=1 to ilosck do
        begin
         liczba[1]:='';
         liczba[2]:='';
         liczba[3]:='';
         liczba[4]:='';
     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

         writeln(plik,liczba[1]+liczba[2]+liczba[3]+liczba[4]);
        end;
   end;

  if ilosc_stref=5 then
   begin
    for help1:=1 to ilosck do
     for help2:=1 to ilosck do
      for help3:=1 to ilosck do
       for help4:=1 to ilosck do
        for help5:=1 to ilosck do
         begin
          liczba[1]:='';
          liczba[2]:='';
          liczba[3]:='';
          liczba[4]:='';
          liczba[5]:='';
     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);


          writeln(plik,liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]);
         end;
   end;

  if ilosc_stref=6 then
   begin
    for help1:=1 to ilosck do
     for help2:=1 to ilosck do
      for help3:=1 to ilosck do
       for help4:=1 to ilosck do
        for help5:=1 to ilosck do
         for help6:=1 to ilosck do
          begin
           liczba[1]:='';
           liczba[2]:='';
           liczba[3]:='';
           liczba[4]:='';
           liczba[5]:='';
           liczba[6]:='';
         //  inc(iloscz);
     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[6,help6,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]);


           writeln(plik,liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]+liczba[6]);
          end;
   end;

  if ilosc_stref=7 then
   begin
    for help1:=1 to ilosck do
     for help2:=1 to ilosck do
      for help3:=1 to ilosck do
       for help4:=1 to ilosck do
        for help5:=1 to ilosck do
         for help6:=1 to ilosck do
          for help7:=1 to ilosck do
           begin
            liczba[1]:='';
            liczba[2]:='';
            liczba[3]:='';
            liczba[4]:='';
            liczba[5]:='';
            liczba[6]:='';
            liczba[7]:='';
     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[6,help6,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[7,help7,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]);

            writeln(plik,liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]+liczba[6]+liczba[7]);
          end;
   end;

  if ilosc_stref=8 then
   begin
    for help1:=1 to ilosck do
     for help2:=1 to ilosck do
      for help3:=1 to ilosck do
       for help4:=1 to ilosck do
        for help5:=1 to ilosck do
         for help6:=1 to ilosck do
          for help7:=1 to ilosck do
           for help8:=1 to ilosck do
            begin
             liczba[1]:='';
             liczba[2]:='';
             liczba[3]:='';
             liczba[4]:='';
             liczba[5]:='';
             liczba[6]:='';
             liczba[7]:='';
             liczba[8]:='';
     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[6,help6,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[7,help7,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[8,help8,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]);

             writeln(plik,liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]+liczba[6]+liczba[7]+liczba[8]);
           end;
   end;

  if ilosc_stref=9 then
   begin
    for help1:=1 to ilosck do
     for help2:=1 to ilosck do
      for help3:=1 to ilosck do
       for help4:=1 to ilosck do
        for help5:=1 to ilosck do
         for help6:=1 to ilosck do
          for help7:=1 to ilosck do
           for help8:=1 to ilosck do
            for help9:=1 to ilosck do
             begin
              liczba[1]:='';
              liczba[2]:='';
              liczba[3]:='';
              liczba[4]:='';
              liczba[5]:='';
              liczba[6]:='';
              liczba[7]:='';
              liczba[8]:='';
              liczba[9]:='';
           //   inc(iloscz);
     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[6,help6,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[7,help7,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[8,help8,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[9,help9,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[9,help9,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[9,help9,help11],help12]);

              writeln(plik,liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]+liczba[6]+liczba[7]+liczba[8]+liczba[9]);
             end;
   end;

  if ilosc_stref=10 then
   begin
    for help1:=1 to ilosck do
     for help2:=1 to ilosck do
      for help3:=1 to ilosck do
       for help4:=1 to ilosck do
        for help5:=1 to ilosck do
         for help6:=1 to ilosck do
          for help7:=1 to ilosck do
           for help8:=1 to ilosck do
            for help9:=1 to ilosck do
             for help10:=1 to ilosck do
              begin
               liczba[1]:='';
               liczba[2]:='';
               liczba[3]:='';
               liczba[4]:='';
               liczba[5]:='';
               liczba[6]:='';
               liczba[7]:='';
               liczba[8]:='';
               liczba[9]:='';
               liczba[10]:='';
              // inc(iloscz);
     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[1,help1,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[1,help1,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[2,help2,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[2,help2,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[3,help3,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[3,help3,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[4,help4,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[4,help4,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[5,help5,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[5,help5,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[6,help6,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[6,help6,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[7,help7,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[7,help7,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[8,help8,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[8,help8,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[9,help9,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[9,help9,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[9,help9,help11],help12]);

     for help11:=1 to wybieraj_liczb do
      for help12:=1 to ilosc_liczb do
       if liczby2[komb_stref[10,help10,help11],help12]<10 then liczba[1]:=liczba[1]+'  '+IntToStr(liczby2[komb_stref[10,help10,help11],help12]) else liczba[1]:=liczba[1]+' '+IntToStr(liczby2[komb_stref[10,help10,help11],help12]);


               writeln(plik,liczba[1]+liczba[2]+liczba[3]+liczba[4]+liczba[5]+liczba[6]+liczba[7]+liczba[8]+liczba[9]+liczba[10]);
              end;
   end;



  closefile(plik);
 end;
end;

end.
