object Form31: TForm31
  Left = 226
  Top = 117
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Super Systemy...'
  ClientHeight = 348
  ClientWidth = 313
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
    Left = 160
    Top = 128
    Width = 129
    Height = 25
    Caption = 'Generuj i zapisz'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 313
    Height = 97
    Caption = ' System '
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 56
      Width = 44
      Height = 13
      Caption = 'Skreœleñ:'
    end
    object Label2: TLabel
      Left = 8
      Top = 72
      Width = 28
      Height = 13
      Caption = 'Liczb:'
    end
    object Label3: TLabel
      Left = 152
      Top = 56
      Width = 52
      Height = 13
      Caption = 'Zak³adów:'
    end
    object Label4: TLabel
      Left = 152
      Top = 72
      Width = 29
      Height = 13
      Caption = 'Koszt:'
    end
    object Label5: TLabel
      Left = 56
      Top = 56
      Width = 6
      Height = 13
      Caption = '?'
    end
    object Label6: TLabel
      Left = 56
      Top = 72
      Width = 6
      Height = 13
      Caption = '?'
    end
    object Label7: TLabel
      Left = 208
      Top = 56
      Width = 6
      Height = 13
      Caption = '?'
    end
    object Label8: TLabel
      Left = 208
      Top = 72
      Width = 6
      Height = 13
      Caption = '?'
    end
    object ComboBox1: TComboBox
      Left = 8
      Top = 24
      Width = 289
      Height = 22
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        '           - wybierz system - '
        'System  1: 6/9skr  7par/trójek  7zak'
        'System  2: 6/9skr  9par/trójek 12zak'
        'System  3: 6/9skr 11par/trójek 19zak'
        'System  4: 6/9skr 13par/trójek 26zak'
        'System  5: 6/9skr 15par/trójek 21zak'
        'System  6: 6/9skr 15par/trójek 25zak'
        'System  7: 6/9skr 15par/trojek 35zak'
        'System  8: 6/9skr 18par/trójek 36zak'
        'System  9: 6/9skr 21par/trójek 49zak'
        'System 10: 6/9skr 24par/trójek 64zak')
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 104
    Width = 135
    Height = 235
    ColCount = 2
    DefaultColWidth = 84
    DefaultRowHeight = 20
    RowCount = 8
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing, goTabs, goThumbTracking]
    ParentFont = False
    TabOrder = 1
    OnKeyPress = StringGrid1KeyPress
  end
  object RadioButton1: TRadioButton
    Left = 176
    Top = 104
    Width = 41
    Height = 17
    Caption = 'Pary'
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 224
    Top = 104
    Width = 49
    Height = 17
    Caption = 'Trójki'
    TabOrder = 3
  end
end
