unit supersys;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,main,
  StdCtrls, Grids, Menus, Buttons,systemy_m;

type
  TForm31 = class(TForm)
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    StringGrid1: TStringGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public

  procedure zapisz_system(nr:byte);

  function sprawdz:boolean;
    { Public declarations }
  end;




var
  Form31: TForm31;

  liczby:array[1..24,1..3]of byte;

  skreslen:integer;

   systemy:array[1..64,1..3] of byte;
   ilosc_z:integer;



implementation


{$R *.DFM}

procedure TForm31.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
Form31:=nil;
end;

procedure TForm31.FormCreate(Sender: TObject);
var
help1:integer;
begin
for help1:=1 to 30 do stringgrid1.cells[0,help1]:=IntToStr(help1);
combobox1.ItemIndex:=0;
stringgrid1.colwidths[0]:=28;
stringgrid1.cells[0,0]:='Lp.';
stringgrid1.cells[1,0]:='Para/trójka';
end;

procedure TForm31.ComboBox1Change(Sender: TObject);
begin
if combobox1.ItemIndex=0 then
 begin
  label5.caption:='?';
  label6.caption:='?';
  label7.caption:='?';
  label8.caption:='?';
 end;
if combobox1.ItemIndex=1 then
 begin
  label5.caption:='6 lub 9';
  label6.caption:='7 par lub trójek';
  label7.caption:='7';
  label8.caption:=FormatFloat('0.00',oplata*7)+' z³';
  stringgrid1.RowCount:=8;
 end;
if combobox1.ItemIndex=2 then
 begin
  label5.caption:='6 lub 9';
  label6.caption:='9 par lub trójek';
  label7.caption:='12';
  label8.caption:=FormatFloat('0.00',oplata*12)+' z³';
  stringgrid1.RowCount:=10;
 end;
if combobox1.ItemIndex=3 then
 begin
  label5.caption:='6 lub 9';
  label6.caption:='11 par lub trójek';
  label7.caption:='19';
  label8.caption:=FormatFloat('0.00',oplata*19)+' z³';
  stringgrid1.RowCount:=12;
 end;
if combobox1.ItemIndex=4 then
 begin
  label5.caption:='6 lub 9';
  label6.caption:='13 par lub trójek';
  label7.caption:='26';
  label8.caption:=FormatFloat('0.00',oplata*26)+' z³';
  stringgrid1.RowCount:=14;
 end;
if combobox1.ItemIndex=5 then
 begin
  label5.caption:='6 lub 9';
  label6.caption:='15 par lub trójek';
  label7.caption:='21';
  label8.caption:=FormatFloat('0.00',oplata*21)+' z³';
  stringgrid1.RowCount:=16;
 end;
if combobox1.ItemIndex=6 then
 begin
  label5.caption:='6 lub 9';
  label6.caption:='15 par lub trójek';
  label7.caption:='25';
  label8.caption:=FormatFloat('0.00',oplata*25)+' z³';
  stringgrid1.RowCount:=16;
 end;
if combobox1.ItemIndex=7 then
 begin
  label5.caption:='6 lub 9';
  label6.caption:='15 par lub trójek';
  label7.caption:='35';
  label8.caption:=FormatFloat('0.00',oplata*35)+' z³';
  stringgrid1.RowCount:=16;
 end;
if combobox1.ItemIndex=8 then
 begin
  label5.caption:='6 lub 9';
  label6.caption:='18 par lub trójek';
  label7.caption:='36';
  label8.caption:=FormatFloat('0.00',oplata*36)+' z³';
  stringgrid1.RowCount:=19;
 end;
if combobox1.ItemIndex=9 then
 begin
  label5.caption:='6 lub 9';
  label6.caption:='21 par lub trójek';
  label7.caption:='49';
  label8.caption:=FormatFloat('0.00',oplata*49)+' z³';
  stringgrid1.RowCount:=22;
 end;
if combobox1.ItemIndex=10 then
 begin
  label5.caption:='6 lub 9';
  label6.caption:='24 par lub trójek';
  label7.caption:='64';
  label8.caption:=FormatFloat('0.00',oplata*64)+' z³';
  stringgrid1.RowCount:=25;
 end;
end;

procedure TForm31.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key<>'1') and (key<>'2') and (key<>'3') and (key<>'4') and (key<>'5') and (key<>'6') and (key<>'7') and (key<>'8') and (key<>'9') and (key<>'0') and (key<>',') and (key<>chr(8)) and (key<>chr(13)) then key:=chr(0);
end;

function TForm31.sprawdz: boolean;
var
help1,help2,help3,help4,help5,liczba:integer;
dobrze:boolean;
linia,liczbas:string;
jeden:string[1];
begin
for help1:=1 to 24 do for help2:=1 to 3 do liczby[help1,help2]:=0;
dobrze:=true;

if radiobutton1.Checked then
 begin
  skreslen:=6;
  TRY

   for help1:=1 to stringgrid1.RowCount-1 do
     begin
      linia:=stringgrid1.cells[1,help1];
      help3:=0;
       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';
      case help3 of
       2:liczba:=StrToInt(linia[1]);
       3:liczba:=StrToInt(linia[1]+linia[2]);
      end;
      if (help3<>2) and (help3<>3) then dobrze:=false;
      if (liczba<1) or (liczba>80) then dobrze:=false else liczby[help1,1]:=liczba;
      liczba:=StrToInt(linia[help3+1]+linia[help3+2]);
      if (liczba<1) or (liczba>80) then dobrze:=false else liczby[help1,2]:=liczba;
     end;

  EXCEPT
   dobrze:=false;
  END;
 end;


if radiobutton2.Checked then
 begin
  skreslen:=9;
  TRY
   for help1:=1 to stringgrid1.RowCount-1 do
     begin
      linia:=stringgrid1.cells[1,help1];
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
      if (help3<>2) and (help3<>3) then dobrze:=false;
      if (liczba<1) or (liczba>80) then dobrze:=false else liczby[help1,1]:=liczba;

       repeat
        inc(help3);
        jeden:=linia[help3];
       until jeden=',';

      liczbas:='';

      for help5:=help4+1 to help3-1 do liczbas:=liczbas+linia[help5];

      liczba:=StrToInt(liczbas);

      if (liczba<1) or (liczba>80) then dobrze:=false else liczby[help1,2]:=liczba;

      liczba:=StrToInt(linia[help3+1]+linia[help3+2]);

      if (liczba<1) or (liczba>80) then dobrze:=false else liczby[help1,3]:=liczba;

     end;
  EXCEPT
   dobrze:=false;
  END;
 end;


result:=dobrze;
end;

procedure TForm31.SpeedButton2Click(Sender: TObject);
begin
if sprawdz=false then showmessage('B³êdnie wpisane liczby!') else if combobox1.ItemIndex<>0 then zapisz_system(combobox1.itemindex);
end;

procedure TForm31.zapisz_system(nr: byte);
var
plik:textfile;
help1,help2:integer;
linia,numer:string;
liczba:array[1..3]of string;
begin
zapisz_matryce(nr);

form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt';
form1.SaveDialog1.FileName:='System_'+IntToStr(skreslen)+'_'+label6.caption+'_'+label7.Caption;
if form1.savedialog1.Execute then
 begin
  assignfile(plik,form1.savedialog1.filename);
  rewrite(plik);



  for help1:=1 to ilosc_z do
   begin
    linia:='';
    liczba[1]:='';
    liczba[2]:='';
    liczba[3]:='';

    for help2:=1 to skreslen div 3 do if liczby[systemy[help1,1],help2]<10 then liczba[1]:=liczba[1]+'  '+IntToSTr(liczby[systemy[help1,1],help2]) else liczba[1]:=liczba[1]+' '+IntToSTr(liczby[systemy[help1,1],help2]);

    for help2:=1 to skreslen div 3 do if liczby[systemy[help1,2],help2]<10 then liczba[2]:=liczba[2]+'  '+IntToSTr(liczby[systemy[help1,2],help2]) else liczba[2]:=liczba[2]+' '+IntToSTr(liczby[systemy[help1,2],help2]);

    for help2:=1 to skreslen div 3 do if liczby[systemy[help1,3],help2]<10 then liczba[3]:=liczba[3]+'  '+IntToSTr(liczby[systemy[help1,3],help2]) else liczba[3]:=liczba[3]+' '+IntToSTr(liczby[systemy[help1,3],help2]);

    linia:=liczba[1]+liczba[2]+liczba[3];

    if (help1>9) and (help1<100) then numer:='  '+IntToStr(help1) else numer:='   '+IntToStr(help1);
    writeln(plik,numer+': '+linia);
   end;

  closefile(plik);
 end;
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

end.
