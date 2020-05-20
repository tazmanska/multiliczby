unit WynikiIDodatki;

interface

uses
  Spin;

type

  TGra = record
    Nazwa : String[255];
    Skrot : String[255];
    Prefiks : String[255];
    PlikWyniki : String[255];
    IloscLiczbGry : integer;
    IloscLiczbLosowanych : integer;
    ZakresLiczbOd : integer;
    LiczbySortowane : boolean;
    URLWyniki : String;
    Oplata : Double;
    ZakresOd : integer;
    ZakresDo : integer;
    Numer : byte;
  end;

  PGra = ^TGra;

  TWynik = record
    Numer : word;
    Dzien : byte;
    Miesiac : byte;
    Rok : word;
    Liczba : array {[1..20]} of byte;
    JestLiczba : array {[1..80]} of boolean;
  end;


  procedure UstawZakresLosowan(var start : TSpinEdit; var stop : TSpinEdit); overload;
  procedure UstawZakresLosowan(funkcja : string; var start : TSpinEdit; var stop : TSpinEdit); overload;

  procedure WczytajGry();


  function WczytajLosowania(var error : string) : boolean;
  function ZapiszLosowania(var error : string) : boolean;
  function UsunLosowanie(numer : integer; var error : string) : boolean;

  function DataLosowania(numer : integer) : string;




implementation

uses main, Classes, Addins, SysUtils, Stale;



  const
    MIN_LICZBA = 1;
    MAX_LICZBA = 65535;

/////////////////////////////////////////////////////////////////////////////////////////////
// definicje procedur i funkcji

procedure sortuj_losowania_rok(start, stop : integer);
var
  i, j : Integer;
  x : Integer;
  wynik : TWynik;
begin
  i := start;
  j := stop;
  X := _Losowanie[(start + stop) div 2].Rok;
  repeat
    while _Losowanie[i].Rok < x do inc(i);
    while x < _Losowanie[j].Rok do dec(j);
    if i <= j then
    begin
      wynik := _Losowanie[i];
      _Losowanie[i] := _Losowanie[j];
      _Losowanie[j] := wynik;
      inc(i);
      dec(j);
    end;
  until i > j;
  if start < j then sortuj_losowania_rok(start, j);
  if i < stop then sortuj_losowania_rok(i, stop);
end;

procedure sortuj_losowania_miesiac(start, stop : integer);
var
  i, j : Integer;
  x : Integer;
  wynik : TWynik;
begin
  i := start;
  j := stop;
  X := _Losowanie[(start + stop) div 2].Miesiac;
  repeat
    while _Losowanie[i].Miesiac < x do inc(i);
    while x < _Losowanie[j].Miesiac do dec(j);
    if i <= j then
    begin
      wynik := _Losowanie[i];
      _Losowanie[i] := _Losowanie[j];
      _Losowanie[j] := wynik;
      inc(i);
      dec(j);
    end;
  until i > j;
  if start < j then sortuj_losowania_miesiac(start, j);
  if i < stop then sortuj_losowania_miesiac(i, stop);
end;

procedure sortuj_losowania_dzien(start, stop : integer);
var
  i, j : Integer;
  x : Integer;
  wynik : TWynik;
begin
  i := start;
  j := stop;
  X := _Losowanie[(start + stop) div 2].Dzien;
  repeat
    while _Losowanie[i].Dzien < x do inc(i);
    while x < _Losowanie[j].Dzien do dec(j);
    if i <= j then
    begin
      wynik := _Losowanie[i];
      _Losowanie[i] := _Losowanie[j];
      _Losowanie[j] := wynik;
      inc(i);
      dec(j);
    end;
  until i > j;
  if start < j then sortuj_losowania_dzien(start, j);
  if i < stop then sortuj_losowania_dzien(i, stop);
end;

function WczytajLosowania(var error : string) : boolean;
var
  str : TStringList;
  i : integer;
  j : integer;
  tmp1 : integer;
  tmp2 : integer;
  tab : array [1..24] of word;
  dmr : boolean;
  start : integer;
  startn, stopn : integer;
  start2 : integer;
  start2n, stop2n : integer;
  i2 : integer;
begin
  result := true;
  error := '';

  LOSOWAN := 0;

  SetLength(_Losowanie, 0);
  _Losowanie := nil;

  str := TStringList.Create();
  try

    error := 'Nie mo¿na wczytaæ pliku z wynikami (brak pliku ' + Gra.SciezkaWyniki + Gra.PlikWyniki + ' ?).';
    str.LoadFromFile(Gra.SciezkaWyniki + Gra.PlikWyniki);

    // usuniecie zlych linii
    error := 'B³¹d podczas przygotowywania pliku z wynikami do wczytania.';
    // ilosc liczb wymaganych w linii (numer + dzien + miesiac + rok + liczby)
    tmp2 := Gra.IloscLiczbLosowanych + 4;
    for i := str.Count -1 downto 0 do
    begin
      tmp1 := ile_liczb(str[i], MIN_LICZBA, MAX_LICZBA);
      if (tmp1 <> tmp2) then
      begin
        str.Delete(i);
      end;
    end;

    error := 'Nie mo¿na przydzieliæ odpowiedniej iloœci miejsca w pamiêci.';
    SetLength(_Losowanie, str.Count + 1);

    // sprawdzenie formatu daty
    dmr := true;
    error := 'Nie mo¿na ustaliæ formatu daty w pliku z wynikami.';
    if (wyciagnij_liczby(str[0], tab, MIN_LICZBA, MAX_LICZBA)) then
    begin
      if (tab[1] > 31) then
      begin
        dmr := false;
      end;
    end
    else
    begin
      raise Exception.Create(error);
    end;

    // wczytywanie losowan
    error := 'B³¹d podczas wczytywania wyników do pamiêci.';
    for i := 1 to str.Count do
    begin
      if (wyciagnij_liczby(str[i - 1], tab, MIN_LICZBA, MAX_LICZBA)) then
      begin
        _Losowanie[i].Numer := i;
        _Losowanie[i].Miesiac := tab[3];
        if (dmr) then
        begin
          _Losowanie[i].Dzien := tab[2];
          _Losowanie[i].Rok := tab[4];
        end
        else
        begin
          _Losowanie[i].Dzien := tab[4];
          _Losowanie[i].Rok := tab[2];
        end;
        for j := 1 to Gra.IloscLiczbLosowanych do
        begin
          if ((tab[j + 4] > 0) and (tab[j + 4] <= Gra.IloscLiczbGry)) then
          begin
            _Losowanie[i].Liczba[j] := tab[j + 4];
            _Losowanie[i].JestLiczba[ tab[j + 4] ] := true;
          end
          else
          begin
            error := 'Niepoprawna liczba w wynikach losowania numer ' + IntToStr(i) + '.';
            raise Exception.Create(error);
          end;
        end;
      end
      else
      begin
        error := 'B³¹d podczas wczytywania losowania numer ' + IntToStr(i) + '.';
        raise Exception.Create(error);
      end;
    end;

    LOSOWAN := Length(_Losowanie) - 1;

    // sortowanie losowan                          
    error := 'B³¹d podczas sortowania losowañ.';

    sortuj_losowania_rok(1, LOSOWAN);
    i := 0;
    start := _Losowanie[1].Rok;
    startn := 1;
    while(i < LOSOWAN) do
    begin
      inc(i);
      if (_Losowanie[i].Rok <> start) then
      begin
        stopn := i - 1;
        sortuj_losowania_miesiac(startn, stopn);
        i2 := startn;
        start2 := _Losowanie[startn].Miesiac;
        start2n := i2;
        while(i2 <= stopn) do
        begin
          inc(i2);
          if (_Losowanie[i2].Miesiac <> start2) then
          begin
            stop2n := i2 - 1;
            sortuj_losowania_dzien(start2n, stop2n);
            start2 := _Losowanie[i2].Miesiac;
            start2n := i2;
          end;
        end;
        start := _Losowanie[i].Rok;
        startn := i;
      end;
    end;

    sortuj_losowania_miesiac(startn, LOSOWAN);
    i2 := startn;
    start2 := _Losowanie[startn].Miesiac;
    start2n := i2;
    while(i2 <= LOSOWAN) do
    begin
      inc(i2);
      if (_Losowanie[i2].Miesiac <> start2) then
      begin
        stop2n := i2 - 1;
        sortuj_losowania_dzien(start2n, stop2n);
        start2 := _Losowanie[i2].Miesiac;
        start2n := i2;
      end;
    end;  

  except
    result := false;
  end;
  str.Free();
end;

function ZapiszLosowania(var error : string) : boolean;
var
  i : integer;
  str : TStringList;
  bufor : string;
begin
  result := false;

  error := 'B³¹d podczas tworzenia bufora dla pliku z wynikami.';
  str := TStringList.Create();
  
  try
    error := 'B³¹d podczas zapisywania wyników losowañ do bufora.';
    for i := 1 to LOSOWAN do
    begin
      if Gra.Numer = C_MULTI_LOTEK then bufor := Format('%4d - %2d.%2d.%4d - %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d, %2d', [i, _Losowanie[i].Dzien, _Losowanie[i].Miesiac, _Losowanie[i].Rok, _Losowanie[i].Liczba[1], _Losowanie[i].Liczba[2], _Losowanie[i].Liczba[3], _Losowanie[i].Liczba[4], _Losowanie[i].Liczba[5], _Losowanie[i].Liczba[6], _Losowanie[i].Liczba[7], _Losowanie[i].Liczba[8], _Losowanie[i].Liczba[9], _Losowanie[i].Liczba[10], _Losowanie[i].Liczba[11], _Losowanie[i].Liczba[12], _Losowanie[i].Liczba[13], _Losowanie[i].Liczba[14], _Losowanie[i].Liczba[15], _Losowanie[i].Liczba[16], _Losowanie[i].Liczba[17], _Losowanie[i].Liczba[18], _Losowanie[i].Liczba[19], _Losowanie[i].Liczba[20]]);
      if Gra.Numer = C_DUZY_LOTEK then bufor := Format('%4d - %2d.%2d.%4d - %2d, %2d, %2d, %2d, %2d, %2d', [i, _Losowanie[i].Dzien, _Losowanie[i].Miesiac, _Losowanie[i].Rok, _Losowanie[i].Liczba[1], _Losowanie[i].Liczba[2], _Losowanie[i].Liczba[3], _Losowanie[i].Liczba[4], _Losowanie[i].Liczba[5], _Losowanie[i].Liczba[6]]);
      if Gra.Numer = C_EXPRESS_LOTEK then bufor := Format('%4d - %2d.%2d.%4d - %2d, %2d, %2d, %2d, %2d, %2d', [i, _Losowanie[i].Dzien, _Losowanie[i].Miesiac, _Losowanie[i].Rok, _Losowanie[i].Liczba[1], _Losowanie[i].Liczba[2], _Losowanie[i].Liczba[3], _Losowanie[i].Liczba[4], _Losowanie[i].Liczba[5]]);
      str.Add(bufor);
    end;

    error := 'B³¹d podczas zapisywania bufora do pliku.';
    str.SaveToFile(Gra.SciezkaWyniki + Gra.PlikWyniki);
  finally
    str.Free();
  end;

  result := true;
end;

function UsunLosowanie(numer : integer; var error : string) : boolean;
var
  i : integer;
begin
  result := false;
  error := 'B³êdny numer losowania do usuniêcia.';
  if (numer < 1) or (numer > LOSOWAN) then
  begin
    Exit;
  end;

  error := 'B³¹d podczas przepisywania losowañ.';
  for i := numer to LOSOWAN - 1 do
  begin
    _Losowanie[numer] := _Losowanie[i + 1];
  end;

  error := 'B³¹d podczas usuwania losowania.';
  SetLength(_Losowanie, LOSOWAN);
  Dec(LOSOWAN);

  error := 'B³¹d podczas ustalania nowych zakresów losowañ.';
  form1.UstawZakres();

  result := ZapiszLosowania(error);  
end;

procedure UstawZakresLosowan(var start : TSpinEdit; var stop : TSpinEdit);
begin
  // to do
end;

procedure UstawZakresLosowan(funkcja : string; var start : TSpinEdit; var stop : TSpinEdit);
begin
  // to do
end;

function DataLosowania(numer : integer) : string;
begin
  result := '';
  if (numer >= 1) and (numer <= LOSOWAN) then
  begin
    result := Format('%2d.%2d.%4d', [_Losowanie[numer].Dzien, _Losowanie[numer].Miesiac, _Losowanie[numer].Rok]);
  end;
end;

// procedura wczytuje listê dostêpnych gier
procedure WczytajGry();
begin
  // pobranie listy plików z rozszerzeniem .gra

  
end;

end.
