object Form10: TForm10
  Left = 213
  Top = 126
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Dw'#243'jki z tr'#243'jki...'
  ClientHeight = 407
  ClientWidth = 567
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object _okno: TGroupBox
    Left = 5
    Top = 2
    Width = 558
    Height = 402
    TabOrder = 0
    object Label20: TLabel
      Left = 236
      Top = 373
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Licz'#281' . . .'
      Visible = False
    end
    object Label1: TLabel
      Left = 24
      Top = 375
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
      Top = 375
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
      Left = 232
      Top = 367
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
      Left = 524
      Top = 367
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
    object Label6: TLabel
      Left = 8
      Top = 23
      Width = 46
      Height = 13
      Caption = 'Max 3/3 :'
    end
    object Label7: TLabel
      Left = 8
      Top = 39
      Width = 46
      Height = 13
      Caption = 'Max 2/3 :'
    end
    object Label8: TLabel
      Left = 8
      Top = 55
      Width = 46
      Height = 13
      Caption = 'Max 1/3 :'
    end
    object SpeedButton2: TSpeedButton
      Left = 416
      Top = 367
      Width = 89
      Height = 25
      Caption = 'Podaj liczby'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object Gauge1: TGauge
      Left = 8
      Top = 335
      Width = 537
      Height = 20
      Progress = 0
    end
    object SB_pamietaj: TSpeedButton
      Left = 4
      Top = 380
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
      Left = 8
      Top = 15
      Width = 540
      Height = 235
      ColCount = 12
      DefaultRowHeight = 20
      RowCount = 101
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
      ScrollBars = ssVertical
      TabOrder = 0
      OnContextPopup = StringGrid1ContextPopup
      ColWidths = (
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64
        64)
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 255
      Width = 73
      Height = 73
      Caption = ' Wed'#322'ug '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object RadioButton4: TRadioButton
        Left = 16
        Top = 16
        Width = 41
        Height = 17
        Caption = '3/3'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
      end
      object RadioButton5: TRadioButton
        Left = 16
        Top = 32
        Width = 41
        Height = 17
        Caption = '2/3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object RadioButton6: TRadioButton
        Left = 16
        Top = 48
        Width = 41
        Height = 17
        Caption = '1/3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
    end
    object SpinEdit1: TSpinEdit
      Left = 48
      Top = 367
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
      Value = 0
      OnChange = SpinEdit1Change
    end
    object SpinEdit2: TSpinEdit
      Left = 144
      Top = 367
      Width = 65
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Value = 0
      OnChange = SpinEdit2Change
    end
    object GroupBox3: TGroupBox
      Left = 88
      Top = 255
      Width = 193
      Height = 73
      Caption = ' Dodatkowe informacje '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      object Label3: TLabel
        Left = 8
        Top = 16
        Width = 46
        Height = 13
        Caption = 'Max 3/3 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 32
        Width = 46
        Height = 13
        Caption = 'Max 2/3 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 48
        Width = 46
        Height = 13
        Caption = 'Max 1/3 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 104
        Top = 16
        Width = 43
        Height = 13
        Caption = 'Min 3/3 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TLabel
        Left = 104
        Top = 32
        Width = 43
        Height = 13
        Caption = 'Min 2/3 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 104
        Top = 48
        Width = 43
        Height = 13
        Caption = 'Min 1/3 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 56
        Top = 16
        Width = 6
        Height = 13
        Caption = '?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 56
        Top = 32
        Width = 6
        Height = 13
        Caption = '?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 56
        Top = 48
        Width = 6
        Height = 13
        Caption = '?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 152
        Top = 16
        Width = 6
        Height = 13
        Caption = '?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 152
        Top = 32
        Width = 6
        Height = 13
        Caption = '?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 152
        Top = 48
        Width = 6
        Height = 13
        Caption = '?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object GroupBox4: TGroupBox
      Left = 288
      Top = 255
      Width = 257
      Height = 73
      Caption = ' Opcje '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      object Label18: TLabel
        Left = 160
        Top = 13
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
      object Label19: TLabel
        Left = 224
        Top = 38
        Width = 22
        Height = 13
        Caption = 'wyn.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
        TabOrder = 0
        OnClick = CheckBox1Click
      end
      object RadioButton3: TRadioButton
        Left = 8
        Top = 50
        Width = 113
        Height = 17
        Caption = 'Wszystkie 80 liczb'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        OnClick = RadioButton3Click
      end
      object RadioButton7: TRadioButton
        Left = 136
        Top = 52
        Width = 113
        Height = 17
        Caption = 'Wybrane liczby'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = RadioButton7Click
      end
      object wyswietlaj_wynikow: TSpinEdit
        Left = 160
        Top = 30
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
        TabOrder = 3
        Value = 100
      end
      object CheckBox3: TCheckBox
        Left = 16
        Top = 32
        Width = 105
        Height = 17
        Caption = 'Sortuj tylko tabele'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = CheckBox3Click
      end
      object SpinEdit9: TSpinEdit
        Left = 114
        Top = 11
        Width = 41
        Height = 22
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxValue = 5
        MinValue = 1
        ParentFont = False
        TabOrder = 4
        Value = 1
      end
    end
    object Button1: TButton
      Left = 328
      Top = 367
      Width = 75
      Height = 25
      Caption = 'ZAPISZ'
      TabOrder = 6
      Visible = False
      OnClick = Button1Click
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 368
    Top = 360
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
    object Maxmalejco1: TMenuItem
      Caption = 'Max -> malej'#261'co'
      OnClick = Maxmalejco1Click
    end
    object Maxrosnco1: TMenuItem
      Caption = 'Max -> rosn'#261'co'
      OnClick = Maxrosnco1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Oczekiwaniemalejco1: TMenuItem
      Caption = 'Oczekiwanie -> malej'#261'co'
      OnClick = Oczekiwaniemalejco1Click
    end
    object Oczekiwanierosnco1: TMenuItem
      Caption = 'Oczekiwanie -> rosn'#261'co'
      OnClick = Oczekiwanierosnco1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object KopiujdoZestaww1: TMenuItem
      Caption = 'Kopiuj do Zestaw'#243'w'
      OnClick = KopiujdoZestaww1Click
    end
  end
end
