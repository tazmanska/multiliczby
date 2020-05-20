unit PluginTools;

interface 

type

  PPluginOpis = ^TPluginOpis;

  TPluginOpis = record
    Nazwa: PChar;
    Wersja : PChar;
    Opis : PChar;
  end;

  PPluginGra = ^TPluginGra;

  TPluginGra = record
    Nazwa : PChar;
    Skrot : PChar;
    IloscLiczbLos : byte;
    IloscLiczbGry : byte;
    Losowan : word;
    Imie : PChar;
    Nazwisko : PChar;
  end;

  PWynik = ^TWynik;

  TWynik = record
    dzien : byte;
    miesiac : byte;
    rok : word;
    liczby : array [1..80] of boolean;
  end;

  TWyniki = procedure(var Tablica : array of TWynik);

////////////////////////////////////////////////////////////////////////////////
// PROCEDURY I FUNKCJE // NIE DO BIBLIOTEKI DLL

  procedure KopiujWyniki(var Tablica : array of TWynik);


implementation

uses main;  // NIE DO DLL

procedure KopiujWyniki(var Tablica : array of TWynik);
var
  i, j : integer;
begin
  if High(Tablica) + 1 < losowan then Tablica[0].dzien := 0 else
  begin
    for i := 1 to losowan do
    begin
      for j := 1 to ilosc_liczb_gry do Tablica[i -1].liczby[j] := wylosowane[i][j];
      Tablica[i - 1].dzien := losowanie[i][21];
      Tablica[i - 1].miesiac := losowanie[i][22];
      Tablica[i - 1].rok := losowanie[i][23];
    end;
  end;
end;

end.
