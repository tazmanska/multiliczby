unit Addins;



interface

 uses Grids, Classes, SysUtils, Dialogs, INIFiles, main;

 procedure sortujStringGrid(var tab : TStringGrid; pozycja : byte; asc : boolean = true);

 procedure zapisz_tablice_zestawow(var tabela:TStringGrid;kolumna:byte;plik:String);    // zapisuje podana kolumne z podanej tabeli jako plik zestawu

 function ImplodeInt(plus : String; var tab : array of integer) : String;

  // zwraca nazwe miesiac
  function NazwaMiesiaca(numer : byte) : string;

  // zwraca nazwe pliku w katalogu /temp
  function GetTempFilePath() : string;

  // zwraca losowy string o podanej dlugosci [a-zA-Z0-9]
  function GetRandomString(len : integer) : string;

 // zapisuje opcje do pliku 'opcje.ini', kilka metod przeladowanych
 procedure zapisz_opcje(grupa, nazwa, wartosc: String); overload;
 procedure zapisz_opcje(grupa, nazwa: String; wartosc: Integer); overload;
 procedure zapisz_opcje(grupa, nazwa: String; wartosc: Real); overload;
 procedure zapisz_opcje(grupa, nazwa: String; wartosc: Boolean); overload;

 // odczytuje opcje z pliku 'opcje.ini', kilka metod przeladowanych
 function wczytaj_opcje(grupa, nazwa, wartosc: String):String; overload;
 function wczytaj_opcje(grupa, nazwa: String; wartosc: Integer):Integer; overload;
 function wczytaj_opcje(grupa, nazwa: String; wartosc: Real):Real; overload;
 function wczytaj_opcje(grupa, nazwa: String; wartosc: Boolean):Boolean; overload;


 function czy_liczba(znak:String):boolean;        // sprawdza czy podany znak (string) jest liczba 0-9
 function wyciagnij_liczbe(linia:string):string;  // zwraca String w ktorym jest zapisana liczba (bez znaku -/+)
 function ile_liczb(linia:string; MIN : word = 1; MAX : word = 0):word;           // zwraca ilosc liczb w podanym stringu

  // zwraca i zapisuje liczby ze stringa do podanej tablicy
  function odczytaj_liczby2(var wprowadzone : array of boolean; linia : string; MIN, MAX : integer) : integer;

 function czy_dobry_zakres(od_,do_:integer):boolean; // sprawdza czy zakres jest dobry
 function czy_dobre_losowanie(numer:integer):boolean; // sprawdza czy numer losowanie jest w zakresie

  // wyciaga liczby ze stringa i wrzuca je do tablicy tab, jesli nie ma liczb to zwraca false
  function wyciagnij_liczby(linia : String; var tab : array of word; MIN : integer = 1; MAX : integer = 0):boolean;

 var
  opcje:TINIFile;
 const
  plik_opcje = 'opcje.ini';


implementation

function GetTempFilePath() : string;
begin
  repeat
    Result := TEMP + GetRandomString(8) + '.tmp';
  until (not FileExists(Result));
end;

function GetRandomString(len : integer) : string;
const
  Chars = '0123456789abcdefghijklmnopqrstuvwxyz';
var
  i, N: integer;
begin
  Randomize();
  Result := '';
  for i := 1 to len do
  begin
    N := Random(Length(Chars)) + 1;
    Result := Result + Chars[N];
  end;
end;

function NazwaMiesiaca(numer : byte) : string;
begin
  result := '<nieznany>';
  case numer of
     1 : result := 'styczeñ';
     2 : result := 'luty';
     3 : result := 'marzec';
     4 : result := 'kwiecieñ';
     5 : result := 'maj';
     6 : result := 'czerwiec';
     7 : result := 'lipiec';
     8 : result := 'sierpieñ';
     9 : result := 'wrzesieñ';
    10 : result := 'paŸdziernik';
    11 : result := 'listopad';
    12 : result := 'grudzieñ';
  end;
end;

procedure sortujStringGrid(var tab : TStringGrid; pozycja : byte; asc : boolean = true);
var
  i, j, k, r, c, l1, l2 : integer;
  str : array of string;
begin
  r := tab.RowCount;
  c := tab.ColCount;
  setlength(str, tab.ColCount - 1);
  for k := low(str) to high(str) do str[k] := ' ';
  if asc then
    begin
      for i := 2 to r - 1 do
        for j := r - 1 DownTo i Do
          if StrToInt(tab.cells[pozycja, j - 1]) > StrToInt(tab.cells[pozycja, j]) Then
            begin
              for k := 1 to c - 1 do str[k - 1] := tab.cells[k, j - 1];

              for k := 1 to c - 1 do tab.cells[k, j - 1] := tab.cells[k, j];

              for k := 1 to c - 1 do tab.cells[k, j] := str[k - 1];
            End;
    end else
    begin
      for i := 2 to r - 1 do
        for j := r - 1 DownTo i Do
      if StrToInt(tab.cells[pozycja, j-1]) < StrToInt(tab.cells[pozycja, j]) Then
        begin
              for k := 1 to c - 1 do str[k - 1] := tab.cells[k, j - 1];

              for k := 1 to c - 1 do tab.cells[k, j - 1] := tab.cells[k, j];

              for k := 1 to c - 1 do tab.cells[k, j] := str[k - 1];
        End;
   end;
   //str := nil;

end;


function ImplodeInt(plus : String; var tab : array of integer) : String;
var
  i : integer;
begin
  result := '';
  if high(tab) - low(tab) > 0 then
  begin
    for i := low(tab) to high(tab) - 1 do result := result + IntToStr(tab[i]) + plus;
    result := result + IntToStr(tab[i]);
  end else result := IntToStr(tab[low(tab)]);
end;




procedure zapisz_tablice_zestawow(var tabela:TStringGrid;kolumna:byte;plik:String);
var
help1,help2:integer;
ilosc,numer:integer;
list:TStringList;
robic:boolean;
begin
numer:=1;
help1:=tabela.RowCount-1;

Delete(plik,length(plik)-length(ExtractFileExt(plik))+1,length(ExtractFileExt(plik)));

if help1 mod 20 = 0 then ilosc:=help1 div 20 else ilosc:=(help1 div 20) + 1;
robic:=true;
if ilosc>10 then if MessageDlg('Iloœæ plików z zestawami bêdzie wiêksza ni¿ 10 ('+PChar(IntToSTr(ilosc))+'). Czy mimo to zapisaæ liczby do zestawów ?',mtConfirmation,[mbYes, mbNo],0)=6 then robic:=true else robic:=false;

if robic then
 begin
  list:=TStringList.Create;
  TRY
   help2:=1;
   for help1:=1 to ilosc do
    begin
     list.Clear;
     while ((help2<=help1*20) and (help2<tabela.RowCount)) do
      begin
       list.Add(tabela.cells[kolumna,help2]);
       inc(help2);
      end;
     list.SaveToFile(plik+'_'+IntToStr(help1)+'.zes');
    end;
  FINALLY
   list.Free;
  END;
 end;

end;






function czy_liczba(znak:String):boolean;
begin
if (znak>='0') and (znak<='9') then result:=true else result:=false;
end;

function wyciagnij_liczbe(linia: string): string;
var
help1:integer;
begin
help1:=1;
while (not czy_liczba(linia[help1])) do inc(help1);
result:='';
while (czy_liczba(linia[help1])) do
 begin
  result:=result+linia[help1];
  inc(help1);
 end;
end;


function ile_liczb(linia:string; MIN : word; MAX : word):word;
var
liczba:string;
ile,cyfra:integer;
help1,help2,help3:integer;
begin
  // NOWA LINIA !!!!
  if MAX = 0 then MAX := ilosc_liczb_gry;
help1:=0;
help2:=0;
help3:=0;
ile:=0;     
    help2:=0;
    help1:=1;
    help3:=length(linia);

 TRY
     while help1<help3 do
      begin
       liczba:='';
       while (not czy_liczba(linia[help1]) and (help1<help3)) do inc(help1);
       while (czy_liczba(linia[help1]) and (help1<=help3)) do
        begin
         liczba:=liczba+linia[help1];
         inc(help1);
        end;
         TRY
          cyfra:=StrToInt(liczba);
          // ZMIENIONE !!!!
          if ((cyfra >= MIN) and (cyfra <= MAX)) then inc(ile);
         EXCEPT
         END;
      end;
  EXCEPT
   ile:=0;
  // showmessage('B£¥D!');
  END;

result:=ile;

{
var
i:word;
begin
i:=1;
result:=0;
while (i<length(linia)) do
 begin
  while ((not czy_liczba(linia[i])) and (i<length(linia))) do inc(i);
  inc(result);
  inc(i);
  while ((czy_liczba(linia[i])) and (i<length(linia))) do inc(i);
 end;
}
end;


function odczytaj_liczby2(var wprowadzone : array of boolean; linia : string; MIN, MAX : integer) : integer;
var
liczba:string;
ile,cyfra:integer;
help1,help2,help3:integer;
begin
for help1:=low(wprowadzone) to high(wprowadzone) do wprowadzone[help1]:=false;
help1:=0;
help2:=0;
help3:=0;
ile:=0;

  linia := linia + ' ';

    help2:=0;
    help1:=1;
    help3:=length(linia);

 TRY
     while help1<help3 do
      begin
       liczba:='';
       while (not czy_liczba(linia[help1]) and (help1<help3)) do inc(help1);
       while (czy_liczba(linia[help1]) and (help1<=help3)) do
        begin
         liczba:=liczba+linia[help1];
         inc(help1);
        end;
         TRY
          cyfra:=StrToInt(liczba);
          if ((cyfra>= MIN) and (cyfra<=MAX) and (not wprowadzone[cyfra-1])) then begin inc(ile); wprowadzone[cyfra-1]:=true; end;
         EXCEPT
         END;
      end;
  EXCEPT
   ile:=0;
  // showmessage('B£¥D!');
  END;

result:=ile;
end;


// #################################################################################################
// Procedury i funkcje do zapisywania i wczytywania danych z pliku 'opcje.ini'

procedure zapisz_opcje(grupa, nazwa, wartosc: String);
begin
 try
   opcje:=TINIFile.Create(SCIEZKA_PROGRAM +plik_opcje);
   opcje.WriteString(grupa,nazwa,wartosc);
 finally
   opcje.Free;
 end;
end;

procedure zapisz_opcje(grupa, nazwa: String; wartosc: Integer);
begin
 try
   opcje:=TINIFile.Create(SCIEZKA_PROGRAM +plik_opcje);
   opcje.WriteInteger(grupa,nazwa,wartosc);
 finally
   opcje.Free;
 end;
end;

procedure zapisz_opcje(grupa, nazwa: String; wartosc: Real);
begin
 try
   opcje:=TINIFile.Create(SCIEZKA_PROGRAM +plik_opcje);
   opcje.WriteFloat(grupa,nazwa,wartosc);
 finally
   opcje.Free;
 end;
end;

procedure zapisz_opcje(grupa, nazwa: String; wartosc: Boolean);
begin
 try
   opcje:=TINIFile.Create(SCIEZKA_PROGRAM +plik_opcje);
   opcje.WriteBool(grupa,nazwa,wartosc);
 finally
   opcje.Free;
 end;
end;

function wczytaj_opcje(grupa, nazwa, wartosc: String):String;
begin
 try
   opcje:=TINIFile.Create(SCIEZKA_PROGRAM+plik_opcje);
   result:=opcje.ReadString(grupa,nazwa,wartosc);
 finally
   opcje.Free;
 end;
end;

function wczytaj_opcje(grupa, nazwa: String; wartosc: Integer):Integer;
begin
 try
   opcje:=TINIFile.Create(SCIEZKA_PROGRAM+plik_opcje);
   result:=opcje.ReadInteger(grupa,nazwa,wartosc);
 finally
   opcje.Free;
 end;
end;

function wczytaj_opcje(grupa, nazwa: String; wartosc: Real):Real;
begin
 try
   opcje:=TINIFile.Create(SCIEZKA_PROGRAM+plik_opcje);
   result:=opcje.ReadFloat(grupa,nazwa,wartosc);
 finally
   opcje.Free;
 end;
end;

function wczytaj_opcje(grupa, nazwa: String; wartosc: Boolean):Boolean;
begin
 try
   opcje:=TINIFile.Create(SCIEZKA_PROGRAM+plik_opcje);
   result:=opcje.ReadBool(grupa,nazwa,wartosc);
 finally
   opcje.Free;
 end;
end;

//##############################################################################
function czy_dobry_zakres(od_,do_:integer):boolean; // sprawdza czy zakres jest dobry
begin
result:=true;
if (od_>=do_) then result:=false;
if (od_<1) then result:=false;
if (do_>losowan) then result:=false;
end;

//##############################################################################
function czy_dobre_losowanie(numer:integer):boolean; // sprawdza czy numer losowanie jest w zakresie
begin
if (numer>0) and (numer<=losowan) then result:=true else result:=false;
end;

// #############################################################################
function wyciagnij_liczby(linia : String; var tab : array of word; MIN : integer = 1; MAX : integer = 0) : boolean;
  var
    ilosc : integer;
    j : integer;
    liczba : string;
    help2, help3, temp : integer;
    pominal : boolean;
begin
  if MAX = 0 then MAX := ilosc_liczb_gry;
  ilosc:=ile_liczb(linia, MIN, MAX);
  j := 0;
  if (ilosc > 0) then
    begin
      result:=true;
      help3:=0;
      while (j < ilosc) do
        begin
          help2:=help3;
          inc(help2);
          while not czy_liczba(linia[help2]) do inc(help2);
          help3:=help2;
          while czy_liczba(linia[help3]) do inc(help3);
          liczba:=copy(linia,help2,help3-help2);
          temp := StrToInt(liczba);
          if (temp >= MIN) and (temp <= MAX) then
          begin
            tab[j] := temp;
            inc(j);
          end;
        end;
    end else result:=false;
end;

end.
