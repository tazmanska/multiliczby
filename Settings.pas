unit Settings;

interface

  uses INIFiles;

  type
    TOpcje = class(TObject)
    private
      OpcjePlik : TIniFile;
    public
      constructor Create(Plik : String);
      destructor Destroy(); override;

      procedure Save(grupa, nazwa, wartosc : String); overload;
      procedure Save(grupa, nazwa : String; wartosc : Integer); overload;
      procedure Save(grupa, nazwa : String; wartosc : Double); overload;
      procedure Save(grupa, nazwa : String; wartosc : Boolean); overload;

      function Load(grupa, nazwa, wartosc : String) : String; overload;
      function Load(grupa, nazwa : String; wartosc : Integer) : Integer; overload;
      function Load(grupa, nazwa : String; wartosc : Double) : Double; overload;
      function Load(grupa, nazwa : String; wartosc : Boolean) : Boolean; overload;
  end;

implementation  

{ TOpcje }

constructor TOpcje.Create(Plik: String);
begin
  OpcjePlik := TIniFile.Create(Plik);
end;

destructor TOpcje.Destroy;
begin
  OpcjePlik.Free();
  inherited;
end;

function TOpcje.Load(grupa, nazwa: String; wartosc: Integer): Integer;
begin
  Result := OpcjePlik.ReadInteger(grupa, nazwa, wartosc);
end;

function TOpcje.Load(grupa, nazwa, wartosc: String): String;
begin
  Result := OpcjePlik.ReadString(grupa, nazwa, wartosc);
end;

function TOpcje.Load(grupa, nazwa: String; wartosc: Boolean): Boolean;
begin
  Result := OpcjePlik.ReadBool(grupa, nazwa, wartosc);
end;

function TOpcje.Load(grupa, nazwa: String; wartosc: Double): Double;
begin
  Result := OpcjePlik.ReadFloat(grupa, nazwa, wartosc);
end;

procedure TOpcje.Save(grupa, nazwa: String; wartosc: Integer);
begin
  OpcjePlik.WriteInteger(grupa, nazwa, wartosc);
end;

procedure TOpcje.Save(grupa, nazwa, wartosc: String);
begin
  OpcjePlik.WriteString(grupa, nazwa, wartosc);
end;

procedure TOpcje.Save(grupa, nazwa: String; wartosc: Boolean);
begin
  OpcjePlik.WriteBool(grupa, nazwa, wartosc);
end;

procedure TOpcje.Save(grupa, nazwa: String; wartosc: Double);
begin
  OpcjePlik.WriteFloat(grupa, nazwa, wartosc);
end;

end.
