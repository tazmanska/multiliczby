unit splash;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg;

type
  Tsplashform = class(TForm)
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  splashform: Tsplashform;

implementation

uses main, Stale;

{$R *.DFM}

procedure Tsplashform.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := caFree;
splashform:=nil;
end;

procedure Tsplashform.FormClick(Sender: TObject);
begin
splashform.Close;
end;

procedure Tsplashform.FormShow(Sender: TObject);
var
  year, month, day : word;
begin
  // nazwa programu
  image1.Canvas.Font.Color := clBlue;
  image1.Canvas.Font.Size := 26;
  image1.Canvas.Font.Name := 'Verdana';
  image1.Canvas.TextOut(97, 51, C_PROGRAM_NAZWA);

  // wersja programu
  image1.Canvas.Font.Color := clBlack;
  image1.Canvas.Font.Size := 10;
  image1.Canvas.Font.Name := 'Verdana';
  image1.Canvas.TextOut(280, 120, 'wersja ' + C_PROGRAM_WERSJA);

  // ostatni rok
  image1.Canvas.Font.Color := clBlack;
  image1.Canvas.Font.Size := 10;
  image1.Canvas.Font.Name := 'Arial';

  DecodeDate(Now(), year, month, day);

  image1.Canvas.TextOut(175, 227, IntToStr(year));

end;

end.
