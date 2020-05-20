object Form28: TForm28
  Left = 112
  Top = 105
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Sprawd'#378' system...'
  ClientHeight = 329
  ClientWidth = 633
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 313
    Height = 329
    Caption = ' System '
    TabOrder = 0
    object SpeedButton1: TSpeedButton
      Left = 112
      Top = 288
      Width = 81
      Height = 25
      Caption = 'Wczytaj'
      Flat = True
      OnClick = SpeedButton1Click
    end
    object ListBox1: TListBox
      Left = 8
      Top = 16
      Width = 297
      Height = 257
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox2: TGroupBox
    Left = 320
    Top = 0
    Width = 313
    Height = 329
    Caption = ' Raport '
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 308
      Width = 21
      Height = 13
      Caption = 'Od:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 104
      Top = 308
      Width = 19
      Height = 13
      Caption = 'do:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 224
      Top = 288
      Width = 81
      Height = 25
      Caption = 'Sprawd'#378
      Flat = True
      OnClick = SpeedButton2Click
    end
    object Memo1: TMemo
      Left = 8
      Top = 16
      Width = 297
      Height = 257
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object SpinEdit1: TSpinEdit
      Left = 32
      Top = 299
      Width = 65
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 1
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Value = 1
      OnChange = SpinEdit1Change
    end
    object SpinEdit2: TSpinEdit
      Left = 128
      Top = 299
      Width = 65
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      Value = 0
      OnChange = SpinEdit2Change
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 280
      Width = 129
      Height = 17
      Caption = 'Pomijaj pierwsz'#261' liczb'#281
      TabOrder = 3
    end
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = 'txt'
    Filter = 'Plik tekstowy z systemem (*.txt)|*.txt'
    Title = 'Otw'#243'rz plik z systemem...'
    Left = 8
    Top = 288
  end
end
