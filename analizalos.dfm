object Form19: TForm19
  Left = 233
  Top = 182
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Analiza losowania...'
  ClientHeight = 394
  ClientWidth = 742
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
    Left = 40
    Top = 374
    Width = 124
    Height = 13
    Caption = 'Analizuj losowanie nr:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 320
    Top = 362
    Width = 89
    Height = 25
    Caption = 'Analizuj'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Gauge1: TGauge
    Left = 8
    Top = 336
    Width = 721
    Height = 20
    Progress = 0
  end
  object SB_pamietaj: TSpeedButton
    Left = 8
    Top = 368
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
  object SpinEdit1: TSpinEdit
    Left = 168
    Top = 365
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
    TabOrder = 0
    Value = 1
    OnChange = SpinEdit1Change
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 729
    Height = 321
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    HotTrack = True
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = ' Przedzia'#322'y itp. '
      object Label2: TLabel
        Left = 440
        Top = 24
        Width = 96
        Height = 13
        Caption = 'Ilo'#347#263' parzystych:'
      end
      object Label3: TLabel
        Left = 440
        Top = 40
        Width = 113
        Height = 13
        Caption = 'Ilo'#347#263' nieparzystych:'
      end
      object Label4: TLabel
        Left = 280
        Top = 8
        Width = 94
        Height = 13
        Caption = 'Ilo'#347#263' powt'#243'rze'#324':'
      end
      object Label5: TLabel
        Left = 560
        Top = 24
        Width = 8
        Height = 13
        Caption = '?'
      end
      object Label6: TLabel
        Left = 560
        Top = 40
        Width = 8
        Height = 13
        Caption = '?'
      end
      object Label7: TLabel
        Left = 400
        Top = 8
        Width = 8
        Height = 13
        Caption = '?'
      end
      object SpeedButton3: TSpeedButton
        Left = 248
        Top = 264
        Width = 15
        Height = 15
        Hint = 'Zapisz do pliku...'
        Flat = True
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
        Layout = blGlyphBottom
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 416
        Top = 264
        Width = 15
        Height = 15
        Hint = 'Zapisz do pliku...'
        Flat = True
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
        Layout = blGlyphBottom
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton4Click
      end
      object StringGrid1: TStringGrid
        Left = 0
        Top = 24
        Width = 264
        Height = 235
        ColCount = 4
        DefaultRowHeight = 20
        FixedCols = 0
        RowCount = 11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ParentFont = False
        ScrollBars = ssNone
        TabOrder = 0
      end
      object StringGrid2: TStringGrid
        Left = 280
        Top = 23
        Width = 151
        Height = 235
        ColCount = 2
        DefaultRowHeight = 20
        FixedCols = 0
        RowCount = 11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
      end
    end
    object TabSheet2: TTabSheet
      Caption = ' Ostatnie... '
      ImageIndex = 1
      object Label8: TLabel
        Left = 0
        Top = 0
        Width = 49
        Height = 13
        Caption = 'Liczby...'
      end
      object Label9: TLabel
        Left = 232
        Top = 0
        Width = 51
        Height = 13
        Caption = 'Dw'#243'jki...'
      end
      object Label10: TLabel
        Left = 464
        Top = 0
        Width = 45
        Height = 13
        Caption = 'Tr'#243'jki...'
      end
      object SpeedButton2: TSpeedButton
        Left = 429
        Top = 263
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
      object Label11: TLabel
        Left = 528
        Top = 269
        Width = 117
        Height = 13
        Caption = 'Statystyki od los. nr:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton6: TSpeedButton
        Left = 208
        Top = 0
        Width = 15
        Height = 15
        Hint = 'Zapisz do pliku...'
        Flat = True
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
        Layout = blGlyphBottom
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton6Click
      end
      object SpeedButton7: TSpeedButton
        Left = 442
        Top = 0
        Width = 15
        Height = 15
        Hint = 'Zapisz do pliku...'
        Flat = True
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
        Layout = blGlyphBottom
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton7Click
      end
      object SpeedButton8: TSpeedButton
        Left = 700
        Top = 0
        Width = 15
        Height = 15
        Hint = 'Zapisz do pliku...'
        Flat = True
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
        Layout = blGlyphBottom
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton8Click
      end
      object StringGrid3: TStringGrid
        Left = 0
        Top = 16
        Width = 225
        Height = 235
        DefaultColWidth = 47
        DefaultRowHeight = 20
        RowCount = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object StringGrid4: TStringGrid
        Left = 232
        Top = 16
        Width = 227
        Height = 235
        DefaultColWidth = 47
        DefaultRowHeight = 20
        RowCount = 191
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object StringGrid5: TStringGrid
        Left = 464
        Top = 16
        Width = 252
        Height = 235
        DefaultColWidth = 47
        DefaultRowHeight = 20
        RowCount = 1141
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 256
        Width = 185
        Height = 33
        Caption = ' Sortuj wed'#322'ug '
        TabOrder = 3
        object RadioButton1: TRadioButton
          Left = 8
          Top = 15
          Width = 49
          Height = 13
          Caption = 'Ilo'#347'ci'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object RadioButton2: TRadioButton
          Left = 64
          Top = 15
          Width = 65
          Height = 13
          Caption = 'Czekania'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object RadioButton5: TRadioButton
          Left = 134
          Top = 15
          Width = 49
          Height = 13
          Caption = 'Temp.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object RadioButton3: TRadioButton
        Left = 200
        Top = 256
        Width = 73
        Height = 17
        Caption = 'Rosn'#261'co'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object RadioButton4: TRadioButton
        Left = 200
        Top = 272
        Width = 65
        Height = 17
        Caption = 'Malej'#261'co'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object SpinEdit2: TSpinEdit
        Left = 648
        Top = 260
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
        TabOrder = 6
        Value = 0
        OnChange = SpinEdit2Change
      end
      object CheckBox1: TCheckBox
        Left = 269
        Top = 254
        Width = 105
        Height = 17
        Caption = 'Ka'#380'da liczba tylko'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = CheckBox1Click
      end
      object SpinEdit9: TSpinEdit
        Left = 378
        Top = 257
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
        TabOrder = 8
        Value = 1
      end
      object CheckBox3: TCheckBox
        Left = 272
        Top = 270
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
        TabOrder = 9
        OnClick = CheckBox3Click
      end
    end
  end
end
