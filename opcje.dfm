object Form22: TForm22
  Left = 264
  Top = 228
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Opcje'
  ClientHeight = 321
  ClientWidth = 605
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
  DesignSize = (
    605
    321)
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 431
    Top = 293
    Width = 81
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 519
    Top = 293
    Width = 81
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'Anuluj'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 601
    Height = 289
    ActivePage = TabSheet5
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object TabSheet4: TTabSheet
      Caption = 'Og'#243'lne'
      ImageIndex = 3
      DesignSize = (
        593
        261)
      object GroupBox6: TGroupBox
        Left = 8
        Top = 8
        Width = 575
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Domy'#347'lna gra'
        TabOrder = 0
        DesignSize = (
          575
          57)
        object RadioButton1: TRadioButton
          Left = 8
          Top = 24
          Width = 65
          Height = 17
          Caption = 'Ostatnia'
          TabOrder = 0
        end
        object RadioButton2: TRadioButton
          Left = 157
          Top = 25
          Width = 73
          Height = 16
          Anchors = [akTop]
          Caption = 'MultiLotek'
          TabOrder = 1
        end
        object RadioButton6: TRadioButton
          Left = 330
          Top = 24
          Width = 73
          Height = 17
          Anchors = [akTop]
          Caption = 'Du'#380'yLotek'
          TabOrder = 2
        end
        object RadioButton7: TRadioButton
          Left = 470
          Top = 24
          Width = 89
          Height = 17
          Anchors = [akTop, akRight]
          Caption = 'ExpressLotek'
          TabOrder = 3
        end
      end
      object GroupBox1: TGroupBox
        Left = 8
        Top = 72
        Width = 577
        Height = 57
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Dodatkowe opcje'
        TabOrder = 1
        object CheckBox1: TCheckBox
          Left = 8
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Pokazuj wizyt'#243'wk'#281
          TabOrder = 0
        end
        object CheckBox2: TCheckBox
          Left = 157
          Top = 24
          Width = 180
          Height = 17
          Caption = 'Pytaj o zako'#324'czenie przy wyj'#347'ciu'
          TabOrder = 1
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'MultiLotek'
      object GroupBox4: TGroupBox
        Left = 8
        Top = 8
        Width = 577
        Height = 49
        Caption = 'Katalog z wynikami'
        TabOrder = 0
        object SpeedButton3: TSpeedButton
          Left = 544
          Top = 15
          Width = 23
          Height = 22
          Hint = 'Wska'#380' katalog...'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            555555555555555555555555555555555555555FFFFFFFFFF555550000000000
            55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
            B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
            000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
            555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
            55555575FFF75555555555700007555555555557777555555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton3Click
        end
        object wyniki_ml: TEdit
          Left = 8
          Top = 16
          Width = 529
          Height = 21
          ReadOnly = True
          TabOrder = 0
        end
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 64
        Width = 577
        Height = 49
        Caption = 'Link do wynik'#243'w w sieci'
        TabOrder = 1
        object url_ml: TEdit
          Left = 8
          Top = 16
          Width = 561
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox7: TGroupBox
        Left = 8
        Top = 120
        Width = 577
        Height = 41
        Caption = 'Inne'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label10: TLabel
          Left = 8
          Top = 16
          Width = 86
          Height = 13
          Caption = 'Op'#322'ata za zak'#322'ad:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object oplata_ml: TEdit
          Left = 104
          Top = 12
          Width = 57
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Du'#380'yLotek'
      ImageIndex = 1
      object GroupBox8: TGroupBox
        Left = 8
        Top = 8
        Width = 577
        Height = 49
        Caption = 'Katalog z wynikami'
        TabOrder = 0
        object SpeedButton4: TSpeedButton
          Left = 544
          Top = 15
          Width = 23
          Height = 22
          Hint = 'Wska'#380' katalog...'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            555555555555555555555555555555555555555FFFFFFFFFF555550000000000
            55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
            B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
            000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
            555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
            55555575FFF75555555555700007555555555557777555555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton4Click
        end
        object wyniki_dl: TEdit
          Left = 8
          Top = 16
          Width = 529
          Height = 21
          ReadOnly = True
          TabOrder = 0
        end
      end
      object GroupBox9: TGroupBox
        Left = 8
        Top = 64
        Width = 577
        Height = 49
        Caption = 'Link do wynik'#243'w w sieci'
        TabOrder = 1
        object url_dl: TEdit
          Left = 8
          Top = 16
          Width = 561
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox11: TGroupBox
        Left = 8
        Top = 120
        Width = 577
        Height = 41
        Caption = 'Inne'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label16: TLabel
          Left = 8
          Top = 16
          Width = 86
          Height = 13
          Caption = 'Op'#322'ata za zak'#322'ad:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object oplata_dl: TEdit
          Left = 104
          Top = 12
          Width = 57
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'ExpressLotek'
      ImageIndex = 2
      object GroupBox12: TGroupBox
        Left = 8
        Top = 8
        Width = 577
        Height = 49
        Caption = 'Katalog z wynikami'
        TabOrder = 0
        object SpeedButton5: TSpeedButton
          Left = 544
          Top = 15
          Width = 23
          Height = 22
          Hint = 'Wska'#380' katalog...'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            555555555555555555555555555555555555555FFFFFFFFFF555550000000000
            55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
            B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
            000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
            555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
            55555575FFF75555555555700007555555555557777555555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton5Click
        end
        object wyniki_el: TEdit
          Left = 8
          Top = 16
          Width = 529
          Height = 21
          ReadOnly = True
          TabOrder = 0
        end
      end
      object GroupBox13: TGroupBox
        Left = 8
        Top = 64
        Width = 577
        Height = 49
        Caption = 'Link do wynik'#243'w w sieci'
        TabOrder = 1
        object url_el: TEdit
          Left = 8
          Top = 16
          Width = 561
          Height = 21
          TabOrder = 0
        end
      end
      object GroupBox15: TGroupBox
        Left = 8
        Top = 120
        Width = 577
        Height = 41
        Caption = 'Inne'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label22: TLabel
          Left = 8
          Top = 16
          Width = 86
          Height = 13
          Caption = 'Op'#322'ata za zak'#322'ad:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object oplata_el: TEdit
          Left = 104
          Top = 12
          Width = 57
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Eksport'
      ImageIndex = 4
      object GroupBox10: TGroupBox
        Left = 8
        Top = 8
        Width = 577
        Height = 49
        Caption = 'Domy'#347'lny katalog'
        TabOrder = 0
        object SpeedButton6: TSpeedButton
          Left = 544
          Top = 15
          Width = 23
          Height = 22
          Hint = 'Wska'#380' katalog...'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            5555555555555555555555555555555555555555555555555555555555555555
            555555555555555555555555555555555555555FFFFFFFFFF555550000000000
            55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
            B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
            000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
            555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
            55555575FFF75555555555700007555555555557777555555555555555555555
            5555555555555555555555555555555555555555555555555555}
          NumGlyphs = 2
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton6Click
        end
        object katalog_raporty: TEdit
          Left = 8
          Top = 16
          Width = 529
          Height = 21
          ReadOnly = True
          TabOrder = 0
        end
      end
      object GroupBox14: TGroupBox
        Left = 8
        Top = 64
        Width = 577
        Height = 57
        Caption = 'Opcje'
        TabOrder = 1
        object CheckBox4: TCheckBox
          Left = 16
          Top = 24
          Width = 113
          Height = 17
          Caption = 'Zapis rozszerzony'
          TabOrder = 0
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Forum'
      ImageIndex = 5
      object GroupBox2: TGroupBox
        Left = 8
        Top = 8
        Width = 577
        Height = 57
        Caption = 'Og'#243'lne'
        TabOrder = 0
        object Label2: TLabel
          Left = 272
          Top = 24
          Width = 28
          Height = 13
          Caption = 'minut.'
        end
        object SpinEdit1: TSpinEdit
          Left = 206
          Top = 20
          Width = 57
          Height = 22
          MaxValue = 100
          MinValue = 1
          TabOrder = 0
          Value = 5
        end
        object CheckBox3: TCheckBox
          Left = 24
          Top = 24
          Width = 180
          Height = 17
          Hint = 'Zmiana tej opcji wymaga restartu programu aby by'#322'a zastosowana.'
          Caption = 'Sprawdzaj czy s'#261' nowe posty co'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = CheckBox3Click
        end
      end
      object GroupBox3: TGroupBox
        Left = 8
        Top = 72
        Width = 577
        Height = 177
        Caption = 'Automatyczny podpis pod wiadomo'#347'ci'#261
        TabOrder = 1
        object Memo1: TMemo
          Left = 8
          Top = 16
          Width = 561
          Height = 153
          Font.Charset = EASTEUROPE_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          ScrollBars = ssVertical
          TabOrder = 0
        end
      end
    end
  end
end
