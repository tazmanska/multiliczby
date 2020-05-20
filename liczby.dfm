object Form3: TForm3
  Left = 180
  Top = 118
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pojedyncze liczby...'
  ClientHeight = 370
  ClientWidth = 610
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
    Top = 344
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
    Top = 344
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
    Left = 256
    Top = 336
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
  object SpeedButton3: TSpeedButton
    Left = 584
    Top = 344
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
    OnClick = SpeedButton3Click
  end
  object Gauge1: TGauge
    Left = 8
    Top = 304
    Width = 593
    Height = 20
    Progress = 0
  end
  object SB_pamietaj: TSpeedButton
    Left = 0
    Top = 350
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
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 593
    Height = 296
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    HotTrack = True
    MultiLine = True
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Liczby gor'#261'ce'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object StringGrid1: TStringGrid
        Left = 136
        Top = 8
        Width = 305
        Height = 235
        ColCount = 6
        DefaultColWidth = 57
        DefaultRowHeight = 20
        RowCount = 41
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ScrollBars = ssVertical
        TabOrder = 0
        OnContextPopup = StringGrid1ContextPopup
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Liczby zimne'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object StringGrid2: TStringGrid
        Left = 136
        Top = 8
        Width = 305
        Height = 235
        ColCount = 6
        DefaultColWidth = 57
        DefaultRowHeight = 20
        RowCount = 41
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ScrollBars = ssVertical
        TabOrder = 0
        OnContextPopup = StringGrid2ContextPopup
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Liczby oczekiwane'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object StringGrid3: TStringGrid
        Left = 136
        Top = 8
        Width = 305
        Height = 235
        ColCount = 6
        DefaultColWidth = 57
        DefaultRowHeight = 20
        RowCount = 41
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ScrollBars = ssVertical
        TabOrder = 0
        OnContextPopup = StringGrid3ContextPopup
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Liczby pewne'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object Label3: TLabel
        Left = 8
        Top = 32
        Width = 117
        Height = 13
        Caption = 'Oczekiwanie conajmniej:'
      end
      object Label4: TLabel
        Left = 8
        Top = 56
        Width = 111
        Height = 13
        Caption = 'Procent liczb gor'#261'cych:'
      end
      object StringGrid4: TStringGrid
        Left = 224
        Top = 8
        Width = 304
        Height = 235
        ColCount = 6
        DefaultColWidth = 57
        DefaultRowHeight = 20
        RowCount = 41
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ScrollBars = ssVertical
        TabOrder = 0
        OnContextPopup = StringGrid4ContextPopup
      end
      object SpinEdit3: TSpinEdit
        Left = 136
        Top = 28
        Width = 49
        Height = 22
        MaxValue = 100
        MinValue = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        Value = 4
        OnChange = SpinEdit2Change
      end
      object SpinEdit4: TSpinEdit
        Left = 136
        Top = 52
        Width = 49
        Height = 22
        MaxValue = 100
        MinValue = 1
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        Value = 66
        OnChange = SpinEdit2Change
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Liczby ostatnie'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 4
      ParentFont = False
      object StringGrid5: TStringGrid
        Left = 136
        Top = 8
        Width = 304
        Height = 235
        DefaultRowHeight = 20
        RowCount = 21
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ScrollBars = ssVertical
        TabOrder = 0
        OnContextPopup = StringGrid5ContextPopup
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Liczby'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 5
      ParentFont = False
      object SpeedButton2: TSpeedButton
        Left = 40
        Top = 200
        Width = 89
        Height = 25
        Caption = 'Sortuj'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton4: TSpeedButton
        Left = 216
        Top = 246
        Width = 17
        Height = 17
        Hint = 'Zapisz do pliku...'
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
        ParentFont = False
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 568
        Top = 246
        Width = 17
        Height = 17
        Hint = 'Zapisz jako zestawy...'
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
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
        ParentFont = False
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = 240
        Top = 246
        Width = 121
        Height = 18
        Caption = 'Por'#243'wnaj z losowaniem:'
        Enabled = False
        Flat = True
        OnClick = SpeedButton6Click
      end
      object StringGrid6: TStringGrid
        Left = 238
        Top = 8
        Width = 346
        Height = 235
        ColCount = 7
        DefaultColWidth = 57
        DefaultRowHeight = 20
        RowCount = 81
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ScrollBars = ssVertical
        TabOrder = 0
        OnSelectCell = StringGrid6SelectCell
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 8
        Width = 161
        Height = 145
        Caption = ' Sortuj wed'#322'ug '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object RadioButton1: TRadioButton
          Left = 16
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Liczb'
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
        object RadioButton2: TRadioButton
          Left = 16
          Top = 48
          Width = 113
          Height = 17
          Caption = 'Cz'#281'sto'#347'ci'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object RadioButton3: TRadioButton
          Left = 16
          Top = 72
          Width = 121
          Height = 17
          Caption = 'Max oczekiwania'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object RadioButton4: TRadioButton
          Left = 16
          Top = 96
          Width = 137
          Height = 17
          Caption = 'Bie'#380#261'cego oczekiwania'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object RadioButton9: TRadioButton
          Left = 16
          Top = 120
          Width = 137
          Height = 17
          Caption = 'Temperatury'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
      end
      object RadioButton5: TRadioButton
        Left = 16
        Top = 168
        Width = 65
        Height = 17
        Caption = 'Rosn'#261'co'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object RadioButton6: TRadioButton
        Left = 88
        Top = 168
        Width = 65
        Height = 17
        Caption = 'Malej'#261'co'
        TabOrder = 3
      end
      object StringGrid7: TStringGrid
        Left = 170
        Top = 8
        Width = 61
        Height = 235
        ColCount = 1
        DefaultColWidth = 40
        DefaultRowHeight = 20
        FixedCols = 0
        RowCount = 100
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goThumbTracking]
        ScrollBars = ssVertical
        TabOrder = 4
      end
      object SpinEdit5: TSpinEdit
        Left = 362
        Top = 243
        Width = 57
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        MaxValue = 0
        MinValue = 1
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        Value = 1
        OnChange = SpinEdit5Change
      end
    end
  end
  object SpinEdit1: TSpinEdit
    Left = 48
    Top = 336
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
    Value = 0
    OnChange = SpinEdit1Change
  end
  object SpinEdit2: TSpinEdit
    Left = 144
    Top = 336
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
    TabOrder = 2
    Value = 0
    OnChange = SpinEdit2Change
  end
  object RadioButton7: TRadioButton
    Left = 368
    Top = 336
    Width = 65
    Height = 17
    Caption = 'I metoda'
    Checked = True
    TabOrder = 3
    TabStop = True
  end
  object RadioButton8: TRadioButton
    Left = 440
    Top = 336
    Width = 65
    Height = 17
    Caption = 'II metoda'
    TabOrder = 4
  end
  object PopupMenu1: TPopupMenu
    Left = 512
    Top = 336
    object Liczbymalejco1: TMenuItem
      Caption = 'Liczby -> malej'#261'co'
      OnClick = Liczbymalejco1Click
    end
    object Liczbyrosnco1: TMenuItem
      Caption = 'Liczby -> rosn'#261'co'
      OnClick = Liczbyrosnco1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object SortujCzstocimalejco1: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> malej'#261'co'
      OnClick = SortujCzstocimalejco1Click
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
    object N3: TMenuItem
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
  end
  object PopupMenu2: TPopupMenu
    Left = 544
    Top = 336
    object Zapiszdoplikujakozestaw1: TMenuItem
      Caption = 'Zapisz do pliku jako zestawy'
      object N1liczbowe1: TMenuItem
        Caption = '1 liczbowe'
        OnClick = N1liczbowe1Click
      end
      object N2liczbow1: TMenuItem
        Caption = '2 liczbowe'
        OnClick = N2liczbow1Click
      end
      object N3liczbowe1: TMenuItem
        Caption = '3 liczbowe'
        OnClick = N3liczbowe1Click
      end
      object N4liczbowe1: TMenuItem
        Caption = '4 liczbowe'
        OnClick = N4liczbowe1Click
      end
      object N5liczbowe1: TMenuItem
        Caption = '5 liczbowe'
        OnClick = N5liczbowe1Click
      end
      object N6liczbowe1: TMenuItem
        Caption = '6 liczbowe'
        OnClick = N6liczbowe1Click
      end
      object N7liczbowe1: TMenuItem
        Caption = '7 liczbowe'
        OnClick = N7liczbowe1Click
      end
      object N8liczbowe1: TMenuItem
        Caption = '8 liczbowe'
        OnClick = N8liczbowe1Click
      end
      object N9liczbowe1: TMenuItem
        Caption = '9 liczbowe'
        OnClick = N9liczbowe1Click
      end
      object N10liczbowe1: TMenuItem
        Caption = '10 liczbowe'
        OnClick = N10liczbowe1Click
      end
    end
  end
end
