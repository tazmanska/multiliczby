object Form34: TForm34
  Left = 203
  Top = 209
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Pluginy...'
  ClientHeight = 271
  ClientWidth = 617
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
    Left = 8
    Top = 8
    Width = 601
    Height = 193
    Caption = ' Pluginy '
    TabOrder = 0
    object StringGrid1: TStringGrid
      Left = 8
      Top = 16
      Width = 585
      Height = 172
      ColCount = 4
      DefaultRowHeight = 20
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
      TabOrder = 0
      OnSelectCell = StringGrid1SelectCell
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 208
    Width = 601
    Height = 57
    Caption = ' Akcja '
    TabOrder = 1
    object Button1: TButton
      Left = 224
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Uruchom'
      Enabled = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 512
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Szukaj'
      TabOrder = 1
      Visible = False
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 304
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Zamknij'
      Enabled = False
      TabOrder = 2
      OnClick = Button3Click
    end
  end
end
