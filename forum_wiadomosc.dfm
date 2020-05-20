object forum_nowa_wiadomosc: Tforum_nowa_wiadomosc
  Left = 174
  Top = 211
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Nowa wiadomo'#347#263
  ClientHeight = 435
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poOwnerFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 649
    Height = 385
    Caption = ' Wiadomo'#347#263' na forum '
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 28
      Height = 13
      Caption = 'Autor:'
    end
    object Label2: TLabel
      Left = 8
      Top = 56
      Width = 33
      Height = 13
      Caption = 'Temat:'
    end
    object Label3: TLabel
      Left = 8
      Top = 88
      Width = 30
      Height = 13
      Caption = 'Tre'#347#263':'
    end
    object wiadomosc_memo: TMemo
      Left = 8
      Top = 104
      Width = 633
      Height = 273
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
      OnKeyPress = Edit1KeyPress
    end
    object Edit1: TEdit
      Left = 56
      Top = 19
      Width = 217
      Height = 21
      MaxLength = 255
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 56
      Top = 51
      Width = 585
      Height = 21
      MaxLength = 255
      TabOrder = 1
      OnKeyPress = Edit1KeyPress
    end
  end
  object Button1: TButton
    Left = 348
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Anuluj'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 228
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Wy'#347'lij'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object forum_msg: TIdHTTP
    AuthRetries = 0
    AuthProxyRetries = 0
    AllowCookies = False
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = 0
    Request.ContentType = 'application/x-www-form-urlencoded'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.Host = 'http://www.angus.foxnet.pl/'
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 8
    Top = 400
  end
end
