object OKRightDlg: TOKRightDlg
  Left = 227
  Top = 108
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Zapis rozszerzony'
  ClientHeight = 261
  ClientWidth = 506
  Color = clBtnFace
  ParentFont = True
  OldCreateOrder = True
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    506
    261)
  PixelsPerInch = 96
  TextHeight = 13
  object OKBtn: TButton
    Left = 174
    Top = 223
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Caption = 'Zapisz'
    Default = True
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 0
    OnClick = OKBtnClick
  end
  object CancelBtn: TButton
    Left = 256
    Top = 223
    Width = 75
    Height = 25
    Anchors = [akBottom]
    Cancel = True
    Caption = 'Anuluj'
    ModalResult = 2
    TabOrder = 1
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 8
    Width = 490
    Height = 65
    Anchors = [akLeft, akTop, akRight]
    Caption = 'Plik'
    TabOrder = 2
    DesignSize = (
      490
      65)
    object SpeedButton6: TSpeedButton
      Left = 455
      Top = 23
      Width = 23
      Height = 22
      Hint = 'Wska'#380' plik...'
      Anchors = [akTop, akRight]
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
    object Edit1: TEdit
      Left = 16
      Top = 24
      Width = 431
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      ReadOnly = True
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object GroupBox3: TGroupBox
    Left = 8
    Top = 80
    Width = 489
    Height = 65
    Caption = 'Komentarz'
    TabOrder = 3
    object Edit2: TEdit
      Left = 16
      Top = 24
      Width = 465
      Height = 21
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 152
    Width = 489
    Height = 57
    Caption = 'Orientacja wierszy'
    TabOrder = 4
    object RadioButton1: TRadioButton
      Left = 24
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Pozioma'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 248
      Top = 24
      Width = 113
      Height = 17
      Caption = 'Pionowa'
      TabOrder = 1
    end
  end
end
