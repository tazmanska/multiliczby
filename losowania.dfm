object Form2: TForm2
  Left = 125
  Top = 185
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Losowania'
  ClientHeight = 311
  ClientWidth = 751
  Color = clBtnFace
  Constraints.MinWidth = 400
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
    Top = 8
    Width = 737
    Height = 297
    Caption = 'Baza losowa'#324
    TabOrder = 0
    object Label4: TLabel
      Left = 8
      Top = 271
      Width = 46
      Height = 13
      Caption = 'Losowa'#324':'
    end
    object Label5: TLabel
      Left = 60
      Top = 271
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
    object Label6: TLabel
      Left = 128
      Top = 271
      Width = 53
      Height = 13
      Caption = 'Numer los.:'
    end
    object Label7: TLabel
      Left = 187
      Top = 271
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
    object SpeedButton8: TSpeedButton
      Left = 460
      Top = 264
      Width = 65
      Height = 25
      Caption = 'Edytuj...'
      Enabled = False
      OnClick = SpeedButton8Click
    end
    object SpeedButton9: TSpeedButton
      Left = 528
      Top = 264
      Width = 65
      Height = 25
      Caption = 'Usu'#324'...'
      Enabled = False
      OnClick = SpeedButton9Click
    end
    object SpeedButton1: TSpeedButton
      Left = 324
      Top = 264
      Width = 65
      Height = 25
      Caption = 'Dodaj...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton6: TSpeedButton
      Left = 665
      Top = 264
      Width = 65
      Height = 25
      Caption = 'Zapisz...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      OnClick = SpeedButton6Click
    end
    object SpeedButton4: TSpeedButton
      Left = 256
      Top = 264
      Width = 65
      Height = 25
      Caption = 'Poka'#380
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object SpeedButton3: TSpeedButton
      Left = 596
      Top = 264
      Width = 65
      Height = 25
      Caption = 'Zakres...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object SpeedButton7: TSpeedButton
      Left = 392
      Top = 264
      Width = 65
      Height = 25
      Caption = #346'ci'#261'gnij...'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton7Click
    end
    object StringGrid1: TStringGrid
      Left = 8
      Top = 22
      Width = 721
      Height = 235
      ColCount = 3
      DefaultRowHeight = 20
      FixedCols = 0
      RowCount = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 0
      OnSelectCell = StringGrid1SelectCell
    end
  end
  object ListBox1: TListBox
    Left = 608
    Top = 24
    Width = 121
    Height = 25
    ItemHeight = 13
    TabOrder = 1
    Visible = False
  end
end
