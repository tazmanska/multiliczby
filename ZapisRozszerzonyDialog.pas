unit ZapisRozszerzonyDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Dialogs, Eksport;

type
  TOKRightDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    SpeedButton6: TSpeedButton;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    procedure OKBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }

    _description : TFunction;

    procedure SetDescription(obj : TFunction);

    procedure Zapisz();

    function GetDescription() : TFunction;
  public
    { Public declarations }

    sfd : TSaveDialog;
  published
    property Description : TFunction read GetDescription write SetDescription;
  end;

var
  OKRightDlg: TOKRightDlg;

implementation

uses main;

{$R *.dfm}

function TOKRightDlg.GetDescription() : TFunction;
begin
  result := Self._description;
end;

procedure TOKRightDlg.SetDescription(obj : TFunction);
begin
  Self._description := obj;
  Self.Text := 'Zapis rozszerzony - ' + obj.Nazwa;
end;

procedure TOKRightDlg.Edit1Change(Sender: TObject);
begin
  Self.OKBtn.Enabled := Self.Edit1.Text <> '';
end;

procedure TOKRightDlg.SpeedButton6Click(Sender: TObject);
begin
  if (Self.sfd <> nil) then
  begin
    if (Self.Edit1.Text <> '') then
    begin
      Self.sfd.FileName := Self.Edit1.Text;
    end;
    if (Self.sfd.Execute()) then
    begin
      Self.Edit1.Text := Self.sfd.FileName;
    end;
  end;
end;

procedure TOKRightDlg.Zapisz();
begin
  // zapis


  MessageBox(Self.Handle, PChar('Operacja zakoñczona pomyœlnie.' + #13 + 'Plik wynikowy: ' + Self.sfd.FileName), 'Pytanie', MB_OK + MB_ICONINFORMATION);
end;

procedure TOKRightDlg.FormCreate(Sender: TObject);
begin

  // odczytanie ustawieñ

  // orientacja wierszy
  if (Sets.Load('eksport', 'orientacja_wierszy_pozioma', true)) then
  begin
    Self.RadioButton1.Checked := true;
  end
  else
  begin
    Self.RadioButton2.Checked := true;
  end;
end;

procedure TOKRightDlg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // zapisanie opcji

  // orientacja wierszy
  Sets.Save('eksport', 'orientacja_wierszy_pozioma', Self.RadioButton1.Checked);
end;

procedure TOKRightDlg.OKBtnClick(Sender: TObject);
begin
  Self.Zapisz();
end;

end.
