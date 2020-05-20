unit zakres;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, Spin, main{, FileCtrl};

type
  Tform26 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    CheckBox1: TCheckBox;
    SpinEdit2: TSpinEdit;
    Label2: TLabel;
    RadioButton3: TRadioButton;
    SpinEdit3: TSpinEdit;
    Label3: TLabel;
    SpinEdit4: TSpinEdit;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure SpinEdit3Change(Sender: TObject);
    procedure SpinEdit4Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form26: Tform26;

implementation

uses Settings, Stale, WynikiIDodatki;

{$R *.DFM}

procedure Tform26.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Form26 := nil;
end;

procedure Tform26.SpeedButton2Click(Sender: TObject);
begin
  form26.close();
end;

procedure Tform26.FormCreate(Sender: TObject);
begin
  spinedit1.MinValue := 2;
  spinedit1.MaxValue := LOSOWAN;
  spinedit2.MinValue := 0;
  spinedit2.MaxValue := LOSOWAN;
  spinedit3.MinValue := 1;
  spinedit3.MaxValue := LOSOWAN;
  spinedit4.MinValue := 1;
  spinedit4.MaxValue := LOSOWAN;

  label5.Caption := IntToStr(LOSOWAN);

  if not (Sets.Load(Gra.Prefiks, 'zakres', false)) then
  begin
    radiobutton1.Checked := true;
    spinedit1.Enabled := false;
    checkbox1.Enabled := false;
    spinedit2.Enabled := false;
    spinedit3.Enabled := false;
    spinedit4.Enabled := false;
  end;

  spinedit1.Value := Sets.Load(Gra.Prefiks, 'zakres_ilosc', 100);
  spinedit2.Value := Sets.Load(Gra.Prefiks, 'zakres_pomijaj', 100);
  spinedit3.Value := Sets.Load(Gra.Prefiks, 'zakres_start', 1);
  spinedit4.Value := Sets.Load(Gra.Prefiks, 'zakres_stop', LOSOWAN);
  
  checkbox1.Checked := Sets.Load(Gra.Prefiks, 'zakres_pomijac', false);
  
  spinedit2.Enabled := checkbox1.enabled;

  spinedit3.Hint := DataLosowania(spinedit3.Value);
  spinedit4.Hint := DataLosowania(spinedit4.Value);

  if (not RadioButton1.Checked) then
  begin
    case (Sets.Load(Gra.Prefiks, 'zakres_typ', C_ZAKRESY_WSZYSTKIE)) of
      C_ZAKRESY_OSTATNIE :
        begin
          radiobutton2.Checked := true;
          spinedit3.Enabled := false;
          spinedit4.Enabled := false;
          spinedit2.Enabled := checkbox1.Checked;
        end;
      C_ZAKRESY_WYBRANE :
        begin
          radiobutton3.Checked := true;
          spinedit1.Enabled := false;
          spinedit2.Enabled := false;
          checkbox1.Enabled := false;
        end;
    end;
  end;
end;

procedure Tform26.CheckBox1Click(Sender: TObject);
begin
  SpinEdit2.Enabled := CheckBox1.Checked;
end;

procedure Tform26.RadioButton1Click(Sender: TObject);
begin
  if radiobutton1.Checked then
  begin
    spinedit1.enabled := false;
    spinedit2.Enabled := false;
    spinedit3.Enabled := false;
    spinedit4.Enabled := false;
    checkbox1.Enabled := false;
  end;
end;

procedure Tform26.RadioButton2Click(Sender: TObject);
begin
  if radiobutton2.Checked then
  begin
    spinedit1.Enabled := true;
    SpinEdit2.Enabled := CheckBox1.Checked;
    spinedit3.Enabled := false;
    spinedit4.Enabled := false;
    checkbox1.Enabled := true;
  end;
end;

procedure Tform26.RadioButton3Click(Sender: TObject);
begin
  if radiobutton3.Checked then
  begin
    spinedit1.Enabled := false;
    spinedit2.Enabled := false;
    spinedit3.Enabled := true;
    spinedit4.Enabled := true;
    checkbox1.Enabled := false;
  end;
end;

procedure Tform26.SpinEdit3Change(Sender: TObject);
begin
  spinedit3.Hint := DataLosowania(spinedit3.Value);
end;

procedure Tform26.SpinEdit4Change(Sender: TObject);
begin
  spinedit4.Hint := DataLosowania(spinedit4.Value);
end;

procedure Tform26.SpeedButton1Click(Sender: TObject);
begin
  if (RadioButton3.Checked) and (SpinEdit3.Value = SpinEdit4.Value) then
  begin
    Application.MessageBox('Podany zakres losowañ jest nieprawid³owy.', 'B³¹d', MB_OK + MB_ICONERROR);
    SpinEdit3.SetFocus();
    Exit;
  end;

  Sets.Save(Gra.Prefiks, 'zakres', not RadioButton1.Checked);

  if (RadioButton2.Checked) then
  begin
    Sets.Save(Gra.Prefiks, 'zakres_typ', C_ZAKRESY_OSTATNIE);
  end
  else
  if (RadioButton3.Checked) then
  begin
    Sets.Save(Gra.Prefiks, 'zakres_typ', C_ZAKRESY_WYBRANE);
  end;

  Sets.Save(Gra.Prefiks, 'zakres_ilosc', SpinEdit1.Value);
  Sets.Save(Gra.Prefiks, 'zakres_pomijac', CheckBox1.Checked);
  Sets.Save(Gra.Prefiks, 'zakres_pomijaj', SpinEdit2.Value);
  Sets.Save(Gra.Prefiks, 'zakres_start', SpinEdit3.Value);
  Sets.Save(Gra.Prefiks, 'zakres_stop', SpinEdit4.Value);

  form1.UstawZakres();
  Close();
end;

end.
