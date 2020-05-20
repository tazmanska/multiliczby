unit forum_watek;

interface

uses
  Classes, ComCtrls, Dialogs, SysUtils, Download, Windows;

type
  ForumThread = class(TThread)
  private
    ilosc_nowych_postow : integer;
    stan : TStatusPanel;
    str : TStringList;

    forum : Downloader;

    status : string;
    ostatni_status : string;

    dzialaj : boolean;

    procedure UstawStan();

    procedure OnError(Sender: TObject; Error: String);
    procedure OnDone(Sender: TObject);
    procedure OnProgress(Sender: TObject; TotalSize, Readed: Integer);
    procedure OnStatus(Sender: TObject; Status: String);
  protected
    procedure Execute; override;
  public
    constructor Create( stan : TStatusPanel);
    destructor Destroy(); override;

    function GetStatus() : String;
    function GetNewPostsCount() : integer;
  end;

implementation

uses Addins, main, forum, Stale, Settings;

 { DONE 5 : sprawdzanie ilosci nowych postow na forum i wpisanie ich do paska stanu }
procedure ForumThread.Execute;
var
  lastID : integer;
  czekaj : integer;
  result : string;
begin
  czekaj := 0;
  dzialaj := true;
  while ( dzialaj) do
  begin
    Sleep(czekaj);
    lastID := Sets.Load('forum', 'lastID', 0);
    forum.Plik := GetTempFilePath();
    forum.URL := C_CHAT_URL + '?app_name=' + UpperCase(C_PROGRAM_NAZWA) + '&action=getlist&last=' + IntToStr(LastID);
    ilosc_nowych_postow := 0;
    status := 'Sprawdzam...';
    ostatni_status := 'Trwa pr�ba nawi�zania komunikacji z serwerem forum...';
    UstawStan();
    if (forum.Start()) then
    begin
      try
        if (not FileExists(forum.Plik)) then
        begin
          raise EFilerError.Create('');
        end;
        str.Clear();
        str.LoadFromFile(forum.Plik);
        result := str.Text;
        str.Clear();
        if (Length(result) > 0) and (ExtractStrings([';'], [], PChar(Result), str) > 0) then
        begin
          if (UpperCase(str[0]) = 'NEWMSGS') then
          begin
            ilosc_nowych_postow := str.Count - 1;
            status := 'Nowych: ' + IntToStr(str.Count - 1);
            ostatni_status := 'Na forum znajduje si� ' + IntToStr(str.Count - 1) + ' nowych wiadomo�ci.';
          end else
          begin
            status := 'B��d';
            ostatni_status := 'Nieznana odpowied� serwera.';
          end;
        end
        else
        begin
          status := 'B��d';
          ostatni_status := 'Nieznana odpowied� serwera.';
        end;
      except
        status := 'B��d';
        ostatni_status := 'Nie mo�na odczyta� odpowiedzi serwera.';
      end;
      try
        DeleteFile(PChar(forum.Plik));
      except
      end;
    end
    else
    begin
      ostatni_status := 'Wyst�pi� b��d podczas pr�by nawi�zania po��czenie z serwerem.';
      status := 'B��d';
    end;
    UstawStan();
    czekaj := Sets.Load('forum', 'sprawdzaj_co', 600000);
  end;
end;

constructor ForumThread.Create(stan: TStatusPanel);
begin
  inherited Create(true);
  self.Priority := tpLower;
  self.FreeOnTerminate := true;
  self.stan := stan;
  forum := Downloader.Create();
  forum.OnErrorEvent := OnError;
  forum.OnProgressEvent := OnProgress;
  forum.OnDownloadedEvent := OnDone;
  forum.OnChangeStatusEvent := OnStatus;
  str := TStringList.Create();
  ostatni_status := 'Utworzono w�tek obs�uguj�cy forum.';
end;

destructor ForumThread.Destroy();
begin
  forum.Destroy();
  str.Free();
  inherited;
end;

procedure ForumThread.OnError(Sender: TObject; Error: String);
begin
  //ostatni_status := Error;
  //ostatni_status := 'Wyst�pi� b��d podczas pr�by nawi�zania po��czenie z serwerem.';
  //status := 'B��d';
end;

procedure ForumThread.OnDone(Sender: TObject);
begin
end;

procedure ForumThread.UstawStan;
begin
  stan.Text := status;
end;

function ForumThread.GetStatus: String;
begin
  result := ostatni_status;
end;

function ForumThread.GetNewPostsCount : integer;
begin
  result := ilosc_nowych_postow;
end;

procedure ForumThread.OnProgress(Sender: TObject; TotalSize, Readed: Integer);
begin
end;

procedure ForumThread.OnStatus(Sender: TObject; Status: String);
begin
//  ostatni_status := status;
end;

end.
