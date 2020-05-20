object Form27: TForm27
  Left = 102
  Top = 102
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Katalog system'#243'w...'
  ClientHeight = 393
  ClientWidth = 652
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
  object SpeedButton1: TSpeedButton
    Left = 336
    Top = 360
    Width = 89
    Height = 25
    Caption = 'Podstaw liczby'
    Flat = True
    OnClick = SpeedButton1Click
  end
  object SpeedButton3: TSpeedButton
    Left = 560
    Top = 360
    Width = 89
    Height = 25
    Caption = 'Zapisz system'
    Flat = True
    OnClick = SpeedButton3Click
  end
  object SpeedButton2: TSpeedButton
    Left = 496
    Top = 360
    Width = 23
    Height = 22
    Visible = False
    OnClick = SpeedButton2Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 329
    Height = 145
    Caption = ' O systemie '
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
      Width = 61
      Height = 13
      Caption = 'Nazwa pliku:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 80
      Width = 65
      Height = 13
      Caption = 'Opis systemu:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 32
      Width = 67
      Height = 13
      Caption = 'Ilo'#347#263' skre'#347'le'#324':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 8
      Top = 48
      Width = 49
      Height = 13
      Caption = 'Ilo'#347#263' liczb:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 64
      Width = 75
      Height = 13
      Caption = 'Ilo'#347#263' zak'#322'ad'#243'w:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 88
      Top = 16
      Width = 24
      Height = 13
      Caption = '?    '
    end
    object Label7: TLabel
      Left = 88
      Top = 80
      Width = 233
      Height = 57
      AutoSize = False
      Caption = '?    '
      WordWrap = True
    end
    object Label8: TLabel
      Left = 88
      Top = 32
      Width = 24
      Height = 13
      Caption = '?    '
    end
    object Label9: TLabel
      Left = 88
      Top = 48
      Width = 24
      Height = 13
      Caption = '?    '
    end
    object Label10: TLabel
      Left = 88
      Top = 64
      Width = 24
      Height = 13
      Caption = '?    '
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 152
    Width = 326
    Height = 59
    ColCount = 80
    DefaultColWidth = 22
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing, goTabs, goThumbTracking]
    ScrollBars = ssHorizontal
    TabOrder = 1
    OnKeyPress = StringGrid1KeyPress
    ColWidths = (
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22
      22)
  end
  object StringGrid2: TStringGrid
    Left = 336
    Top = 5
    Width = 312
    Height = 346
    ColCount = 11
    DefaultColWidth = 24
    DefaultRowHeight = 18
    RowCount = 101
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goThumbTracking]
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object ListBox1: TListBox
    Left = 0
    Top = 216
    Width = 326
    Height = 173
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ItemHeight = 14
    ParentFont = False
    TabOrder = 3
    OnClick = ListBox1Click
    OnContextPopup = ListBox1ContextPopup
    OnDblClick = ListBox1DblClick
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 360
    object Wywietlpliksystemu1: TMenuItem
      Caption = 'Wy'#347'wietl plik systemu'
      OnClick = Wywietlpliksystemu1Click
    end
  end
end
