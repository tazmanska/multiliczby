object Form4: TForm4
  Left = 251
  Top = 163
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pary liczb...'
  ClientHeight = 370
  ClientWidth = 628
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
    Left = 32
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
    Left = 128
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
    Left = 264
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
  object SpeedButton5: TSpeedButton
    Left = 600
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
    OnClick = SpeedButton5Click
  end
  object Gauge1: TGauge
    Left = 8
    Top = 312
    Width = 609
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
    Left = 0
    Top = 8
    Width = 625
    Height = 297
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    HotTrack = True
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Pary'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object SpeedButton2: TSpeedButton
        Left = 64
        Top = 216
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
      object SpeedButton7: TSpeedButton
        Left = 586
        Top = 244
        Width = 23
        Height = 22
        Hint = 'Kopiuj do Zestaw'#243'w'
        Enabled = False
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF003333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB0333333777F3333773333330B7FFF
          FFB0333333777F3333773333330B7FFFFFB03FFFFF777FFFFF77000000000077
          007077777777777777770FFFFFFFF00077B07F33333337FFFF770FFFFFFFF000
          7BB07F3FF3FFF77FF7770F00F000F00090077F77377737777F770FFFFFFFF039
          99337F3FFFF3F7F777FF0F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton7Click
      end
      object StringGrid1: TStringGrid
        Left = 232
        Top = 8
        Width = 382
        Height = 235
        ColCount = 7
        DefaultRowHeight = 20
        RowCount = 3161
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object GroupBox1: TGroupBox
        Left = 16
        Top = 16
        Width = 185
        Height = 121
        Caption = ' Sortuj wed'#322'ug '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object RadioButton2: TRadioButton
          Left = 16
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Cz'#281'sto'#347'ci'
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
        object RadioButton3: TRadioButton
          Left = 16
          Top = 48
          Width = 121
          Height = 17
          Caption = 'Max oczekiwania'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object RadioButton4: TRadioButton
          Left = 16
          Top = 72
          Width = 153
          Height = 17
          Caption = 'Bie'#380#261'cego oczekiwania'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object RadioButton17: TRadioButton
          Left = 16
          Top = 96
          Width = 153
          Height = 17
          Caption = 'Temperatury'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object RadioButton5: TRadioButton
        Left = 40
        Top = 144
        Width = 65
        Height = 17
        Caption = 'Rosn'#261'co'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
      object RadioButton6: TRadioButton
        Left = 112
        Top = 144
        Width = 65
        Height = 17
        Caption = 'Malej'#261'co'
        TabOrder = 3
      end
      object CheckBox1: TCheckBox
        Left = 40
        Top = 168
        Width = 105
        Height = 17
        Caption = 'Ka'#380'da liczba tylko'
        TabOrder = 4
        OnClick = CheckBox1Click
      end
      object SpinEdit9: TSpinEdit
        Left = 152
        Top = 164
        Width = 41
        Height = 22
        MaxValue = 5
        MinValue = 1
        TabOrder = 5
        Value = 1
      end
      object CheckBox3: TCheckBox
        Left = 56
        Top = 192
        Width = 105
        Height = 17
        Caption = 'Sortuj tylko tabele'
        Enabled = False
        TabOrder = 6
        OnClick = CheckBox3Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pary pewne'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object StringGrid2: TStringGrid
        Left = 224
        Top = 8
        Width = 341
        Height = 235
        ColCount = 6
        DefaultRowHeight = 20
        RowCount = 100
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ScrollBars = ssVertical
        TabOrder = 0
        OnContextPopup = StringGrid2ContextPopup
      end
      object CheckBox2: TCheckBox
        Left = 40
        Top = 24
        Width = 129
        Height = 17
        Caption = 'Ka'#380'da liczba tylko raz'
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object CheckBox4: TCheckBox
        Left = 56
        Top = 48
        Width = 105
        Height = 17
        Caption = 'Sortuj tylko tabele'
        Enabled = False
        TabOrder = 2
        OnClick = CheckBox4Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Para'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object StringGrid4: TStringGrid
        Left = 296
        Top = 8
        Width = 264
        Height = 46
        ColCount = 4
        DefaultRowHeight = 20
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 233
        Height = 73
        Caption = ' Poka'#380' pare '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label3: TLabel
          Left = 16
          Top = 24
          Width = 43
          Height = 13
          Caption = 'Liczba 1:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 16
          Top = 48
          Width = 43
          Height = 13
          Caption = 'Liczba 2:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton3: TSpeedButton
          Left = 128
          Top = 24
          Width = 89
          Height = 25
          Caption = 'Poka'#380
          Flat = True
          OnClick = SpeedButton3Click
        end
        object ComboBox1: TComboBox
          Left = 64
          Top = 16
          Width = 41
          Height = 22
          Style = csOwnerDrawVariable
          DropDownCount = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31'
            '32'
            '33'
            '34'
            '35'
            '36'
            '37'
            '38'
            '39'
            '40'
            '41'
            '42'
            '43'
            '44'
            '45'
            '46'
            '47'
            '48'
            '49'
            '50'
            '51'
            '52'
            '53'
            '54'
            '55'
            '56'
            '57'
            '58'
            '59'
            '60'
            '61'
            '62'
            '63'
            '64'
            '65'
            '66'
            '67'
            '68'
            '69'
            '70'
            '71'
            '72'
            '73'
            '74'
            '75'
            '76'
            '77'
            '78'
            '79'
            '80')
        end
        object ComboBox2: TComboBox
          Left = 64
          Top = 40
          Width = 41
          Height = 22
          Style = csOwnerDrawVariable
          DropDownCount = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 1
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31'
            '32'
            '33'
            '34'
            '35'
            '36'
            '37'
            '38'
            '39'
            '40'
            '41'
            '42'
            '43'
            '44'
            '45'
            '46'
            '47'
            '48'
            '49'
            '50'
            '51'
            '52'
            '53'
            '54'
            '55'
            '56'
            '57'
            '58'
            '59'
            '60'
            '61'
            '62'
            '63'
            '64'
            '65'
            '66'
            '67'
            '68'
            '69'
            '70'
            '71'
            '72'
            '73'
            '74'
            '75'
            '76'
            '77'
            '78'
            '79'
            '80')
        end
      end
      object StringGrid5: TStringGrid
        Left = 384
        Top = 64
        Width = 177
        Height = 193
        ColCount = 4
        DefaultRowHeight = 20
        FixedCols = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        TabOrder = 2
        RowHeights = (
          20
          20
          20
          20
          20)
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Szukaj pary'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      object Label12: TLabel
        Left = 264
        Top = 248
        Width = 66
        Height = 13
        Caption = 'Znalezionych:'
      end
      object Label13: TLabel
        Left = 336
        Top = 248
        Width = 8
        Height = 13
        Caption = '?'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object StringGrid3: TStringGrid
        Left = 264
        Top = 8
        Width = 341
        Height = 235
        ColCount = 6
        DefaultRowHeight = 20
        RowCount = 3161
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ScrollBars = ssVertical
        TabOrder = 0
        OnContextPopup = StringGrid3ContextPopup
        RowHeights = (
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20)
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 16
        Width = 241
        Height = 153
        Caption = ' Szukaj par/y'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object SpeedButton4: TSpeedButton
          Left = 72
          Top = 112
          Width = 89
          Height = 25
          Caption = 'Szukaj'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton4Click
        end
        object Label6: TLabel
          Left = 24
          Top = 32
          Width = 46
          Height = 13
          Caption = 'Cz'#281'sto'#347#263':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 24
          Top = 56
          Width = 23
          Height = 13
          Caption = 'Max:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 24
          Top = 80
          Width = 64
          Height = 13
          Caption = 'Oczekiwanie:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 165
          Top = 29
          Width = 5
          Height = 13
          Caption = '-'
        end
        object Label10: TLabel
          Left = 165
          Top = 53
          Width = 5
          Height = 13
          Caption = '-'
        end
        object Label11: TLabel
          Left = 165
          Top = 77
          Width = 5
          Height = 13
          Caption = '-'
        end
        object SpinEdit3: TSpinEdit
          Left = 104
          Top = 24
          Width = 57
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 0
          Value = 0
        end
        object SpinEdit4: TSpinEdit
          Left = 176
          Top = 24
          Width = 57
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 1
          Value = 0
        end
        object SpinEdit5: TSpinEdit
          Left = 104
          Top = 48
          Width = 57
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 2
          Value = 0
        end
        object SpinEdit6: TSpinEdit
          Left = 176
          Top = 48
          Width = 57
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 3
          Value = 0
        end
        object SpinEdit7: TSpinEdit
          Left = 104
          Top = 72
          Width = 57
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 4
          Value = 0
        end
        object SpinEdit8: TSpinEdit
          Left = 176
          Top = 72
          Width = 57
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 5
          Value = 0
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = ' 1+79 '
      ImageIndex = 4
      object StringGrid6: TStringGrid
        Left = 264
        Top = 8
        Width = 341
        Height = 235
        ColCount = 6
        DefaultRowHeight = 20
        RowCount = 80
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        OnContextPopup = StringGrid6ContextPopup
        RowHeights = (
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20
          20)
      end
      object GroupBox7: TGroupBox
        Left = 40
        Top = 8
        Width = 185
        Height = 105
        Caption = ' Poka'#380' pary z liczb'#261' '
        TabOrder = 1
        object Label5: TLabel
          Left = 16
          Top = 32
          Width = 34
          Height = 13
          Caption = 'Liczba:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton6: TSpeedButton
          Left = 48
          Top = 64
          Width = 89
          Height = 25
          Caption = 'Poka'#380
          Flat = True
          OnClick = SpeedButton6Click
        end
        object ComboBox3: TComboBox
          Left = 56
          Top = 24
          Width = 41
          Height = 22
          Style = csOwnerDrawVariable
          DropDownCount = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 16
          ParentFont = False
          TabOrder = 0
          Items.Strings = (
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15'
            '16'
            '17'
            '18'
            '19'
            '20'
            '21'
            '22'
            '23'
            '24'
            '25'
            '26'
            '27'
            '28'
            '29'
            '30'
            '31'
            '32'
            '33'
            '34'
            '35'
            '36'
            '37'
            '38'
            '39'
            '40'
            '41'
            '42'
            '43'
            '44'
            '45'
            '46'
            '47'
            '48'
            '49'
            '50'
            '51'
            '52'
            '53'
            '54'
            '55'
            '56'
            '57'
            '58'
            '59'
            '60'
            '61'
            '62'
            '63'
            '64'
            '65'
            '66'
            '67'
            '68'
            '69'
            '70'
            '71'
            '72'
            '73'
            '74'
            '75'
            '76'
            '77'
            '78'
            '79'
            '80')
        end
      end
    end
  end
  object SpinEdit1: TSpinEdit
    Left = 56
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
    Value = 1
    OnChange = SpinEdit1Change
  end
  object SpinEdit2: TSpinEdit
    Left = 152
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
  object PopupMenu1: TPopupMenu
    Left = 8
    Top = 32
    object Zapiszpionowo1: TMenuItem
      Caption = 'Zapisz pionowo'
      OnClick = Zapiszpionowo1Click
    end
    object Zapiszpoziomo1: TMenuItem
      Caption = 'Zapisz poziomo'
      OnClick = Zapiszpoziomo1Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 64
    Top = 32
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
  object PopupMenu3: TPopupMenu
    Left = 328
    Top = 32
    object MenuItem1: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> malej'#261'co'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> rosn'#261'co'
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object MenuItem4: TMenuItem
      Caption = 'Max -> malej'#261'co'
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = 'Max -> rosn'#261'co'
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = '-'
    end
    object MenuItem7: TMenuItem
      Caption = 'Oczekiwanie -> malej'#261'co'
      OnClick = MenuItem7Click
    end
    object MenuItem8: TMenuItem
      Caption = 'Oczekiwanie -> rosn'#261'co'
      OnClick = MenuItem8Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object KopiujdoZestaww2: TMenuItem
      Caption = 'Kopiuj do Zestaw'#243'w'
      OnClick = KopiujdoZestaww2Click
    end
  end
  object PopupMenu4: TPopupMenu
    Left = 208
    Top = 32
    object MenuItem9: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> malej'#261'co'
      OnClick = MenuItem9Click
    end
    object MenuItem10: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> rosn'#261'co'
      OnClick = MenuItem10Click
    end
    object MenuItem11: TMenuItem
      Caption = '-'
    end
    object MenuItem12: TMenuItem
      Caption = 'Max -> malej'#261'co'
      OnClick = MenuItem12Click
    end
    object MenuItem13: TMenuItem
      Caption = 'Max -> rosn'#261'co'
      OnClick = MenuItem13Click
    end
    object MenuItem14: TMenuItem
      Caption = '-'
    end
    object MenuItem15: TMenuItem
      Caption = 'Oczekiwanie -> malej'#261'co'
      OnClick = MenuItem15Click
    end
    object MenuItem16: TMenuItem
      Caption = 'Oczekiwanie -> rosn'#261'co'
      OnClick = MenuItem16Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object KopiujdoZestaww3: TMenuItem
      Caption = 'Kopiuj do Zestaw'#243'w'
      OnClick = KopiujdoZestaww3Click
    end
  end
end
