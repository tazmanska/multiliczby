object Form30: TForm30
  Left = 207
  Top = 107
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'WprowadŸ system...'
  ClientHeight = 348
  ClientWidth = 465
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
    Left = 376
    Top = 320
    Width = 81
    Height = 25
    Caption = 'Zapisz...'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 465
    Height = 81
    Caption = ' Parametry systemu '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 83
      Height = 13
      Caption = 'Iloœæ skreœleñ:'
    end
    object Label2: TLabel
      Left = 168
      Top = 24
      Width = 62
      Height = 13
      Caption = 'Iloœæ liczb:'
    end
    object Label3: TLabel
      Left = 304
      Top = 24
      Width = 91
      Height = 13
      Caption = 'Iloœæ zak³adów:'
    end
    object Label4: TLabel
      Left = 8
      Top = 56
      Width = 79
      Height = 13
      Caption = 'Opis systemu:'
    end
    object Edit1: TEdit
      Left = 104
      Top = 48
      Width = 345
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 255
      ParentFont = False
      TabOrder = 3
    end
    object SpinEdit1: TSpinEdit
      Left = 104
      Top = 16
      Width = 49
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 10
      MinValue = 1
      ParentFont = False
      TabOrder = 0
      Value = 10
      OnChange = SpinEdit1Change
    end
    object SpinEdit2: TSpinEdit
      Left = 240
      Top = 16
      Width = 49
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 80
      MinValue = 10
      ParentFont = False
      TabOrder = 1
      Value = 10
    end
    object SpinEdit3: TSpinEdit
      Left = 400
      Top = 16
      Width = 49
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 1000
      MinValue = 1
      ParentFont = False
      TabOrder = 2
      Value = 10
      OnChange = SpinEdit3Change
    end
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 88
    Width = 361
    Height = 256
    ColCount = 11
    DefaultColWidth = 30
    DefaultRowHeight = 20
    RowCount = 11
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing, goTabs, goThumbTracking]
    TabOrder = 0
    OnKeyPress = StringGrid1KeyPress
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'mss'
    Filter = 'Matryca systemu (*.mss)|*.mss'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Zapisz matryce systemu...'
    Left = 368
    Top = 88
  end
end
