object Form6: TForm6
  Left = 96
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Zestawy...'
  ClientHeight = 467
  ClientWidth = 893
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
    Top = 5
    Width = 885
    Height = 457
    TabOrder = 0
    object Gauge1: TGauge
      Left = 280
      Top = 419
      Width = 446
      Height = 28
      Progress = 0
      Visible = False
    end
    object Label1: TLabel
      Left = 35
      Top = 434
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
      Left = 131
      Top = 434
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
      Left = 456
      Top = 422
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
    object Label3: TLabel
      Left = 752
      Top = 420
      Width = 48
      Height = 13
      Caption = 'Czeka na:'
    end
    object Label4: TLabel
      Left = 576
      Top = 392
      Width = 29
      Height = 13
      Caption = 'trafie'#324
      Enabled = False
    end
    object SpeedButton8: TSpeedButton
      Left = 632
      Top = 390
      Width = 49
      Height = 19
      Caption = 'Kolor...'
      Enabled = False
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton8Click
    end
    object SB_pamietaj: TSpeedButton
      Left = 6
      Top = 432
      Width = 19
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
      Transparent = False
    end
    object Label5: TLabel
      Left = 484
      Top = 176
      Width = 218
      Height = 13
      Caption = '... tabele poka'#380#261' si'#281' po wykonaniu oblicze'#324' ...'
    end
    object Shape1: TShape
      Left = 688
      Top = 391
      Width = 18
      Height = 18
    end
    object SpinEdit1: TSpinEdit
      Left = 59
      Top = 425
      Width = 67
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
    object SpinEdit2: TSpinEdit
      Left = 155
      Top = 425
      Width = 67
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
      TabOrder = 1
      Value = 0
      OnChange = SpinEdit2Change
    end
    object StringGrid1: TStringGrid
      Left = 8
      Top = 9
      Width = 266
      Height = 361
      ColCount = 2
      DefaultColWidth = 212
      DefaultRowHeight = 16
      RowCount = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 2
      OnSelectCell = StringGrid1SelectCell
    end
    object StringGrid3: TStringGrid
      Left = 728
      Top = 8
      Width = 146
      Height = 379
      ColCount = 11
      DefaultColWidth = 30
      DefaultRowHeight = 16
      FixedCols = 0
      RowCount = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goThumbTracking]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Visible = False
      OnSelectCell = StringGrid3SelectCell
    end
    object Panel1: TPanel
      Left = 280
      Top = 8
      Width = 443
      Height = 17
      Caption = 'Raport'
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 808
      Top = 416
      Width = 41
      Height = 22
      Style = csOwnerDrawVariable
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 5
      OnChange = ComboBox1Change
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
        '10')
    end
    object CheckBox1: TCheckBox
      Left = 280
      Top = 392
      Width = 81
      Height = 17
      Caption = 'Pokazuj zera'
      TabOrder = 6
    end
    object CheckBox2: TCheckBox
      Left = 392
      Top = 392
      Width = 65
      Height = 17
      Caption = 'Zaznacz:'
      TabOrder = 7
      OnClick = CheckBox2Click
    end
    object ComboBox2: TComboBox
      Left = 528
      Top = 388
      Width = 41
      Height = 22
      Style = csOwnerDrawVariable
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 8
      OnChange = ComboBox2Change
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
        '10')
    end
    object RadioButton1: TRadioButton
      Left = 464
      Top = 392
      Width = 33
      Height = 17
      Caption = '>='
      Checked = True
      Enabled = False
      TabOrder = 9
      TabStop = True
      OnClick = ComboBox2Change
    end
    object RadioButton2: TRadioButton
      Left = 496
      Top = 392
      Width = 25
      Height = 17
      Caption = '='
      Enabled = False
      TabOrder = 10
      OnClick = ComboBox2Change
    end
    object CheckBox3: TCheckBox
      Left = 752
      Top = 392
      Width = 97
      Height = 17
      Hint = 'Sumuj trafienia'
      Caption = 'Sumuj trafienia'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = CheckBox3Click
    end
    object StringGrid2: TStringGrid
      Left = 280
      Top = 24
      Width = 442
      Height = 362
      ColCount = 2
      DefaultColWidth = 14
      DefaultRowHeight = 16
      RowCount = 20
      FixedRows = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goThumbTracking]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      Visible = False
      OnDrawCell = StringGrid2DrawCell
      OnSelectCell = StringGrid2SelectCell
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 376
      Width = 233
      Height = 41
      TabOrder = 13
      object SpeedButton5: TSpeedButton
        Left = 31
        Top = 11
        Width = 23
        Height = 22
        Hint = 'Otw'#243'rz...'
        Flat = True
        Glyph.Data = {
          E6000000424DE60000000000000076000000280000000E0000000E0000000100
          0400000000007000000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          33003333333333333300300000000333330000B7B7B7B03333000B0B7B7B7B03
          33000BB0B7B7B7B033000FBB0000000033000BFB0B0B0B0333000FBFBFBFB003
          33000BFBFBF00033330030BFBF03333333003800008333333300333333333333
          33003333333333333300}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton5Click
      end
      object SpeedButton4: TSpeedButton
        Left = 55
        Top = 11
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
        OnClick = SpeedButton4Click
      end
      object SpeedButton7: TSpeedButton
        Left = 7
        Top = 11
        Width = 23
        Height = 22
        Hint = 'Nowy plik zestaw'#243'w'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
          333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
          0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
          07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
          0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
          33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
          B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
          3BB33773333773333773B333333B3333333B7333333733333337}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton7Click
      end
      object SpeedButton9: TSpeedButton
        Left = 155
        Top = 11
        Width = 23
        Height = 22
        Hint = 'Dodaj zestaw...'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
          555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
          05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
          FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
          FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
          FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
          05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
          555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
          9055575757575757775505050505055505557575757575557555}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton9Click
      end
      object SpeedButton10: TSpeedButton
        Left = 179
        Top = 11
        Width = 23
        Height = 22
        Hint = 'Usu'#324' zaznaczony zestaw'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
          333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
          03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
          33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
          0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
          3333333337FFF7F3333333333000003333333333377777333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton10Click
      end
      object SpeedButton11: TSpeedButton
        Left = 203
        Top = 11
        Width = 23
        Height = 22
        Hint = 'Usu'#324' wszystkie zestawy...'
        Flat = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
          3333333777777777F3333330F77777703333333733F3F3F73F33330FF0808077
          0333337F37F7F7F37F33330FF0807077033333733737F73F73F330FF77808707
          703337F37F37F37F37F330FF08807807703037F37F37F37F37F700FF08808707
          700377F37337F37F377330FF778078077033373F73F7F3733733330FF0808077
          0333337F37F7F7F37F33330FF08070770333337FF7F7F7FF7F33330000000000
          03333377777777777F33330F888777770333337FFFFFFFFF7F33330000000000
          033333777777777773333333307770333333333337FFF7F33333333330000033
          3333333337777733333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton11Click
      end
    end
  end
end
