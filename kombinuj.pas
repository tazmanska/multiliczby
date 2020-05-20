unit kombinuj;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Buttons, StdCtrls, Spin, main, Menus;

type
  TForm11 = class(TForm)
    StringGrid1: TStringGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    StringGrid2: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpeedButton5: TSpeedButton;
    PopupMenu2: TPopupMenu;
    Czstocimalejco1: TMenuItem;
    Czstocirosnco1: TMenuItem;
    N1: TMenuItem;
    Maxmalejco1: TMenuItem;
    Maxrosnco1: TMenuItem;
    N2: TMenuItem;
    Oczekiwaniemalejco1: TMenuItem;
    Oczekiwanierosnco1: TMenuItem;
    SpeedButton4: TSpeedButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SB_pamietaj: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure StringGrid2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Czstocimalejco1Click(Sender: TObject);
    procedure Czstocirosnco1Click(Sender: TObject);
    procedure Maxmalejco1Click(Sender: TObject);
    procedure Maxrosnco1Click(Sender: TObject);
    procedure Oczekiwaniemalejco1Click(Sender: TObject);
    procedure Oczekiwanierosnco1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure sortuj_tabele(pozycja,wdol:integer;tabela:tstringgrid);
  procedure kombinuj_pary(od_,do_:integer);
  procedure kombinuj_trojki(od_,do_:integer);
  function czy_wystapila_para(liczba1,liczba2,od_,do_:integer):boolean;
  function czy_wystapila_trojka(liczba1,liczba2,liczba3,od_,do_:integer):boolean;
    { Public declarations }
  end;

var
  Form11: TForm11;
  tablica:array[1..10,1..3]of word;
  nr_liczb,zak1,zak2:word;
  ilosc_1:word;
  ilosc_2:word;
  ilosc_3:word;

  czy_kombinuj:boolean;

  tytul:string;

implementation

uses dodajliczby, Addins;

{$R *.DFM}

procedure TForm11.FormClose(Sender: TObject; var Action: TCloseAction);
var help1:byte;
begin
zapisz_opcje('kombinuj','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
if radiobutton1.Checked then help1:=1 else help1:=2;
zapisz_opcje('kombinuj','kombinuj_'+prefiks_gry,help1);
zapisz_opcje('kombinuj','od_'+prefiks_gry,spinedit1.value);
zapisz_opcje('kombinuj','do_'+prefiks_gry,spinedit2.value);
Action := caFree;
Form11:=nil;
end;

procedure TForm11.FormCreate(Sender: TObject);
var
help1,help2:integer;
pamietaj:boolean;
begin
czy_kombinuj:=false;
speedbutton5.Enabled:=false;
//tabela z liczbami
stringgrid1.colwidths[0]:=20;
stringgrid1.cells[0,0]:='Lp.';
for help1:=1 to 10 do stringgrid1.Cells[0,help1]:=IntToStr(help1);
stringgrid1.cells[1,0]:='Liczby I';
stringgrid1.cells[2,0]:='Liczby II';
stringgrid1.cells[3,0]:='Liczby III';
//pary
stringgrid2.ColWidths[0]:=24;
stringgrid2.Cells[0,0]:='Lp.';
stringgrid2.cells[1,0]:='Para';
stringgrid2.cells[2,0]:='Czêstoœæ';
stringgrid2.cells[3,0]:='Max';
stringgrid2.cells[4,0]:='Oczekuje';
for help1:=1 to 1000 do stringgrid2.cells[0,help1]:=IntToStr(help1);

help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

pamietaj:=wczytaj_opcje('kombinuj','pamietaj_ustawienia_'+prefiks_gry,false);
if pamietaj then
 begin
  help1:=wczytaj_opcje('kombinuj','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('kombinuj','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

  spinedit1.Value:=help1;
  spinedit2.Value:=help2;
  spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

SB_pamietaj.Down:=pamietaj;

if pamietaj then
 begin
  help1:=wczytaj_opcje('kombinuj','kombinuj_'+prefiks_gry,1);
  if help1=1 then radiobutton1.checked:=true else radiobutton2.checked:=true;
 end;

for help1:=1 to 10 do tablica[help1,1]:=0;
for help1:=1 to 10 do tablica[help1,2]:=0;
for help1:=1 to 10 do tablica[help1,3]:=0;
ilosc_1:=0;
ilosc_2:=0;
end;

procedure TForm11.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm11.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm11.SpeedButton1Click(Sender: TObject);
var
help1:integer;
begin
if form17=nil then
 begin
  nr_liczb:=1;
  Application.CreateForm(TForm17,form17);
  form17.ShowModal;
 end;

for help1:=1 to 10 do stringgrid1.cells[1,help1]:='';
if ilosc_1<>0 then for help1:=1 to ilosc_1 do stringgrid1.cells[1,help1]:=IntToStr(tablica[help1,1]);

end;

procedure TForm11.SpeedButton2Click(Sender: TObject);
var
help1:integer;
begin
if form17=nil then
 begin
  nr_liczb:=2;
  Application.CreateForm(TForm17,form17);
  form17.ShowModal;
 end;

for help1:=1 to 10 do stringgrid1.cells[2,help1]:='';
if ilosc_2<>0 then for help1:=1 to ilosc_2 do stringgrid1.cells[2,help1]:=IntToStr(tablica[help1,2]);

end;



procedure TForm11.SpeedButton3Click(Sender: TObject);
begin
if radiobutton1.Checked then
 begin
  if (ilosc_1<>0) and (ilosc_2<>0) then
   if spinedit1.Value<>spinedit2.Value then
    begin
     if spinedit1.Value<spinedit2.Value then kombinuj_pary(spinedit1.value,spinedit2.value) else kombinuj_pary(spinedit2.value,spinedit1.value)
    end;
 end;

if radiobutton2.Checked then
 begin
  if (ilosc_1<>0) and (ilosc_2<>0) and (ilosc_3<>0) then
   if spinedit1.Value<>spinedit2.Value then
    begin
     if spinedit1.Value<spinedit2.Value then kombinuj_trojki(spinedit1.value,spinedit2.value) else kombinuj_trojki(spinedit2.value,spinedit1.value)
    end;
 end;
end;

procedure TForm11.kombinuj_pary(od_, do_: integer);
var
help1,help2,help3,help4,help5,czestosc,max,max1,oczekiwanie,zm1:integer;
begin
tytul:='Pary';
zak1:=od_;
zak2:=do_;
stringgrid2.cells[1,0]:='Para';
help3:=0;
speedbutton5.Enabled:=true;

for help1:=1 to ilosc_1 do
 for help2:=1 to ilosc_2 do
  begin
   czestosc:=0;
   max:=0;
   oczekiwanie:=0;
   help3:=help3+1;
   help5:=-1;
   zm1:=0;
   stringgrid2.Cells[1,help3]:=(IntToStr(tablica[help1,1])+' , '+IntToStr(tablica[help2,2]));
   for help4:=od_ to do_ do if (wylosowane[help4,tablica[help1,1]] {czy_byla_liczba(tablica[help1,1],help4)}) and (wylosowane[help4,tablica[help2,2]] {czy_byla_liczba(tablica[help2,2],help4)}) then inc(czestosc);
   stringgrid2.cells[2,help3]:=IntToStr(czestosc);
   for help4:=do_ downto od_ do
    begin
     help5:=help5+1;
     if (wylosowane[help4,tablica[help1,1]] {czy_byla_liczba(tablica[help1,1],help4)}) and (wylosowane[help4,tablica[help2,2]] {czy_byla_liczba(tablica[help2,2],help4)}) and (zm1=0) then
      begin
       oczekiwanie:=help5;
       zm1:=1;
      end;
    end;
   stringgrid2.cells[4,help3]:=IntToStr(oczekiwanie);
   max1:=0;
   help5:=do_-od_+1;
   for help4:=od_ to do_ do
    begin
     if (wylosowane[help4,tablica[help1,1]] {czy_byla_liczba(tablica[help1,1],help4)=true}) and (wylosowane[help4,tablica[help2,2]] {czy_byla_liczba(tablica[help2,2],help4)=true}) then
      begin
       if max>max1 then max1:=max;
       max:=0;
      end else max:=max+1;
    end;
    if czy_wystapila_para(tablica[help1,1],tablica[help2,2],od_,do_)=false then max1:=help5;
    stringgrid2.Cells[3,help3]:=IntToStr(max1);

  end;
czy_kombinuj:=true;
stringgrid2.rowcount:=help3+1;
form11.Caption:='£¹cz w pary... '+IntToStr(od_)+' - '+IntToStr(do_);
end;


function TForm11.czy_wystapila_para(liczba1, liczba2, od_, do_: integer): boolean;
var
help1,help2:integer;
begin
help2:=0;
help1:=od_-1;
repeat
 inc(help1);
 if (wylosowane[help1,liczba1] {czy_byla_liczba(liczba1,help1)=true}) and (wylosowane[help1,liczba2] {czy_byla_liczba(liczba2,help1)=true}) then help2:=1;
until (help2=1) or (help1=do_+1);
if help2=1 then czy_wystapila_para:=true else czy_wystapila_para:=false;

end;

procedure TForm11.SpeedButton5Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin
form1.SaveDialog1.FileName:='£¹czW'+tytul;
if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid2.rowcount-1 do writeln(filename,stringgrid2.cells[0,help1]+';'+stringgrid2.cells[1,help1]+';'+stringgrid2.cells[2,help1]+';'+stringgrid2.cells[3,help1]+';'+stringgrid2.cells[4,help1]);
  closefile(filename);
 end else form1.zapiszHTML(form11.stringgrid2,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'£¹cz w pary/trójki',tytul,1,zak1,zak2);
end;

procedure TForm11.StringGrid2ContextPopup(Sender: TObject;  MousePos: TPoint; var Handled: Boolean);
begin
  GetCursorPos(mousepos);
  popupmenu2.Popup(mousepos.X,mousepos.Y);
end;

procedure TForm11.sortuj_tabele(pozycja, wdol: integer; tabela: tstringgrid);
var
l1,l2,l3,l4:string;
i,j:word;
begin
IF (tabela.RowCount>2) and (czy_kombinuj=true) THEN
 BEGIN
  if wdol=0 then
   begin
    for i:=2 to tabela.RowCount-1 do
     for j:=tabela.RowCount-1 DownTo i Do
      if StrToInt(tabela.cells[pozycja,j-1])<StrToInt(tabela.cells[pozycja,j]) Then
        begin
          l1:=tabela.Cells[1,j-1];
          l2:=tabela.Cells[2,j-1];
          l3:=tabela.Cells[3,j-1];
          l4:=tabela.Cells[4,j-1];

          tabela.Cells[1,j-1]:=tabela.Cells[1,j];
          tabela.Cells[2,j-1]:=tabela.Cells[2,j];
          tabela.Cells[3,j-1]:=tabela.Cells[3,j];
          tabela.Cells[4,j-1]:=tabela.Cells[4,j];

          tabela.Cells[1,j]:=l1;
          tabela.Cells[2,j]:=l2;
          tabela.Cells[3,j]:=l3;
          tabela.Cells[4,j]:=l4;
          End;
   end;
  if wdol=1 then
   begin
    for i:=2 to tabela.RowCount-1 do
     for j:=tabela.RowCount-1 DownTo i Do
      if StrToInt(tabela.cells[pozycja,j-1])>StrToInt(tabela.cells[pozycja,j]) Then
        begin
          l1:=tabela.Cells[1,j-1];
          l2:=tabela.Cells[2,j-1];
          l3:=tabela.Cells[3,j-1];
          l4:=tabela.Cells[4,j-1];

          tabela.Cells[1,j-1]:=tabela.Cells[1,j];
          tabela.Cells[2,j-1]:=tabela.Cells[2,j];
          tabela.Cells[3,j-1]:=tabela.Cells[3,j];
          tabela.Cells[4,j-1]:=tabela.Cells[4,j];

          tabela.Cells[1,j]:=l1;
          tabela.Cells[2,j]:=l2;
          tabela.Cells[3,j]:=l3;
          tabela.Cells[4,j]:=l4;
        End;
   end;
//showmessage('OK');
END;
end;

procedure TForm11.Czstocimalejco1Click(Sender: TObject);
begin
sortuj_tabele(2,0,stringgrid2);
end;

procedure TForm11.Czstocirosnco1Click(Sender: TObject);
begin
sortuj_tabele(2,1,stringgrid2);
end;

procedure TForm11.Maxmalejco1Click(Sender: TObject);
begin
sortuj_tabele(3,0,stringgrid2);
end;

procedure TForm11.Maxrosnco1Click(Sender: TObject);
begin
sortuj_tabele(3,1,stringgrid2);
end;

procedure TForm11.Oczekiwaniemalejco1Click(Sender: TObject);
begin
sortuj_tabele(4,0,stringgrid2);
end;

procedure TForm11.Oczekiwanierosnco1Click(Sender: TObject);
begin
sortuj_tabele(4,1,stringgrid2);
end;

procedure TForm11.SpeedButton4Click(Sender: TObject);
var
help1:integer;
begin
if form17=nil then
 begin
  nr_liczb:=3;
  Application.CreateForm(TForm17,form17);
  form17.ShowModal;
 end;

for help1:=1 to 10 do stringgrid1.cells[3,help1]:='';
if ilosc_3<>0 then for help1:=1 to ilosc_3 do stringgrid1.cells[3,help1]:=IntToStr(tablica[help1,3]);


end;

procedure TForm11.SpeedButton6Click(Sender: TObject);
var help1:integer;
begin
if ilosc_1<>0 then
 begin
  for help1:=1 to ilosc_1 do
   begin
    stringgrid1.cells[1,help1]:='';
    tablica[help1,1]:=0;
   end;
  ilosc_1:=0; 
 end;
end;

procedure TForm11.SpeedButton7Click(Sender: TObject);
var help1:integer;
begin
if ilosc_2<>0 then
 begin
  for help1:=1 to ilosc_2 do
   begin
    stringgrid1.cells[2,help1]:='';
    tablica[help1,2]:=0;
   end;
  ilosc_2:=0;
 end;

end;

procedure TForm11.SpeedButton8Click(Sender: TObject);
var help1:integer;
begin
if ilosc_3<>0 then
 begin
  for help1:=1 to ilosc_3 do
   begin
    stringgrid1.cells[3,help1]:='';
    tablica[help1,3]:=0;
   end;
  ilosc_3:=0;
 end;

end;

procedure TForm11.kombinuj_trojki(od_, do_: integer);
var
help1,help2,help3,help4,help5,help6,czestosc,max,max1,oczekiwanie,zm1:integer;
begin
zak1:=od_;
zak2:=do_;
tytul:='Trójki';
help6:=0;
speedbutton5.Enabled:=true;

for help1:=1 to ilosc_1 do
 for help2:=1 to ilosc_2 do
  for help3:=1 to ilosc_3 do
  begin
   czestosc:=0;
   max:=0;
   oczekiwanie:=0;
   inc(help6);
   help5:=-1;
   zm1:=0;
   stringgrid2.Cells[1,help6]:=(IntToStr(tablica[help1,1])+' , '+IntToStr(tablica[help2,2])+' , '+IntToStr(tablica[help3,3]));
   for help4:=od_ to do_ do if (wylosowane[help4,tablica[help1,1]] and wylosowane[help4,tablica[help2,2]] and wylosowane[help4,tablica[help2,3]]) then inc(czestosc);
   stringgrid2.cells[2,help6]:=IntToStr(czestosc);
   for help4:=do_ downto od_ do
    begin
     help5:=help5+1;
     if (wylosowane[help4,tablica[help1,1]]) and (wylosowane[help4,tablica[help2,2]]) and (wylosowane[help4,tablica[help3,3]]) and (zm1=0) then
      begin
       oczekiwanie:=help5;
       zm1:=1;
      end;
    end;
   stringgrid2.cells[4,help6]:=IntToStr(oczekiwanie);
   max1:=0;
   help5:=do_-od_+1;
   for help4:=od_ to do_ do
    begin
     if (wylosowane[help4,tablica[help1,1]]) and (wylosowane[help4,tablica[help2,2]]) and (wylosowane[help4,tablica[help3,3]]) then
      begin
       if max>max1 then max1:=max;
       max:=0;
      end else max:=max+1;
    end;
    if czy_wystapila_trojka(tablica[help1,1],tablica[help2,2],tablica[help3,3],od_,do_)=false then max1:=help5;
    stringgrid2.Cells[3,help6]:=IntToStr(max1);

  end;

stringgrid2.cells[1,0]:='Trójka';
czy_kombinuj:=true;
stringgrid2.rowcount:=help6+1;
form11.Caption:='£¹cz w trójki... '+IntToStr(od_)+' - '+IntToStr(do_);
end;

function TForm11.czy_wystapila_trojka(liczba1, liczba2, liczba3, od_,  do_: integer): boolean;
var
help1,help2:integer;
begin
help2:=0;
help1:=od_-1;
repeat
 inc(help1);
 if (wylosowane[help1,liczba1]) and (wylosowane[help1,liczba2]) and (wylosowane[help1,liczba3]) then help2:=1;
until (help2=1) or (help1=do_+1);
if help2=1 then czy_wystapila_trojka:=true else czy_wystapila_trojka:=false;
end;

end.
