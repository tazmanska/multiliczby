object Form29: TForm29
  Left = 213
  Top = 153
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Uk'#322'ady...'
  ClientHeight = 363
  ClientWidth = 541
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
    Left = 8
    Top = 0
    Width = 185
    Height = 113
    Caption = ' Zestaw '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 16
      Width = 41
      Height = 13
      Caption = 'Liczby:'
    end
    object Label2: TLabel
      Left = 56
      Top = 16
      Width = 121
      Height = 57
      AutoSize = False
      Caption = '?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object SpeedButton1: TSpeedButton
      Left = 56
      Top = 80
      Width = 81
      Height = 25
      Caption = 'Podaj'
      Flat = True
      OnClick = SpeedButton1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 200
    Top = 0
    Width = 337
    Height = 113
    Caption = ' Sprawd'#378' uk'#322'ad '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label3: TLabel
      Left = 8
      Top = 24
      Width = 97
      Height = 13
      Caption = 'D'#322'ugo'#347#263' uk'#322'adu:'
    end
    object Label4: TLabel
      Left = 8
      Top = 53
      Width = 40
      Height = 13
      Caption = 'Uk'#322'ad:'
    end
    object Label5: TLabel
      Left = 102
      Top = 53
      Width = 5
      Height = 13
      Caption = '-'
    end
    object Label6: TLabel
      Left = 158
      Top = 53
      Width = 5
      Height = 13
      Caption = '-'
    end
    object Label7: TLabel
      Left = 214
      Top = 53
      Width = 5
      Height = 13
      Caption = '-'
    end
    object Label8: TLabel
      Left = 270
      Top = 53
      Width = 5
      Height = 13
      Caption = '-'
    end
    object SpeedButton2: TSpeedButton
      Left = 128
      Top = 80
      Width = 81
      Height = 25
      Caption = 'Sprawd'#378
      Flat = True
      OnClick = SpeedButton2Click
    end
    object sdlugosc_u: TSpinEdit
      Left = 112
      Top = 19
      Width = 49
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 5
      MinValue = 2
      ParentFont = False
      TabOrder = 0
      Value = 2
      OnChange = sdlugosc_uChange
    end
    object suklad_1: TSpinEdit
      Left = 56
      Top = 48
      Width = 41
      Height = 22
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 10
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 1
    end
    object suklad_2: TSpinEdit
      Left = 112
      Top = 48
      Width = 41
      Height = 22
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 10
      MinValue = 0
      ParentFont = False
      TabOrder = 2
      Value = 1
    end
    object suklad_3: TSpinEdit
      Left = 168
      Top = 48
      Width = 41
      Height = 22
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 10
      MinValue = 0
      ParentFont = False
      TabOrder = 3
      Value = 1
    end
    object suklad_4: TSpinEdit
      Left = 224
      Top = 48
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
      TabOrder = 4
      Value = 1
    end
    object suklad_5: TSpinEdit
      Left = 280
      Top = 48
      Width = 41
      Height = 22
      Hint = 'Ostatnia ilosc liczb'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 10
      MinValue = 0
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      Value = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 120
    Width = 257
    Height = 241
    Caption = ' Raport '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object SpeedButton5: TSpeedButton
      Left = 232
      Top = 0
      Width = 15
      Height = 17
      Hint = 'Zapisz raport do pliku...'
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
      ParentShowHint = False
      ShowHint = True
      Transparent = False
      OnClick = SpeedButton5Click
    end
    object lraport: TListBox
      Left = 8
      Top = 16
      Width = 241
      Height = 217
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 272
    Top = 120
    Width = 265
    Height = 137
    Caption = ' Sprawd'#378' uk'#322'ady '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Label9: TLabel
      Left = 8
      Top = 24
      Width = 106
      Height = 13
      Caption = 'D'#322'ugo'#347#263' uk'#322'ad'#243'w:'
    end
    object Label10: TLabel
      Left = 8
      Top = 48
      Width = 76
      Height = 13
      Caption = 'Max warto'#347#263':'
    end
    object Label11: TLabel
      Left = 8
      Top = 72
      Width = 73
      Height = 13
      Caption = 'Min warto'#347#263':'
    end
    object SpeedButton3: TSpeedButton
      Left = 96
      Top = 104
      Width = 81
      Height = 25
      Caption = 'Sprawd'#378
      Flat = True
      OnClick = SpeedButton3Click
    end
    object sdlugosc_u2: TSpinEdit
      Left = 120
      Top = 19
      Width = 49
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 5
      MinValue = 2
      ParentFont = False
      TabOrder = 0
      Value = 2
    end
    object smax_u: TSpinEdit
      Left = 88
      Top = 43
      Width = 49
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 10
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 2
    end
    object smin_u: TSpinEdit
      Left = 88
      Top = 67
      Width = 49
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
  object GroupBox5: TGroupBox
    Left = 272
    Top = 320
    Width = 265
    Height = 41
    Caption = ' Zakres '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Label12: TLabel
      Left = 32
      Top = 19
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
    object Label13: TLabel
      Left = 128
      Top = 19
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
    object SpinEdit1: TSpinEdit
      Left = 56
      Top = 13
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
    object SpinEdit2: TSpinEdit
      Left = 152
      Top = 13
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
      TabOrder = 1
      Value = 0
      OnChange = SpinEdit2Change
    end
  end
  object GroupBox6: TGroupBox
    Left = 272
    Top = 264
    Width = 265
    Height = 49
    Caption = ' Sprawd'#378' aktualne uk'#322'ady '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    object SpeedButton4: TSpeedButton
      Left = 96
      Top = 16
      Width = 81
      Height = 25
      Caption = 'Sprawd'#378
      Flat = True
      OnClick = SpeedButton4Click
    end
  end
end
