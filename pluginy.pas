unit pluginy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, PluginTools, main;

type
  TForm34 = class(TForm)
    GroupBox1: TGroupBox;
    StringGrid1: TStringGrid;
    GroupBox2: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }

    procedure SzukajPluginow();
    procedure PokazPluginy();
    procedure KoniecPluginy();
  public
    { Public declarations }
  end;

type

  TRunPlugin = procedure(MainApp : TApplication; Gra : TPluginGra; WynikProc : TWyniki);
  TShow = procedure();
  TSetToFront = procedure();
  TClose = procedure();
  TGetInfo = function() : TPluginOpis;


  TPlugin = class
    Nazwa : String;
    Wersja : String;
    Opis : String;
    FilePath : String;
    Address : Integer;
    Call : TRunPlugin;
    Running : boolean;
  end;


var
  Form34: TForm34;

  are_plugins : boolean = false;

  ListaPluginy : TList;

  game : TPluginGra;

  plugin_run : word = 0;


implementation


{$R *.dfm}

procedure TForm34.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if plugin_run > 0 then Showmessage('Zamkniêcie tego okna spowoduje zamkniêcie wszystkich uruchomionych pluginów');
  KoniecPluginy();
  Action := caFree;
  Form34:=nil;
end;

procedure TForm34.FormCreate(Sender: TObject);
begin

  game.Nazwa := PChar(nazwa_gry);
  game.Skrot := PChar(prefiks_gry);
  game.IloscLiczbLos := ilosc_liczb_los;
  game.IloscLiczbGry := ilosc_liczb_gry;
  game.Losowan := losowan;
  game.Imie := PChar(UZYTKWONIK_IMIE);
  game.Nazwisko := PChar(UZYTKOWNIK_NAZWISKO);

  stringgrid1.ColWidths[0] := 30;
  stringgrid1.colwidths[1] := 120;
  stringgrid1.colwidths[2] := 40;
  stringgrid1.colwidths[3] := 370;

  stringgrid1.Cells[0, 0] := 'Lp.';
  stringgrid1.Cells[1, 0] := 'Nazwa';
  stringgrid1.cells[2, 0] := 'Wersja';
  stringgrid1.cells[3, 0] := 'Opis';

  ListaPluginy := TList.Create();
  SzukajPluginow();
end;

procedure TForm34.StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer; var CanSelect: Boolean);
var
  stan : boolean;
begin
  if (ListaPluginy.Count > 0) and (arow > 0) then stan := true else stan := false;
  button1.Enabled := stan;
  button3.Enabled := stan;
end;

procedure TForm34.SzukajPluginow;
var
  SR : TSearchRec;
  Found : integer;
  FileName : String;
  ile : integer;
  plug : TPlugin;
  proc : TGetInfo;
  addr : integer;
  Op : TPluginOpis;
begin
  KoniecPluginy();
  ListaPluginy := TList.Create();
  Found := FindFirst( ExtractFilePath(Application.ExeName) + 'pluginy\' +'*.dll', faAnyFile, SR );
  while Found = 0 do
    begin
      FileName := SR.Name;
      plug := TPlugin.Create();
      plug.Running := false;
      plug.Address := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + 'pluginy\' + FileName));
      if plug.Address <> 0 then
      begin
        addr := plug.Address;
        @proc := GetProcAddress(plug.Address, 'GetInfo');
        if @proc <> nil then
        begin
          Op := proc();
          plug.Nazwa := Op.Nazwa;
          plug.Wersja := Op.Wersja;
          plug.Opis := Op.Opis;
          plug.Call := GetProcAddress(plug.Address, 'RunPlugin');
          if @plug.Call <> nil then
          begin
            plug.FilePath := FileName;
            ListaPluginy.Add(plug);
          end else plug.Destroy();
        end else plug.Destroy();
        FreeLibrary(plug.Address);
      end else plug.Destroy();
      Found := FindNext( SR );
    end;
  FindClose( SR );
  PokazPluginy();
end;

procedure TForm34.Button2Click(Sender: TObject);
begin
  SzukajPluginow();
end;

procedure TForm34.PokazPluginy;
var
  i : integer;
begin
  Stringgrid1.RowCount := 2;
  for i := 1 to 3 do Stringgrid1.Cells[i, 1] := '';
  for i := 0 to ListaPluginy.Count - 1 do
  begin
    Stringgrid1.Cells[0, i + 1] := IntToStr(i + 1);
    Stringgrid1.Cells[1, i + 1] := TPlugin(ListaPluginy[i]).Nazwa;
    Stringgrid1.Cells[2, i + 1] := TPlugin(ListaPluginy[i]).Wersja;
    Stringgrid1.Cells[3, i + 1] := TPlugin(ListaPluginy[i]).Opis;
  end;
  if ListaPluginy.Count > 0 then Stringgrid1.RowCount := 1 + i;
end;

procedure TForm34.KoniecPluginy;
var
  i : integer;
  plug : TPlugin;
  proc : TClose;
begin
  for i := 0 to ListaPluginy.Count - 1 do if TPlugin(ListaPluginy[i]).Running then
  begin
    plug := TPlugin(ListaPluginy[i]);
    proc := GetProcAddress(plug.Address, 'Close');
    if @proc <> nil then proc();
    FreeLibrary(TPlugin(ListaPluginy[i]).Address);
    TPlugin(ListaPluginy[i]).Running := false;
    TPlugin(ListaPluginy[i]).Destroy;
    dec(plugin_run);
  end;
  ListaPluginy.Free();
end;

procedure TForm34.Button1Click(Sender: TObject);
var
  plug : TPlugin;
  proc : TShow;
begin
  plug := TPlugin(ListaPluginy[Stringgrid1.Row - 1]);
  if plug.Running then
  begin
    proc := GetProcAddress(plug.Address, 'Show');
    if @proc <> nil then
    begin
      proc();
    end else showmessage('Plugin jest uruchomiony.');
  end else
  begin
    plug.Address := LoadLibrary(PChar(ExtractFilePath(Application.ExeName) + 'pluginy\' + plug.FilePath));
      if plug.Address <> 0 then
      begin
          plug.Call := GetProcAddress(plug.Address, 'RunPlugin');
          if @plug.Call <> nil then
          begin
            plug.Running := true;
            plug.Call(Application, game, @KopiujWyniki);
            proc := GetProcAddress(plug.Address, 'Show');
            if @proc <> nil then proc();
            inc(plugin_run);
          end else begin plug.Destroy(); showmessage('Nie mo¿na uruchomiæ pluginu.'); end;
      end else begin plug.Destroy(); showmessage('Nie mo¿na uruchomiæ pluginu.'); end;
  end;
end;


procedure TForm34.Button3Click(Sender: TObject);
var
  plug : TPlugin;
  proc : TClose;
begin
  plug := TPlugin(ListaPluginy[Stringgrid1.Row - 1]);
  if plug.Running then
  begin
    proc := GetProcAddress(plug.Address, 'Close');
    if @proc <> nil then proc();
    FreeLibrary(plug.Address);
    plug.Running := false;
    dec(plugin_run);
  end else showmessage('Plugin nie jest uruchomiony.');
end;

end.
