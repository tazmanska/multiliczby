object losowania_sciagnij_form: Tlosowania_sciagnij_form
  Left = 325
  Top = 160
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #346'ci'#261'gnij wyniki losowa'#324
  ClientHeight = 256
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button2: TSpeedButton
    Left = 142
    Top = 216
    Width = 75
    Height = 25
    Caption = #346'ci'#261'gnij'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = Button2Click
  end
  object Button1: TSpeedButton
    Left = 254
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Zamknij'
    OnClick = Button1Click
  end
  object GroupBox1: TGroupBox
    Left = 7
    Top = 8
    Width = 457
    Height = 193
    Caption = 'Wyb'#243'r gier'
    TabOrder = 0
    object Gauge1: TGauge
      Left = 16
      Top = 46
      Width = 401
      Height = 25
      Progress = 0
    end
    object Gauge2: TGauge
      Left = 16
      Top = 99
      Width = 401
      Height = 25
      Progress = 0
    end
    object Gauge3: TGauge
      Left = 16
      Top = 152
      Width = 401
      Height = 25
      Progress = 0
    end
    object SpeedButton1: TSpeedButton
      Left = 424
      Top = 48
      Width = 23
      Height = 22
      Hint = 'Anuluj'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 424
      Top = 101
      Width = 23
      Height = 22
      Hint = 'Anuluj'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 424
      Top = 154
      Width = 23
      Height = 22
      Hint = 'Anuluj'
      Enabled = False
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
        3333333777333777FF3333993333339993333377FF3333377FF3399993333339
        993337777FF3333377F3393999333333993337F777FF333337FF993399933333
        399377F3777FF333377F993339993333399377F33777FF33377F993333999333
        399377F333777FF3377F993333399933399377F3333777FF377F993333339993
        399377FF3333777FF7733993333339993933373FF3333777F7F3399933333399
        99333773FF3333777733339993333339933333773FFFFFF77333333999999999
        3333333777333777333333333999993333333333377777333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton3Click
    end
    object CheckBox1: TCheckBox
      Left = 16
      Top = 28
      Width = 105
      Height = 17
      Caption = 'MultiLotek'
      TabOrder = 0
      OnClick = CheckBox3Click
    end
    object CheckBox2: TCheckBox
      Left = 16
      Top = 80
      Width = 105
      Height = 17
      Caption = 'Du'#380'yLotek'
      TabOrder = 1
      OnClick = CheckBox3Click
    end
    object CheckBox3: TCheckBox
      Left = 16
      Top = 133
      Width = 121
      Height = 17
      Caption = 'ExpressLotek'
      TabOrder = 2
      OnClick = CheckBox3Click
    end
  end
end
