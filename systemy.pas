unit systemy;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,main;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.DFM}

procedure TForm7.FormClose(Sender: TObject; var Action: TCloseAction);
begin

Action := caFree;
Form7:=nil;
end;

end.
