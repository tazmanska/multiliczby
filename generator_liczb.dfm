object Form32: TForm32
  Left = 297
  Top = 195
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Generator liczb...'
  ClientHeight = 357
  ClientWidth = 410
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
  object SpeedButton2: TSpeedButton
    Left = 164
    Top = 328
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
    OnClick = SpeedButton2Click
  end
  object Label10: TLabel
    Left = 280
    Top = 344
    Width = 49
    Height = 13
    Caption = 'Pr'#243'bowa'#322':'
  end
  object Label11: TLabel
    Left = 336
    Top = 344
    Width = 12
    Height = 13
    Caption = '??'
  end
  object Gauge1: TGauge
    Left = 0
    Top = 302
    Width = 409
    Height = 20
    Progress = 0
  end
  object SB_pamietaj: TSpeedButton
    Left = 0
    Top = 340
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
    Visible = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 409
    Height = 265
    Caption = ' Ustawienia '
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Ilo'#347#263' liczb:'
    end
    object Label2: TLabel
      Left = 160
      Top = 72
      Width = 15
      Height = 13
      Caption = 'do:'
    end
    object Label3: TLabel
      Left = 190
      Top = 120
      Width = 6
      Height = 13
      Caption = '- '
    end
    object Label4: TLabel
      Left = 222
      Top = 144
      Width = 6
      Height = 13
      Caption = '- '
    end
    object Label5: TLabel
      Left = 142
      Top = 168
      Width = 6
      Height = 13
      Caption = '- '
    end
    object Label6: TLabel
      Left = 182
      Top = 192
      Width = 6
      Height = 13
      Caption = '- '
    end
    object Label7: TLabel
      Left = 238
      Top = 216
      Width = 6
      Height = 13
      Caption = '- '
    end
    object Label8: TLabel
      Left = 150
      Top = 240
      Width = 6
      Height = 13
      Caption = '- '
    end
    object Label9: TLabel
      Left = 272
      Top = 24
      Width = 49
      Height = 13
      Caption = 'Ilo'#347#263' pr'#243'b:'
    end
    object se_ilosc_liczb: TSpinEdit
      Left = 64
      Top = 16
      Width = 73
      Height = 22
      MaxValue = 80
      MinValue = 2
      TabOrder = 0
      Value = 2
    end
    object cb_nie_byly: TCheckBox
      Left = 8
      Top = 48
      Width = 305
      Height = 17
      Caption = 'Tylko te liczby kt'#243're nie wyst'#261'pi'#322'y razem w losowaniu/ach:'
      TabOrder = 1
      OnClick = cb_nie_bylyClick
    end
    object RadioButton1: TRadioButton
      Left = 40
      Top = 72
      Width = 41
      Height = 17
      Caption = 'Od:'
      Checked = True
      Enabled = False
      TabOrder = 2
      TabStop = True
      OnClick = RadioButton1Click
    end
    object se_od: TSpinEdit
      Left = 80
      Top = 64
      Width = 73
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      Value = 0
      OnChange = se_odChange
    end
    object se_do: TSpinEdit
      Left = 184
      Top = 64
      Width = 73
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      Value = 0
      OnChange = se_doChange
    end
    object RadioButton2: TRadioButton
      Left = 40
      Top = 96
      Width = 89
      Height = 17
      Caption = 'W losowaniu:'
      Enabled = False
      TabOrder = 5
      OnClick = RadioButton2Click
    end
    object se_losowanie: TSpinEdit
      Left = 128
      Top = 88
      Width = 73
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 0
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      Value = 0
      OnChange = se_losowanieChange
    end
    object cb_parzyste: TCheckBox
      Left = 8
      Top = 120
      Width = 121
      Height = 17
      Caption = 'Ilo'#347#263' liczb parzystych:'
      TabOrder = 7
      OnClick = cb_parzysteClick
    end
    object cb_jeden_zakres: TCheckBox
      Left = 8
      Top = 144
      Width = 161
      Height = 17
      Caption = 'Ilo'#347#263' liczb z jednego zakresu:'
      TabOrder = 8
      OnClick = cb_jeden_zakresClick
    end
    object cb_suma: TCheckBox
      Left = 8
      Top = 168
      Width = 73
      Height = 17
      Caption = 'Suma liczb:'
      TabOrder = 9
      OnClick = cb_sumaClick
    end
    object cb_kolejne: TCheckBox
      Left = 8
      Top = 192
      Width = 121
      Height = 17
      Caption = 'Ilo'#347#263' liczb kolejnych:'
      TabOrder = 10
      OnClick = cb_kolejneClick
    end
    object cb_zakres: TCheckBox
      Left = 8
      Top = 240
      Width = 81
      Height = 17
      Caption = 'Zakres liczb:'
      TabOrder = 11
      OnClick = cb_zakresClick
    end
    object cb_koncowka: TCheckBox
      Left = 8
      Top = 216
      Width = 177
      Height = 17
      Caption = 'Ilo'#347#263' liczb z t'#261' sam'#261' ko'#324'c'#243'wk'#261':'
      TabOrder = 12
      OnClick = cb_koncowkaClick
    end
    object se_parzystych_min: TSpinEdit
      Left = 136
      Top = 112
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 13
      Value = 0
    end
    object se_parzystych_max: TSpinEdit
      Left = 200
      Top = 112
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 14
      Value = 0
    end
    object se_liczb_zakres_min: TSpinEdit
      Left = 168
      Top = 136
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 10
      MinValue = 1
      TabOrder = 15
      Value = 1
    end
    object se_liczb_zakres_max: TSpinEdit
      Left = 232
      Top = 136
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 10
      MinValue = 1
      TabOrder = 16
      Value = 10
    end
    object se_suma_max: TSpinEdit
      Left = 152
      Top = 160
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 3
      TabOrder = 17
      Value = 0
    end
    object se_suma_min: TSpinEdit
      Left = 88
      Top = 160
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 3
      TabOrder = 18
      Value = 0
    end
    object se_kolejnych_max: TSpinEdit
      Left = 192
      Top = 184
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 19
      Value = 0
    end
    object se_kolejnych_min: TSpinEdit
      Left = 128
      Top = 184
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 20
      Value = 0
    end
    object se_koncowka_max: TSpinEdit
      Left = 248
      Top = 208
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 1
      TabOrder = 21
      Value = 1
    end
    object se_koncowka_min: TSpinEdit
      Left = 184
      Top = 208
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 1
      TabOrder = 22
      Value = 1
    end
    object se_zakres_max: TSpinEdit
      Left = 160
      Top = 232
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 2
      TabOrder = 23
      Value = 0
    end
    object se_zakres_min: TSpinEdit
      Left = 96
      Top = 232
      Width = 49
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 1
      TabOrder = 24
      Value = 0
    end
    object ilosc_prob: TSpinEdit
      Left = 328
      Top = 16
      Width = 73
      Height = 22
      MaxValue = 1000000
      MinValue = 1
      TabOrder = 25
      Value = 1000
    end
  end
  object e_liczby: TEdit
    Left = 0
    Top = 272
    Width = 409
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
end
