unit opcje;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, main,
  Buttons, StdCtrls, ComCtrls, Spin, FileCtrl;

type
  TForm22 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    GroupBox4: TGroupBox;
    wyniki_ml: TEdit;
    SpeedButton3: TSpeedButton;
    GroupBox5: TGroupBox;
    url_ml: TEdit;
    GroupBox7: TGroupBox;
    Label10: TLabel;
    oplata_ml: TEdit;
    TabSheet4: TTabSheet;
    GroupBox8: TGroupBox;
    SpeedButton4: TSpeedButton;
    wyniki_dl: TEdit;
    GroupBox9: TGroupBox;
    url_dl: TEdit;
    GroupBox11: TGroupBox;
    Label16: TLabel;
    oplata_dl: TEdit;
    GroupBox12: TGroupBox;
    SpeedButton5: TSpeedButton;
    wyniki_el: TEdit;
    GroupBox13: TGroupBox;
    url_el: TEdit;
    GroupBox15: TGroupBox;
    Label22: TLabel;
    oplata_el: TEdit;
    GroupBox6: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    GroupBox1: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    GroupBox10: TGroupBox;
    SpeedButton6: TSpeedButton;
    katalog_raporty: TEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    SpinEdit1: TSpinEdit;
    CheckBox3: TCheckBox;
    GroupBox3: TGroupBox;
    Memo1: TMemo;
    GroupBox14: TGroupBox;
    CheckBox4: TCheckBox;
    procedure CheckBox3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation

uses Addins, Settings, Stale;

{$R *.DFM}

procedure TForm22.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Form22 := nil;
end;

procedure TForm22.SpeedButton2Click(Sender: TObject);
begin
  Self.Close();
end;

procedure TForm22.FormCreate(Sender: TObject);
begin
  // wczytanie opcji

  // ogólne - domyœlna gra
  case Sets.Load('main', 'gra', C_MULTI_LOTEK) of
    0 : Self.RadioButton1.Checked := true;
    1 : Self.RadioButton2.Checked := true;
    2 : Self.RadioButton6.Checked := true;
    3 : Self.RadioButton7.Checked := true;
  end;

  // ogólne - dodatkowe
  Self.CheckBox1.Checked := Sets.Load('main', 'pokaz_wizytowke', true);
  Self.CheckBox2.Checked := Sets.Load('main', 'pytaj_przed_zamknieciem', true);

  // multilotek - wyniki
  Self.wyniki_ml.Text := Sets.Load('ml', 'katalog_wyniki', SCIEZKA_PROGRAM);

  // multilotek - link do wyników
  Self.url_ml.Text := Sets.Load('ml', 'url', C_URL_DOMYSLNY + 'ml');

  // multilotek - op³ata
  Self.oplata_ml.Text := FormatFloat('0.00', Sets.Load('ml', 'oplata', 2.00));

  // du¿ylotek - wyniki
  Self.wyniki_dl.Text := Sets.Load('dl', 'katalog_wyniki', SCIEZKA_PROGRAM);

  // du¿ylotek - link do wyników
  Self.url_dl.Text := Sets.Load('dl', 'url', C_URL_DOMYSLNY + 'dl');

  // du¿ylotek - op³ata
  Self.oplata_dl.Text := FormatFloat('0.00', Sets.Load('dl', 'oplata', 2.00));

  // expresslotek - wyniki
  Self.wyniki_el.Text := Sets.Load('el', 'katalog_wyniki', SCIEZKA_PROGRAM);

  // expresslotek - link do wyników
  Self.url_el.Text := Sets.Load('el', 'url', C_URL_DOMYSLNY + 'el');

  // expresslotek - op³ata
  Self.oplata_el.Text := FormatFloat('0.00', Sets.Load('el', 'oplata', 2.00));

  // export - domyœlny katalog
  Self.katalog_raporty.Text := Sets.Load('eksport', 'katalog', SCIEZKA_RAPORTY);

  // export - zapis rozszerzony
  Self.CheckBox4.Checked := Sets.Load('eksport', 'zapis_rozszerzony', false);

  // forum - sprawdzanie wiadomoœci
  Self.CheckBox3.Checked := Sets.Load('forum', 'sprawdzaj', false);

  // forum - sprawdzaj co X minut
  SpinEdit1.Value := Round(wczytaj_opcje('forum', 'sprawdzaj_co', 10000) / 60000);
  SpinEdit1.Enabled := CheckBox3.Checked;

  // forum - automatyczny podpis
  if FileExists(SCIEZKA_PROGRAM + '\forum\podpis.txt') then
  begin
    Self.Memo1.Lines.LoadFromFile(SCIEZKA_PROGRAM + '\forum\podpis.txt');
  end;

end;

procedure TForm22.SpeedButton1Click(Sender: TObject);
begin
  // zapisanie opcji

  // ogólne - domyœlna gra
  if Self.Radiobutton1.Checked then Sets.Save('main','gra',0);
  if Self.Radiobutton2.Checked then Sets.Save('main','gra',1);
  if Self.Radiobutton6.Checked then Sets.Save('main','gra',2);
  if Self.Radiobutton7.Checked then Sets.Save('main','gra',3);

  // ogólne - dodatkowe
  Sets.Save('main', 'pokaz_wizytowke', Self.CheckBox1.Checked);
  Sets.Save('main', 'pytaj_przed_zamknieciem', Self.CheckBox2.Checked);

  // multilotek - wyniki
  Sets.Save('ml', 'katalog_wyniki', Self.wyniki_ml.Text);

  // multilotek - link do wyników
  Sets.Save('ml', 'url', Self.url_ml.Text);

  // multilotek - op³ata
  Sets.Save('ml', 'oplata', StrToFloatDef(Self.oplata_ml.Text, 2.00));

  // du¿ylotek - wyniki
  Sets.Save('dl', 'katalog_wyniki', Self.wyniki_dl.Text);

  // du¿ylotek - link do wyników
  Sets.Save('dl', 'url', Self.url_dl.Text);

  // du¿ylotek - op³ata
  Sets.Save('dl', 'oplata', StrToFloatDef(Self.oplata_dl.Text, 2.00));

  // expresslotek - wyniki
  Sets.Save('el', 'katalog_wyniki', Self.wyniki_el.Text);

  // expresslotek - link do wyników
  Sets.Save('el', 'url', Self.url_el.Text);

  // expresslotek - op³ata
  Sets.Save('el', 'oplata', StrToFloatDef(Self.oplata_el.Text, 2.00));

  // export - domyœlny katalog
  Sets.Save('eksport', 'katalog', Self.katalog_raporty.Text);

  // export - zapis rozszerzony
  Sets.Save('eksport', 'zapis_rozszerzony', Self.CheckBox4.Checked);

  // forum - sprawdzanie wiadomoœci
  Sets.Save('forum', 'sprawdzaj', Self.CheckBox3.Checked);

  // forum - sprawdzaj co X minut
  Sets.Save('forum', 'sprawdzaj_co', Self.SpinEdit1.Value * 60000);

  // forum - automatyczny podpis
  Self.Memo1.Lines.SaveToFile(SCIEZKA_PROGRAM + '\forum\podpis.txt');

  Self.Close();
end;

procedure TForm22.SpeedButton6Click(Sender: TObject);
var
  s : string;
begin
  s := Self.katalog_raporty.Text;
  SelectDirectory('Wybierz katalog w którym maj¹ byæ zapisywane raporty', '', s);
  if (s <> '') and (s <> Self.katalog_raporty.Text) then
  begin
    if (s[Length(s)] <> '\') then s := s + '\';
    Self.katalog_raporty.Text := s;
  end;
end;

procedure TForm22.SpeedButton3Click(Sender: TObject);
var
  s : string;
begin
  s := Self.wyniki_ml.Text;
  SelectDirectory('Wybierz katalog z wynikami dla MultiLotka', '', s);
  if (s <> '') and (s <> Self.wyniki_ml.Text) then
  begin
    if (s[Length(s)] <> '\') then s := s + '\';
    Self.wyniki_ml.Text := s;
  end;
end;

procedure TForm22.SpeedButton4Click(Sender: TObject);
var
  s : string;
begin
  s := Self.wyniki_dl.Text;
  SelectDirectory('Wybierz katalog z wynikami dla Du¿egoLotka', '', s);
  if (s <> '') and (s <> Self.wyniki_dl.Text) then
  begin
    if (s[Length(s)] <> '\') then s := s + '\';
    Self.wyniki_dl.Text := s;
  end;
end;

procedure TForm22.SpeedButton5Click(Sender: TObject);
var
  s : string;
begin
  s := Self.wyniki_el.Text;
  SelectDirectory('Wybierz katalog z wynikami dla ExpressLotka', '', s);
  if (s <> '') and (s <> Self.wyniki_el.Text) then
  begin
    if (s[Length(s)] <> '\') then s := s + '\';
    Self.wyniki_el.Text := s;
  end;
end;

procedure TForm22.CheckBox3Click(Sender: TObject);
begin
  Self.SpinEdit1.Enabled := Self.CheckBox3.Checked;
end;

end.
