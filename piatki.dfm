object Form23: TForm23
  Left = 241
  Top = 149
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pi'#261'tki...'
  ClientHeight = 401
  ClientWidth = 601
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
  object GroupBox1: TGroupBox
    Left = 4
    Top = 3
    Width = 593
    Height = 393
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 368
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
      Left = 128
      Top = 368
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
      Left = 248
      Top = 356
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
      Left = 564
      Top = 359
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
    object Label8: TLabel
      Left = 8
      Top = 48
      Width = 46
      Height = 13
      Caption = 'Max 1/3 :'
    end
    object SpeedButton2: TSpeedButton
      Left = 384
      Top = 356
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
      Top = 328
      Width = 577
      Height = 20
      Progress = 0
    end
    object SB_pamietaj: TSpeedButton
      Left = 8
      Top = 372
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
    object Label20: TLabel
      Left = 252
      Top = 362
      Width = 81
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Licz'#281' . . .'
      Visible = False
    end
    object StringGrid1: TStringGrid
      Left = 8
      Top = 8
      Width = 575
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
      Top = 248
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
        Caption = '5/5'
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
        Caption = '4/5'
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
        Caption = '3/5'
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
      Left = 56
      Top = 359
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
      Left = 152
      Top = 359
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
      Top = 248
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
        Caption = 'Max 5/5 :'
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
        Caption = 'Max 4/5 :'
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
        Caption = 'Max 3/5 :'
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
        Caption = 'Min 5/5 :'
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
        Caption = 'Min 4/5 :'
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
        Caption = 'Min 3/5 :'
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
      Top = 248
      Width = 297
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
        Left = 192
        Top = 10
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
        Left = 251
        Top = 32
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
        Left = 24
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
        Left = 24
        Top = 32
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
        Left = 24
        Top = 48
        Width = 97
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
        Left = 192
        Top = 25
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
      object CheckBox2: TCheckBox
        Left = 192
        Top = 49
        Width = 97
        Height = 17
        Caption = 'Redukuj'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object SpinEdit9: TSpinEdit
        Left = 132
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
        TabOrder = 5
        Value = 1
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 352
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
