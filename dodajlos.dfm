object Form8: TForm8
  Left = 285
  Top = 183
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Dodaj losowanie'
  ClientHeight = 436
  ClientWidth = 449
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 123
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Zapisz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 251
    Top = 400
    Width = 75
    Height = 25
    Caption = 'Anuluj'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 433
    Height = 297
    Caption = 'Wylosowane liczby'
    TabOrder = 0
    object Label9: TLabel
      Left = 24
      Top = 210
      Width = 385
      Height = 17
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label8: TLabel
      Left = 104
      Top = 269
      Width = 12
      Height = 13
      Caption = '??'
    end
    object Label6: TLabel
      Left = 163
      Top = 16
      Width = 73
      Height = 13
      Caption = 'Wybra'#322'e'#347' liczb:'
    end
    object Label7: TLabel
      Left = 243
      Top = 16
      Width = 27
      Height = 13
      Caption = 'ilosc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton3: TSpeedButton
      Left = 400
      Top = 16
      Width = 23
      Height = 22
      Hint = 'Odznacz wszystkie'
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
      OnClick = SpeedButton3Click
    end
    object Label10: TLabel
      Left = 16
      Top = 269
      Width = 80
      Height = 13
      Caption = 'Wpisanych liczb:'
    end
    object SpeedButton4: TSpeedButton
      Left = 393
      Top = 264
      Width = 23
      Height = 22
      Hint = 'Sprawd'#378' i zaznacz wpisane liczby'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton4Click
    end
    object CheckBox1: TCheckBox
      Tag = 1
      Left = 32
      Top = 40
      Width = 33
      Height = 17
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Tag = 2
      Left = 32
      Top = 56
      Width = 33
      Height = 17
      Caption = '2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = CheckBox1Click
    end
    object CheckBox3: TCheckBox
      Tag = 3
      Left = 32
      Top = 72
      Width = 33
      Height = 17
      Caption = '3'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = CheckBox1Click
    end
    object CheckBox4: TCheckBox
      Tag = 4
      Left = 32
      Top = 88
      Width = 33
      Height = 17
      Caption = '4'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = CheckBox1Click
    end
    object CheckBox5: TCheckBox
      Tag = 5
      Left = 32
      Top = 104
      Width = 33
      Height = 17
      Caption = '5'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object CheckBox6: TCheckBox
      Tag = 6
      Left = 32
      Top = 120
      Width = 33
      Height = 17
      Caption = '6'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnClick = CheckBox1Click
    end
    object CheckBox7: TCheckBox
      Tag = 7
      Left = 32
      Top = 136
      Width = 33
      Height = 17
      Caption = '7'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = CheckBox1Click
    end
    object CheckBox8: TCheckBox
      Tag = 8
      Left = 32
      Top = 152
      Width = 33
      Height = 17
      Caption = '8'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = CheckBox1Click
    end
    object CheckBox9: TCheckBox
      Tag = 9
      Left = 32
      Top = 168
      Width = 33
      Height = 17
      Caption = '9'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = CheckBox1Click
    end
    object CheckBox10: TCheckBox
      Tag = 10
      Left = 32
      Top = 184
      Width = 33
      Height = 17
      Caption = '10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = CheckBox1Click
    end
    object CheckBox11: TCheckBox
      Tag = 11
      Left = 80
      Top = 40
      Width = 33
      Height = 17
      Caption = '11'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = CheckBox1Click
    end
    object CheckBox12: TCheckBox
      Tag = 12
      Left = 80
      Top = 56
      Width = 33
      Height = 17
      Caption = '12'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      OnClick = CheckBox1Click
    end
    object CheckBox13: TCheckBox
      Tag = 13
      Left = 80
      Top = 72
      Width = 33
      Height = 17
      Caption = '13'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = CheckBox1Click
    end
    object CheckBox14: TCheckBox
      Tag = 14
      Left = 80
      Top = 88
      Width = 33
      Height = 17
      Caption = '14'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = CheckBox1Click
    end
    object CheckBox15: TCheckBox
      Tag = 15
      Left = 80
      Top = 104
      Width = 33
      Height = 17
      Caption = '15'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = CheckBox1Click
    end
    object CheckBox16: TCheckBox
      Tag = 16
      Left = 80
      Top = 120
      Width = 33
      Height = 17
      Caption = '16'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = CheckBox1Click
    end
    object CheckBox17: TCheckBox
      Tag = 17
      Left = 80
      Top = 136
      Width = 33
      Height = 17
      Caption = '17'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 16
      OnClick = CheckBox1Click
    end
    object CheckBox18: TCheckBox
      Tag = 18
      Left = 80
      Top = 152
      Width = 33
      Height = 17
      Caption = '18'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 17
      OnClick = CheckBox1Click
    end
    object CheckBox19: TCheckBox
      Tag = 19
      Left = 80
      Top = 168
      Width = 33
      Height = 17
      Caption = '19'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 18
      OnClick = CheckBox1Click
    end
    object CheckBox20: TCheckBox
      Tag = 20
      Left = 80
      Top = 184
      Width = 33
      Height = 17
      Caption = '20'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 19
      OnClick = CheckBox1Click
    end
    object CheckBox21: TCheckBox
      Tag = 21
      Left = 128
      Top = 40
      Width = 33
      Height = 17
      Caption = '21'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 20
      OnClick = CheckBox1Click
    end
    object CheckBox22: TCheckBox
      Tag = 22
      Left = 128
      Top = 56
      Width = 33
      Height = 17
      Caption = '22'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 21
      OnClick = CheckBox1Click
    end
    object CheckBox23: TCheckBox
      Tag = 23
      Left = 128
      Top = 72
      Width = 33
      Height = 17
      Caption = '23'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 22
      OnClick = CheckBox1Click
    end
    object CheckBox24: TCheckBox
      Tag = 24
      Left = 128
      Top = 88
      Width = 33
      Height = 17
      Caption = '24'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 23
      OnClick = CheckBox1Click
    end
    object CheckBox25: TCheckBox
      Tag = 25
      Left = 128
      Top = 104
      Width = 33
      Height = 17
      Caption = '25'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 24
      OnClick = CheckBox1Click
    end
    object CheckBox26: TCheckBox
      Tag = 26
      Left = 128
      Top = 120
      Width = 33
      Height = 17
      Caption = '26'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 25
      OnClick = CheckBox1Click
    end
    object CheckBox27: TCheckBox
      Tag = 27
      Left = 128
      Top = 136
      Width = 33
      Height = 17
      Caption = '27'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      OnClick = CheckBox1Click
    end
    object CheckBox28: TCheckBox
      Tag = 28
      Left = 128
      Top = 152
      Width = 33
      Height = 17
      Caption = '28'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 27
      OnClick = CheckBox1Click
    end
    object CheckBox29: TCheckBox
      Tag = 29
      Left = 128
      Top = 168
      Width = 33
      Height = 17
      Caption = '29'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 28
      OnClick = CheckBox1Click
    end
    object CheckBox30: TCheckBox
      Tag = 30
      Left = 128
      Top = 184
      Width = 33
      Height = 17
      Caption = '30'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 29
      OnClick = CheckBox1Click
    end
    object CheckBox31: TCheckBox
      Tag = 31
      Left = 176
      Top = 40
      Width = 33
      Height = 17
      Caption = '31'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 30
      OnClick = CheckBox1Click
    end
    object CheckBox32: TCheckBox
      Tag = 32
      Left = 176
      Top = 56
      Width = 33
      Height = 17
      Caption = '32'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 31
      OnClick = CheckBox1Click
    end
    object CheckBox33: TCheckBox
      Tag = 33
      Left = 176
      Top = 72
      Width = 33
      Height = 17
      Caption = '33'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 32
      OnClick = CheckBox1Click
    end
    object CheckBox34: TCheckBox
      Tag = 34
      Left = 176
      Top = 88
      Width = 33
      Height = 17
      Caption = '34'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 33
      OnClick = CheckBox1Click
    end
    object CheckBox35: TCheckBox
      Tag = 35
      Left = 176
      Top = 104
      Width = 33
      Height = 17
      Caption = '35'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 34
      OnClick = CheckBox1Click
    end
    object CheckBox36: TCheckBox
      Tag = 36
      Left = 176
      Top = 120
      Width = 33
      Height = 17
      Caption = '36'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 35
      OnClick = CheckBox1Click
    end
    object CheckBox37: TCheckBox
      Tag = 37
      Left = 176
      Top = 136
      Width = 33
      Height = 17
      Caption = '37'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 36
      OnClick = CheckBox1Click
    end
    object CheckBox38: TCheckBox
      Tag = 38
      Left = 176
      Top = 152
      Width = 33
      Height = 17
      Caption = '38'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 37
      OnClick = CheckBox1Click
    end
    object CheckBox39: TCheckBox
      Tag = 39
      Left = 176
      Top = 168
      Width = 33
      Height = 17
      Caption = '39'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 38
      OnClick = CheckBox1Click
    end
    object CheckBox40: TCheckBox
      Tag = 40
      Left = 176
      Top = 184
      Width = 33
      Height = 17
      Caption = '40'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 39
      OnClick = CheckBox1Click
    end
    object CheckBox41: TCheckBox
      Tag = 41
      Left = 224
      Top = 40
      Width = 33
      Height = 17
      Caption = '41'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 40
      OnClick = CheckBox1Click
    end
    object CheckBox42: TCheckBox
      Tag = 42
      Left = 224
      Top = 56
      Width = 33
      Height = 17
      Caption = '42'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 41
      OnClick = CheckBox1Click
    end
    object CheckBox43: TCheckBox
      Tag = 43
      Left = 224
      Top = 72
      Width = 33
      Height = 17
      Caption = '43'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 42
      OnClick = CheckBox1Click
    end
    object CheckBox44: TCheckBox
      Tag = 44
      Left = 224
      Top = 88
      Width = 33
      Height = 17
      Caption = '44'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 43
      OnClick = CheckBox1Click
    end
    object CheckBox45: TCheckBox
      Tag = 45
      Left = 224
      Top = 104
      Width = 33
      Height = 17
      Caption = '45'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 44
      OnClick = CheckBox1Click
    end
    object CheckBox46: TCheckBox
      Tag = 46
      Left = 224
      Top = 120
      Width = 33
      Height = 17
      Caption = '46'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 45
      OnClick = CheckBox1Click
    end
    object CheckBox47: TCheckBox
      Tag = 47
      Left = 224
      Top = 136
      Width = 33
      Height = 17
      Caption = '47'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 46
      OnClick = CheckBox1Click
    end
    object CheckBox48: TCheckBox
      Tag = 48
      Left = 224
      Top = 152
      Width = 33
      Height = 17
      Caption = '48'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 47
      OnClick = CheckBox1Click
    end
    object CheckBox49: TCheckBox
      Tag = 49
      Left = 224
      Top = 168
      Width = 33
      Height = 17
      Caption = '49'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 48
      OnClick = CheckBox1Click
    end
    object CheckBox50: TCheckBox
      Tag = 50
      Left = 224
      Top = 184
      Width = 33
      Height = 17
      Caption = '50'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 49
      OnClick = CheckBox1Click
    end
    object CheckBox51: TCheckBox
      Tag = 51
      Left = 272
      Top = 40
      Width = 33
      Height = 17
      Caption = '51'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 50
      OnClick = CheckBox1Click
    end
    object CheckBox52: TCheckBox
      Tag = 52
      Left = 272
      Top = 56
      Width = 33
      Height = 17
      Caption = '52'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 51
      OnClick = CheckBox1Click
    end
    object CheckBox53: TCheckBox
      Tag = 53
      Left = 272
      Top = 72
      Width = 33
      Height = 17
      Caption = '53'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 52
      OnClick = CheckBox1Click
    end
    object CheckBox54: TCheckBox
      Tag = 54
      Left = 272
      Top = 88
      Width = 33
      Height = 17
      Caption = '54'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 53
      OnClick = CheckBox1Click
    end
    object CheckBox55: TCheckBox
      Tag = 55
      Left = 272
      Top = 104
      Width = 33
      Height = 17
      Caption = '55'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 54
      OnClick = CheckBox1Click
    end
    object CheckBox56: TCheckBox
      Tag = 56
      Left = 272
      Top = 120
      Width = 33
      Height = 17
      Caption = '56'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 55
      OnClick = CheckBox1Click
    end
    object CheckBox57: TCheckBox
      Tag = 57
      Left = 272
      Top = 136
      Width = 33
      Height = 17
      Caption = '57'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 56
      OnClick = CheckBox1Click
    end
    object CheckBox58: TCheckBox
      Tag = 58
      Left = 272
      Top = 152
      Width = 33
      Height = 17
      Caption = '58'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 57
      OnClick = CheckBox1Click
    end
    object CheckBox59: TCheckBox
      Tag = 59
      Left = 272
      Top = 168
      Width = 33
      Height = 17
      Caption = '59'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 58
      OnClick = CheckBox1Click
    end
    object CheckBox60: TCheckBox
      Tag = 60
      Left = 272
      Top = 184
      Width = 33
      Height = 17
      Caption = '60'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 59
      OnClick = CheckBox1Click
    end
    object CheckBox61: TCheckBox
      Tag = 61
      Left = 320
      Top = 40
      Width = 33
      Height = 17
      Caption = '61'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 60
      OnClick = CheckBox1Click
    end
    object CheckBox62: TCheckBox
      Tag = 62
      Left = 320
      Top = 56
      Width = 33
      Height = 17
      Caption = '62'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 61
      OnClick = CheckBox1Click
    end
    object CheckBox63: TCheckBox
      Tag = 63
      Left = 320
      Top = 72
      Width = 33
      Height = 17
      Caption = '63'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 62
      OnClick = CheckBox1Click
    end
    object CheckBox64: TCheckBox
      Tag = 64
      Left = 320
      Top = 88
      Width = 33
      Height = 17
      Caption = '64'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 63
      OnClick = CheckBox1Click
    end
    object CheckBox65: TCheckBox
      Tag = 65
      Left = 320
      Top = 104
      Width = 33
      Height = 17
      Caption = '65'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 64
      OnClick = CheckBox1Click
    end
    object CheckBox66: TCheckBox
      Tag = 66
      Left = 320
      Top = 120
      Width = 33
      Height = 17
      Caption = '66'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 65
      OnClick = CheckBox1Click
    end
    object CheckBox67: TCheckBox
      Tag = 67
      Left = 320
      Top = 136
      Width = 33
      Height = 17
      Caption = '67'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 66
      OnClick = CheckBox1Click
    end
    object CheckBox68: TCheckBox
      Tag = 68
      Left = 320
      Top = 152
      Width = 33
      Height = 17
      Caption = '68'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 67
      OnClick = CheckBox1Click
    end
    object CheckBox69: TCheckBox
      Tag = 69
      Left = 320
      Top = 168
      Width = 33
      Height = 17
      Caption = '69'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 68
      OnClick = CheckBox1Click
    end
    object CheckBox70: TCheckBox
      Tag = 70
      Left = 320
      Top = 184
      Width = 33
      Height = 17
      Caption = '70'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 69
      OnClick = CheckBox1Click
    end
    object CheckBox71: TCheckBox
      Tag = 71
      Left = 368
      Top = 40
      Width = 33
      Height = 17
      Caption = '71'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 70
      OnClick = CheckBox1Click
    end
    object CheckBox72: TCheckBox
      Tag = 72
      Left = 368
      Top = 56
      Width = 33
      Height = 17
      Caption = '72'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 71
      OnClick = CheckBox1Click
    end
    object CheckBox73: TCheckBox
      Tag = 73
      Left = 368
      Top = 72
      Width = 33
      Height = 17
      Caption = '73'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 72
      OnClick = CheckBox1Click
    end
    object CheckBox74: TCheckBox
      Tag = 74
      Left = 368
      Top = 88
      Width = 33
      Height = 17
      Caption = '74'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 73
      OnClick = CheckBox1Click
    end
    object CheckBox75: TCheckBox
      Tag = 75
      Left = 368
      Top = 104
      Width = 33
      Height = 17
      Caption = '75'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 74
      OnClick = CheckBox1Click
    end
    object CheckBox76: TCheckBox
      Tag = 76
      Left = 368
      Top = 120
      Width = 33
      Height = 17
      Caption = '76'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 75
      OnClick = CheckBox1Click
    end
    object CheckBox77: TCheckBox
      Tag = 77
      Left = 368
      Top = 136
      Width = 33
      Height = 17
      Caption = '77'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 76
      OnClick = CheckBox1Click
    end
    object CheckBox78: TCheckBox
      Tag = 78
      Left = 368
      Top = 152
      Width = 33
      Height = 17
      Caption = '78'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 77
      OnClick = CheckBox1Click
    end
    object CheckBox79: TCheckBox
      Tag = 79
      Left = 368
      Top = 168
      Width = 33
      Height = 17
      Caption = '79'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 78
      OnClick = CheckBox1Click
    end
    object CheckBox80: TCheckBox
      Tag = 80
      Left = 368
      Top = 184
      Width = 33
      Height = 17
      Caption = '80'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 79
      OnClick = CheckBox1Click
    end
    object Edit1: TEdit
      Left = 16
      Top = 240
      Width = 401
      Height = 21
      Hint = 
        'Wpisz wylosowane liczby i naci'#347'nij klawisz Enter lub przycisk ob' +
        'ok pola tekstowego.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 80
      OnChange = Edit1Change
      OnKeyPress = Edit1KeyPress
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 312
    Width = 433
    Height = 73
    Caption = 'Data losowania'
    TabOrder = 1
    object Label3: TLabel
      Left = 32
      Top = 44
      Width = 27
      Height = 13
      Caption = 'Dzie'#324
    end
    object Label4: TLabel
      Left = 128
      Top = 44
      Width = 36
      Height = 13
      Caption = 'Miesi'#261'c'
    end
    object Label5: TLabel
      Left = 288
      Top = 44
      Width = 20
      Height = 13
      Caption = 'Rok'
    end
    object Label1: TLabel
      Left = 124
      Top = 12
      Width = 92
      Height = 13
      Caption = 'Ostatnie losowanie:'
    end
    object Label2: TLabel
      Left = 224
      Top = 12
      Width = 26
      Height = 13
      Caption = 'data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBox1: TComboBox
      Left = 67
      Top = 40
      Width = 41
      Height = 22
      Style = csOwnerDrawVariable
      ItemHeight = 16
      TabOrder = 0
      OnChange = rokiChange
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
        '31')
    end
    object ComboBox2: TComboBox
      Left = 173
      Top = 40
      Width = 89
      Height = 22
      Style = csOwnerDrawVariable
      ItemHeight = 16
      TabOrder = 1
      OnChange = rokiChange
      Items.Strings = (
        'Stycze'#324
        'Luty'
        'Marzec'
        'Kwiecie'#324
        'Maj'
        'Czerwiec'
        'Lipiec'
        'Sierpie'#324
        'Wrzesie'#324
        'Pa'#378'dziernik'
        'Listopad'
        'Grudzie'#324)
    end
    object roki: TSpinEdit
      Left = 320
      Top = 40
      Width = 81
      Height = 22
      MaxValue = 3000
      MinValue = 1000
      TabOrder = 2
      Value = 2003
      OnChange = rokiChange
    end
  end
end
