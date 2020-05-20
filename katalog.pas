unit katalog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,main,
  Grids, StdCtrls, Buttons, SHELLAPI, Menus;

type
  TForm27 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    SpeedButton1: TSpeedButton;
    ListBox1: TListBox;
    SpeedButton3: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Wywietlpliksystemu1: TMenuItem;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure ListBox1DblClick(Sender: TObject);
    procedure StringGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Wywietlpliksystemu1Click(Sender: TObject);
    procedure ListBox1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
   procedure znajdz_pliki;
   procedure podstaw_liczby;
   procedure zapisz;
   function czy_liczba(znak:string):boolean;
   function sprawdz_liczby:boolean;
   function wyciagnij_liczbe(linia:string):string;

    { Public declarations }
  end;

  sys = packed record
    skreslen,liczb,zakladow:integer;
    nazwa,opis:string;
  end;

var
  Form27: TForm27;
  pliki:array[1..10000] of sys;
  ilosc_sys:integer;

  skr,li,zak:integer;

  systemik:array[1..10000,1..10]of byte;
  liczby_sys:array[1..80]of byte;

  czy_podstawione:boolean;

implementation

{$R *.DFM}

procedure TForm27.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
Form27:=nil;
end;

procedure TForm27.FormCreate(Sender: TObject);
var
help1:integer;
begin
czy_podstawione:=false;
stringgrid2.ColWidths[0]:=40;
for help1:=0 to 79 do stringgrid1.Cells[help1,0]:=IntToStr(help1+1);
for help1:=1 to 10 do stringgrid2.cells[help1,0]:=IntToStr(help1);
stringgrid2.cells[0,0]:='Nr.';
for help1:=1 to 10000 do stringgrid2.cells[0,help1]:=IntToStr(help1);
znajdz_pliki;
//showmessage(IntToStr(ilosc_sys));
end;

procedure TForm27.znajdz_pliki;
var
  szukany_plik: TSearchRec; // rekord
  Found : Integer; // zmienna oznacza ilosc znalezionych plikow
  i,j:integer;
  help1,help2,help3:integer;
  plik:textfile;
  linia,opis,nazwa:string;
  blad:boolean;
begin

  for help1:=1 to 10000 do
   begin
    pliki[help1].skreslen:=0;
    pliki[help1].liczb:=0;
    pliki[help1].zakladow:=0;
    pliki[help1].nazwa:='';
    pliki[help1].opis:='';
   end;

//  I := 0;
  ilosc_sys:=0;

  Found := FindFirst(SCIEZKA_PROGRAM + 'systemy\*.mss', faAnyFile, szukany_plik); // odnajdŸ pliki
  while ( Found = 0 ) do // rob dopoki liczba zbalezionych plikow nie rowna sie zero
  begin
   blad:=false;

   TRY
    inc(ilosc_sys);
    pliki[ilosc_sys].nazwa:=szukany_plik.Name;
    assignfile(plik,SCIEZKA_PROGRAM+'systemy\'+szukany_plik.Name);
    reset(plik);
    readln(plik,linia);
    pliki[ilosc_sys].opis:=linia;



    readln(plik,linia);
    linia:=trim(linia);
    while (linia='') do
     begin
      readln(plik,linia);
      linia:=trim(linia)
     end;
    pliki[ilosc_sys].skreslen:=StrToInt(wyciagnij_liczbe(linia));


    readln(plik,linia);
    linia:=trim(linia);
    while (linia='') do
     begin
      readln(plik,linia);
      linia:=trim(linia)
     end;
    pliki[ilosc_sys].liczb:=StrToInt(wyciagnij_liczbe(linia));


    readln(plik,linia);
    linia:=trim(linia);
    while (linia='') do
     begin
      readln(plik,linia);
      linia:=trim(linia)
     end;
    pliki[ilosc_sys].zakladow:=StrToInt(wyciagnij_liczbe(linia));

    closefile(plik);
 //   listbox1.Items.Add('S: '+IntToStr(pliki[ilosc_sys].skreslen)+', L: '+IntToStr(pliki[ilosc_sys].liczb)+', Z: '+IntToStr(pliki[ilosc_sys].zakladow)+', N: '+pliki[ilosc_sys].nazwa);
   EXCEPT
    closefile(plik);
    blad:=true;
   END;

    if blad=true then Dec(ilosc_sys);
    Found := FindNext(szukany_plik); // kontynuuj przeszukiwanie
  end;

  FindClose(szukany_plik); // zkaoncz przeszukiwanie

  if ilosc_sys>1 then
   begin

    for i:=2 to ilosc_sys do
     begin
      for j:=ilosc_sys DownTo i Do
       if pliki[j-1].zakladow>pliki[j].zakladow Then
        begin
         help1:=pliki[j-1].skreslen;
         help2:=pliki[j-1].liczb;
         help3:=pliki[j-1].zakladow;
         opis:=pliki[j-1].opis;
         nazwa:=pliki[j-1].nazwa;

         pliki[j-1].skreslen:=pliki[j].skreslen;
         pliki[j-1].liczb:=pliki[j].liczb;
         pliki[j-1].zakladow:=pliki[j].zakladow;
         pliki[j-1].nazwa:=pliki[j].nazwa;
         pliki[j-1].opis:=pliki[j].opis;

         pliki[j].skreslen:=help1;
         pliki[j].liczb:=help2;
         pliki[j].zakladow:=help3;
         pliki[j].opis:=opis;
         pliki[j].nazwa:=nazwa;
         End;
     end;

    for i:=2 to ilosc_sys do
     begin
      for j:=ilosc_sys DownTo i Do
       if pliki[j-1].liczb>pliki[j].liczb Then
        begin
         help1:=pliki[j-1].skreslen;
         help2:=pliki[j-1].liczb;
         help3:=pliki[j-1].zakladow;
         opis:=pliki[j-1].opis;
         nazwa:=pliki[j-1].nazwa;

         pliki[j-1].skreslen:=pliki[j].skreslen;
         pliki[j-1].liczb:=pliki[j].liczb;
         pliki[j-1].zakladow:=pliki[j].zakladow;
         pliki[j-1].nazwa:=pliki[j].nazwa;
         pliki[j-1].opis:=pliki[j].opis;

         pliki[j].skreslen:=help1;
         pliki[j].liczb:=help2;
         pliki[j].zakladow:=help3;
         pliki[j].opis:=opis;
         pliki[j].nazwa:=nazwa;
         End;
     end;

    for i:=2 to ilosc_sys do
     begin
      for j:=ilosc_sys DownTo i Do
       if pliki[j-1].skreslen>pliki[j].skreslen Then
        begin
         help1:=pliki[j-1].skreslen;
         help2:=pliki[j-1].liczb;
         help3:=pliki[j-1].zakladow;
         opis:=pliki[j-1].opis;
         nazwa:=pliki[j-1].nazwa;

         pliki[j-1].skreslen:=pliki[j].skreslen;
         pliki[j-1].liczb:=pliki[j].liczb;
         pliki[j-1].zakladow:=pliki[j].zakladow;
         pliki[j-1].nazwa:=pliki[j].nazwa;
         pliki[j-1].opis:=pliki[j].opis;

         pliki[j].skreslen:=help1;
         pliki[j].liczb:=help2;
         pliki[j].zakladow:=help3;
         pliki[j].opis:=opis;
         pliki[j].nazwa:=nazwa;
         End;
     end;
   end;

  for help1:=1 to ilosc_sys do listbox1.Items.Add('S: '+IntToStr(pliki[help1].skreslen)+', L: '+IntToStr(pliki[help1].liczb)+', Z: '+IntToStr(pliki[help1].zakladow)+', N: '+pliki[help1].nazwa);
end;

procedure TForm27.ListBox1Click(Sender: TObject);
var
plik:textfile;
help1,help2,help6,numer:integer;
linia,liczba:string;
begin
czy_podstawione:=false;
numer:=listbox1.ItemIndex+1;
for help1:=1 to 10000 do for help2:=1 to 10 do systemik[help1,help2]:=0;
TRY
 label6.Caption:=pliki[listbox1.Itemindex+1].nazwa;
 label8.Caption:=IntToStr(pliki[listbox1.Itemindex+1].skreslen);
 label9.Caption:=IntToStr(pliki[listbox1.Itemindex+1].liczb);
 label10.Caption:=IntToStr(pliki[listbox1.Itemindex+1].zakladow);
 label7.Caption:=pliki[listbox1.Itemindex+1].opis;

 assignfile(plik,SCIEZKA_PROGRAM+'systemy\'+pliki[numer].nazwa);
 reset(plik);
 help1:=0;
 while (help1<4) do
  begin
   readln(plik,linia);
   linia:=trim(linia);
   while (linia='') do
    begin
     readln(plik,linia);
     linia:=trim(linia)
    end;
   inc(help1);
  end;

  help1:=0;


 while (help1<pliki[numer].zakladow) do
  begin
   readln(plik,linia);
   linia:=trim(linia);
   while (linia='') do
    begin
     readln(plik,linia);
     linia:=trim(linia)
    end;
   //showmessage(linia);
   inc(help1);
   help6:=1;
   for help2:=1 to pliki[numer].skreslen do
    begin
     liczba:='';
     while czy_liczba(linia[help6])=false do inc(help6);
     {
     repeat
      inc(help6);
     until linia[help6]<>' ';
     }

     while czy_liczba(linia[help6])=true do
      begin
       liczba:=liczba+linia[help6];
       inc(help6);
      end;
   {
     repeat
      liczba:=liczba+linia[help6];
      inc(help6);
     until linia[help6]='';
   }
     systemik[help1,help2]:=StrToInt(liczba);
    end;
  end;

 closefile(plik);

EXCEPT
 showmessage('Nieprawid³owy zapis systemu!');
END;

for help1:=1 to stringgrid2.RowCount do
 for help2:=1 to stringgrid2.ColCount do stringgrid2.cells[help2,help1]:='';

skr:=pliki[numer].skreslen;
li:=pliki[numer].liczb;
zak:=pliki[numer].zakladow;
stringgrid2.RowCount:=pliki[numer].zakladow+1;
stringgrid2.ColCount:=pliki[numer].skreslen+1;
stringgrid1.ColCount:=pliki[numer].liczb;
end;

procedure TForm27.ListBox1DblClick(Sender: TObject);
begin
ShellExecute(Handle, 'open', PCHar(SCIEZKA_PROGRAM+'systemy\'+pliki[listbox1.ItemIndex+1].nazwa), nil, nil, SW_SHOWNORMAL);
end;

function TForm27.czy_liczba(znak: string): boolean;
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

procedure TForm27.StringGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key<>'1') and (key<>'2') and (key<>'3') and (key<>'4') and (key<>'5') and (key<>'6') and (key<>'7') and (key<>'8') and (key<>'9') and (key<>'0') and (key<>chr(8)) and (key<>chr(13)) then key:=chr(0);
end;

function TForm27.sprawdz_liczby: boolean;
var
help1:integer;
dobrze:boolean;
liczba:integer;
begin
for help1:=1 to 80 do liczby_sys[help1]:=0;
dobrze:=true;
TRY
 for help1:=1 to stringgrid1.ColCount do
  begin
   liczba:=StrToInt(stringgrid1.cells[help1-1,1]);
   if (liczba<1) or (liczba>80) then dobrze:=false else liczby_sys[help1]:=liczba;
  end;
EXCEPT
 dobrze:=false;
END;
if dobrze=true then sprawdz_liczby:=true else sprawdz_liczby:=false;
end;

procedure TForm27.SpeedButton1Click(Sender: TObject);
begin
if sprawdz_liczby=false then showmessage('B³êdnie wpisane liczby!') else podstaw_liczby;
end;

procedure TForm27.podstaw_liczby;
var
help1,help2:integer;
begin

for help1:=1 to zak do
 for help2:=1 to skr do stringgrid2.cells[help2,help1]:=IntToStr(liczby_sys[systemik[help1,help2]]);

czy_podstawione:=true;
end;

procedure TForm27.SpeedButton3Click(Sender: TObject);
begin
if czy_podstawione=true then zapisz;
end;

procedure TForm27.zapisz;
var
plik:textfile;
help1,help2:integer;
liczba__:string;
numer1:string;
begin
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt';
form1.savedialog1.FileName:='System_'+label8.Caption+'_'+label9.caption+'_'+label10.Caption;
if form1.savedialog1.Execute then
 begin
  assignfile(plik,form1.savedialog1.filename);
  rewrite(plik);
  liczba__:='';

  for help1:=1 to zak do
   begin
    liczba__:='';
    numer1:='';
    for help2:=1 to skr do if length(stringgrid2.cells[help2,help1])=1 then liczba__:=liczba__+'  '+stringgrid2.cells[help2,help1] else liczba__:=liczba__+' '+stringgrid2.cells[help2,help1];
     if help1<10 then numer1:='   '+IntToStr(help1) else
      if help1<100 then numer1:='  '+IntToStr(help1) else
       if help1<1000 then numer1:=' '+IntToStr(help1) else numer1:=IntToStr(help1);
    writeln(plik,numer1+': '+liczba__);   
   end;

  closefile(plik);
 end;
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm'; 
end;

procedure TForm27.Wywietlpliksystemu1Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', PCHar(SCIEZKA_PROGRAM+'systemy\'+pliki[listbox1.ItemIndex+1].nazwa), nil, nil, SW_SHOWNORMAL);
end;

procedure TForm27.ListBox1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);

var
  P : TPoint;
begin
  GetCursorPos(P);
  popupmenu1.Popup(P.X, P.Y);
end;

procedure TForm27.SpeedButton2Click(Sender: TObject);
var
plik:textfile;
help1:integer;
begin
assignfile(plik,'c:\sys.txt');
rewrite(plik);
for help1:=1 to zak do writeln(plik,'   systemy['+IntToStr(help1)+',1]:='+IntToStr(systemik[help1,1])+'; systemy['+IntToStr(help1)+',2]:='+IntToStr(systemik[help1,2])+'; systemy['+IntToStr(help1)+',3]:='+IntToStr(systemik[help1,3])+';');
closefile(plik);
end;

function TForm27.wyciagnij_liczbe(linia: string): string;
var
help1:integer;
begin
help1:=1;
while (not czy_liczba(linia[help1])) do inc(help1);
result:='';
while (czy_liczba(linia[help1])) do
 begin
  result:=result+linia[help1];
  inc(help1);
 end;
end;

end.
