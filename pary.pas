unit pary;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,main, Grids, ComCtrls, Spin, Buttons, Menus, Gauges;

type
  TForm4 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    CheckBox1: TCheckBox;
    GroupBox2: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    SpeedButton3: TSpeedButton;
    StringGrid5: TStringGrid;
    SpeedButton5: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Zapiszpionowo1: TMenuItem;
    Zapiszpoziomo1: TMenuItem;
    Gauge1: TGauge;
    RadioButton17: TRadioButton;
    TabSheet5: TTabSheet;
    StringGrid6: TStringGrid;
    GroupBox7: TGroupBox;
    Label5: TLabel;
    ComboBox3: TComboBox;
    SpeedButton6: TSpeedButton;
    PopupMenu2: TPopupMenu;
    Czstocimalejco1: TMenuItem;
    Czstocirosnco1: TMenuItem;
    N1: TMenuItem;
    Maxmalejco1: TMenuItem;
    Maxrosnco1: TMenuItem;
    N2: TMenuItem;
    Oczekiwaniemalejco1: TMenuItem;
    Oczekiwanierosnco1: TMenuItem;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    GroupBox3: TGroupBox;
    SpeedButton4: TSpeedButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpinEdit3: TSpinEdit;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    SpinEdit6: TSpinEdit;
    SpinEdit7: TSpinEdit;
    SpinEdit8: TSpinEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    PopupMenu4: TPopupMenu;
    MenuItem9: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    CheckBox2: TCheckBox;
    SpinEdit9: TSpinEdit;
    SB_pamietaj: TSpeedButton;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    N3: TMenuItem;
    KopiujdoZestaww1: TMenuItem;
    N4: TMenuItem;
    KopiujdoZestaww2: TMenuItem;
    N5: TMenuItem;
    KopiujdoZestaww3: TMenuItem;
    SpeedButton7: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure SpinEdit2Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Zapiszpionowo1Click(Sender: TObject);
    procedure Zapiszpoziomo1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure StringGrid2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Czstocimalejco1Click(Sender: TObject);
    procedure Czstocirosnco1Click(Sender: TObject);
    procedure Maxmalejco1Click(Sender: TObject);
    procedure Maxrosnco1Click(Sender: TObject);
    procedure Oczekiwaniemalejco1Click(Sender: TObject);
    procedure Oczekiwanierosnco1Click(Sender: TObject);
    procedure StringGrid6ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure StringGrid3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure KopiujdoZestaww1Click(Sender: TObject);
    procedure KopiujdoZestaww2Click(Sender: TObject);
    procedure KopiujdoZestaww3Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
  private
    { Private declarations }
    procedure sortujTablice();
  public
  procedure statystyki_par(od_,do_:integer);
  procedure sortuj_pary(pozycja,wdol:word);
  procedure posortuj_pary;
  procedure pokaz_stat_pary(liczba1,liczba2:integer);//pokazuje statystyki pary
  procedure pokaz_jeden_dwa;    
  procedure sortuj_pewne(pozycja,wdol:word;tabela:tstringgrid);
  procedure sortuj_pewne2(pozycja,wdol:integer);
  procedure sortuj_znalezione(pozycja,wdol:integer);
  procedure wypisz_pary_pewne;
  procedure wypisz_pary_szukaj;

  function ile_wpadlo(liczba1,liczba2,nr:integer):byte;
    { Public declarations }
  end;

var
  Form4: TForm4;
  czy_byly_stat_par:boolean;
  parki:array[1..3160,1..6] of integer;//zapisuje pary
  pary_pewne:array[1..3160,1..5]of word;//pary pewne
  pary_szukaj:array[1..3160,1..5]of word;//szukaj par
  rowcount1,ilosc_par,ilosc_par_pewnych,ilosc_par_znalezionych,prawd_pary:word;

  od2,do2:integer;

implementation

uses Addins;

{$R *.DFM}   

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
var help1:byte;
begin
zapisz_opcje('pary','pamietaj_ustawienia_'+prefiks_gry,SB_pamietaj.down);
if radiobutton2.Checked then help1:=1 else
 if radiobutton3.Checked then help1:=2 else
  if radiobutton4.Checked then help1:=3 else help1:=4;
zapisz_opcje('pary','sortuj_wedlug_'+prefiks_gry,help1);

if radiobutton5.Checked then help1:=1 else help1:=2;
zapisz_opcje('pary','sortuj_'+prefiks_gry,help1);

zapisz_opcje('pary','pary_kazda_liczba_tylko_'+prefiks_gry,checkbox1.checked);
zapisz_opcje('pary','pary_kazda_liczba_razy_'+prefiks_gry,spinedit9.value);

zapisz_opcje('pary','pary_pewne_kazda_liczba_tylko_raz_'+prefiks_gry,checkbox2.checked);

zapisz_opcje('pary','para_1_'+prefiks_gry,combobox1.itemindex+1);
zapisz_opcje('pary','para_2_'+prefiks_gry,combobox2.itemindex+1);

zapisz_opcje('pary','czestosc_od_'+prefiks_gry,spinedit3.value);
zapisz_opcje('pary','czestosc_do_'+prefiks_gry,spinedit4.value);

zapisz_opcje('pary','max_od_'+prefiks_gry,spinedit5.value);
zapisz_opcje('pary','max_do_'+prefiks_gry,spinedit6.value);

zapisz_opcje('pary','oczekiwanie_od_'+prefiks_gry,spinedit7.value);
zapisz_opcje('pary','oczekiwanie_do_'+prefiks_gry,spinedit8.value);

zapisz_opcje('pary','liczba_'+prefiks_gry,combobox3.itemindex+1);

zapisz_opcje('pary','od_'+prefiks_gry,spinedit1.value);
zapisz_opcje('pary','do_'+prefiks_gry,spinedit2.value);
zapisz_opcje('pary','zakladka_'+prefiks_gry,PageControl1.ActivePageIndex);

Action := caFree;
Form4:=nil;
end;
{ DONE  : wczytanie ustawien }
procedure TForm4.FormCreate(Sender: TObject);
var
help1,help2:integer;
pamietaj:boolean;
begin
if Gra.Numer=1 then
 begin
  rowcount1:=3161;
  ilosc_par:=3160;
  prawd_pary:=16;
  combobox1.Items.Clear;
  combobox2.Items.clear;
  combobox3.items.Clear;
  for help1:=1 to ilosc_liczb_gry do combobox1.Items.Add(IntToStr(help1));
  for help1:=1 to ilosc_liczb_gry do combobox2.Items.Add(IntToStr(help1));
  for help1:=1 to ilosc_liczb_gry do combobox3.Items.Add(IntToStr(help1));
  stringgrid1.RowCount:=3161;
  stringgrid6.Rowcount:=80; 
  tabsheet5.Caption:='1+79';
 end else
if Gra.Numer=2 then
 begin
  rowcount1:=1177;
  ilosc_par:=1176;
  prawd_pary:=78;
  combobox1.Items.clear;
  combobox2.Items.clear;
  combobox3.Items.Clear;
  for help1:=1 to ilosc_liczb_gry do combobox1.Items.Add(IntToStr(help1));
  for help1:=1 to ilosc_liczb_gry do combobox2.Items.Add(IntToStr(help1));
  for help1:=1 to ilosc_liczb_gry do combobox3.Items.Add(IntToStr(help1));
  stringgrid1.RowCount:=1177;
  stringgrid6.Rowcount:=49;
  tabsheet5.Caption:='1+48';
 end else
//if gra=3 then
 begin
  rowcount1:=862;
  ilosc_par:=861;
  prawd_pary:=86;
  combobox1.Items.clear;
  combobox2.Items.Clear;
  combobox3.items.clear;
  for help1:=1 to ilosc_liczb_gry do combobox1.Items.Add(IntToStr(help1));
  for help1:=1 to ilosc_liczb_gry do combobox2.Items.Add(IntToStr(help1));
  for help1:=1 to ilosc_liczb_gry do combobox3.Items.Add(IntToStr(help1));
  stringgrid1.RowCount:=862;
  stringgrid6.Rowcount:=42;
  tabsheet5.Caption:='1+41';
 end;

//pary
stringgrid1.ColWidths[0]:=30;
stringgrid1.ColWidths[5]:=40;
stringgrid1.Cells[0,0]:='Lp.';
stringgrid1.cells[1,0]:='Para';
stringgrid1.cells[2,0]:='Czêstoœæ';
stringgrid1.cells[3,0]:='Max';
stringgrid1.cells[4,0]:='Oczekuje';
stringgrid1.cells[5,0]:='Temp.';
stringgrid1.cells[6,0]:='Traf';
stringgrid1.ColWidths[6]:=28;
//pary pewne
stringgrid2.ColWidths[0]:=30;
stringgrid2.Cells[0,0]:='Lp.';
stringgrid2.cells[1,0]:='Para';
stringgrid2.cells[2,0]:='Czêstoœæ';
stringgrid2.cells[3,0]:='Max';
stringgrid2.cells[4,0]:='Oczekuje';
stringgrid2.cells[5,0]:='Traf';
stringgrid2.ColWidths[5]:=28;
//para
stringgrid4.cells[0,0]:='Para';
stringgrid4.cells[1,0]:='Czêstoœæ';
stringgrid4.cells[2,0]:='Max';
stringgrid4.cells[3,0]:='Oczekuje';
//szukaj pary
stringgrid3.ColWidths[0]:=30;
stringgrid3.Cells[0,0]:='Lp.';
stringgrid3.cells[1,0]:='Para';
stringgrid3.cells[2,0]:='Czêstoœæ';
stringgrid3.cells[3,0]:='Max';
stringgrid3.cells[4,0]:='Oczekuje';
stringgrid3.cells[5,0]:='Traf';
stringgrid3.ColWidths[5]:=28;

stringgrid6.ColWidths[0]:=30;
stringgrid6.Cells[0,0]:='Lp.';
stringgrid6.cells[1,0]:='Para';
stringgrid6.cells[2,0]:='Czêstoœæ';
stringgrid6.cells[3,0]:='Max';
stringgrid6.cells[4,0]:='Oczekuje';
stringgrid6.cells[5,0]:='Traf';
stringgrid6.ColWidths[5]:=28;

combobox1.ItemIndex:=0;
combobox2.ItemIndex:=1;
combobox3.ItemIndex:=0;

pamietaj:=wczytaj_opcje('pary','pamietaj_ustawienia_'+prefiks_gry,false);
SB_pamietaj.Down:=pamietaj;

if pamietaj then
 begin
  //pary
  help1:=wczytaj_opcje('pary','sortuj_wedlug_'+prefiks_gry,help1);
  if help1=1 then radiobutton2.Checked:=true else
   if help1=1 then radiobutton3.Checked:=true else
    if help1=1 then radiobutton4.Checked:=true else radiobutton17.Checked:=true;
  help1:=wczytaj_opcje('pary','sortuj_'+prefiks_gry,help1);
  if help1=1 then radiobutton5.Checked:=true else radiobutton6.Checked:=true;
  checkbox1.Checked:=wczytaj_opcje('pary','pary_kazda_liczba_tylko_'+prefiks_gry,false);
  help1:=wczytaj_opcje('pary','pary_kazda_liczba_razy_'+prefiks_gry,1);
  if (help1<1) or (help1>5) then help1:=1;
  spinedit9.Value:=help1;

  //pary pewne
  checkbox2.Checked:=wczytaj_opcje('pary','pary_pewne_kazda_liczba_tylko_raz_'+prefiks_gry,false);

  //para
  help1:=wczytaj_opcje('pary','para_1_'+prefiks_gry,1);
  if (help1<1) or (help1>ilosc_liczb_gry) then help1:=1;
  combobox1.ItemIndex:=help1-1;
  help1:=wczytaj_opcje('pary','para_2_'+prefiks_gry,2);
  if (help1<1) or (help1>ilosc_liczb_gry) then help1:=2;
  combobox2.ItemIndex:=help1-1;

  //szukaj pary
  help1:=wczytaj_opcje('pary','czestosc_od_'+prefiks_gry,0);
  if (help1<0) or (help1>losowan) then help1:=0;
  spinedit3.Value:=help1;
  help1:=wczytaj_opcje('pary','czestosc_do_'+prefiks_gry,losowan);
  if (help1<0) or (help1>losowan) then help1:=losowan;
  spinedit4.Value:=help1;
  help1:=wczytaj_opcje('pary','max_od_'+prefiks_gry,0);
  if (help1<0) or (help1>losowan) then help1:=0;
  spinedit5.Value:=help1;
  help1:=wczytaj_opcje('pary','max_do_'+prefiks_gry,losowan);
  if (help1<0) or (help1>losowan) then help1:=losowan;
  spinedit6.Value:=help1;
  help1:=wczytaj_opcje('pary','oczekiwanie_od_'+prefiks_gry,0);
  if (help1<0) or (help1>losowan) then help1:=0;
  spinedit7.Value:=help1;
  help1:=wczytaj_opcje('pary','oczekiwanie_do_'+prefiks_gry,losowan);
  if (help1<0) or (help1>losowan) then help1:=losowan;
  spinedit8.Value:=help1;

  //1+79
  help1:=wczytaj_opcje('pary','liczba_'+prefiks_gry,1);
  if (help1<1) or (help1>ilosc_liczb_gry) then help1:=1;
  combobox3.ItemIndex:=help1-1;

  //ogolne
  PageControl1.ActivePageIndex:=wczytaj_opcje('pary','zakladka_'+prefiks_gry,0);
 end;

spinedit3.MaxValue:=losowan;
spinedit4.MaxValue:=losowan;
spinedit5.MaxValue:=losowan;
spinedit6.MaxValue:=losowan;
spinedit7.MaxValue:=losowan;
spinedit8.MaxValue:=losowan;

help1:=wspolne[Gra.Numer,1];
help2:=wspolne[Gra.Numer,2];
spinedit1.MinValue:=1;
spinedit1.MaxValue:=losowan;
spinedit2.MinValue:=1;
spinedit2.MaxValue:=losowan;

if pamietaj then
 begin
  help1:=wczytaj_opcje('pary','od_'+prefiks_gry,1);
  help2:=wczytaj_opcje('pary','do_'+prefiks_gry,losowan);
  if not czy_dobry_zakres(help1,help2) then begin help1:=wspolne[Gra.Numer,1]; help2:=wspolne[Gra.Numer,2]; end;
 end;

  spinedit1.Value:=help1;
  spinedit2.Value:=help2;
  spinedit1.Hint:=(IntToStr(losowanie[help1,21])+'.'+IntToStr(losowanie[help1,22])+'.'+IntToStr(losowanie[help1,23]));
  spinedit2.Hint:=(IntToStr(losowanie[help2,21])+'.'+IntToStr(losowanie[help2,22])+'.'+IntToStr(losowanie[help2,23]));

czy_byly_stat_par:=false;  

//mapa pary
stringgrid5.ColWidths[0]:=48;
stringgrid5.colwidths[2]:=20;
stringgrid5.colwidths[3]:=20;
stringgrid5.cells[0,0]:='Numer';
stringgrid5.cells[1,0]:='Data';
stringgrid5.cells[2,0]:=IntToStr(combobox1.itemindex+1);
stringgrid5.cells[3,0]:=IntToStr(combobox2.itemindex+1);
stringgrid5.rowcount:=losowan;

speedbutton5.Enabled:=false;

end;

procedure TForm4.SpinEdit1Change(Sender: TObject);
begin
spinedit1.Hint:=(IntToStr(losowanie[spinedit1.Value,21])+'.'+IntToStr(losowanie[spinedit1.Value,22])+'.'+IntToStr(losowanie[spinedit1.Value,23]));
end;

procedure TForm4.SpinEdit2Change(Sender: TObject);
begin
spinedit2.Hint:=(IntToStr(losowanie[spinedit2.Value,21])+'.'+IntToStr(losowanie[spinedit2.Value,22])+'.'+IntToStr(losowanie[spinedit2.Value,23]));
end;

procedure TForm4.statystyki_par(od_, do_: integer);
var
 parki_:array[1..80,1..80,1..2] of integer; //do liczenia czestosci i oczekiwania
 help,help1,help2,help3,help4,help5:integer;
 i,j,ilosc : Integer;
 temp,temp1,temp2,temp3,temp4,temp5,temp6,max: integer;
 pomoc1:string;
 srednia:integer;
 ilosc_:int64;
 wpadlo:byte;
begin
od2:=od_;
do2:=do_;

form1.stoper_start;

gauge1.Progress:=0;
gauge1.MaxValue:=8;
help5:=do_-od_+1;

//zerowanie dwoch tablic
for help1:=1 to ilosc_par do
 begin
   parki[help1,3]:=0;
   parki[help1,4]:=help5;
   parki[help1,5]:=0;
 end;

gauge1.Progress:=1;

for help1:=1 to ilosc_liczb_gry do
 for help2:=1 to ilosc_liczb_gry do
  begin
   parki_[help1,help2,1]:=0;
   parki_[help2,help1,1]:=0;
   parki_[help1,help2,2]:=help5;
   parki_[help2,help1,2]:=help5;
  end;

gauge1.Progress:=2;

//liczenie czêstoœci
for help1:=od_ to do_ do
 begin
  for help:=1 to ilosc_liczb_los do
   for help2:=help to ilosc_liczb_los do
    begin
     if help2<>help then
      begin
       inc(parki_[losowanie[help1,help],losowanie[help1,help2],1]);
      end;
    end;
 end;

gauge1.Progress:=3;

help3:=0;
for help:=1 to ilosc_liczb_gry do
 for help2:=help+1 to ilosc_liczb_gry do
   begin
      inc(help3);
      parki[help3,1]:=help;
      parki[help3,2]:=help2;
   end;

//liczenie oczekiwania

for help1:=1 to ilosc_par do
 begin
  help3:=do_+1;
  help5:=0;
  help4:=0;
  repeat
   dec(help3);
   if wylosowane[help3,parki[help1,1]] and wylosowane[help3,parki[help1,2]] then help4:=1;
   if help4=0 then inc(help5);
  until (help4=1) or (help3=od_);
  parki[help1,4]:=help5;
 end;



gauge1.Progress:=4;

help3:=0;
for help:=1 to ilosc_liczb_gry do
 for help2:=help+1 to ilosc_liczb_gry do
   begin
      inc(help3);
      parki[help3,3]:=parki_[help,help2,1];
   end;

gauge1.Progress:=5;

//liczenie max czekania

help5:=do_-od_+1;
for help1:=1 to ilosc_par do
  begin
    max:=0;
    for help2:=od_ to do_ do
      begin
        if (wylosowane[help2,parki[help1,1]]) and (wylosowane[help2,parki[help1,2]]) then
          begin
	    if max>parki[help1,5] then parki[help1,5]:=max;
            max:=0;
          end
            else inc(max);
      end;
    if parki_[parki[help1,1],parki[help1,2],1]=0 then parki[help1,5]:=help5;
  end;

gauge1.Progress:=6;

ilosc_:=0;
for help1:=1 to ilosc_par do ilosc_:=ilosc_+parki[help1,3];
srednia:=round(ilosc_/ilosc_par);
//showmessage(IntToStr(srednia));
for help1:=1 to ilosc_par do parki[help1,6]:=(srednia-parki[help1,3])+parki[help1,4];

//sortowanie dla par pewnych
sortuj_pary(4,0);
//wypisanie par pewnych

for help1:=1 to 3160 do
 for help2:=1 to 5 do pary_pewne[help1,help2]:=0;

help2:=0;
for help1:=1 to ilosc_par do
 if (parki[help1,4]>parki[help1,5]) and (parki[help1,4]>prawd_pary) then
  begin
   inc(help2);
   pary_pewne[help2,1]:=parki[help1,1];
   pary_pewne[help2,2]:=parki[help1,2];
   pary_pewne[help2,3]:=parki[help1,3];
   pary_pewne[help2,4]:=parki[help1,4];
   pary_pewne[help2,5]:=parki[help1,5];
                                          {
   stringgrid2.cells[0,help2]:=IntToStr(help2);
   stringgrid2.cells[1,help2]:=(IntToStr(parki[help1,1])+' , '+IntToStr(parki[help1,2]));
   stringgrid2.cells[2,help2]:=IntToStr(parki[help1,3]);
   stringgrid2.cells[3,help2]:=IntToStr(parki[help1,5]);
   stringgrid2.cells[4,help2]:=IntToStr(parki[help1,4]);
   wpadlo:=ile_wpadlo(parki[help1,1],parki[help1,2],do2+1);
   stringgrid2.cells[5,help2]:='';
   if wpadlo=2 then stringgrid2.cells[5,help2]:='TAK';
   if wpadlo=1 then stringgrid2.cells[5,help2]:='1';   }
  end;

ilosc_par_pewnych:=help2;

if help2=0 then
 begin
  stringgrid2.rowcount:=2;
  stringgrid2.cells[0,1]:='0';
  stringgrid2.cells[1,1]:='0';
  stringgrid2.cells[2,1]:='0';
  stringgrid2.cells[3,1]:='0';
  stringgrid2.cells[4,1]:='0';

 end else stringgrid2.rowcount:=help2+1;
if help2>0 then wypisz_pary_pewne;
gauge1.Progress:=7;

czy_byly_stat_par:=true;
posortuj_pary;

gauge1.Progress:=8;
speedbutton5.Enabled:=true;
SpeedButton7.Enabled := true;
form4.Caption:='Pary liczb... '+IntToStr(od_)+' - '+IntToStr(do_)+'   '+form1.stoper_stop;
end;

procedure TForm4.SpeedButton1Click(Sender: TObject);
begin
if (spinedit1.Value<spinedit2.Value) then statystyki_par(spinedit1.Value,spinedit2.Value);
if (spinedit1.Value>spinedit2.Value) then statystyki_par(spinedit2.value,spinedit1.value);

end;

procedure TForm4.sortuj_pary(pozycja, wdol: word);
var
ilosc,help1,j,i:integer;
temp:array[1..6]of integer;
begin
ilosc:=ilosc_par;
if wdol=0 then
 begin
        for i:=2 to ilosc do
         begin
          for j:=ilosc DownTo i Do
           if parki[j-1,pozycja]<parki[j,pozycja] Then
            begin
             for help1:=1 to 6 do temp[help1]:=parki[j-1,help1];
             for help1:=1 to 6 do parki[j-1,help1]:=parki[j,help1];
             for help1:=1 to 6 do parki[j,help1]:=temp[help1];
            End;
         end;
 end else
  begin
        for i:=2 to ilosc do
         begin
          for j:=ilosc DownTo i Do
           if parki[j-1,pozycja]>parki[j,pozycja] Then
            begin
             for help1:=1 to 6 do temp[help1]:=parki[j-1,help1];
             for help1:=1 to 6 do parki[j-1,help1]:=parki[j,help1];
             for help1:=1 to 6 do parki[j,help1]:=temp[help1];
            End;
         end;
  end;

end;

procedure TForm4.posortuj_pary;
var
help1,help2,help3,help4,help5,wpadlo:integer;
liczba:array[1..80] of byte;
ile_razy:byte;
begin


if czy_byly_stat_par=true then
 begin
  if radiobutton2.checked then
   if radiobutton5.checked then sortuj_pary(3,1) else sortuj_pary(3,0);

  if radiobutton3.checked then
   if radiobutton5.checked then sortuj_pary(5,1) else sortuj_pary(5,0);

  if radiobutton4.checked then
   if radiobutton5.checked then sortuj_pary(4,1) else sortuj_pary(4,0);

  if radiobutton17.checked then
   if radiobutton5.checked then sortuj_pary(6,1) else sortuj_pary(6,0);

  if checkbox1.Checked=false then
    begin
     stringgrid1.rowcount:=rowcount1;
     for help1:=1 to ilosc_par do
      begin
       stringgrid1.cells[0,help1]:=IntToStr(help1);
       stringgrid1.cells[1,help1]:=(IntToStr(parki[help1,1])+' , '+IntToStr(parki[help1,2]));
       stringgrid1.cells[2,help1]:=IntToStr(parki[help1,3]);
       stringgrid1.cells[3,help1]:=IntToStr(parki[help1,5]);
       stringgrid1.cells[4,help1]:=IntToStr(parki[help1,4]);
       if parki[help1,6]>0 then stringgrid1.cells[5,help1]:='+'+IntToStr(parki[help1,6]) else stringgrid1.cells[5,help1]:=IntToStr(parki[help1,6]);
       wpadlo:=ile_wpadlo(parki[help1,1],parki[help1,2],do2+1);
       stringgrid1.cells[6,help1]:='';
       if wpadlo=2 then stringgrid1.cells[6,help1]:='TAK';
       if wpadlo=1 then stringgrid1.cells[6,help1]:='1';
      end;
    end;

  if checkbox1.Checked=true then
   begin
    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=0;
    ile_razy:=spinedit9.Value;

    help1:=ilosc_liczb_gry*ile_razy div 2;
    help2:=ilosc_liczb_gry*ile_razy mod 2;
    if help1+help2>ilosc_par then stringgrid1.RowCount:=ilosc_par+1 else stringgrid1.rowcount:=help1+help2+1;

    help3:=0;
    help4:=0;

     while (help3<help1) and (help4<ilosc_par) do
      begin
       inc(help4);
        if (liczba[parki[help4,1]]<ile_razy) and (liczba[parki[help4,2]]<ile_razy) then
         begin
          inc(help3);
          stringgrid1.cells[0,help3]:=IntToStr(help3);
          stringgrid1.cells[1,help3]:=(IntToStr(parki[help4,1])+' , '+IntToStr(parki[help4,2]));
          stringgrid1.cells[2,help3]:=IntToStr(parki[help4,3]);
          stringgrid1.cells[3,help3]:=IntToStr(parki[help4,5]);
          stringgrid1.cells[4,help3]:=IntToStr(parki[help4,4]);
          if parki[help4,6]>0 then stringgrid1.cells[5,help3]:='+'+IntToStr(parki[help4,6]) else stringgrid1.cells[5,help3]:=IntToStr(parki[help4,6]);
          wpadlo:=ile_wpadlo(parki[help4,1],parki[help4,2],do2+1);
          stringgrid1.cells[6,help3]:='';
          if wpadlo=2 then stringgrid1.cells[6,help3]:='TAK';
          if wpadlo=1 then stringgrid1.cells[6,help3]:='1';
          inc(liczba[parki[help4,1]]);
          inc(liczba[parki[help4,2]]);
         end;
      end;

     if (help4=ilosc_par) and (help3<help1) then stringgrid1.RowCount:=help3+1;

    if help2>0 then
     begin
      help5:=0;
       while (help5<>help2) and (help4<ilosc_par) do
        begin
         inc(help4);
         help5:=0;
         if (liczba[parki[help4,1]]<ile_razy) then inc(help5);
         if (liczba[parki[help4,2]]<ile_razy) then inc(help5);
          if help5=help2 then
           begin
            inc(help3);
            stringgrid1.cells[0,help3]:=IntToStr(help3);
            stringgrid1.cells[1,help3]:=(IntToStr(parki[help4,1])+' , '+IntToStr(parki[help4,2]));
            stringgrid1.cells[2,help3]:=IntToStr(parki[help4,3]);
            stringgrid1.cells[3,help3]:=IntToStr(parki[help4,5]);
            stringgrid1.cells[4,help3]:=IntToStr(parki[help4,4]);
            if parki[help4,6]>0 then stringgrid1.cells[5,help3]:='+'+IntToStr(parki[help4,6]) else stringgrid1.cells[5,help3]:=IntToStr(parki[help4,6]);
            wpadlo:=ile_wpadlo(parki[help4,1],parki[help4,2],do2+1);
            stringgrid1.cells[6,help3]:='';
            if wpadlo=2 then stringgrid1.cells[6,help3]:='TAK';
            if wpadlo=1 then stringgrid1.cells[6,help3]:='1';
            inc(liczba[parki[help4,1]]);
            inc(liczba[parki[help4,2]]);
           end;
        end;
     end;
    if (help4=ilosc_par) and (help3<help1+help2) then stringgrid1.RowCount:=help3+1;
   end;

 end;

end;

procedure TForm4.SpeedButton2Click(Sender: TObject);
begin
  if checkbox3.Checked and (stringgrid1.RowCount < 210) then sortujTablice() else posortuj_pary();
end;

procedure TForm4.pokaz_stat_pary(liczba1, liczba2: integer);
var
help1,help2,help3,help4:integer;
start,stop:integer;
begin
help2:=liczba2;
if liczba1>liczba2 then
 begin
  liczba2:=liczba1;
  liczba1:=help2;
 end;
help2:=0;
if czy_byly_stat_par=true then
 begin
  for help1:=1 to ilosc_par do
   if ((parki[help1,1]=liczba1) and (parki[help1,2]=liczba2)) then help2:=help1;
    stringgrid4.cells[0,1]:=(IntToStr(parki[help2,1])+' , '+IntToStr(parki[help2,2]));
    stringgrid4.cells[1,1]:=IntToStr(parki[help2,3]);
    stringgrid4.cells[2,1]:=IntToStr(parki[help2,5]);
    stringgrid4.cells[3,1]:=IntToStr(parki[help2,4]);
    start:=od2;
    stop:=do2;
     begin
      help3:=stop-start+1;
      help4:=-1;
      stringgrid5.cells[2,0]:=IntToStr(liczba1);
      stringgrid5.cells[3,0]:=IntToStr(liczba2);
      for help1:=1 to losowan do for help2:=0 to 3 do stringgrid5.cells[help2,help1]:='';
      for help1:=1 to help3 do
       begin
        inc(help4);
        stringgrid5.cells[0,help1]:=IntToStr(start+help4);
        stringgrid5.cells[1,help1]:=(IntToStr(losowanie[start+help4,21])+'.'+IntToStr(losowanie[start+help4,22])+'.'+IntToStr(losowanie[start+help4,23]));
        if wylosowane[start+help4,liczba1] then stringgrid5.cells[2,help1]:='X';
        if wylosowane[start+help4,liczba2] then stringgrid5.cells[3,help1]:='X';
       end;
      stringgrid5.rowcount:=help3+1;
      if stringgrid5.rowcount>9 then stringgrid5.toprow:=help3-7;
     end;
 end;


end;

procedure TForm4.SpeedButton3Click(Sender: TObject);
begin
if combobox1.itemindex<combobox2.itemindex then pokaz_stat_pary(combobox1.itemindex+1,combobox2.itemindex+1);
if combobox1.itemindex>combobox2.itemindex then pokaz_stat_pary(combobox2.itemindex+1,combobox1.itemindex+1);
end;

procedure TForm4.SpeedButton4Click(Sender: TObject);
var
help1,help2:integer;
czestosc1,czestosc2,maks1,maks2,oczekuje1,oczekuje2,wpadlo:integer;
begin

if czy_byly_stat_par then
 begin

  if spinedit3.Value>spinedit4.Value then
   begin
    czestosc1:=spinedit4.Value;
    czestosc2:=spinedit3.Value;
   end else
    begin
     czestosc1:=spinedit3.Value;
     czestosc2:=spinedit4.Value;
    end;

  if spinedit5.Value>spinedit6.Value then
   begin
    maks1:=spinedit6.Value;
    maks2:=spinedit5.Value;
   end else
    begin
     maks1:=spinedit5.Value;
     maks2:=spinedit6.Value;
    end;

  if spinedit7.Value>spinedit8.Value then
   begin
    oczekuje1:=spinedit8.Value;
    oczekuje2:=spinedit7.Value;
   end else
    begin
     oczekuje1:=spinedit7.Value;
     oczekuje2:=spinedit8.Value;
    end;

  sortuj_pary(3,0);



  for help1:=1 to 3160 do
   for help2:=1 to 5 do pary_szukaj[help1,help2]:=0;

   help2:=0;

  for help1:=1 to ilosc_par do if (parki[help1,3]>=czestosc1) and (parki[help1,3]<=czestosc2) and (parki[help1,4]>=oczekuje1) and (parki[help1,4]<=oczekuje2) and (parki[help1,5]>=maks1) and (parki[help1,5]<=maks2) then
   begin
    inc(help2);
    pary_szukaj[help2,1]:=parki[help1,1];
    pary_szukaj[help2,2]:=parki[help1,2];
    pary_szukaj[help2,3]:=parki[help1,3];
    pary_szukaj[help2,4]:=parki[help1,4];
    pary_szukaj[help2,5]:=parki[help1,5];
   end;
  ilosc_par_znalezionych:=help2;  
  if help2=0 then
   begin
    stringgrid3.cells[0,1]:='-';
    stringgrid3.cells[1,1]:='-';
    stringgrid3.cells[2,1]:='-';
    stringgrid3.cells[3,1]:='-';
    stringgrid3.cells[4,1]:='-';
    stringgrid3.cells[5,1]:='-';
    stringgrid3.rowcount:=2;
   end else
    begin
     stringgrid3.RowCount:=help2+1;
     wypisz_pary_szukaj;
    end;

  label13.caption:=IntToStr(help2); 

 end;

end;

procedure TForm4.PageControl1Change(Sender: TObject);
begin
if (pagecontrol1.ActivePageIndex<>2) and (czy_byly_stat_par=true) then speedbutton5.Enabled:=true else speedbutton5.Enabled:=false;
end;

procedure TForm4.SpeedButton5Click(Sender: TObject);
var
  P : TPoint;
begin
  GetCursorPos(P);
  popupmenu1.Popup(P.X, P.Y);
end;

procedure TForm4.Zapiszpionowo1Click(Sender: TObject);
var
help1:integer;
filename:textfile;
begin

case pagecontrol1.ActivePageIndex of
  0:form1.SaveDialog1.FileName:='Pary';
  1:form1.SaveDialog1.FileName:='ParyPewne';
  3:form1.SaveDialog1.FileName:='SzukajPary';
  4:form1.savedialog1.filename:=pagecontrol1.ActivePage.Caption;
end;

form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm|Plik zestawu liczb (*.zes)|*.zes';

if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  if pagecontrol1.ActivePageIndex=1 then for help1:=0 to stringgrid2.rowcount-1 do writeln(filename,stringgrid2.cells[0,help1]+';'+stringgrid2.cells[1,help1]+';'+stringgrid2.cells[2,help1]+';'+stringgrid2.cells[3,help1]+';'+stringgrid2.cells[4,help1]+';'+stringgrid2.cells[5,help1]);
  if pagecontrol1.ActivePageIndex=3 then for help1:=0 to stringgrid3.rowcount-1 do writeln(filename,stringgrid3.cells[0,help1]+';'+stringgrid3.cells[1,help1]+';'+stringgrid3.cells[2,help1]+';'+stringgrid3.cells[3,help1]+';'+stringgrid3.cells[4,help1]);
  if pagecontrol1.ActivePageIndex=0 then for help1:=0 to stringgrid1.rowcount-1 do writeln(filename,stringgrid1.cells[0,help1]+';'+stringgrid1.cells[1,help1]+';'+stringgrid1.cells[2,help1]+';'+stringgrid1.cells[3,help1]+';'+stringgrid1.cells[4,help1]+';'+stringgrid1.cells[5,help1]+';'+stringgrid1.cells[6,help1]);
  if pagecontrol1.ActivePageIndex=4 then for help1:=0 to stringgrid6.rowcount-1 do writeln(filename,stringgrid6.cells[0,help1]+';'+stringgrid6.cells[1,help1]+';'+stringgrid6.cells[2,help1]+';'+stringgrid6.cells[3,help1]+';'+stringgrid6.cells[4,help1]);
  closefile(filename);
 end else if form1.SaveDialog1.FilterIndex=2 then
 begin
  if pagecontrol1.ActivePageIndex=1 then form1.zapiszHTML(form4.stringgrid2,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pary','Pary pewne',1,od2,do2);
  if pagecontrol1.ActivePageIndex=3 then form1.zapiszHTML(form4.stringgrid3,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pary','Szukaj pary',1,od2,do2);
  if pagecontrol1.ActivePageIndex=0 then form1.zapiszHTML(form4.stringgrid1,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pary','Pary',1,od2,do2);
  if pagecontrol1.ActivePageIndex=4 then form1.zapiszHTML(form4.stringgrid6,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pary',pagecontrol1.ActivePage.Caption,1,od2,do2);
 end else
 begin
     case pagecontrol1.ActivePageIndex of
       0:zapisz_tablice_zestawow(form4.stringgrid1,1,form1.savedialog1.filename);
       1:zapisz_tablice_zestawow(form4.stringgrid2,1,form1.savedialog1.filename);
       3:zapisz_tablice_zestawow(form4.stringgrid3,1,form1.savedialog1.filename);
       4:zapisz_tablice_zestawow(form4.stringgrid6,1,form1.savedialog1.filename);
     end;
 end;
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

procedure TForm4.Zapiszpoziomo1Click(Sender: TObject);
var
help1,help2:integer;
filename:textfile;
begin

case pagecontrol1.ActivePageIndex of
  0:form1.SaveDialog1.FileName:='Pary';
  1:form1.SaveDialog1.FileName:='ParyPewne';
  3:form1.SaveDialog1.FileName:='SzukajPary';
  4:form1.savedialog1.filename:=pagecontrol1.ActivePage.Caption;
end;

form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm|Plik zestawu liczb (*.zes)|*.zes';

if form1.savedialog1.Execute then
if form1.SaveDialog1.FilterIndex=1 then
 begin
  assignfile(filename,form1.savedialog1.filename);
  rewrite(filename);
  if pagecontrol1.ActivePageIndex=1 then
    for help2:=0 to 5 do
     begin
      for help1:=0 to stringgrid2.RowCount-1 do write(filename,stringgrid2.cells[help2,help1]+';');
      write(filename,stringgrid2.cells[help1+1,help2]+#13);
     end;
  if pagecontrol1.ActivePageIndex=3 then
    for help2:=0 to 5 do
     begin
      for help1:=0 to stringgrid3.RowCount-1 do write(filename,stringgrid3.cells[help2,help1]+';');
      write(filename,stringgrid3.cells[help1+1,help2]+#13);
     end;
  if pagecontrol1.ActivePageIndex=0 then
    for help2:=0 to 6 do
     begin
      for help1:=0 to stringgrid1.RowCount-1 do write(filename,stringgrid1.cells[help2,help1]+';');
      write(filename,stringgrid1.cells[help1-1,help2]+#13);
     end;
  if pagecontrol1.ActivePageIndex=4 then
    for help2:=0 to 5 do
     begin
      for help1:=0 to stringgrid6.RowCount-1 do write(filename,stringgrid6.cells[help2,help1]+';');
      write(filename,stringgrid6.cells[help1-1,help2]+#13);
     end;
  closefile(filename);
 end else if form1.SaveDialog1.FilterIndex=2 then
  begin
   if pagecontrol1.ActivePageIndex=1 then form1.zapiszHTML3(form4.stringgrid2,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pary','Pary pewne',1,od2,do2);
   if pagecontrol1.ActivePageIndex=3 then form1.zapiszHTML3(form4.stringgrid3,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pary','Szukaj pary',1,od2,do2);
   if pagecontrol1.ActivePageIndex=0 then form1.zapiszHTML3(form4.stringgrid1,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pary','Pary',1,od2,do2);
   if pagecontrol1.ActivePageIndex=4 then form1.zapiszHTML3(form4.stringgrid6,form1.savedialog1.filename,ExtractFileName(form1.savedialog1.filename),'Pary',pagecontrol1.ActivePage.Caption,1,od2,do2);
  end else
  begin
     case pagecontrol1.ActivePageIndex of
       0:zapisz_tablice_zestawow(form4.stringgrid1,1,form1.savedialog1.filename);
       1:zapisz_tablice_zestawow(form4.stringgrid2,1,form1.savedialog1.filename);
       3:zapisz_tablice_zestawow(form4.stringgrid3,1,form1.savedialog1.filename);
       4:zapisz_tablice_zestawow(form4.stringgrid6,1,form1.savedialog1.filename);
     end;
  end;
form1.SaveDialog1.Filter:='Plik tekstowy (*.txt)|*.txt|Plik strony WWW (*.html)|*.html;*.htm';
end;

procedure TForm4.pokaz_jeden_dwa;
var
help1,help2,help3,wpadlo:integer;
begin
help1:=combobox3.ItemIndex+1;
help3:=0;
sortuj_pary(2,1);
sortuj_pary(1,1);
for help2:=1 to ilosc_par do if (parki[help2,1]=help1) or (parki[help2,2]=help1) then
 begin
  inc(help3);
  stringgrid6.cells[0,help3]:=IntToStr(help3);
  stringgrid6.cells[1,help3]:=(IntToStr(parki[help2,1])+' , '+IntToStr(parki[help2,2]));
  stringgrid6.cells[2,help3]:=IntToStr(parki[help2,3]);
  stringgrid6.cells[3,help3]:=IntToStr(parki[help2,5]);
  stringgrid6.cells[4,help3]:=IntToStr(parki[help2,4]);
  wpadlo:=ile_wpadlo(parki[help2,1],parki[help2,2],do2+1);
  if wpadlo=2 then stringgrid6.cells[5,help3]:='TAK';
  if wpadlo=1 then stringgrid6.cells[5,help3]:='1';
  if wpadlo=0 then stringgrid6.cells[5,help3]:='';
 end;
end;

procedure TForm4.SpeedButton6Click(Sender: TObject);
begin
if czy_byly_stat_par=true then pokaz_jeden_dwa;
end;

procedure TForm4.StringGrid2ContextPopup(Sender: TObject; MousePos: TPoint; var Handled: Boolean);
begin
 if (czy_byly_stat_par) and (ilosc_par_pewnych>0) then
  begin
   GetCursorPos(mousepos);
   popupmenu2.Popup(mousepos.X,mousepos.Y);
  end;
end;

procedure TForm4.sortuj_pewne(pozycja, wdol: word;tabela:tstringgrid);
var
help1:integer;
linie:array[1..5]of string;
i,j:word;
begin
IF (tabela.RowCount>2) and (czy_byly_stat_par=true) THEN
 BEGIN
  if wdol=0 then
   begin
    for i:=2 to tabela.RowCount-1 do
     for j:=tabela.RowCount-1 DownTo i Do
      if StrToInt(tabela.cells[pozycja,j-1])<StrToInt(tabela.cells[pozycja,j]) Then
        begin
         for help1:=1 to 5 do linie[help1]:=tabela.cells[help1,j-1];
         for help1:=1 to 5 do tabela.cells[help1,j-1]:=tabela.cells[help1,j];
         for help1:=1 to 5 do tabela.cells[help1,j]:=linie[help1];
        End;
   end;
  if wdol=1 then
   begin
    for i:=2 to tabela.RowCount-1 do
     for j:=tabela.RowCount-1 DownTo i Do
      if StrToInt(tabela.cells[pozycja,j-1])>StrToInt(tabela.cells[pozycja,j]) Then
        begin
         for help1:=1 to 5 do linie[help1]:=tabela.cells[help1,j-1];
         for help1:=1 to 5 do tabela.cells[help1,j-1]:=tabela.cells[help1,j];
         for help1:=1 to 5 do tabela.cells[help1,j]:=linie[help1];
        End;
   end;
END;

end;

procedure TForm4.Czstocimalejco1Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgrid2.RowCount < 200) then
  begin
    sortujStringGrid(stringgrid2, 2, false);
  end else
  begin
    sortuj_pewne2(3,0);
    wypisz_pary_pewne;
  end;
end;

procedure TForm4.Czstocirosnco1Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgrid2.RowCount < 200) then
  begin
    sortujStringGrid(stringgrid2, 2);
  end else
  begin
    sortuj_pewne2(3,1);
    wypisz_pary_pewne;
  end;
end;

procedure TForm4.Maxmalejco1Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgrid2.RowCount < 200) then
  begin
    sortujStringGrid(stringgrid2, 3, false);
  end else
  begin
    sortuj_pewne2(5,0);
    wypisz_pary_pewne;
  end;
end;

procedure TForm4.Maxrosnco1Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgrid2.RowCount < 200) then
  begin
    sortujStringGrid(stringgrid2, 3);
  end else
  begin
    sortuj_pewne2(5,1);
    wypisz_pary_pewne;
  end;
end;

procedure TForm4.Oczekiwaniemalejco1Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgrid2.RowCount < 200) then
  begin
    sortujStringGrid(stringgrid2, 4, false);
  end else
  begin
    sortuj_pewne2(4,0);
    wypisz_pary_pewne;
  end;
end;

procedure TForm4.Oczekiwanierosnco1Click(Sender: TObject);
begin
  if checkbox4.Checked and (stringgrid2.RowCount < 200) then
  begin
    sortujStringGrid(stringgrid2, 4);
  end else
  begin
    sortuj_pewne2(4,1);
    wypisz_pary_pewne;
  end;
end;

function TForm4.ile_wpadlo(liczba1, liczba2, nr: integer): byte;
var
wpadlo:byte;
begin
wpadlo:=0;
if wylosowane[nr,liczba1] then inc(wpadlo);
if wylosowane[nr,liczba2] then inc(wpadlo);
result:=wpadlo;
end;

procedure TForm4.StringGrid6ContextPopup(Sender: TObject; MousePos: TPoint;  var Handled: Boolean);
begin
  GetCursorPos(mousepos);
  if StringGrid6.Cells[1, 1] <> '' then popupmenu3.Popup(mousepos.X,mousepos.Y);
end;

procedure TForm4.MenuItem1Click(Sender: TObject);
begin
sortuj_pewne(2,0,stringgrid6);
end;

procedure TForm4.MenuItem2Click(Sender: TObject);
begin
sortuj_pewne(2,1,stringgrid6);
end;

procedure TForm4.MenuItem4Click(Sender: TObject);
begin
sortuj_pewne(3,0,stringgrid6);
end;

procedure TForm4.MenuItem5Click(Sender: TObject);
begin
sortuj_pewne(3,1,stringgrid6);
end;

procedure TForm4.MenuItem7Click(Sender: TObject);
begin
sortuj_pewne(4,0,stringgrid6);
end;

procedure TForm4.MenuItem8Click(Sender: TObject);
begin
sortuj_pewne(4,1,stringgrid6);
end;

procedure TForm4.MenuItem9Click(Sender: TObject);
begin
sortuj_znalezione(3,0);
wypisz_pary_szukaj;
end;

procedure TForm4.MenuItem10Click(Sender: TObject);
begin
sortuj_znalezione(3,1);
wypisz_pary_szukaj;
end;

procedure TForm4.MenuItem12Click(Sender: TObject);
begin
sortuj_znalezione(5,0);
wypisz_pary_szukaj;
end;

procedure TForm4.MenuItem13Click(Sender: TObject);
begin
sortuj_znalezione(5,1);
wypisz_pary_szukaj;
end;

procedure TForm4.MenuItem15Click(Sender: TObject);
begin
sortuj_znalezione(4,0);
wypisz_pary_szukaj;
end;

procedure TForm4.MenuItem16Click(Sender: TObject);
begin
sortuj_znalezione(4,1);
wypisz_pary_szukaj;
end;

procedure TForm4.StringGrid3ContextPopup(Sender: TObject; MousePos: TPoint;    var Handled: Boolean);
begin
  GetCursorPos(mousepos);
  if (StringGrid3.Cells[1, 1] <> '') and (StringGrid3.Cells[1, 1] <> '-') then popupmenu4.Popup(mousepos.X,mousepos.Y);
end;

procedure TForm4.wypisz_pary_pewne;
var
help1,help2,help3,help4,help5,wpadlo:integer;
liczba:array[1..80] of boolean;
napisal:boolean;
begin
for help1:=1 to ilosc_liczb_gry do liczba[help1]:=false;


  if checkbox2.Checked=false then
    begin
     stringgrid2.rowcount:=ilosc_par_pewnych+1;
     for help1:=1 to ilosc_par_pewnych do
      begin
       stringgrid2.cells[0,help1]:=IntToStr(help1);
       stringgrid2.cells[1,help1]:=(IntToStr(pary_pewne[help1,1])+' , '+IntToStr(pary_pewne[help1,2]));
       stringgrid2.cells[2,help1]:=IntToStr(pary_pewne[help1,3]);
       stringgrid2.cells[3,help1]:=IntToStr(pary_pewne[help1,5]);
       stringgrid2.cells[4,help1]:=IntToStr(pary_pewne[help1,4]);
       wpadlo:=ile_wpadlo(pary_pewne[help1,1],pary_pewne[help1,2],do2+1);
       stringgrid2.cells[5,help1]:='';
       if wpadlo=2 then stringgrid2.cells[5,help1]:='TAK';
       if wpadlo=1 then stringgrid2.cells[5,help1]:='1';
      end;
    end;

  if checkbox2.Checked=true then
   begin
    help3:=0;
     for help1:=1 to ilosc_par_pewnych do
      for help2:=1 to 2 do if liczba[pary_pewne[help1,help2]]=false then
       begin
        inc(help3);
        liczba[pary_pewne[help1,help2]]:=true;
       end;
    for help1:=1 to ilosc_liczb_gry do liczba[help1]:=false;

    help1:=help3 div 2;
    help2:=help3 mod 2;
    stringgrid2.rowcount:=help1+help2+1;

  //  showmessage('Iloœæ liczb: '+IntToStr(help3)+' , Iloœæ par(c): '+IntToStr(help1)+' , Iloœæ par(r): '+IntToStr(help2)+' , Iloœæ par: '+IntToStr(help1+help2));

    help3:=0;
    help4:=0;
     while (help3<help1) and (help4<ilosc_par_pewnych) do
      begin
       inc(help4);
        if (liczba[pary_pewne[help4,1]]=false) and (liczba[pary_pewne[help4,2]]=false) then
         begin
          inc(help3);
          stringgrid2.cells[0,help3]:=IntToStr(help3);
          stringgrid2.cells[1,help3]:=(IntToStr(pary_pewne[help4,1])+' , '+IntToStr(pary_pewne[help4,2]));
          stringgrid2.cells[2,help3]:=IntToStr(pary_pewne[help4,3]);
          stringgrid2.cells[3,help3]:=IntToStr(pary_pewne[help4,5]);
          stringgrid2.cells[4,help3]:=IntToStr(pary_pewne[help4,4]);
          wpadlo:=ile_wpadlo(pary_pewne[help4,1],pary_pewne[help4,2],do2+1);
          stringgrid2.cells[5,help3]:='';
          if wpadlo=2 then stringgrid2.cells[5,help3]:='TAK';
          if wpadlo=1 then stringgrid2.cells[5,help3]:='1';
          liczba[pary_pewne[help4,1]]:=true;
          liczba[pary_pewne[help4,2]]:=true;
         end;
      end;
     stringgrid2.rowcount:=help3+1; 
    end;
end;

procedure TForm4.sortuj_pewne2(pozycja, wdol: integer);
var
ilosc,help1,j,i:integer;
temp:array[1..5]of integer;
begin
ilosc:=ilosc_par_pewnych;
if wdol=0 then
 begin
        for i:=2 to ilosc do
         begin
          for j:=ilosc DownTo i Do
           if pary_pewne[j-1,pozycja]<pary_pewne[j,pozycja] Then
            begin
             for help1:=1 to 5 do temp[help1]:=pary_pewne[j-1,help1];
             for help1:=1 to 5 do pary_pewne[j-1,help1]:=pary_pewne[j,help1];
             for help1:=1 to 5 do pary_pewne[j,help1]:=temp[help1];
            End;
         end;
 end else
  begin
        for i:=2 to ilosc do
         begin
          for j:=ilosc DownTo i Do
           if pary_pewne[j-1,pozycja]>pary_pewne[j,pozycja] Then
            begin
             for help1:=1 to 5 do temp[help1]:=pary_pewne[j-1,help1];
             for help1:=1 to 5 do pary_pewne[j-1,help1]:=pary_pewne[j,help1];
             for help1:=1 to 5 do pary_pewne[j,help1]:=temp[help1];
            End;
         end;
  end;
end;

procedure TForm4.wypisz_pary_szukaj;
var
help1,wpadlo:integer;
begin
     for help1:=1 to ilosc_par_znalezionych do
      begin
       stringgrid3.cells[0,help1]:=IntToStr(help1);
       stringgrid3.cells[1,help1]:=(IntToStr(pary_szukaj[help1,1])+' , '+IntToStr(pary_szukaj[help1,2]));
       stringgrid3.cells[2,help1]:=IntToStr(pary_szukaj[help1,3]);
       stringgrid3.cells[3,help1]:=IntToStr(pary_szukaj[help1,5]);
       stringgrid3.cells[4,help1]:=IntToStr(pary_szukaj[help1,4]);
       wpadlo:=ile_wpadlo(pary_szukaj[help1,1],pary_szukaj[help1,2],do2+1);
       stringgrid3.cells[5,help1]:='';
       if wpadlo=2 then stringgrid3.cells[5,help1]:='TAK';
       if wpadlo=1 then stringgrid3.cells[5,help1]:='1';
      end;
end;

procedure TForm4.sortuj_znalezione(pozycja, wdol: integer);
var
ilosc,help1,j,i:integer;
temp:array[1..5]of integer;
begin
ilosc:=ilosc_par_znalezionych;
if wdol=0 then
 begin
        for i:=2 to ilosc do
         begin
          for j:=ilosc DownTo i Do
           if pary_szukaj[j-1,pozycja]<pary_szukaj[j,pozycja] Then
            begin
             for help1:=1 to 5 do temp[help1]:=pary_szukaj[j-1,help1];
             for help1:=1 to 5 do pary_szukaj[j-1,help1]:=pary_szukaj[j,help1];
             for help1:=1 to 5 do pary_szukaj[j,help1]:=temp[help1];
            End;
         end;
 end else
  begin
        for i:=2 to ilosc do
         begin
          for j:=ilosc DownTo i Do
           if pary_szukaj[j-1,pozycja]>pary_szukaj[j,pozycja] Then
            begin
             for help1:=1 to 5 do temp[help1]:=pary_szukaj[j-1,help1];
             for help1:=1 to 5 do pary_szukaj[j-1,help1]:=pary_szukaj[j,help1];
             for help1:=1 to 5 do pary_szukaj[j,help1]:=temp[help1];
            End;
         end;
  end;
end;

procedure TForm4.CheckBox1Click(Sender: TObject);
begin
  checkbox3.Enabled := checkbox1.Checked;
end;

procedure TForm4.sortujTablice;
begin
  if czy_byly_stat_par then
    begin
      if radiobutton2.checked then
        if radiobutton5.checked then sortujStringGrid(stringgrid1, 2) else sortujStringGrid(stringgrid1, 2, false);

      if radiobutton3.checked then
        if radiobutton5.checked then sortujStringGrid(stringgrid1, 3) else sortujStringGrid(stringgrid1, 3, false);

      if radiobutton4.checked then
        if radiobutton5.checked then sortujStringGrid(stringgrid1, 4) else sortujStringGrid(stringgrid1, 4, false);

      if radiobutton17.checked then
        if radiobutton5.checked then sortujStringGrid(stringgrid1, 5) else sortujStringGrid(stringgrid1, 5, false);
    end;
end;

procedure TForm4.CheckBox3Click(Sender: TObject);
begin
  checkbox1.Enabled := not checkbox3.Checked;
  spinedit9.Enabled := not checkbox3.Checked;
end;

procedure TForm4.CheckBox2Click(Sender: TObject);
begin
  checkbox4.Enabled := checkbox2.Checked;
end;

procedure TForm4.CheckBox4Click(Sender: TObject);
begin
  checkbox2.Enabled := not checkbox4.Checked;
end;

procedure TForm4.KopiujdoZestaww1Click(Sender: TObject);
begin
  form1.dodajDoZesatwow(stringgrid2, 1, 1);
end;

procedure TForm4.KopiujdoZestaww2Click(Sender: TObject);
begin
  if StringGrid6.Cells[1, 1] <> '' then form1.dodajDoZesatwow(stringgrid6, 1, 1);
end;

procedure TForm4.KopiujdoZestaww3Click(Sender: TObject);
begin
  if StringGrid3.Cells[1, 1] <> '' then form1.dodajDoZesatwow(stringgrid3, 1, 1);
end;

procedure TForm4.SpeedButton7Click(Sender: TObject);
begin
  form1.dodajDoZesatwow(stringgrid1, 1, 1);
end;

end.
