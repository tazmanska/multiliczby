unit rejestracja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,main, registry, INIFiles;

type
  TForm24 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form24: TForm24;

implementation

{$R *.DFM}

procedure TForm24.Button2Click(Sender: TObject);
begin
  zamknij:=true;
  close;
end;

procedure TForm24.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Form24:=nil;
end;

procedure TForm24.Button1Click(Sender: TObject);
  var
    //Rej : TRegistry;
    plik_klucz : TINIFile;
begin
  try
    plik_klucz := TINIFile.Create(SCIEZKA_PROGRAM + 'klucz.ini');
    plik_klucz.WriteString('uzytkownik', 'imie', edit1.Text);
    plik_klucz.WriteString('uzytkownik', 'nazwisko', edit2.Text);
    plik_klucz.WriteString('uzytkownik', 'kod_osobisty', edit3.Text);
    plik_klucz.WriteString('uzytkownik', 'kod_wersji', edit4.Text);
  finally
    plik_klucz.Free;
  end;
{
Rej:=TRegistry.Create;
  Rej.RootKey:=HKEY_LOCAL_MACHINE;
         //wybranie ga³êzi g³ównej
  Rej.OpenKey('\Software\',false);
     if not rej.KeyExists('Angus') then
      begin
       Rej.CreateKey('Angus');
       Rej.OpenKey('\Software\Angus\',false);
      end else Rej.OpenKey('\Software\Angus\',false);
       Rej.CreateKey('MultiLiczbyPRO');
       Rej.OpenKey('\Software\Angus\MultiLiczbyPRO\',false);
        //otworzenie klucza
       Rej.WriteString('imie',edit1.Text);
       Rej.WriteString('nazwisko',edit2.Text);
       Rej.WriteString('kod1',edit3.Text);
       Rej.WriteString('kod2',edit4.Text);
  Rej.CloseKey;
      //zamkniêcie klucza
  Rej.Free;
}
  close();
end;

end.
