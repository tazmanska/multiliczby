unit utworz_parki;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,main,
  StdCtrls, ComCtrls, Spin, Grids, Buttons, Gauges;

type
  TForm12 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpeedButton3: TSpeedButton;
    StringGrid1: TStringGrid;
    GroupBox1: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Gauge1: TGauge;
    CheckBox1: TCheckBox;
    SpinEdit3: TSpinEdit;
    SB_pamietaj: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
   procedure policz(od_,do_:word);
   procedure sortuj_parki(ilosc,pozycja,wdol:word);
   procedure posortuj;
   function czy_wystapila_para(liczba1,liczba2,od_,do_:integer):boolean;
    { Public declarations }
  end;



var
  Form12: TForm12;
  czy_parki:boolean;
  czy_parki2:boolean;
  parki_liczby:array[1..80]of byte;
  ilosc_liczb4,zak1,zak2:word;
  parki2:array[1..3160,1..5] of word;
  ile:word;

implementation
 uses podajliczby, dodatkowe_funkcje;

{$R *.DFM}
{ DONE : zapisanie ustawien }
procedure TForm12.FormClose(Sender: TObject; var Action: TCloseAction);
var help1:byte;
begin
zapisz_opcje('utworz_pary','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
if radiobutton2.Checked then help1:=1 else
 if radiobutton3.Checked then help1:=2 else help1:=3;
zapisz_opcje('utworz_pary','sortuj_wedlug_'+prefiks_gry,help1);

if radiobutton5.Checked then help1:=1 else help1:=2;
zapisz_opcje('utworz_pary','sortuj_'+prefiks_gry,help1);

zapisz_opcje('utworz_pary','pary_kazda_liczba_tylko_'+prefiks_gry,checkbox1.checked);
zapisz_opcje('utworz_pary','pary_kazda_liczba_razy_'+prefiks_gry,spinedit3.value);

zapisz_opcje('utworz_pary','od_'+prefiks_gry,spinedit1.value);
zapisz_opcje('utworz_pary','do_'+prefiks_gry,spinedit2.value);

Action := caFree;
Form12:=nil;
end;
{ DONE : wczytanie ustawien }
procedure TForm12.FormCreate(Sender: TObject);
var
help1,help2:integer;
pamietaj:boolean;
begin
czy_parki:=false;
czy_parki2:=false;

stringgrid1.ColWidths[0]:=30;
stringgrid1.Cells[0,0]:='Lp.';
stringgrid1.cells[1,0]:='Para';
stringgrid1.cells[2,0]:='Czêstoœæ';
stringgrid1.cells[3,0]:='Max';
stringgrid1.cells[4,0]:='Oczekuje';

for help1:=1 to 3160 do stringgrid1.cells[0,help1]:=IntToStr(help1);

pamietaj:=wczytaj_opcje('utworz_pary','pamietaj_ustawienia_'+prefiks_gry,false);
SB_pamietaj.Down:=pamietaj;

if pamietaj then
 begin
  help1:=wczytaj_opcje('utworz_pary','sortuj_wedlug_'+prefiks_gry,1);
  if help1=1 then radiobutton2.Checked:=true else
   if help1=2 then radiobutton3.Checked:=true else radiobutton4.Checked:=true;

  help1:=wczytaj_opcje('utworz_pary','sortuj_'+prefiks_gry,1);
  if help1=1 then radiobutton5.Checked:=true else radiobutton6.Checked:=true;

  checkbox1.Checked:=wczytaj_opcje('utworz_pary','pary_kazda_liczba_tylko_'+prefiks_gry,false);
  help1:=wczytaj_opcje('utworz_pary','pary_kazda_liczba_razy_'+prefiks_gry,1);
  if (help1<1) or (help1>5) then help1:=1;
  spinedit3.Value:=help1;
  
 end;

help1:=wspolne[gra,1];
help2:=wspolne[gra,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

if pamietaj then
 begin
  help1:=wczytaj_opcje('utworz_pary','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('utworz_pary','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[gra,1]; help2:=wspolne[gra,2]; end;
 end;

  spinedit1.Value:=help1;
  spinedit2.Value:=help2;
  spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

speedbutton5.Enabled:=false;
end;

procedure TForm12.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm12.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;




procedure TForm12.policz(od_, do_: word);
var
help1,help2,help5:integer;
max:integer;
begin
form1.stoper_start;
zak1:=od_;
zak2:=do_;
gauge1.Progress:=0;
gauge1.MaxValue:=5;
//ile_los:=do_-od_+1;

//stworzenie trojek
ile:=0;
for help1:=1 to ilosc_liczb4 do
 for help2:=help1+1 to ilosc_liczb4 do
  begin
   ile:=ile+1;
   parki2[ile,1]:=parki_liczby[help1];
   parki2[ile,2]:=parki_liczby[help2];
   parki2[ile,3]:=0;
   parki2[ile,4]:=do_-od_;
   parki2[ile,5]:=0;
  end;


//liczenie czêstoœci
for help1:=od_ to do_ do
 begin
  for help2:=1 to ile do
   begin
     if (wylosowane[help1,parki2[help2,1]] {czy_byla_liczba(parki2[help2,1],help1)=true}) and (wylosowane[help1,parki2[help2,2]] {czy_byla_liczba(parki2[help2,2],help1)=true}) then inc(parki2[help2,3]);
   end;
 end;
gauge1.Progress:=1;
//liczenie oczekiwania
for help1:=do_ downto od_ do
 begin
  for help2:=1 to ile do
   begin
    help5:=help1-od_;
     if (wylosowane[help1,parki2[help2,1]] {czy_byla_liczba(parki2[help2,1],help1)=true}) and (wylosowane[help1,parki2[help2,2]] {czy_byla_liczba(parki2[help2,2],help1)=true}) then
       begin
        if parki2[help2,5]=0 then
         begin
          parki2[help2,4]:=parki2[help2,4]-help5;
          parki2[help2,5]:=1;
         end;
       end;
   end;
  end;
gauge1.Progress:=2;

//liczenie max
help5:=do_-od_;
for help1:=1 to ile do
  begin
    max:=0;
    for help2:=od_ to do_ do
      begin
        if (wylosowane[help2,parki2[help1,1]] {czy_byla_liczba(parki2[help1,1],help2)=true}) and (wylosowane[help2,parki2[help1,2]] {czy_byla_liczba(parki2[help1,2],help2)=true}) then
          begin
	    if max>parki2[help1,5] then parki2[help1,5]:=max;
            max:=0;
          end
            else max:=max+1;
      end;
    if czy_wystapila_para(parki2[help1,1],parki2[help1,2],od_,do_)=false then parki2[help1,5]:=help5;
   end;
gauge1.Progress:=3;
czy_parki2:=true;
posortuj;
gauge1.Progress:=4;
speedbutton5.Enabled:=true;
czy_parki2:=true;
form12.Caption:='Utwórz parki... '+IntToStr(od_)+' - '+INtToStr(do_)+'   '+form1.stoper_stop;
gauge1.Progress:=5;
end;


procedure TForm12.SpeedButton1Click(Sender: TObject);
begin
if czy_parki=true then
 begin
  if (spinedit1.Value<spinedit2.Value) then policz(spinedit1.Value,spinedit2.Value);
  if (spinedit1.Value>spinedit2.Value) then policz(spinedit2.value,spinedit1.value);
 end;
end;

procedure TForm12.SpeedButton2Click(Sender: TObject);
begin
liczby_dla_opcji:=5;
Application.CreateForm(TForm16,form16);
form16.Showmodal;
if (ilosc_liczb4>2) and (ilosc_liczb4<81) then czy_parki:=true else czy_parki:=false;
end;

function TForm12.czy_wystapila_para(liczba1, liczba2, od_, do_: integer): boolean;
var
help1,help2:word;
begin
help1:=od_-1;
help2:=0;
repeat
 inc(help1);
 if (wylosowane[help1,liczba1] {czy_byla_liczba(liczba1,help1)=true}) and (wylosowane[help1,liczba2] {czy_byla_liczba(liczba2,help1)=true}) then help2:=1;
until (help2=1) or (help1=do_);
if help2=1 then czy_wystapila_para:=true else czy_wystapila_para:=false;
end;

procedure TForm12.sortuj_parki(ilosc, pozycja, wdol: word);
var j,i,temp1,temp2,temp3,temp4,temp5:integer;
begin
if wdol=0 then
 begin
        for i:=2 to ilosc do
         begin
          for j:=ilosc DownTo i Do
           if parki2[j-1,pozycja]<parki2[j,pozycja] Then
            begin
             temp1:=parki2[j-1,1];
             temp2:=parki2[j-1,2];
             temp3:=parki2[j-1,3];
             temp4:=parki2[j-1,4];
             temp5:=parki2[j-1,5];
             parki2[j-1,1]:=parki2[j,1];
             parki2[j-1,2]:=parki2[j,2];
             parki2[j-1,3]:=parki2[j,3];
             parki2[j-1,4]:=parki2[j,4];
             parki2[j-1,5]:=parki2[j,5];
             parki2[j,1]:=temp1;
             parki2[j,2]:=temp2;
             parki2[j,3]:=temp3;
             parki2[j,4]:=temp4;
             parki2[j,5]:=temp5;
            End;
         end;
 end else
  begin
        for i:=2 to ilosc do
         begin
          for j:=ilosc DownTo i Do
           if parki2[j-1,pozycja]>parki2[j,pozycja] Then
            begin
             temp1:=parki2[j-1,1];
             temp2:=parki2[j-1,2];
             temp3:=parki2[j-1,3];
             temp4:=parki2[j-1,4];
             temp5:=parki2[j-1,5];
             parki2[j-1,1]:=parki2[j,1];
             parki2[j-1,2]:=parki2[j,2];
             parki2[j-1,3]:=parki2[j,3];
             parki2[j-1,4]:=parki2[j,4];
             parki2[j-1,5]:=parki2[j,5];
             parki2[j,1]:=temp1;
             parki2[j,2]:=temp2;
             parki2[j,3]:=temp3;
             parki2[j,4]:=temp4;
             parki2[j,5]:=temp5;
            End;
         end;
  end;

end;

procedure TForm12.SpeedButton3Click(Sender: TObject);
begin
if czy_parki2=true then posortuj;
end;

procedure TForm12.SpeedButton5Click(Sender: TObject);
var
help1:word;
filename:textfile;
begin
form1.SaveDialog1.FileName:='UtwórzPary';
if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  for help1:=0 to stringgrid1.rowcount-1 do writeln(filename,stringgrid1.cells[0,help1]+';'+stringgrid1.cells[1,help1]+';'+stringgrid1.cells[2,help1]+';'+stringgrid1.cells[3,help1]+';'+stringgrid1.cells[4,help1]);
  closefile(filename);
 end else form1.zapiszHTML(form12.stringgrid1,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Utwórz Pary','Pary',1,zak1,zak2);
end;

procedure TForm12.posortuj;
var
help1,help2,help3,help4,help5:integer;
liczba:array[1..80]of byte;
ile_razy:byte;
begin

if czy_parki2=true then
 begin
  if radiobutton2.Checked then if radiobutton5.Checked then sortuj_parki(ile,3,1) else sortuj_parki(ile,3,0);
  if radiobutton3.Checked then if radiobutton5.Checked then sortuj_parki(ile,5,1) else sortuj_parki(ile,5,0);
  if radiobutton4.Checked then if radiobutton5.Checked then sortuj_parki(ile,4,1) else sortuj_parki(ile,4,0);


   if checkbox1.Checked=false then
    begin
     stringgrid1.RowCount:=ile+1;
     for help1:=1 to ile do
      begin
       stringgrid1.cells[1,help1]:=(IntToStr(parki2[help1,1])+' , '+IntToStr(parki2[help1,2]));
       stringgrid1.cells[2,help1]:=IntToStr(parki2[help1,3]);
       stringgrid1.cells[3,help1]:=IntToStr(parki2[help1,5]);
       stringgrid1.cells[4,help1]:=IntToStr(parki2[help1,4]);
      end;
    end;

  if checkbox1.Checked=true then
   begin
    ile_razy:=spinedit3.Value;
    for help1:=1 to 80 do liczba[help1]:=0;

    help1:=ilosc_liczb4*ile_razy div 2;
    help2:=ilosc_liczb4*ile_razy mod 2;
    if help1+help2>ile then stringgrid1.RowCount:=ile+1 else stringgrid1.rowcount:=help1+help2+1;

    help3:=0;
    help4:=0;

     while (help3<help1) and (help4<ile) do
      begin
       inc(help4);
        if (liczba[parki2[help4,1]]<ile_razy) and (liczba[parki2[help4,2]]<ile_razy) then
         begin
          inc(help3);
          stringgrid1.cells[1,help3]:=(IntToStr(parki2[help4,1])+' , '+IntToStr(parki2[help4,2]));
          stringgrid1.cells[2,help3]:=IntToStr(parki2[help4,3]);
          stringgrid1.cells[3,help3]:=IntToStr(parki2[help4,5]);
          stringgrid1.cells[4,help3]:=IntToStr(parki2[help4,4]);
          inc(liczba[parki2[help4,1]]);
          inc(liczba[parki2[help4,2]]);
         end;
      end;

    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ile) do
        begin
         inc(help4);
         help5:=0;
         if (liczba[parki2[help4,1]]<ile_razy) then inc(help5);
         if (liczba[parki2[help4,2]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            stringgrid1.cells[1,help3]:=(IntToStr(parki2[help4,1])+' , '+IntToStr(parki2[help4,2]));
            stringgrid1.cells[2,help3]:=IntToStr(parki2[help4,3]);
            stringgrid1.cells[3,help3]:=IntToStr(parki2[help4,5]);
            stringgrid1.cells[4,help3]:=IntToStr(parki2[help4,4]);
            inc(liczba[parki2[help4,1]]);
            inc(liczba[parki2[help4,2]]);
           end;
        end;
     end;

   end;

 end;
end;

end.
