object Form24: TForm24
  Left = 192
  Top = 103
  Width = 544
  Height = 287
  BorderIcons = []
  Caption = 'Rejestruj program...'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 48
    Width = 22
    Height = 13
    Caption = 'Imi'#281':'
  end
  object Label2: TLabel
    Left = 25
    Top = 72
    Width = 49
    Height = 13
    Caption = 'Nazwisko:'
  end
  object Label3: TLabel
    Left = 25
    Top = 128
    Width = 63
    Height = 13
    Caption = 'Kod osobisty:'
  end
  object Label4: TLabel
    Left = 25
    Top = 152
    Width = 69
    Height = 13
    Caption = 'Kod programu:'
  end
  object Edit1: TEdit
    Left = 96
    Top = 40
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 96
    Top = 64
    Width = 225
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 96
    Top = 120
    Width = 409
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 96
    Top = 144
    Width = 409
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 184
    Top = 176
    Width = 169
    Height = 33
    Caption = 'Rejestruj'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 232
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Anuluj'
    TabOrder = 5
    OnClick = Button2Click
  end
end
