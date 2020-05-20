unit ForumXML;

interface

uses
  Classes;  

type
  ForumWiadomoscXML = class(TObject)
  private
    content : TStringList;
  protected

  public
    function IsText(text : string) : boolean;
    function IsElement(element : string) : boolean;
    function GetElement(element : string) : string;

    constructor Create(plik : string);
    destructor Destroy(); override;
  end;

implementation

function ForumWiadomoscXML.GetElement(element : string) : string;
begin
  result := '';
  if (self.IsText('<' + element + '/>')) then
  begin
    exit;
  end;
  result := Copy(content.Text, Pos('<' + element + '>', content.Text) + length('<' + element + '>'), Pos('</' + element + '>', content.Text) - Pos('<' + element + '>', content.Text) - length('<' + element + '>'));
end;

function ForumWiadomoscXML.IsText(text : string) : boolean;
begin
  result := (pos(text, content.Text) > 0);
end;

function ForumWiadomoscXML.IsElement(element : string) : boolean;
begin
  result := (((IsText('<' + element + '>')) and (IsText('</' + element + '>'))) or (IsText('<' + element + '/>')));
end;

constructor ForumWiadomoscXML.Create(plik : string);
begin
  content := TStringList.Create();
  content.LoadFromFile(plik);
end;

destructor ForumWiadomoscXML.Destroy();
begin
  content.Free();
  inherited;
end;

end.
