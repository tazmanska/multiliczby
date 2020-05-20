object Form33: TForm33
  Left = 318
  Top = 211
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Poszukiwacz'
  ClientHeight = 282
  ClientWidth = 286
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
    Left = 24
    Top = 16
    Width = 88
    Height = 13
    Caption = 'Szukaj kombinacji:'
  end
  object Label2: TLabel
    Left = 24
    Top = 40
    Width = 63
    Height = 13
    Caption = 'Oczekuje na:'
  end
  object Label3: TLabel
    Left = 176
    Top = 40
    Width = 5
    Height = 13
    Caption = '/'
  end
  object Label4: TLabel
    Left = 184
    Top = 40
    Width = 6
    Height = 13
    Caption = '5'
  end
  object Label6: TLabel
    Left = 192
    Top = 96
    Width = 3
    Height = 13
    Caption = '-'
  end
  object SpeedButton1: TSpeedButton
    Left = 104
    Top = 216
    Width = 81
    Height = 25
    Caption = 'Szukaj'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object Gauge1: TGauge
    Left = 8
    Top = 248
    Width = 273
    Height = 25
    Progress = 0
  end
  object Label7: TLabel
    Left = 24
    Top = 136
    Width = 78
    Height = 13
    Caption = 'Zakres losowa'#324':'
  end
  object Label8: TLabel
    Left = 192
    Top = 136
    Width = 3
    Height = 13
    Caption = '-'
  end
  object SB_pamietaj: TSpeedButton
    Left = 8
    Top = 223
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
  object SpinEdit1: TSpinEdit
    Left = 120
    Top = 8
    Width = 49
    Height = 22
    MaxValue = 10
    MinValue = 1
    TabOrder = 0
    Value = 5
    OnChange = SpinEdit1Change
  end
  object SpinEdit2: TSpinEdit
    Left = 120
    Top = 32
    Width = 49
    Height = 22
    MaxValue = 5
    MinValue = 1
    TabOrder = 1
    Value = 5
  end
  object SpinEdit3: TSpinEdit
    Left = 120
    Top = 88
    Width = 65
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object SpinEdit4: TSpinEdit
    Left = 200
    Top = 88
    Width = 65
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 3
    Value = 0
  end
  object SpinEdit5: TSpinEdit
    Left = 120
    Top = 128
    Width = 65
    Height = 22
    MaxValue = 0
    MinValue = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Value = 0
    OnChange = SpinEdit5Change
  end
  object SpinEdit6: TSpinEdit
    Left = 200
    Top = 128
    Width = 65
    Height = 22
    MaxValue = 0
    MinValue = 0
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    Value = 0
    OnChange = SpinEdit6Change
  end
  object CheckBox1: TCheckBox
    Left = 24
    Top = 160
    Width = 113
    Height = 17
    Caption = 'Max ilo'#347#263' wynik'#243'w'
    TabOrder = 6
  end
  object SpinEdit7: TSpinEdit
    Left = 144
    Top = 152
    Width = 65
    Height = 22
    MaxValue = 10000
    MinValue = 1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    Value = 100
    OnChange = SpinEdit6Change
  end
  object CheckBox2: TCheckBox
    Left = 24
    Top = 184
    Width = 153
    Height = 17
    Caption = 'Otw'#243'rz plik po zako'#324'czeniu'
    TabOrder = 8
  end
  object RadioButton1: TRadioButton
    Left = 24
    Top = 64
    Width = 113
    Height = 17
    Caption = 'Oczekuje minimum:'
    Checked = True
    TabOrder = 9
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 24
    Top = 96
    Width = 81
    Height = 17
    Caption = 'Oczekuje:'
    TabOrder = 10
  end
  object SpinEdit8: TSpinEdit
    Left = 144
    Top = 56
    Width = 65
    Height = 22
    MaxValue = 10000
    MinValue = 1
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    Value = 10
    OnChange = SpinEdit6Change
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    FileName = 'poszukiwacz_raport'
    Filter = 'Plik tekstowy (*.txt)|*.txt'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Zapisz dane do pliku...'
    Left = 208
    Top = 8
  end
end
