unit main;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, Menus, Buttons, ToolWin, Grids, ExtCtrls, StdCtrls, INIFiles, Registry,
  XPMan, forum_watek, Settings, WynikiIDodatki;



type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    ToolBar1: TToolBar;
    MainMenu1: TMainMenu;
    Statystyki1: TMenuItem;
    Pojedynczeliczby1: TMenuItem;
    Paryliczb1: TMenuItem;
    Inne1: TMenuItem;
    Narzdzia1: TMenuItem;
    Zestawy1: TMenuItem;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Okno1: TMenuItem;
    Kaskada1: TMenuItem;
    Minimalizujwszystkie1: TMenuItem;
    Zamknijwszystkie1: TMenuItem;
    Pomoc1: TMenuItem;
    SaveDialog1: TSaveDialog;
    ToolBar2: TToolBar;
    Losowania1: TMenuItem;
    Losowania2: TMenuItem;
    Maparozkadw1: TMenuItem;
    Mapapar1: TMenuItem;
    Koniec1: TMenuItem;
    ListBox1: TListBox;
    SpeedButton7: TSpeedButton;
    Kombinujdwjki1: TMenuItem;
    Testuliczby1: TMenuItem;
    Kombinacje1: TMenuItem;
    ToolButton3: TToolButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    Utwrzpary1: TMenuItem;
    Czwrki1: TMenuItem;
    SpeedButton13: TSpeedButton;
    Analizujlosowanie1: TMenuItem;
    SpeedButton14: TSpeedButton;
    Okresowo1: TMenuItem;
    ColorDialog1: TColorDialog;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    Opcje1: TMenuItem;
    Opcje2: TMenuItem;
    Wczytajdane1: TMenuItem;
    Gra1: TMenuItem;
    MultiLotek1: TMenuItem;
    DuyLotek1: TMenuItem;
    ExpresLotek1: TMenuItem;
    ListBox2: TListBox;
    Pitki1: TMenuItem;
    SpeedButton17: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog2: TSaveDialog;
    Buduj1: TMenuItem;
    Katalogsystemw1: TMenuItem;
    Systemy2: TMenuItem;
    Sprawdsystem1: TMenuItem;
    Ukady1: TMenuItem;
    SpeedButton18: TSpeedButton;
    Wprowadsystem1: TMenuItem;
    N1: TMenuItem;
    SuperSystemy1: TMenuItem;
    Generatorliczbpseudolosowych1: TMenuItem;
    Pozycje1: TMenuItem;
    Poszukiwacz1: TMenuItem;
    Pluginy1: TMenuItem;
    N2: TMenuItem;
    SpeedButton19: TSpeedButton;
    XPManifest1: TXPManifest;
    SpeedButton20: TSpeedButton;
    Maksymalizujwszystkie1: TMenuItem;
    Button1: TButton;
    Forum1: TMenuItem;
    N3: TMenuItem;
    Oprogramie1: TMenuItem;
    SpeedButton9: TSpeedButton;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure StatusBar1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Kaskada1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure Minimalizujwszystkie1Click(Sender: TObject);
    procedure Zamknijwszystkie1Click(Sender: TObject);
    procedure Maparozkadw1Click(Sender: TObject);
    procedure Mapapar1Click(Sender: TObject);
    procedure Koniec1Click(Sender: TObject);
    procedure Losowania2Click(Sender: TObject);
    procedure Pojedynczeliczby1Click(Sender: TObject);
    procedure Paryliczb1Click(Sender: TObject);
    procedure Inne1Click(Sender: TObject);
    procedure Kombinujdwjki1Click(Sender: TObject);
    procedure Testuliczby1Click(Sender: TObject);
    procedure Kombinacje1Click(Sender: TObject);
    procedure Utwrzpary1Click(Sender: TObject);
    procedure Czwrki1Click(Sender: TObject);
    procedure Analizujlosowanie1Click(Sender: TObject);
    procedure Okresowo1Click(Sender: TObject);
    procedure Opcje2Click(Sender: TObject);
    procedure Wczytajdane1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MultiLotek1Click(Sender: TObject);
    procedure DuyLotek1Click(Sender: TObject);
    procedure ExpresLotek1Click(Sender: TObject);
    procedure Pitki1Click(Sender: TObject);
    procedure Zestawy1Click(Sender: TObject);
    procedure Buduj1Click(Sender: TObject);
    procedure Katalogsystemw1Click(Sender: TObject);
    procedure Sprawdsystem1Click(Sender: TObject);
    procedure Ukady1Click(Sender: TObject);
    procedure Wprowadsystem1Click(Sender: TObject);
    procedure SuperSystemy1Click(Sender: TObject);
    procedure Generatorliczbpseudolosowych1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Pozycje1Click(Sender: TObject);
    procedure Poszukiwacz1Click(Sender: TObject);
    procedure Pluginy1Click(Sender: TObject);
    procedure Maksymalizujwszystkie1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Oprogramie1Click(Sender: TObject);
    procedure Forum1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure StatusBar1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
    procedure SprawdzLicencje();
  public

    // ustawia dane gry, wczytuje losowania, ustawia zakresy itd
    procedure WczytajGre(g : byte);

    // zmienia gre, wczesniej pyta czy zamknac okna itp
    procedure ZmienGre(g : byte);

    // ustawia zmienna Gra na odpowiednie ustawienia
    procedure UstawDaneGry(g : byte);

    // ustawia zakres dla odpowiedniej gry
    procedure UstawZakres();

    // wpisuje wyniki losowan do belki
    procedure PokazWyniki();




  procedure stoper_start;
  procedure roznica_godzin(g1,g2,m1,m2,s1,s2,ms1,ms2:integer);


  procedure zamknij_okna;

  procedure zapiszHTML(SaveGrid: TStringGrid; FileName,tytul,nazwa_opcji,nazwa_stat: String; LineWidth,od2_,do2_: Integer);
  procedure zapiszHTML3(SaveGrid: TStringGrid; FileName,tytul,nazwa_opcji,nazwa_stat: String; LineWidth,od2_,do2_: Integer);
  procedure zapiszHTML2(SaveGrid: TStringGrid; FileName,tytul,nazwa_opcji: String; LineWidth: Integer);



  procedure blad(numer: integer; tekst:string=''; close:boolean=false);

    // dodaje z danej tabeli zestawy do narzedzia Zestawy
    procedure dodajDoZesatwow(var tabela : TStringGrid; kolumna, wiersz : integer);

  function stoper_stop:string;

  function czy_liczba(znak:char):boolean;

    { Public declarations }
  end;




var
  Form1: TForm1;
  losowanie: array [1..5000,1..23] of word;//zapisuje losowania - liczby i date
  wylosowane: array [1..5000,1..80] of boolean;


  SCIEZKA_PROGRAM, TEMP, SCIEZKA_RAPORTY,nazwa_plik:string; //sciezka do programu
  SCIEZKA_GRY : string;
  LOSOWAN : integer; //ilosc losowan
  SCIEZKA_WYNIKI : array[1..3] of string; //tablica z katalogami do wynikow poszczegolnych gier
  liczby_dla_opcji:byte;

  opcja1:byte;
  opcja2:byte;
  OSTATNIA_GRA : byte;
  plik_opcje:TINIFile;

  oplata:real = 1.25;
  oplaty:array[1..3] of real;

  ilosc_liczb_gry:byte;
  ilosc_liczb_los:byte;
  nazwa_gry:string;
  prefiks_gry:string;

  wspolny1,wspolny2:integer;
  wspolny_zak:boolean;
  wspolny_zak_t:byte;
  wspolne_:array[1..3,1..6] of integer;
  wspolne:array[1..3,1..2]of integer;
  wspolne_z:array[1..3]of boolean;

  url:array[1..3] of string; //tablica z linkami do wynikow w sieci
  zamknij:boolean;

  UZYTKOWNIK : string;
  UZYTKWONIK_IMIE : string;
  UZYTKOWNIK_NAZWISKO : string;

  czas_start,czas_stop:integer;
  godzina1,godzina2,minuta1,minuta2,sekunda1,sekunda2,msekunda1,msekunda2:word;

  godzin,minut,sekund,msekund:integer;

  Present: TDateTime;

  //imie, nazwisko : string;


  // nowe zmienne, trzeba bedzie usunac znak podkreslenia

  _Losowanie : array of TWynik;

  // tablica dostêpnych gier
  Gry : array of TGra;

  // aktualnie wybrana gra
  Gra : PGra;

  // obiekt do obs³ugi opcji
  Sets : TOpcje;


implementation

uses losowania, liczby, pary, inne, zestawy, systemy, dodajlos, mapa,
  dwojki, kombinuj, testuj, kombinacje, trojkiz4, czworki, oprogramie,
  analizalos, okresy, opcje, piatki,rejestracja, zakres,
  budujsystem, katalog, sprawdz_sys, uklady, wprowadzsystem, supersys,
  generator_liczb, splash, pozycje, poszukiwacz, 
  pluginy, forum , Addins, Stale;
{$R *.DFM}

var
  WatekForum : ForumThread;

procedure TForm1.FormCreate(Sender: TObject);
var
  g : byte;
begin
  // przypisanie uchwytu g³ównego okna
  C_HWND := Self.Handle;

  // ustawienie zmiennych programu
  SCIEZKA_PROGRAM := ExtractFilePath(Application.ExeName);
  SCIEZKA_GRY := SCIEZKA_PROGRAM + C_GRY_KATALOG;
  TEMP := SCIEZKA_PROGRAM + 'temp\';
  Sets := TOpcje.Create(SCIEZKA_PROGRAM + C_PLIK_OPCJE_SCIEZKA);
  SprawdzLicencje();

  // wczytanie listy gier
  WczytajGry();

  // wczytanie ostatniej gry

  g := Sets.Load('main', 'gra', C_MULTI_LOTEK);
  if g = 0 then
  begin
    g :=  Sets.Load('main', 'ostatnia_gra', C_MULTI_LOTEK);
  end;
  if (g < C_MULTI_LOTEK) or (g > C_EXPRESS_LOTEK) then
  begin
    g := C_MULTI_LOTEK;
  end;
  OSTATNIA_GRA := Gra.Numer;
  SCIEZKA_RAPORTY := Sets.Load('main', 'katalog_raporty', SCIEZKA_PROGRAM);

  WczytajGre(g);
  UstawZakres();

  SaveDialog1.InitialDir := SCIEZKA_RAPORTY;
  SaveDialog2.InitialDir := SCIEZKA_RAPORTY;
  opendialog1.InitialDir := SCIEZKA_RAPORTY;
  
  if Sets.Load('forum', 'sprawdzaj', false) then
  begin
    WatekForum := ForumThread.Create(statusbar1.Panels[1]);
    WatekForum.Resume();
  end
  else
  begin
    StatusBar1.Panels[1].Text := 'Wy³¹czono';
  end;
  StatusBar1.Panels[0].Text := '';
end;

procedure TForm1.Wczytajdane1Click(Sender: TObject);
begin
  if Application.MessageBox('Czy ponownie wczytaæ bazê losowañ ?', 'Pytanie', MB_YESNO + MB_ICONQUESTION) = ID_YES then
  begin
    //wczytaj_dane();
    WczytajGre(Gra.Numer);
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Sets.Destroy();
  if WatekForum <> nil then
  begin
      WatekForum.Terminate();
  end;
  
  zamknij_okna();
end;

procedure TForm1.Kaskada1Click(Sender: TObject);
begin
  form1.Cascade();
end;

procedure TForm1.Minimalizujwszystkie1Click(Sender: TObject);
var
  i : integer;
begin
  with form1 do
  begin
    for i := MDIChildCount - 1 downto 0 do MDIChildren[i].WindowState := wsminimized;
  end;
end;

procedure TForm1.Zamknijwszystkie1Click(Sender: TObject);
begin
  zamknij_okna();
end;

procedure TForm1.Koniec1Click(Sender: TObject);
begin
  Close();
end;

procedure TForm1.WczytajGre(g : byte);
var
  s : string;
  i : integer;
begin
  // zapamietanie ostatnie gry
  OSTATNIA_GRA := Gra.Numer;

  // ustawienie danych gry
  UstawDaneGry(g);

  // wczytanie losowan
  if (not WczytajLosowania(s)) then
  begin
    // jakis blad
    Application.MessageBox(PChar(s), 'Wyst¹pi³ b³¹d', MB_OK + MB_ICONERROR);
    if (OSTATNIA_GRA <> Gra.Numer) then
    begin
      WczytajGre(OSTATNIA_GRA);
    end
    else
    begin
      Application.MessageBox('Nie mo¿na wczytaæ wyników ¿adnej z gier. Proszê œci¹gn¹æ pliki z wynikami do katalogu wyników (domyœlnie katalogu z programem) i ponownie uruchomiæ program.', 'B³¹d z wynikami', MB_OK + MB_ICONERROR);
      Exit;
    end;
    Exit;
  end;

  // ustawienie zakresow
  UstawZakres();

  // pomyslne wlaczenie gry = zapisanie ze to ostatnia gra
  Sets.Save('main', 'ostatnia_gra', Gra.Numer);
end;

procedure TForm1.PokazWyniki();
var
  i : integer;
begin
  // wyswietlenie wynikow w belce
  ListBox1.Clear();
  case Gra.Numer of
    C_MULTI_LOTEK :
      begin
        for i := Gra.ZakresOd to Gra.ZakresDo do ListBox1.Items.Add(Format('%4d - %2d.%2d.%4d - %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d %2d', [i, _Losowanie[i].Dzien, _Losowanie[i].Miesiac, _Losowanie[i].Rok, _Losowanie[i].Liczba[1], _Losowanie[i].Liczba[2], _Losowanie[i].Liczba[3], _Losowanie[i].Liczba[4], _Losowanie[i].Liczba[5], _Losowanie[i].Liczba[6], _Losowanie[i].Liczba[7], _Losowanie[i].Liczba[8], _Losowanie[i].Liczba[9], _Losowanie[i].Liczba[10], _Losowanie[i].Liczba[11], _Losowanie[i].Liczba[12], _Losowanie[i].Liczba[13], _Losowanie[i].Liczba[14], _Losowanie[i].Liczba[15], _Losowanie[i].Liczba[16], _Losowanie[i].Liczba[17], _Losowanie[i].Liczba[18], _Losowanie[i].Liczba[19], _Losowanie[i].Liczba[20]]));
        ListBox1.Width := 660;
      end;
    C_DUZY_LOTEK :
      begin
        for i := Gra.ZakresOd to Gra.ZakresDo do ListBox1.Items.Add(Format('%4d - %2d.%2d.%4d - %2d %2d %2d %2d %2d %2d', [i, _Losowanie[i].Dzien, _Losowanie[i].Miesiac, _Losowanie[i].Rok, _Losowanie[i].Liczba[1], _Losowanie[i].Liczba[2], _Losowanie[i].Liczba[3], _Losowanie[i].Liczba[4], _Losowanie[i].Liczba[5], _Losowanie[i].Liczba[6]]));
        ListBox1.Width := 325;
      end;
    C_EXPRESS_LOTEK :
      begin
        for i := Gra.ZakresOd to Gra.ZakresDo do ListBox1.Items.Add(Format('%4d - %2d.%2d.%4d - %2d %2d %2d %2d %2d', [i, _Losowanie[i].Dzien, _Losowanie[i].Miesiac, _Losowanie[i].Rok, _Losowanie[i].Liczba[1], _Losowanie[i].Liczba[2], _Losowanie[i].Liczba[3], _Losowanie[i].Liczba[4], _Losowanie[i].Liczba[5]]));
        ListBox1.Width := 300;
      end;
  end;
  ListBox1.TopIndex := ListBox1.Items.Count - 1;

  // ustawienie belki programu
  Form1.Caption := C_PROGRAM_NAZWA + ' ' + C_PROGRAM_WERSJA + '    [' + Gra.Nazwa + ' : ' + IntToStr(LOSOWAN) + ' : ' + IntToStr(Gra.ZakresOd) + '-' + IntToStr(Gra.ZakresDo) + ']';
end;

procedure TForm1.UstawZakres();
var
  tmp : integer;
begin
  Gra.ZakresOd := 1;
  Gra.ZakresDo := LOSOWAN;
  if (Sets.Load(Gra.Prefiks, 'zakres', false)) then
  begin
    case (Sets.Load(Gra.Prefiks, 'zakres_typ', C_ZAKRESY_WSZYSTKIE)) of
      C_ZAKRESY_OSTATNIE :
        begin
          if (Sets.Load(Gra.Prefiks, 'zakres_pomijac', false)) then
          begin
            Gra.ZakresOd := LOSOWAN - Sets.Load(Gra.Prefiks, 'zakres_ilosc', 100) - Sets.Load(Gra.Prefiks, 'zakres_pomijaj', 0) + 1;
            Gra.ZakresDo := LOSOWAN - Sets.Load(Gra.Prefiks, 'zakres_pomijaj', 100);
          end
          else
          begin
            Gra.ZakresOd := LOSOWAN - Sets.Load(Gra.Prefiks, 'zakres_ilosc', 100) + 1;
            Gra.ZakresDo := LOSOWAN;
          end;
        end;
      C_ZAKRESY_WYBRANE :
        begin
          Gra.ZakresOd := Sets.Load(Gra.Prefiks, 'zakres_start', 1);
          Gra.ZakresDo := Sets.Load(Gra.Prefiks, 'zakres_stop', LOSOWAN);
        end;
    end;

    if (Gra.ZakresOd > Gra.ZakresDo) then
    begin
      tmp := Gra.ZakresOd;
      Gra.ZakresOd := Gra.ZakresDo;
      Gra.ZakresDo := tmp;
    end
    else
    if (Gra.ZakresOd = Gra.ZakresDo) then
    begin
      Gra.ZakresOd := 1;
      Gra.ZakresDo := LOSOWAN;
    end;

    if (Gra.ZakresOd > LOSOWAN) then
    begin
      Gra.ZakresOd := 1;
    end;
    if (Gra.ZakresDo > LOSOWAN) then
    begin
      Gra.ZakresDo := LOSOWAN;
    end;
  end;
  
   PokazWyniki();
end;

procedure TForm1.UstawDaneGry(g : byte);
begin
  MultiLotek1.Checked := false;
  DuyLotek1.Checked := false;
  ExpresLotek1.Checked := false;
  case g of
    C_MULTI_LOTEK :
      begin
        MultiLotek1.Checked := true;
        Gra.Nazwa := 'MultiLotek';
        Gra.Skrot := 'ML';
        Gra.IloscLiczbGry := 80;
        Gra.IloscLiczbLosowanych := 20;
        Gra.Numer := C_MULTI_LOTEK;
      end;
    C_DUZY_LOTEK :
      begin
        DuyLotek1.Checked := true;
        Gra.Nazwa := 'Du¿yLotek';
        Gra.Skrot := 'DL';
        Gra.IloscLiczbGry := 49;
        Gra.IloscLiczbLosowanych := 6;
        Gra.Numer := C_DUZY_LOTEK;
      end;
    C_EXPRESS_LOTEK :
      begin
        ExpresLotek1.Checked := true;
        Gra.Nazwa := 'ExpressLotek';
        Gra.Skrot := 'EL';
        Gra.IloscLiczbGry := 42;
        Gra.IloscLiczbLosowanych := 5;
        Gra.Numer := C_EXPRESS_LOTEK;
      end;
    else
    begin
      Application.MessageBox('Nie rozpoznano identyfikatora ¿¹danej gry.', 'B³¹d', MB_OK + MB_ICONERROR);
      Exit;
    end;
  end;
  Gra.Prefiks := LowerCase(Gra.Skrot);
  Gra.PlikWyniki := Gra.Prefiks + '.txt';
  //Gra.SciezkaWyniki := Sets.Load(Gra.Prefiks, 'katalog_wyniki', SCIEZKA_PROGRAM);
  Gra.URLWyniki := Sets.Load(Gra.Prefiks, 'url', C_URL_DOMYSLNY + Gra.Prefiks);
  Gra.Oplata := Sets.Load(Gra.Prefiks, 'oplata', 1.25);
end;

procedure TForm1.ZmienGre(g : byte);
begin
 ShowMessage('Zamknij okna i zmieñ gre');
 Application.MessageBox('Przed zmian¹ gry nale¿y zamkn¹æ wszystkie okna.'+#13+'Czy zrobiæ to teraz?', 'Pytanie', MB_YESNO + MB_ICONQUESTION);
end; 

procedure TForm1.MultiLotek1Click(Sender: TObject);
begin
  if not multilotek1.Checked then ZmienGre(C_MULTI_LOTEK);
end;

procedure TForm1.DuyLotek1Click(Sender: TObject);
begin
  if not duylotek1.Checked then ZmienGre(C_DUZY_LOTEK);
end;

procedure TForm1.ExpresLotek1Click(Sender: TObject);
begin
  if not expreslotek1.Checked then ZmienGre(C_EXPRESS_LOTEK);
end;

procedure TForm1.SprawdzLicencje;
var
    help1,help2,help4,help5:integer;
    imie_,nazwisko_,kod1,kod2,szyfr,razem,razem2,razem3,razem5:string;
    plik_klucz : TIniFile;
    i : integer;
  const haslo = '110120122107985960965556585710561601039710810010511011812510811912212655100805455971211181231255496119606358108100121104103118';
begin
  if (not FileExists(SCIEZKA_PROGRAM + 'klucz.ini')) then
  begin
    self.Hide();
    Application.MessageBox(PChar('Brak kluczy licencji. Przeczytaj dokumentacjê u¿ytkownika o rejestracji lub skontaktuj siê z autorem programu' + #13#13 + 'Program zostanie zakoñczony.'), PChar('B³¹d'), MB_OK + MB_ICONERROR);
    Halt;
  end;
  imie_ := '';
  nazwisko_ := '';
  kod1 := '';
  kod2 := '';
  razem5 := '';
  try
    plik_klucz := TINIFile.Create(SCIEZKA_PROGRAM + 'klucz.ini');
    imie_ := plik_klucz.ReadString('uzytkownik', 'imie', '');
    nazwisko_ := plik_klucz.ReadString('uzytkownik', 'nazwisko', '');
    kod1 := plik_klucz.ReadString('uzytkownik', 'kod_osobisty', '');
    kod2 := plik_klucz.ReadString('uzytkownik', 'kod_wersji', '');
  finally
    plik_klucz.Free;
  end;
  szyfr := 'Tom@szAngusTerleckiTom@szAngusTerleckiTom@szAngusTerleckiTom@szAngusTerleckiTom@szAngusTerleckiTom@szAngusTerleckiTom@szAngusTerleckiTom@szAngusTerleckiTom@szAngusTerleckiTom@szAngusTerlecki';       help5:=length(imie_)+length(nazwisko_);
  razem := nazwisko_ + imie_;
  razem2 := '';
  if help5 <> 0 then
  begin
    for help2 := 1 to help5 do
    begin
      razem2 := razem2 + IntToStr(ord(razem[help2]));
    end;
  end;
  razem3 := '';
  for help4 := 1 to (length(razem2) div 2) do
  begin
    razem3 := razem3 + IntToStr(StrToInt(razem2[help4]) xor ord(szyfr[help4]));
  end;
  for help4 := 1 to length(kod2) do razem5 := razem5 + IntToStr(ord(kod2[help4]) xor 15);
  if (imie_ <> '') and (nazwisko_ <> '') and (kod1 <> '') and (kod2 <> '') and (razem3 = kod1) and (razem5 = haslo) then help1 := 1 else help1 := 0;
  if help1 = 1 then
  begin
    statusbar1.Panels.Items[2].Text := 'Licencja dla: ' + imie_ + ' ' + nazwisko_;
    UZYTKOWNIK := imie_ + ' ' + nazwisko_;
    UZYTKWONIK_IMIE := imie_;
    UZYTKOWNIK_NAZWISKO := nazwisko_;
  end
  else
  begin
    Application.MessageBox(PChar('Klucze licencji s¹ nieprawid³owe. Jeœli ta kopia programu zosta³a nabyta legalnie, skontaktuj siê z autorem programu.' + #13#13 + 'Program zostanie zakoñczony.'), PChar('B³¹d'), MB_OK + MB_ICONERROR);
    Halt;
  end;
end;

// do Addins
procedure TForm1.stoper_start;
begin
Present:=now;
DecodeTime(Present,godzina1,minuta1,sekunda1,msekunda1);
end;

// do Addins
function TForm1.stoper_stop: string;
var ssekund:string[2];
begin
Present:=now;
DecodeTime(Present,godzina2,minuta2,sekunda2,msekunda2);
roznica_godzin(godzina1,godzina2,minuta1,minuta2,sekunda1,sekunda2,msekunda1,msekunda2);
ssekund:=IntToStr(msekund);
 case msekund of
     0..9:stoper_stop:=IntToStr(godzin)+'h '+IntToStr(minut)+'m '+IntToStr(sekund)+'.0'+IntToStr(msekund)+'s';
  10..100:stoper_stop:=IntToStr(godzin)+'h '+IntToStr(minut)+'m '+IntToStr(sekund)+'.'+IntToStr(msekund)+'s';
 end;
end;                            

// do Addins
procedure TForm1.roznica_godzin(g1, g2, m1, m2, s1, s2, ms1, ms2: integer);
var
time1,time2,time:int64;
g,m,s,ss:int64;
begin
  g:=g1;
  m:=m1;
  s:=s1;
  ss:=ms1;

  time1:=ss+(s*1000)+(m*60000)+(g*3600000);

  g:=g2;
  m:=m2;
  s:=s2;
  ss:=ms2;

  time2:=ss+(s*1000)+(m*60000)+(g*3600000);

  if time1>time2 then time:=time2+(86400000-time1) else time:=time2-time1;

  if time<=999 then
    begin
     g:=0;
     m:=0;
     s:=0;
     ss:=time;
    end;

  if time>999 then
    begin
     s:=time div 1000;
     ss:=time mod 1000;
     m:=0;
     g:=0;
    end;

  if s>=60 then
    begin
     m:=s div 60;
     s:=s mod 60;
     g:=0;
    end;

  if m>=60 then
    begin
     g:=m div 60;
     m:=m mod 60;
    end;

  godzin:=g;
  minut:=m;
  sekund:=s;
  msekund:=round(ss/10);

end;


procedure TForm1.FormShow(Sender: TObject);
var
  Teraz : TDateTime;
begin
  if splashform <> nil then
  begin
    Teraz:=Now;
    repeat
      Application.ProcessMessages;
    until (Teraz+3/SecsPerDay<Now) or (splashform=nil);
    if splashform<>nil then splashform.close;
  end;
end;

// do eksport
procedure TForm1.zapiszHTML(SaveGrid: TStringGrid; FileName,tytul,nazwa_opcji,nazwa_stat: String; LineWidth,od2_,do2_: Integer);
var
  i, j: Integer;
  S: String;
  slTemp: TStringList;
begin
slTemp := TStringList.Create;

with SaveGrid do
 begin
  slTemp.Add('<html>');
  slTemp.Add('<head>');
  sltemp.add('<meta http-equiv="Content-Type" content="text/html" charset=windows-1250>');
  sltemp.add('<title>'+tytul+'</title>');
  sltemp.add('<META content="'+ C_PROGRAM_NAZWA + ' ' + C_PROGRAM_WERSJA +'" name=Author>');
  sltemp.add('<META content="Tomasz @ngus Terlecki - angusek@wp.pl" name=Copyright>');
  sltemp.add('</head>');
  sltemp.add('<body>');
  slTemp.Add('<font face="verdana" size="2">');
  sltemp.add('<center><font size=5><b>Statystyki</b></font></center>');
  //sltemp.add('<center><font size=4>'+nazwa_gry+'<BR>'+nazwa_opcji+'<BR>'+nazwa_stat+'<BR>Zakres: '+IntToStr(od2_)+'('+data_losowania(od2_)+') - '+IntToStr(do2_)+'('+data_losowania(do2_)+')<BR></font></center>');
  sltemp.add('<center>Wygenerowane: '+DateToStr(date)+' '+TimeToSTr(Time)+' przez: <b><a href="http://www.multiliczby.prv.pl/">'+ C_PROGRAM_NAZWA + ' ' + C_PROGRAM_WERSJA +'</a></b></center>');
  sltemp.add('<p></p>');

  slTemp.Add('<table align=center cellpadding=2 cellspacing=1 border='+IntToStr(LineWidth)+'>');

  for i:=0 to rowcount-1 do
   begin
    s:='';
     for j:=0 to colcount-1 do s:=s+'<td>'+cells[j,i]+'</td>';
    if i mod 2 = 1 then sltemp.add('<tr>'+s+'</tr>') else sltemp.add('<tr bgcolor=#D1D1D1>'+s+'</tr>');
   end;

 end;
slTemp.Add('</table>');
slTemp.add('<center><small>Wszelkie prawa zastrze¿one!</small></center>');
slTemp.Add('</font>');
sltemp.add('</body>');
slTemp.Add('</html>');
slTemp.SaveToFile(FileName);
slTemp.Free;
end;

// do eksport
procedure TForm1.zapiszHTML2(SaveGrid: TStringGrid; FileName, tytul,  nazwa_opcji: String; LineWidth: Integer);
var
  i, j: Integer;
  S: String;
  slTemp: TStringList;
begin
slTemp := TStringList.Create;

with SaveGrid do
 begin
  slTemp.Add('<html>');
  slTemp.Add('<head>');
  sltemp.add('<meta http-equiv="Content-Type" content="text/html" charset=windows-1250>');
  sltemp.add('<title>'+tytul+'</title>');
  sltemp.add('<META content="'+ C_PROGRAM_NAZWA + ' ' + C_PROGRAM_WERSJA +'" name=Author>');
  sltemp.add('<META content="Tomasz @ngus Terlecki - angusek@wp.pl" name=Copyright>');
  sltemp.add('</head>');
  sltemp.add('<body>');
  slTemp.Add('<font face="verdana" size="2">');
  sltemp.add('<center><font size=5><b>'+nazwa_opcji+'</b></font></center>');
  sltemp.add('<center><font size=4>'+nazwa_gry+'<BR>'+nazwa_opcji+'</font></center>');
  sltemp.add('<center>Wygenerowane: '+DateToStr(date)+' '+TimeToSTr(Time)+' przez: <b><a href="http://www.multiliczby.prv.pl/">'+ C_PROGRAM_NAZWA + ' ' + C_PROGRAM_WERSJA +'</a></b></center>');
  sltemp.add('<p></p>');

  slTemp.Add('<table align=center cellpadding=2 cellspacing=1 border='+IntToStr(LineWidth)+'>');
  if nazwa_opcji='Mapa U-1' then
   begin
    //showmessage('OK');
     for i:=0 to rowcount-1 do
      begin
       s:='';
       for j:=0 to colcount-1 do if cells[j,0]<>'?' then s:=s+'<td>'+cells[j,i]+'</td>';
       if i mod 2 = 1 then sltemp.add('<tr>'+s+'</tr>') else sltemp.add('<tr bgcolor=#D1D1D1>'+s+'</tr>');
      end;

   end else
    begin
     for i:=0 to rowcount-1 do
      begin
       s:='';
       for j:=0 to colcount-1 do s:=s+'<td>'+cells[j,i]+'</td>';
       if i mod 2 = 1 then sltemp.add('<tr>'+s+'</tr>') else sltemp.add('<tr bgcolor=#D1D1D1>'+s+'</tr>');
      end;
    end;
   end;
slTemp.Add('</table>');
slTemp.add('<center><small>Wszelkie prawa zastrze¿one!</small></center>');
slTemp.Add('</font>');
sltemp.add('</body>');
slTemp.Add('</html>');
slTemp.SaveToFile(FileName);
slTemp.Free;

end;

// do eksport
procedure TForm1.zapiszHTML3(SaveGrid: TStringGrid; FileName, tytul, nazwa_opcji, nazwa_stat: String; LineWidth, od2_, do2_: Integer);
var
  i, j: Integer;
  S: String;
  slTemp: TStringList;
begin
slTemp := TStringList.Create;

with SaveGrid do
 begin
  slTemp.Add('<html>');
  slTemp.Add('<head>');
  sltemp.add('<meta http-equiv="Content-Type" content="text/html" charset=windows-1250>');
  sltemp.add('<title>'+tytul+'</title>');
  sltemp.add('<META content="'+ C_PROGRAM_NAZWA + ' ' + C_PROGRAM_WERSJA +'" name=Author>');
  sltemp.add('<META content="Tomasz @ngus Terlecki - angusek@wp.pl" name=Copyright>');
  sltemp.add('</head>');
  sltemp.add('<body>');
  slTemp.Add('<font face="verdana" size="2">');
  sltemp.add('<center><font size=5><b>Statystyki</b></font></center>');
//  sltemp.add('<center><font size=4>'+nazwa_gry+'<BR>'+nazwa_opcji+'<BR>'+nazwa_stat+'<BR>Zakres: '+IntToStr(od2_)+'('+data_losowania(od2_)+') - '+IntToStr(do2_)+'('+data_losowania(do2_)+')<BR></font></center>');
  sltemp.add('<center>Wygenerowane: '+DateToStr(date)+' '+TimeToSTr(Time)+' przez: <b><a href="http://www.multiliczby.prv.pl/">'+ C_PROGRAM_NAZWA + ' ' + C_PROGRAM_WERSJA +'</a></b></center>');
  sltemp.add('<p></p>');

  slTemp.Add('<table align=center cellpadding=2 cellspacing=1 border='+IntToStr(LineWidth)+'>');

  for i:=0 to colcount-1 do
   begin
    s:='';
     for j:=0 to rowcount-1 do s:=s+'<td>'+cells[i,j]+'</td>';
    if i mod 2 = 1 then sltemp.add('<tr>'+s+'</tr>') else sltemp.add('<tr bgcolor=#D1D1D1>'+s+'</tr>');
   end;

 end;
slTemp.Add('</table>');
slTemp.add('<center><small>Wszelkie prawa zastrze¿one!</small></center>');
slTemp.Add('</font>');
sltemp.add('</body>');
slTemp.Add('</html>');
slTemp.SaveToFile(FileName);
slTemp.Free;

end;

// do addins
function TForm1.czy_liczba(znak: char): boolean;
begin
if (ord(znak)>47) and (ord(znak)<58) then result:=true else result:=false;
end;  

{ TODO : nie da sie prosciej ? }
procedure TForm1.zamknij_okna;
begin
TRY
if form2=nil then  else form2.close;
if form3=nil then  else form3.close;
if form4=nil then  else form4.close;
if form5=nil then  else form5.close;
if form6=nil then  else form6.close;
if form7=nil then  else form7.close;
if form9=nil then  else form9.close;
if form10=nil then  else form10.close;
if form11=nil then  else form11.close;
if form12=nil then  else form12.close;
if form13=nil then  else form13.close;
if form14=nil then  else form14.close;
if form15=nil then  else form15.close;
if form18=nil then  else form18.close;
if form19=nil then  else form19.close;
if form20=nil then  else form20.close;
if form21=nil then  else form21.close;
if form22=nil then  else form22.close;
if form23=nil then  else form23.close;
if form25=nil then  else form25.close;
if form27=nil then  else form27.close;
if form28=nil then  else form28.close;
if form29=nil then  else form29.close;
if form30=nil then  else form30.close;
if form31=nil then  else form31.close;
if form32<>nil then form32.close;
if form33=nil then  else form33.close;
if form34=nil then  else form34.close;
if not (forum_form = nil) then forum_form.Close();
EXCEPT
 blad(13, 'B³¹d zamykania okien');
END;
end;

procedure TForm1.blad(numer: integer; tekst : string = ''; close : boolean = false);
begin
if close then Application.MessageBox(PChar('B³¹d wewnêtrzny: "'+FormatFloat('00000', numer)+' : '+tekst+'"'+#13+'Jeœli ta sytuacja siê powatarza to prosze o zg³oszenie b³êdu i okolicznoœci jego wyst¹pienia na adres angusek@wp.pl'+#13+'Program zostanie zakoñczony'), 'Wyst¹pi³ b³¹d wewnêtrzny !', MB_OK + MB_ICONERROR) else Application.MessageBox(PChar('B³¹d wewnêtrzny: "'+FormatFloat('00000', numer)+' : '+tekst+'"'+#13+'Jeœli ta sytuacja siê powatarza to prosze o zg³oszenie b³êdu i okolicznoœci jego wyst¹pienia na adres angusek@wp.pl'), 'Wyst¹pi³ b³¹d wewnêtrzny !', MB_OK + MB_ICONERROR);
if close then halt;
end; 

procedure TForm1.Maksymalizujwszystkie1Click(Sender: TObject);
var
  i : integer;
begin 
  with form1 do for i := 0 to MDIChildCount - 1 do MDIChildren[i].WindowState := wsnormal;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 str : TStringList;
 i, j : integer;
 linia : String;
begin
  str := TStringList.Create;
  for i := 1 to losowan do
  begin
    linia := '';
    linia := linia + IntToStr(i) + ';';
    linia := linia + IntToStr(losowanie[i][21] + (losowanie[i][22] * 31) + (losowanie[i][23] * 12 * 31)) + ';';
    linia := linia + IntToStr(losowanie[i][21]) + ';' + IntToStr(losowanie[i][22]) + ';' + IntToStr(losowanie[i][23]) + ';';
    for j := 1 to ilosc_liczb_los-1 do linia := linia + IntToStr(losowanie[i][j]) + ';';
    linia := linia + IntToStr(losowanie[i][ilosc_liczb_los]);
    str.Add(linia);
  end;

  str.SaveToFile('c:\'+prefiks_gry+'.txt');
  str.Free;

end;

procedure TForm1.dodajDoZesatwow(var tabela: TStringGrid; kolumna, wiersz : integer);
  var
    liczb : word;
    i, j, ile : integer;
    temp : array [1..10] of word;
begin
  if tabela.RowCount > C_MAX_ILOSC_ZESTAWOW + 1 then ShowMessage('Tabela zawiera ponad ' + IntToStr(C_MAX_ILOSC_ZESTAWOW) + ' zestawów. Zostanie wczytane tylko ' + IntToStr(C_MAX_ILOSC_ZESTAWOW) + ' pierwszych.');

  liczb := ile_liczb(tabela.Cells[kolumna, wiersz], 1, ilosc_liczb_gry);
  if (liczb > 0) and (liczb < 11) then
  begin
    if form6 = nil then
    begin
      Application.CreateForm(Tform6,form6);
      form6.nowyPlik();
      //form6.Visible := false;
    end else
    begin
      form6.WindowState := wsnormal;
      form6.nowyPlik();
      //form6.Visible := false;
    end;

    if (tabela.RowCount - wiersz) > C_MAX_ILOSC_ZESTAWOW then ile := C_MAX_ILOSC_ZESTAWOW - 1 + wiersz else ile := tabela.RowCount - 1;

    for i := wiersz to ile do
    begin
      liczb := ile_liczb(tabela.Cells[kolumna, i], 1, ilosc_liczb_gry);
      if (liczb > 0) and (liczb < 11) then if wyciagnij_liczby(tabela.Cells[kolumna, i], temp, 1, ilosc_liczb_gry) then form6.dodajZestaw(temp, liczb);
    end;

    form6.BringToFront;

  end;
end;

procedure TForm1.FormResize(Sender: TObject);
var
  i : integer;
begin
  // ustawienie szerokosci poszczegolnych paneli w pasku statusu

  // panel forum
  i := StatusBar1.Canvas.TextWidth(StatusBar1.Panels.Items[1].Text);
  StatusBar1.Panels.Items[1].Width := 100;//i + 16;

  // panel uzytkownika
  i := StatusBar1.Canvas.TextWidth(StatusBar1.Panels.Items[2].Text);
  StatusBar1.Panels.Items[2].Width := i + 24;

  // panel podpowiedzi
  StatusBar1.Panels.Items[0].Width := StatusBar1.Width - StatusBar1.Panels.Items[1].Width - StatusBar1.Panels.Items[2].Width - 8;
end;

procedure TForm1.StatusBar1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  StatusBar1.Hint := '';

  // kursor nad polem Forum
  if (WatekForum <> nil) and (X >= StatusBar1.Panels.Items[0].Width) and (X <= (StatusBar1.Panels.Items[0].Width + StatusBar1.Panels.Items[1].Width)) then
  begin
    StatusBar1.Hint := WatekForum.GetStatus();
    Exit;
  end;

  // kursor nad polem Licencja
  if (X >= (StatusBar1.Panels.Items[0].Width + StatusBar1.Panels.Items[1].Width)) and (X <= (StatusBar1.Panels.Items[0].Width + StatusBar1.Panels.Items[1].Width + StatusBar1.Panels.Items[2].Width)) then
  begin
    StatusBar1.Hint := 'Licencjê na ten produkt posiada ' + UZYTKOWNIK + '.';
    Exit;
  end;
end;

procedure TForm1.StatusBar1DblClick(Sender: TObject);
var
  p : TPoint;
begin
  GetCursorPos(p);

  // klik na polu Forum
  if (p.X >= StatusBar1.Panels.Items[0].Width) and (p.X <= (StatusBar1.Panels.Items[0].Width + StatusBar1.Panels.Items[1].Width)) then
  begin
    Forum1Click(Sender);
    Exit;
  end;

  // klik na polu Licencja
  if (p.X >= (StatusBar1.Panels.Items[0].Width + StatusBar1.Panels.Items[1].Width)) and (p.X <= (StatusBar1.Panels.Items[0].Width + StatusBar1.Panels.Items[1].Width + StatusBar1.Panels.Items[2].Width)) then
  begin
    Oprogramie1Click(Sender);
    Exit;
  end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if (Sets.Load('main', 'pytaj_przed_zamknieciem', true)) then
  begin
    if Application.MessageBox('Czy zakoñczyæ pracê programu?', 'Pytanie', MB_YESNO + MB_ICONINFORMATION + MB_DEFBUTTON2) <> ID_YES then CanClose := false;
  end
  else
  begin
    CanClose := true;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////
////
//// Wywo³ywanie okien, kolejnoœæ numerami min - > max, nazwane na koñcu
////
/////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////

procedure TForm1.Losowania2Click(Sender: TObject);
begin
if form2=nil then
 begin
  Application.CreateForm(Tform2,form2);
  form2.show;
 end else
  begin
   form2.WindowState:=wsnormal;
   form2.BringToFront;
  end;
end;

procedure TForm1.Pojedynczeliczby1Click(Sender: TObject);
begin
if form3=nil then
 begin
  Application.CreateForm(Tform3,form3);
  form3.show;
 end else
  begin
   form3.WindowState:=wsnormal;
   form3.BringToFront;
  end;
end;

procedure TForm1.Paryliczb1Click(Sender: TObject);
begin
if form4=nil then
 begin
  Application.CreateForm(Tform4,form4);
  form4.show;
 end else
  begin
   form4.WindowState:=wsnormal;
   form4.BringToFront;
  end;
end;

procedure TForm1.Inne1Click(Sender: TObject);
begin
if form5=nil then
 begin
  Application.CreateForm(Tform5,form5);
  form5.show;
 end else
  begin
   form5.WindowState:=wsnormal;
   form5.BringToFront;
  end;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
if form7=nil then
 begin
  Application.CreateForm(Tform7,form7);
  form7.show;
 end else
  begin
   form7.WindowState:=wsnormal;
   form7.BringToFront;
  end;
end;

procedure TForm1.Zestawy1Click(Sender: TObject);
begin
if form6=nil then
 begin
  Application.CreateForm(Tform6,form6);
  form6.show;
 end else
  begin
   form6.WindowState:=wsnormal;
   form6.BringToFront;
  end;
end;

procedure TForm1.Maparozkadw1Click(Sender: TObject);
begin
if form9=nil then
 begin
  Application.CreateForm(Tform9,form9);
  form9.show;
 end else
  begin
   form9.WindowState:=wsnormal;
   form9.BringToFront;
  end;
end;

procedure TForm1.Mapapar1Click(Sender: TObject);
begin
if form10=nil then
 begin
  Application.CreateForm(Tform10,form10);
  form10.show;
 end else
  begin
   form10.WindowState:=wsnormal;
   form10.BringToFront;
  end;
end;

procedure TForm1.Kombinujdwjki1Click(Sender: TObject);
begin
if form11=nil then
 begin
  Application.CreateForm(Tform11,form11);
  form11.show;
 end else
  begin
   form11.WindowState:=wsnormal;
   form11.BringToFront;
  end;
end;

procedure TForm1.Utwrzpary1Click(Sender: TObject);
begin
if form12=nil then
 begin
  Application.CreateForm(Tform12,form12);
  form12.show;
 end else
  begin
   form12.WindowState:=wsnormal;
   form12.BringToFront;
  end;
end;

procedure TForm1.Testuliczby1Click(Sender: TObject);
begin
if form13=nil then
 begin
  Application.CreateForm(Tform13,form13);
  form13.show;
 end else
  begin
   form13.WindowState:=wsnormal;
   form13.BringToFront;
  end;
end;

procedure TForm1.Kombinacje1Click(Sender: TObject);
begin
if form14=nil then
 begin
  Application.CreateForm(Tform14,form14);
  form14.show;
 end else
  begin
   form14.WindowState:=wsnormal;
   form14.BringToFront;
  end;
end;

procedure TForm1.Czwrki1Click(Sender: TObject);
begin
if form15=nil then
 begin
  Application.CreateForm(Tform15,form15);
  form15.show;
 end else
  begin
   form15.WindowState:=wsnormal;
   form15.BringToFront;
  end;
end;

procedure TForm1.Oprogramie1Click(Sender: TObject);
begin
if form18=nil then
 begin
  Application.CreateForm(Tform18,form18);
  form18.show;
 end else
  begin
   form18.WindowState:=wsnormal;
   form18.BringToFront;
  end;
end;

procedure TForm1.Analizujlosowanie1Click(Sender: TObject);
begin
if form19=nil then
 begin
  Application.CreateForm(Tform19,form19);
  form19.show;
 end else
  begin
   form19.WindowState:=wsnormal;
   form19.BringToFront;
  end;
end;

procedure TForm1.Pozycje1Click(Sender: TObject);
begin
if form20=nil then
 begin
  Application.CreateForm(Tform20,form20);
  form20.show;
 end else
  begin
   form20.WindowState:=wsnormal;
   form20.BringToFront;
  end;
end;

procedure TForm1.Okresowo1Click(Sender: TObject);
begin
if form21=nil then
 begin
  Application.CreateForm(Tform21,form21);
  form21.show;
 end else
  begin
   form21.WindowState:=wsnormal;
   form21.BringToFront;
  end;
end;

procedure TForm1.Opcje2Click(Sender: TObject);
begin
if form22=nil then
 begin
  Application.CreateForm(Tform22,form22);
  form22.show;
 end else
  begin
   form22.WindowState:=wsnormal;
   form22.BringToFront;
  end;
end;

procedure TForm1.Pitki1Click(Sender: TObject);
begin
if form23=nil then
 if Gra.Numer=1 then
  begin
   if Application.MessageBox('Statystyki pi¹tek wymagaj¹ sporo pamiêci i bardzo wydajnego procesora. Czy mimo to chcesz je obliczyæ ?', 'Pytanie', MB_YESNO + MB_ICONINFORMATION) = ID_YES then
    begin
     Application.CreateForm(TForm23,form23);
     form23.show;
    end;
  end
   else
 begin
  Application.CreateForm(TForm23,form23);
  form23.show;
 end else
  if form23=nil then
   begin
    Application.CreateForm(TForm23,form23);
    form23.show;
   end else
    begin
     if form23.WindowState=wsminimized then form23.WindowState:=wsnormal;
     if form23.Active=false then form23.BringToFront;
    end;
end;

procedure TForm1.Buduj1Click(Sender: TObject);
begin
if form25=nil then
 begin
  Application.CreateForm(Tform25,form25);
  form25.show;
 end else
  begin
   form25.WindowState:=wsnormal;
   form25.BringToFront;
  end;
end;

procedure TForm1.Katalogsystemw1Click(Sender: TObject);
begin
if form27=nil then
 begin
  Application.CreateForm(Tform27,form27);
  form27.show;
 end else
  begin
   form27.WindowState:=wsnormal;
   form27.BringToFront;
  end;
end;

procedure TForm1.Sprawdsystem1Click(Sender: TObject);
begin
if form28=nil then
 begin
  Application.CreateForm(Tform28,form28);
  form28.show;
 end else
  begin
   form28.WindowState:=wsnormal;
   form28.BringToFront;
  end;
end;

procedure TForm1.Ukady1Click(Sender: TObject);
begin
if form29=nil then
 begin
  Application.CreateForm(Tform29,form29);
  form29.show;
 end else
  begin
   form29.WindowState:=wsnormal;
   form29.BringToFront;
  end;
end;

procedure TForm1.Wprowadsystem1Click(Sender: TObject);
begin
if form30=nil then
 begin
  Application.CreateForm(Tform30,form30);
  form30.show;
 end else
  begin
   form30.WindowState:=wsnormal;
   form30.BringToFront;
  end;
end;

procedure TForm1.SuperSystemy1Click(Sender: TObject);
begin
if form31=nil then
 begin
  Application.CreateForm(Tform31,form31);
  form31.show;
 end else
  begin
   form31.WindowState:=wsnormal;
   form31.BringToFront;
  end;
end;

procedure TForm1.Generatorliczbpseudolosowych1Click(Sender: TObject);
begin
if form32=nil then
 begin
  Application.CreateForm(Tform32,form32);
  form32.show;
 end else
  begin
   form32.WindowState:=wsnormal;
   form32.BringToFront;
  end;
end;

procedure TForm1.Poszukiwacz1Click(Sender: TObject);
begin
if form33=nil then
 begin
  Application.CreateForm(Tform33,form33);
  form33.show;
 end else
  begin
   form33.WindowState:=wsnormal;
   form33.BringToFront;
  end;
end;

procedure TForm1.Pluginy1Click(Sender: TObject);
begin
if form34=nil then
 begin
  Application.CreateForm(Tform34,form34);
  form34.show;
 end else
  begin
   form34.WindowState:=wsnormal;
   form34.BringToFront;
  end;
end;

procedure TForm1.Forum1Click(Sender: TObject);
begin
if forum_form = nil then
 begin
  Application.CreateForm(Tforum_form, forum_form);
  forum_form.show();
 end else
  begin
   forum_form.WindowState := wsnormal;
   forum_form.BringToFront();
  end;
end;

end.
