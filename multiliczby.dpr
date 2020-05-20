program multiliczby;

{%File 'ToDo.txt'}
{%File 'KluczeOpcji.txt'}

uses
  Forms,
  main in 'main.pas' {Form1},
  losowania in 'losowania.pas' {Form2},
  liczby in 'liczby.pas' {Form3},
  pary in 'pary.pas' {Form4},
  inne in 'inne.pas' {Form5},
  zestawy in 'zestawy.pas' {Form6},
  dodajlos in 'dodajlos.pas' {Form8},
  mapa in 'mapa.pas' {Form9},
  dwojki in 'dwojki.pas' {Form10},
  kombinuj in 'kombinuj.pas' {Form11},
  testuj in 'testuj.pas' {Form13},
  kombinacje in 'kombinacje.pas' {Form14},
  podajliczby in 'podajliczby.pas' {Form16},
  dodajliczby in 'dodajliczby.pas' {Form17},
  trojkiz4 in 'trojkiz4.pas' {Form12},
  czworki in 'czworki.pas' {Form15},
  oprogramie in 'oprogramie.pas' {Form18},
  analizalos in 'analizalos.pas' {Form19},
  pozycje in 'pozycje.pas' {Form20},
  okresy in 'okresy.pas' {Form21},
  opcje in 'opcje.pas' {Form22},
  piatki in 'piatki.pas' {Form23},
  rejestracja in 'rejestracja.pas' {Form24},
  zakres in 'zakres.pas' {form26},
  budujsystem in 'budujsystem.pas' {Form25},
  katalog in 'katalog.pas' {Form27},
  sprawdz_sys in 'sprawdz_sys.pas' {Form28},
  uklady in 'uklady.pas' {Form29},
  wprowadzsystem in 'wprowadzsystem.pas' {Form30},
  supersys in 'supersys.pas' {Form31},
  Addins in 'Addins.pas',
  generator_liczb in 'generator_liczb.pas' {Form32},
  splash in 'splash.pas' {splashform},
  poszukiwacz in 'poszukiwacz.pas' {Form33},
  pluginy in 'pluginy.pas' {Form34},
  PluginTools in 'PluginTools.pas',
  mapa_1 in 'mapa_1.pas' {mapa1form},
  forum in 'forum.pas' {forum_form},
  forum_wiadomosc in 'forum_wiadomosc.pas' {forum_nowa_wiadomosc},
  forum_watek in 'forum_watek.pas',
  Settings in 'Settings.pas',
  losowania_sciagnij in 'losowania_sciagnij.pas' {losowania_sciagnij_form},
  Eksport in 'Eksport.pas',
  WynikiIDodatki in 'WynikiIDodatki.pas',
  Stale in 'Stale.pas',
  Download in 'include\Download.pas',
  ForumXML in 'include\ForumXML.pas',
  SysUtils,
  INIFiles,
  ZapisRozszerzonyDialog in 'ZapisRozszerzonyDialog.pas' {OKRightDlg};

{$R *.RES}



var
    opcje : TINIFile;
    SHOW_SPLASH_SCREEN : boolean;

begin
  Application.Initialize;
  opcje := nil;
  try
    opcje := TIniFile.Create(ExtractFilePath(Application.ExeName) + C_PLIK_OPCJE_SCIEZKA);
    SHOW_SPLASH_SCREEN := opcje.ReadBool('main', 'pokaz_wizytowke', true);
  finally
    if (opcje <> nil) then
    begin
      opcje.Free();
    end;
  end;

  if (SHOW_SPLASH_SCREEN) then
  begin
    SplashForm := TSplashForm.Create(Application);
    SplashForm.Show();
    SplashForm.Update();
  end;

  Application.Title := C_PROGRAM_NAZWA + ' ' + C_PROGRAM_WERSJA;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.   
