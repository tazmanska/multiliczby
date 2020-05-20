unit Eksport;

interface

  uses
    // projekt
      main
    , Settings
    , Stale

    // pozostale
    , SysUtils
    , Classes
    , Dialogs
    , Windows
    , Grids;

  // rekord opisuj¹cy funkcjê dla której eksportowany jest grid
  type TFunction = record
    Nazwa       : string;   // nazwa opcji
    Opis        : string;   // opis opcji
    Ustawienia  : string;   // ustawienia (zakres losowañ itp.)
    NazwaPliku  : string;   // proponowana nazwa pliku
    Naglowki    : boolean;  // czy zapisywaæ treœæ nag³ówków tabeli
  end;

  // zapisuje dana tabele do pliku tekstowego
  procedure Eksportuj(var grid : TStringGrid; var description : TFunction);



implementation

uses ZapisRozszerzonyDialog;

var
  sfdEksport : TSaveDialog;
  sfdPierwszeUzycie : boolean = true;



 { TODO :
zrobienie tej procedury
zrobienie okna z opcjami zapisu TXT
zrobienie zakladki z oknie opcji z ustawieniami zapisu }
procedure Eksportuj(var grid : TStringGrid; var description : TFunction);
var
  str : TStringList;
  line : string;
  i, j, t : integer;
  separator : char;
  komentarz : string;
  extended : boolean;
  okno : TOKRightDlg;

//  x : XMLDocument;
begin
  if sfdPierwszeUzycie then
  begin
    sfdEksport.InitialDir := Sets.Load('eksport', 'katalog', SCIEZKA_RAPORTY);
    sfdPierwszeUzycie := false;
  end;
  separator := chr(Sets.Load('eksport', 'separator', 9));

  sfdEksport.Title := 'Eksportuj tabelê do pliku - ' + description.Nazwa;
  sfdEksport.FileName := description.NazwaPliku;
  sfdEksport.Filter := 'Plik tekstowy (*.txt)|*.txt' +
                      '|Plik strony WWW (*.html)|*.html';
  sfdEksport.DefaultExt := 'txt';

  extended := Sets.Load('eksport', 'zapis_rozszerzony', false);

  if not extended then
  begin
    // zapis uproszczony
    if (sfdEksport.Execute()) then
    begin
      sfdEksport.InitialDir := '';
      str := TStringList.Create();
      case sfdEksport.FilterIndex of

        // plik tekstowy TXT
        1 : begin
              t := 0;
              if not description.Naglowki then t := 1;
              for i := t to grid.RowCount - 1 do
              begin
                line := '';
                for j := 0 to grid.ColCount - 2 do
                begin
                  line := line + grid.Cells[j, i] + separator;
                end;
                if grid.ColCount > 0 then
                begin
                  line := line + grid.Cells[grid.ColCount - 1, i];
                end;
                str.Add(line);
              end;
            end;

        // plik HTML
        2 : begin

            end;
            
      end;
      str.SaveToFile(sfdEksport.FileName);
      str.Free();
      MessageBox(C_HWND, PChar('Operacja zakoñczona pomyœlnie.' + #13 + 'Plik wynikowy: ' + sfdEksport.FileName), 'Pytanie', MB_OK + MB_ICONINFORMATION);
    end;
  end
  else
  begin
    okno := TOKRightDlg.Create(main.Form1);
    okno.sfd := sfdEksport;
    okno.Description := description;
    okno.ShowModal();
    okno.Destroy();
    okno := nil;



{
              if (extended) then
              begin
                str.Add('Program:     ' + C_PROGRAM_NAZWA + ' ' + C_PROGRAM_WERSJA);
                str.Add('Gra:         ' + Gra.Nazwa);
                str.Add('Nazwa:       ' + description.Nazwa);
                str.Add('Opis:        ' + description.Opis);
                str.Add('Ustawienia:  ' + description.Ustawienia);
                str.Add('U¿ytkownik:  ' + UZYTKOWNIK);
                str.Add('Komentarz:   ' + komentarz);
                str.Add('Data:        ' + DateTimeToStr(Now()));
                str.Add('-----------------------------------------------------------------');
                str.Add('');
              end;
}
  end;
end;


initialization
  // utworzenie okna dialogowego do wskazania pliku docelowego
  sfdEksport := TSaveDialog.Create(main.Form1);
  sfdEksport.Options := sfdEksport.Options + [ofOverwritePrompt];
  sfdEksport.InitialDir := '';

finalization
  // zwolnienie okna do zapisu pliku
  sfdEksport.Free();

end.
