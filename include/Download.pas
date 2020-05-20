unit Download;

interface

uses
  ComCtrls, Windows, WinInet, Classes, SysUtils;

type

  TOnProgressEvent = procedure(Sender: TObject; TotalSize, Readed: Integer) of object;
  TOnDownloadedEvent = procedure(Sender: TObject) of object;
  TOnErrorEvent = procedure(Sender: TObject; Error: String) of object;
  TOnChangeStatusEvent = procedure(Sender: TObject; Status: String) of object;

  Downloader = class(TObject)
  private

    cancel : boolean;
    result : boolean;
    working : boolean;
    error : string;
    lastFile : string;

    OnProgressE : TOnProgressEvent;
    OnDowloadedE : TOnDownloadedEvent;
    OnErrorE : TOnErrorEvent;
    OnChangeStatusE : TOnChangeStatusEvent;

    procedure DownloadFile(const URL: String; FileName: String);

  protected

  public

    URL : string;
    Plik : string;
    Cache : boolean;

    constructor Create();

    procedure Stop();

    function Start() : boolean;
    function LastError() : string;
    function Downloading() : boolean;

    property OnProgressEvent: TOnProgressEvent read OnProgressE write OnProgressE;
    property OnDownloadedEvent: TOnDownloadedEvent read OnDowloadedE write OnDowloadedE;
    property OnErrorEvent: TOnErrorEvent read OnErrorE write OnErrorE;
    property OnChangeStatusEvent: TOnChangeStatusEvent read OnChangeStatusE write OnChangeStatusE;

  end;

implementation

uses Stale;

constructor Downloader.Create();
begin
  inherited Create();
  Self.working := false;
  Self.error := '';
  Self.cancel := false;
  Self.Cache := false;
end;

function Downloader.Start() : boolean;
begin
  if (Self.working) then
  begin
    Self.error := 'Obiekt jest u¿ywany.';
    result := false;
    Exit;
  end;
  Self.error := '';
  Self.working := true;
  Self.cancel := false;
  Self.DownloadFile(Self.URL, Self.Plik);
  Self.working := false;
  result := (Self.result = true);// and (res = S_OK);

  if (not Self.Cache) and (Self.Plik <> Self.lastFile) then
  begin
    try
      DeleteFile(PChar(Self.lastFile));
    except
    end;
  end;
end;

procedure Downloader.Stop();
begin
  if (Self.working) then
  begin
    Self.cancel := true;
  end;
end;

function Downloader.LastError() : string;
begin
  result := Self.error;
end;

function Downloader.Downloading() : boolean;
begin
  result := Self.working;
end;


procedure Downloader.DownloadFile(const URL: String; FileName: String);
var
  Buffer : array[1..1024] of Byte; // bufor zawieraj¹cy œci¹gniêty fragment pliku
  hSession, hURL : HINTERNET;
  dwRead : DWORD; // iloœæ odczytanych danych
  dwSize : integer;  // rozmiar pliku
  F : File;
  pBuf : Pointer;
  dwBufLen : DWORD;
  dwIndex : DWORD;
  TotalRead : Integer;
begin
  hSession := InternetOpen(C_PROGRAM_NAZWA, INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);
  Self.OnChangeStatusE(Self, '£¹czenie z serwerem...');
  Self.result := false;

  try
    hURL := InternetOpenURL(hSession, PChar(URL), nil, 0, INTERNET_FLAG_RELOAD, 0);
    Self.OnChangeStatusE(Self, 'Czekanie na odpowiedŸ...');

    dwBufLen := 1024;
    dwIndex := 0;
    GetMem(pBuf, dwBufLen);

    HttpQueryInfo(hURL, HTTP_QUERY_CONTENT_LENGTH, pBuf, dwBufLen, dwIndex);
    dwSize := StrToIntDef(StrPas(pBuf), -1);

    if (dwSize > 0) then
    begin
      Self.OnChangeStatusE(Self, 'Pobrano wielkoœæ pliku...');
      Self.OnProgressE(Self, dwSize, 0);

      FreeMem(pBuf, dwBufLen);

      try
        AssignFile(F, FileName);
        try
          Rewrite(F, 1);
          TotalRead := 0;
          repeat
            if Self.cancel then
            begin
              Self.result := false;
              Self.error := 'Operacja zosta³a anulowana.';
              Self.OnErrorE(Self, Self.error);
              Break;
            end;


            InternetReadFile(hURL, @Buffer, SizeOf(Buffer), dwRead);
            BlockWrite(F, Buffer, dwRead); // zapisanie buforu do pliku
            TotalRead := TotalRead + dwRead;

            Self.OnChangeStatusE(Self, 'Pobieram plik...');
            Self.OnProgressE(Self, dwSize, TotalRead);
          until dwRead = 0;
          Self.result := not Self.cancel;
        finally
          CloseFile(F);
        end;
      finally
        InternetCloseHandle(hSession);
      end;
    end
    else
    begin
      Self.result := false;
      Self.error := '¯¹dany plik ma zerow¹ d³ugoœæ (brak pliku lub brak po³¹czenia z internetem).';
      Self.OnErrorE(Self, Self.error);
    end;
  finally
    InternetCloseHandle(hURL);
  end;
  Self.OnChangeStatusE(Self, 'Zakoñczono pobieranie.');
end;

end.
