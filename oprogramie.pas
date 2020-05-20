unit oprogramie;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, main, SHELLAPI, jpeg, ExtCtrls;

type
  TForm18 = class(TForm)
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
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Panel1: TPanel;
    Image1: TImage;
    Label14: TLabel;
    Panel2: TPanel;
    Memo1: TMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form18: TForm18;

implementation

uses Stale;

{$R *.DFM}

procedure TForm18.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
Form18:=nil;
end;

procedure TForm18.FormCreate(Sender: TObject);
begin
  label1.caption := C_PROGRAM_NAZWA + ' ' + C_PROGRAM_WERSJA + ' [pe³na]';
  if uzytkownik <> '' then
  begin
    label9.Caption := uzytkownik;
  end
  else
  begin
    label9.Caption := 'NIEZAREJESTROWANY!';
  end;
end;

procedure TForm18.Label6Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', 'mailto:angusek@wp.pl?subject=ml', nil, nil, SW_SHOWNORMAL);
end;

procedure TForm18.Label7Click(Sender: TObject);
begin
ShellExecute(Handle, 'open', 'www.multiliczby.prv.pl', nil, nil, SW_SHOWNORMAL);
end;

end.
