unit wprowadzsystem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,main,
  StdCtrls, Grids, Spin, Buttons,budujsystem;

type
  TForm30 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    StringGrid1: TStringGrid;
    SpeedButton1: TSpeedButton;
    SaveDialog1: TSaveDialog;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public

  procedure zapisz_system;
  function sprawdz_poprawnosc:boolean;
    { Public declarations }
  end;

var
  Form30: TForm30;

implementation

{$R *.DFM}

procedure TForm30.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
Form30:=nil;
end;

procedure TForm30.SpinEdit3Change(Sender: TObject);
begin
stringgrid1.RowCount:=spinedit3.Value+1;
end;

procedure TForm30.SpinEdit1Change(Sender: TObject);
begin
if spinedit2.Value<spinedit1.Value then spinedit2.Value:=spinedit1.Value;
spinedit2.minValue:=spinedit1.Value;
stringgrid1.ColCount:=spinedit1.Value+1;
end;

procedure TForm30.FormCreate(Sender: TObject);
var help1:integer;
begin
stringgrid1.cells[0,0]:='Z/L';
for help1:=1 to 1000 do stringgrid1.cells[0,help1]:=IntToStr(help1);
stringgrid1.cells[1,0]:='L1';
stringgrid1.cells[2,0]:='L2';
stringgrid1.cells[3,0]:='L3';
stringgrid1.cells[4,0]:='L4';
stringgrid1.cells[5,0]:='L5';
stringgrid1.cells[6,0]:='L6';
stringgrid1.cells[7,0]:='L7';
stringgrid1.cells[8,0]:='L8';
stringgrid1.cells[9,0]:='L9';
stringgrid1.cells[10,0]:='L10';
end;

procedure TForm30.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key<>'1') and (key<>'2') and (key<>'3') and (key<>'4') and (key<>'5') and (key<>'6') and (key<>'7') and (key<>'8') and (key<>'9') and (key<>'0') and (key<>chr(8)) and (key<>chr(13)) then key:=chr(0);
end;

procedure TForm30.SpeedButton1Click(Sender: TObject);
begin
if sprawdz_poprawnosc then zapisz_system else showmessage('le!');
end;

function TForm30.sprawdz_poprawnosc: boolean;
var
help1,help2,liczba,iloscl:integer;
dobrze:boolean;
liczby:array[1..80] of boolean;
begin

iloscl:=0;
for help1:=1 to 80 do liczby[help1]:=false;
dobrze:=true;

 TRY

  for help1:=1 to spinedit1.Value do
   for help2:=1 to spinedit3.Value do
    begin
     liczba:=StrToInt(stringgrid1.cells[help1,help2]);
     if (liczba>0) and (liczba<81) then
      begin
       if liczby[liczba]=false then
        begin
         inc(iloscl);
         liczby[liczba]:=true;
        end;
      end else dobrze:=false;
    end;

 EXCEPT
  dobrze:=false;
 END;

if iloscl<>spinedit2.Value then dobrze:=false;

result:=dobrze; 

end;

procedure TForm30.zapisz_system;
var
plik:textfile;
help1,help2:integer;
linia:string;
begin
savedialog1.FileName:='System_'+IntToStr(spinedit1.Value)+'_'+IntToStr(spinedit2.Value)+'_'+IntToStr(spinedit3.Value);
if savedialog1.Execute then
 begin
  assignfile(plik,savedialog1.filename);
  rewrite(plik);
  writeln(plik,edit1.text);
  writeln(plik,IntToStr(spinedit1.Value)); //ilosc skreslen
  writeln(plik,IntToStr(spinedit2.Value)); //ilosc liczb
  writeln(plik,IntToStr(spinedit3.Value)); //ilosc zakladow

  for help1:=1 to spinedit3.Value do
   begin
   linia:='';
    for help2:=1 to spinedit1.Value do linia:=linia+'  '+stringgrid1.cells[help2,help1];
    writeln(plik,linia);
   end;

  closefile(plik);
 end;
end;

end.
