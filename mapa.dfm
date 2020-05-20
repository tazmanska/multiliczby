object Form9: TForm9
  Left = 279
  Top = 207
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Mapa rozk'#322'ad'#243'w'
  ClientHeight = 396
  ClientWidth = 658
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
  object SpeedButton6: TSpeedButton
    Left = 400
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
  object SB_pamietaj: TSpeedButton
    Left = 0
    Top = 378
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
    Width = 657
    Height = 369
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    HotTrack = True
    ParentFont = False
    Style = tsButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = ' Mapa I '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 647
        Height = 337
        TabOrder = 0
        object Label46: TLabel
          Left = 192
          Top = 132
          Width = 265
          Height = 26
          Alignment = taCenter
          Caption = 
            'Mapa I dost'#281'pna jest w odzielnym oknie. Aby wy'#347'wietli'#263' okno z ma' +
            'p'#261' kliknij poni'#380'szy przycisk.'
          WordWrap = True
        end
        object SpeedButton1: TSpeedButton
          Left = 282
          Top = 180
          Width = 85
          Height = 25
          Caption = 'Poka'#380' map'#281
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = Button1Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = ' Mapa II '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label1: TLabel
        Left = 49
        Top = 8
        Width = 6
        Height = 13
        Caption = '1'
      end
      object Label2: TLabel
        Left = 84
        Top = 8
        Width = 6
        Height = 13
        Caption = '5'
      end
      object Label3: TLabel
        Left = 117
        Top = 8
        Width = 12
        Height = 13
        Caption = '10'
      end
      object Label4: TLabel
        Left = 152
        Top = 8
        Width = 12
        Height = 13
        Caption = '15'
      end
      object Label5: TLabel
        Left = 187
        Top = 8
        Width = 12
        Height = 13
        Caption = '20'
      end
      object Label6: TLabel
        Left = 222
        Top = 8
        Width = 12
        Height = 13
        Caption = '25'
      end
      object Label7: TLabel
        Left = 257
        Top = 8
        Width = 12
        Height = 13
        Caption = '30'
      end
      object Label8: TLabel
        Left = 292
        Top = 8
        Width = 12
        Height = 13
        Caption = '35'
      end
      object Label9: TLabel
        Left = 327
        Top = 8
        Width = 12
        Height = 13
        Caption = '40'
      end
      object Label10: TLabel
        Left = 362
        Top = 8
        Width = 12
        Height = 13
        Caption = '45'
      end
      object Label11: TLabel
        Left = 397
        Top = 8
        Width = 12
        Height = 13
        Caption = '50'
      end
      object Label12: TLabel
        Left = 432
        Top = 8
        Width = 12
        Height = 13
        Caption = '55'
      end
      object Label13: TLabel
        Left = 467
        Top = 8
        Width = 12
        Height = 13
        Caption = '60'
      end
      object Label14: TLabel
        Left = 502
        Top = 8
        Width = 12
        Height = 13
        Caption = '65'
      end
      object Label15: TLabel
        Left = 537
        Top = 8
        Width = 12
        Height = 13
        Caption = '70'
      end
      object Label16: TLabel
        Left = 572
        Top = 8
        Width = 12
        Height = 13
        Caption = '75'
      end
      object Label17: TLabel
        Left = 607
        Top = 8
        Width = 12
        Height = 13
        Caption = '80'
      end
      object SpeedButton2: TSpeedButton
        Left = 280
        Top = 312
        Width = 81
        Height = 25
        Caption = 'Rysuj'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object Label18: TLabel
        Left = 16
        Top = 317
        Width = 21
        Height = 13
        Caption = 'Od:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label19: TLabel
        Left = 112
        Top = 317
        Width = 19
        Height = 13
        Caption = 'do:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object SpeedButton11: TSpeedButton
        Left = 384
        Top = 312
        Width = 81
        Height = 25
        Caption = 'Kolor...'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton11Click
      end
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 24
        Width = 640
        Height = 273
        HorzScrollBar.Style = ssHotTrack
        HorzScrollBar.Tracking = True
        VertScrollBar.Smooth = True
        VertScrollBar.Style = ssHotTrack
        VertScrollBar.Tracking = True
        BorderStyle = bsNone
        TabOrder = 0
        object Image1: TImage
          Left = 2
          Top = 0
          Width = 577
          Height = 265
          IncrementalDisplay = True
        end
      end
      object SpinEdit6: TSpinEdit
        Left = 40
        Top = 310
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
        Visible = False
        OnChange = SpinEdit6Change
      end
      object SpinEdit7: TSpinEdit
        Left = 136
        Top = 310
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
        Visible = False
        OnChange = SpinEdit7Change
      end
      object CheckBox2: TCheckBox
        Left = 480
        Top = 320
        Width = 81
        Height = 17
        Caption = 'Rysuj siatke'
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Mapa III'
      ImageIndex = 2
      ParentShowHint = False
      ShowHint = True
      object Image2: TImage
        Left = 312
        Top = 24
        Width = 301
        Height = 241
      end
      object Label42: TLabel
        Left = 224
        Top = 32
        Width = 42
        Height = 13
        Caption = 'Gor'#261'ce'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label43: TLabel
        Left = 224
        Top = 48
        Width = 35
        Height = 13
        Caption = 'Zimne'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clAqua
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label44: TLabel
        Left = 224
        Top = 64
        Width = 70
        Height = 13
        Caption = 'Oczekiwane'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label45: TLabel
        Left = 224
        Top = 80
        Width = 39
        Height = 13
        Caption = 'Pewne'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox5: TGroupBox
        Left = 16
        Top = 24
        Width = 201
        Height = 153
        Caption = ' Poka'#380' jedno losowanie '
        TabOrder = 0
        object Label20: TLabel
          Left = 24
          Top = 36
          Width = 66
          Height = 13
          Caption = 'Losowanie nr:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton10: TSpeedButton
          Left = 16
          Top = 72
          Width = 81
          Height = 25
          Caption = 'Kolor...'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton10Click
        end
        object SpeedButton3: TSpeedButton
          Left = 104
          Top = 72
          Width = 81
          Height = 25
          Caption = 'Poka'#380
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton3Click
        end
        object SpeedButton16: TSpeedButton
          Left = 104
          Top = 56
          Width = 41
          Height = 16
          Hint = 'Poka'#380' poprzednie'
          Caption = '<<<'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton16Click
        end
        object SpeedButton17: TSpeedButton
          Left = 144
          Top = 56
          Width = 41
          Height = 16
          Hint = 'Poka'#380' nast'#281'pne'
          Caption = '>>>'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton17Click
        end
        object SpinEdit8: TSpinEdit
          Left = 112
          Top = 27
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
          OnChange = SpinEdit8Change
        end
        object CheckBox1: TCheckBox
          Left = 16
          Top = 104
          Width = 81
          Height = 17
          Caption = 'Rysuj siatke'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object CheckBox3: TCheckBox
          Left = 16
          Top = 128
          Width = 105
          Height = 17
          Caption = 'Poka'#380' G, Z, O, P'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = CheckBox3Click
        end
        object SpinEdit14: TSpinEdit
          Left = 128
          Top = 123
          Width = 65
          Height = 22
          Hint = 'Z ilu losowa'#324' program ma liczy'#263' G, Z, O i P'
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 1000
          MinValue = 5
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          Value = 10
          OnChange = SpinEdit8Change
        end
      end
      object GroupBox6: TGroupBox
        Left = 16
        Top = 200
        Width = 201
        Height = 105
        Caption = ' Poka'#380' wiele losowa'#324' '
        TabOrder = 1
        object Label22: TLabel
          Left = 8
          Top = 36
          Width = 17
          Height = 13
          Caption = 'Od:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label23: TLabel
          Left = 104
          Top = 36
          Width = 15
          Height = 13
          Caption = 'do:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton12: TSpeedButton
          Left = 64
          Top = 64
          Width = 81
          Height = 25
          Caption = 'Poka'#380
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton12Click
        end
        object SpinEdit9: TSpinEdit
          Left = 32
          Top = 27
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
          Value = 0
          OnChange = SpinEdit9Change
        end
        object SpinEdit10: TSpinEdit
          Left = 128
          Top = 27
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
          OnChange = SpinEdit10Change
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Mapa IV'
      ImageIndex = 5
      object Image3: TImage
        Left = 232
        Top = 144
        Width = 401
        Height = 113
      end
      object Image4: TImage
        Left = 232
        Top = 32
        Width = 321
        Height = 105
      end
      object GroupBox7: TGroupBox
        Left = 16
        Top = 24
        Width = 201
        Height = 105
        Caption = ' Poka'#380' jedno losowanie '
        TabOrder = 0
        object Label21: TLabel
          Left = 24
          Top = 36
          Width = 66
          Height = 13
          Caption = 'Losowanie nr:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton13: TSpeedButton
          Left = 16
          Top = 72
          Width = 81
          Height = 25
          Caption = 'Kolor...'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton13Click
        end
        object SpeedButton14: TSpeedButton
          Left = 104
          Top = 72
          Width = 81
          Height = 25
          Caption = 'Poka'#380
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton14Click
        end
        object SpeedButton18: TSpeedButton
          Left = 104
          Top = 56
          Width = 41
          Height = 16
          Hint = 'Poka'#380' poprzednie'
          Caption = '<<<'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton18Click
        end
        object SpeedButton19: TSpeedButton
          Left = 144
          Top = 56
          Width = 41
          Height = 16
          Hint = 'Poka'#380' nast'#281'pne'
          Caption = '>>>'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          OnClick = SpeedButton19Click
        end
        object SpinEdit11: TSpinEdit
          Left = 112
          Top = 27
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
          Value = 0
          OnChange = SpinEdit11Change
        end
      end
      object GroupBox8: TGroupBox
        Left = 16
        Top = 136
        Width = 201
        Height = 105
        Caption = ' Poka'#380' wiele losowa'#324' '
        TabOrder = 1
        object Label24: TLabel
          Left = 8
          Top = 36
          Width = 17
          Height = 13
          Caption = 'Od:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 104
          Top = 36
          Width = 15
          Height = 13
          Caption = 'do:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object SpeedButton15: TSpeedButton
          Left = 64
          Top = 64
          Width = 81
          Height = 25
          Caption = 'Poka'#380
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          OnClick = SpeedButton15Click
        end
        object SpinEdit12: TSpinEdit
          Left = 32
          Top = 27
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
          OnChange = SpinEdit12Change
        end
        object SpinEdit13: TSpinEdit
          Left = 128
          Top = 27
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
          OnChange = SpinEdit13Change
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Mapa U-1'
      ImageIndex = 3
      object Label40: TLabel
        Left = 16
        Top = 317
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
      object Label41: TLabel
        Left = 112
        Top = 317
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
      object SpeedButton4: TSpeedButton
        Left = 264
        Top = 310
        Width = 89
        Height = 25
        Caption = 'Poka'#380
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton4Click
      end
      object SpeedButton9: TSpeedButton
        Left = 400
        Top = 310
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
        OnClick = SpeedButton9Click
      end
      object SpeedButton21: TSpeedButton
        Left = 616
        Top = 316
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
        OnClick = SpeedButton21Click
      end
      object SpinEdit4: TSpinEdit
        Left = 40
        Top = 310
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
        OnChange = SpinEdit4Change
      end
      object SpinEdit5: TSpinEdit
        Left = 136
        Top = 310
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
        OnChange = SpinEdit5Change
      end
      object StringGrid3: TStringGrid
        Left = 56
        Top = 24
        Width = 550
        Height = 235
        ColCount = 23
        DefaultColWidth = 20
        DefaultRowHeight = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Mapa U-2'
      ImageIndex = 4
      object Label28: TLabel
        Left = 16
        Top = 317
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
      object Label29: TLabel
        Left = 112
        Top = 317
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
      object SpeedButton7: TSpeedButton
        Left = 264
        Top = 310
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
        OnClick = SpeedButton7Click
      end
      object SpeedButton8: TSpeedButton
        Left = 400
        Top = 310
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
        OnClick = SpeedButton8Click
      end
      object SpeedButton20: TSpeedButton
        Left = 616
        Top = 316
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
        OnClick = SpeedButton20Click
      end
      object StringGrid2: TStringGrid
        Left = 40
        Top = 0
        Width = 569
        Height = 235
        ColCount = 25
        DefaultColWidth = 20
        DefaultRowHeight = 20
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ParentFont = False
        TabOrder = 0
      end
      object SpinEdit1: TSpinEdit
        Left = 40
        Top = 310
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
        Left = 136
        Top = 310
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
      object GroupBox1: TGroupBox
        Left = 8
        Top = 240
        Width = 433
        Height = 57
        Caption = ' Informacje '
        TabOrder = 3
        object Label26: TLabel
          Left = 296
          Top = 20
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
        object Label27: TLabel
          Left = 184
          Top = 20
          Width = 106
          Height = 13
          Caption = #346'rednia ilo'#347#263' na 1 los.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 8
          Top = 20
          Width = 129
          Height = 13
          Caption = 'Ilo'#347#263' wszystkich wyst'#261'pie'#324':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 88
          Top = 36
          Width = 75
          Height = 13
          Caption = 'Wybrane liczby:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 144
          Top = 20
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
        object Label33: TLabel
          Left = 168
          Top = 36
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
        object Label34: TLabel
          Left = 8
          Top = 36
          Width = 49
          Height = 13
          Caption = 'Ilo'#347#263' liczb:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 64
          Top = 36
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
        object Label36: TLabel
          Left = 334
          Top = 20
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
        object Label37: TLabel
          Left = 384
          Top = 20
          Width = 20
          Height = 13
          Caption = 'Min:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 360
          Top = 20
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
        object Label39: TLabel
          Left = 408
          Top = 20
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
      end
      object GroupBox2: TGroupBox
        Left = 448
        Top = 240
        Width = 161
        Height = 57
        Caption = ' Opcje '
        TabOrder = 4
        object RadioButton1: TRadioButton
          Left = 8
          Top = 16
          Width = 105
          Height = 17
          Caption = #346'rednia zestawu'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          OnClick = RadioButton1Click
        end
        object RadioButton2: TRadioButton
          Left = 8
          Top = 32
          Width = 105
          Height = 17
          Caption = #346'rednia wybrana:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = RadioButton2Click
        end
        object SpinEdit3: TSpinEdit
          Left = 112
          Top = 27
          Width = 41
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxValue = 10
          MinValue = 0
          ParentFont = False
          TabOrder = 2
          Value = 0
        end
      end
    end
  end
end
