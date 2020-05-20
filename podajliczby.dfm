object Form16: TForm16
  Left = 284
  Top = 177
  BorderStyle = bsDialog
  Caption = 'Podaj liczby...'
  ClientHeight = 347
  ClientWidth = 437
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
    Left = 114
    Top = 295
    Width = 81
    Height = 25
    Caption = 'Anuluj'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 242
    Top = 295
    Width = 81
    Height = 25
    Caption = 'OK'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 52
    Height = 13
    Caption = 'Ilo'#347#263' liczb: '
  end
  object Label7: TLabel
    Left = 72
    Top = 8
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
  object Label9: TLabel
    Left = 32
    Top = 232
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
    Left = 24
    Top = 261
    Width = 12
    Height = 13
    Caption = '??'
  end
  object SpeedButton3: TSpeedButton
    Left = 414
    Top = 0
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
  object Label2: TLabel
    Left = 136
    Top = 8
    Width = 30
    Height = 13
    Caption = '          '
  end
  object SpeedButton4: TSpeedButton
    Tag = 1
    Left = 0
    Top = 66
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 1'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Tag = 2
    Left = 0
    Top = 82
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 2'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton4Click
  end
  object SpeedButton6: TSpeedButton
    Left = 0
    Top = 210
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 0'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton4Click
  end
  object SpeedButton7: TSpeedButton
    Tag = 3
    Left = 0
    Top = 98
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 3'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton4Click
  end
  object SpeedButton8: TSpeedButton
    Tag = 4
    Left = 0
    Top = 114
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 4'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton4Click
  end
  object SpeedButton9: TSpeedButton
    Tag = 5
    Left = 0
    Top = 130
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 5'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton4Click
  end
  object SpeedButton10: TSpeedButton
    Tag = 6
    Left = 0
    Top = 146
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 6'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton4Click
  end
  object SpeedButton11: TSpeedButton
    Tag = 7
    Left = 0
    Top = 162
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 7'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton4Click
  end
  object SpeedButton12: TSpeedButton
    Tag = 8
    Left = 0
    Top = 178
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 8'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton4Click
  end
  object SpeedButton13: TSpeedButton
    Tag = 9
    Left = 0
    Top = 194
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 9'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton4Click
  end
  object SpeedButton14: TSpeedButton
    Tag = 1
    Left = 16
    Top = 66
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 1'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton15: TSpeedButton
    Tag = 2
    Left = 16
    Top = 82
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 2'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton16: TSpeedButton
    Tag = 3
    Left = 16
    Top = 98
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 3'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton17: TSpeedButton
    Tag = 4
    Left = 16
    Top = 114
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 4'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton18: TSpeedButton
    Tag = 5
    Left = 16
    Top = 130
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 5'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton19: TSpeedButton
    Tag = 6
    Left = 16
    Top = 146
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 6'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton20: TSpeedButton
    Tag = 7
    Left = 16
    Top = 162
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 7'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton21: TSpeedButton
    Tag = 8
    Left = 16
    Top = 178
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 8'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton22: TSpeedButton
    Tag = 9
    Left = 16
    Top = 194
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 9'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton23: TSpeedButton
    Left = 16
    Top = 210
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 0'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton4Click
  end
  object SpeedButton24: TSpeedButton
    Left = 35
    Top = 32
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 1'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton24Click
  end
  object SpeedButton25: TSpeedButton
    Left = 35
    Top = 48
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 1'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton24Click
  end
  object SpeedButton26: TSpeedButton
    Tag = 1
    Left = 83
    Top = 32
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 1'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton24Click
  end
  object SpeedButton27: TSpeedButton
    Tag = 1
    Left = 83
    Top = 48
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 1'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton24Click
  end
  object SpeedButton28: TSpeedButton
    Tag = 2
    Left = 131
    Top = 32
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 1'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton24Click
  end
  object SpeedButton29: TSpeedButton
    Tag = 2
    Left = 131
    Top = 48
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 1'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton24Click
  end
  object SpeedButton30: TSpeedButton
    Tag = 3
    Left = 179
    Top = 32
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 1'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton24Click
  end
  object SpeedButton31: TSpeedButton
    Tag = 3
    Left = 179
    Top = 48
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 1'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton24Click
  end
  object SpeedButton32: TSpeedButton
    Tag = 4
    Left = 227
    Top = 32
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 1'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton24Click
  end
  object SpeedButton33: TSpeedButton
    Tag = 4
    Left = 227
    Top = 48
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 1'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton24Click
  end
  object SpeedButton34: TSpeedButton
    Tag = 5
    Left = 275
    Top = 32
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 1'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton24Click
  end
  object SpeedButton35: TSpeedButton
    Tag = 5
    Left = 275
    Top = 48
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 1'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton24Click
  end
  object SpeedButton36: TSpeedButton
    Tag = 6
    Left = 323
    Top = 32
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 1'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton24Click
  end
  object SpeedButton37: TSpeedButton
    Tag = 6
    Left = 323
    Top = 48
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 1'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton24Click
  end
  object SpeedButton38: TSpeedButton
    Tag = 7
    Left = 371
    Top = 32
    Width = 14
    Height = 14
    Hint = 'Zaznacz ko'#324'c'#243'wki 1'
    Caption = '+'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Margin = 0
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Spacing = 0
    OnClick = SpeedButton24Click
  end
  object SpeedButton39: TSpeedButton
    Tag = 7
    Left = 371
    Top = 48
    Width = 14
    Height = 14
    Hint = 'Odznacz ko'#324'c'#243'wki 1'
    Caption = '-'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Pitch = fpFixed
    Font.Style = []
    Margin = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton24Click
  end
  object CheckBox1: TCheckBox
    Left = 36
    Top = 64
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
    Left = 36
    Top = 80
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
    Left = 36
    Top = 96
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
    Left = 36
    Top = 112
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
    Left = 36
    Top = 128
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
    Left = 36
    Top = 144
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
    Left = 36
    Top = 160
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
    Left = 36
    Top = 176
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
    Left = 36
    Top = 192
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
    Left = 36
    Top = 208
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
    Left = 84
    Top = 64
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
    Left = 84
    Top = 80
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
    Left = 84
    Top = 96
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
    Left = 84
    Top = 112
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
    Left = 84
    Top = 128
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
    Left = 84
    Top = 144
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
    Left = 84
    Top = 160
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
    Left = 84
    Top = 176
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
    Left = 84
    Top = 192
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
    Left = 84
    Top = 208
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
    Left = 132
    Top = 64
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
    Left = 132
    Top = 80
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
    Left = 132
    Top = 96
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
    Left = 132
    Top = 112
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
    Left = 132
    Top = 128
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
    Left = 132
    Top = 144
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
    Left = 132
    Top = 160
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
    Left = 132
    Top = 176
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
    Left = 132
    Top = 192
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
    Left = 132
    Top = 208
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
    Left = 180
    Top = 64
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
    Left = 180
    Top = 80
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
    Left = 180
    Top = 96
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
    Left = 180
    Top = 112
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
    Left = 180
    Top = 128
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
    Left = 180
    Top = 144
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
    Left = 180
    Top = 160
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
    Left = 180
    Top = 176
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
    Left = 180
    Top = 192
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
    Left = 180
    Top = 208
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
    Left = 228
    Top = 64
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
    Left = 228
    Top = 80
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
    Left = 228
    Top = 96
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
    Left = 228
    Top = 112
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
    Left = 228
    Top = 128
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
    Left = 228
    Top = 144
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
    Left = 228
    Top = 160
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
    Left = 228
    Top = 176
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
    Left = 228
    Top = 192
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
    Left = 228
    Top = 208
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
    Left = 276
    Top = 64
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
    Left = 276
    Top = 80
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
    Left = 276
    Top = 96
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
    Left = 276
    Top = 112
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
    Left = 276
    Top = 128
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
    Left = 276
    Top = 144
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
    Left = 276
    Top = 160
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
    Left = 276
    Top = 176
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
    Left = 276
    Top = 192
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
    Left = 276
    Top = 208
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
    Left = 324
    Top = 64
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
    Left = 324
    Top = 80
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
    Left = 324
    Top = 96
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
    Left = 324
    Top = 112
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
    Left = 324
    Top = 128
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
    Left = 324
    Top = 144
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
    Left = 324
    Top = 160
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
    Left = 324
    Top = 176
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
    Left = 324
    Top = 192
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
    Left = 324
    Top = 208
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
    Left = 372
    Top = 64
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
    Left = 372
    Top = 80
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
    Left = 372
    Top = 96
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
    Left = 372
    Top = 112
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
    Left = 372
    Top = 128
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
    Left = 372
    Top = 144
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
    Left = 372
    Top = 160
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
    Left = 372
    Top = 176
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
    Left = 372
    Top = 192
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
    Left = 372
    Top = 208
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
    Left = 40
    Top = 256
    Width = 393
    Height = 21
    TabOrder = 80
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
end
