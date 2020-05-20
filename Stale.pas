unit Stale;

interface

uses
  Windows;

  const

    C_PROGRAM_NAZWA       = 'MultiLiczby PRO';
    C_PROGRAM_WERSJA      = '2.50';
    C_PLIK_OPCJE_SCIEZKA  = 'configs\opcje.ini';

    C_GRY_KATALOG         = 'gry\';

    C_URL_DOMYSLNY        = 'http://www.angus.foxnet.pl/wyniki/skrypty/pobierz.php?co=';

    C_MULTI_LOTEK         = 1;
    C_DUZY_LOTEK          = 2;
    C_EXPRESS_LOTEK       = 3;

    C_MAX_ILOSC_ZESTAWOW  = 100;

    C_TABULATOR           = Chr(9);

    C_ZAKRESY_WSZYSTKIE   = 0;
    C_ZAKRESY_OSTATNIE    = 1;
    C_ZAKRESY_WYBRANE     = 2;

    C_CHAT_URL = 'http://www.angus.foxnet.pl/chat/forum.php';

    // operacje na losowaniach
    C_LOSOWANIE_BRAK_AKCJI  = 0;
    C_LOSOWANIE_DODAJ       = 1;
    C_LOSOWANIE_USUN        = 2;
    C_LOSOWANIE_EDYTUJ      = 3;


  var
    C_HWND : HWND;

implementation

end.
