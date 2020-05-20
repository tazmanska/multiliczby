object Form14: TForm14
  Left = 206
  Top = 145
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Kombinacje...'
  ClientHeight = 376
  ClientWidth = 631
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 352
    Width = 21
    Height = 13
    Caption = 'Od:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 120
    Top = 352
    Width = 19
    Height = 13
    Caption = 'do:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 272
    Top = 344
    Width = 89
    Height = 25
    Caption = 'Oblicz'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton5: TSpeedButton
    Left = 604
    Top = 347
    Width = 23
    Height = 22
    Hint = 'Zapisz do pliku...'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      800080800080800080800080800000000000000000000000007F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000008080008080000000000000
      0000000000000000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
      000000000000000080800000000000000000000000000000007F7F7FBFBFBF00
      0000000000BFBFBFBFBFBFBFBFBF000000000000000000008080000000000000
      0000000000000000007F7F7FBFBFBF000000000000BFBFBFBFBFBFBFBFBF0000
      000000000000000080800000000000000000000000000000007F7F7FBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000008080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000808000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008080000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000008080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000008080000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000008080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000008080000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000008080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F7F000000008080000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      000000000000000080800080800000000000000000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF0000FF000000000000008080008080}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton5Click
  end
  object SpeedButton2: TSpeedButton
    Left = 432
    Top = 344
    Width = 89
    Height = 25
    Caption = 'Podaj liczby'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Label7: TLabel
    Left = 368
    Top = 240
    Width = 49
    Height = 13
    Caption = 'Ilo'#347#263' liczb:'
  end
  object Label8: TLabel
    Left = 424
    Top = 240
    Width = 6
    Height = 13
    Caption = '?'
  end
  object Label9: TLabel
    Left = 368
    Top = 256
    Width = 75
    Height = 13
    Caption = 'Wybrane liczby:'
  end
  object Label11: TLabel
    Left = 456
    Top = 240
    Width = 78
    Height = 13
    Caption = 'Ilo'#347#263' kombinacji:'
  end
  object Label12: TLabel
    Left = 544
    Top = 240
    Width = 6
    Height = 13
    Caption = '?'
  end
  object Gauge1: TGauge
    Left = 8
    Top = 312
    Width = 617
    Height = 20
    Progress = 0
  end
  object SB_pamietaj: TSpeedButton
    Left = 0
    Top = 359
    Width = 17
    Height = 17
    Hint = 'Pami'#281'taj ustawienia'
    AllowAllUp = True
    GroupIndex = 1
    Glyph.Data = {
      E6010000424DE60100000000000036000000280000000C0000000C0000000100
      180000000000B0010000C40E0000C40E00000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      800000000000000000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F00000000808000
      8080000000000000000000000000BFBFBF000000000000BFBFBFBFBFBF000000
      000000008080000000000000000000000000BFBFBF000000000000BFBFBFBFBF
      BF000000000000008080000000000000000000000000BFBFBFBFBFBFBFBFBFBF
      BFBFBFBFBF000000000000008080000000000000000000000000000000000000
      000000000000000000000000000000008080000000000000FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFF000000000000008080000000000000FFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000008080000000000000
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000080800000
      00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000
      8080000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000
      0000000080800080800000000000FF0000FF0000FF0000FF0000FF0000FF0000
      FF000000008080008080}
    ParentShowHint = False
    ShowHint = True
  end
  object StringGrid1: TStringGrid
    Left = 3
    Top = 0
    Width = 625
    Height = 235
    ColCount = 9
    DefaultRowHeight = 20
    RowCount = 5001
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
    TabOrder = 0
    OnContextPopup = StringGrid1ContextPopup
  end
  object SpinEdit1: TSpinEdit
    Left = 48
    Top = 344
    Width = 65
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 0
    MinValue = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    Value = 1
    OnChange = SpinEdit1Change
  end
  object SpinEdit2: TSpinEdit
    Left = 144
    Top = 344
    Width = 65
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 0
    MinValue = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Value = 1
    OnChange = SpinEdit2Change
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 240
    Width = 137
    Height = 65
    Caption = ' Kombinacje '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label3: TLabel
      Left = 3
      Top = 19
      Width = 58
      Height = 13
      Caption = 'Kombinacje:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 19
      Top = 43
      Width = 42
      Height = 13
      Caption = 'Wed'#322'ug:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 110
      Top = 43
      Width = 5
      Height = 13
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 118
      Top = 43
      Width = 6
      Height = 13
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SpinEdit3: TSpinEdit
      Left = 64
      Top = 14
      Width = 41
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 10
      MinValue = 4
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Value = 4
      OnChange = SpinEdit3Change
    end
    object SpinEdit4: TSpinEdit
      Left = 64
      Top = 38
      Width = 41
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 4
      MinValue = 2
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Value = 4
    end
  end
  object GroupBox3: TGroupBox
    Left = 144
    Top = 240
    Width = 217
    Height = 65
    Caption = ' Opcje '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label18: TLabel
      Left = 8
      Top = 42
      Width = 81
      Height = 13
      Caption = 'Wy'#347'wietlaj maks.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object wyswietlaj_wynikow: TSpinEdit
      Left = 92
      Top = 34
      Width = 57
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 5000
      MinValue = 1
      ParentFont = False
      TabOrder = 0
      Value = 100
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 16
      Width = 105
      Height = 17
      Caption = 'Ka'#380'da liczba tylko'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 154
      Top = 40
      Width = 60
      Height = 17
      Caption = 'Redukuj'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object SpinEdit9: TSpinEdit
      Left = 122
      Top = 11
      Width = 41
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 5
      MinValue = 1
      ParentFont = False
      TabOrder = 3
      Value = 1
    end
  end
  object Memo1: TMemo
    Left = 368
    Top = 272
    Width = 257
    Height = 33
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 5
  end
  object PopupMenu1: TPopupMenu
    Left = 392
    Top = 344
    object Czstocimalejco1: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> malej'#261'co'
      OnClick = Czstocimalejco1Click
    end
    object Czstocirosnco1: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> rosn'#261'co'
      OnClick = Czstocirosnco1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object KopiujdoZestaww1: TMenuItem
      Caption = 'Kopiuj do Zestaw'#243'w'
      OnClick = KopiujdoZestaww1Click
    end
  end
end
