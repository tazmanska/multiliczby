object Form11: TForm11
  Left = 207
  Top = 118
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #321#261'cz w pary/tr'#243'jki...'
  ClientHeight = 335
  ClientWidth = 573
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
    Left = 16
    Top = 256
    Width = 56
    Height = 25
    Caption = 'Liczby I'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 90
    Top = 256
    Width = 56
    Height = 25
    Caption = 'Liczby II'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object Label1: TLabel
    Left = 32
    Top = 314
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
    Left = 128
    Top = 314
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
  object SpeedButton3: TSpeedButton
    Left = 264
    Top = 302
    Width = 89
    Height = 25
    Caption = 'Oblicz'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton3Click
  end
  object SpeedButton5: TSpeedButton
    Left = 542
    Top = 305
    Width = 23
    Height = 22
    Hint = 'Zapisz do pliku...'
    Flat = True
    Glyph.Data = {
      36030000424D3603000000000000360000002800000010000000100000000100
      18000000000000030000C40E0000C40E00000000000000000000008080008080
      0080800080800080800080800080800080800080800080800080800080800080
      800080800080800080800080800000000000000000000000007F7F7F7F7F7F7F
      7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000000000008080008080000000000000
      0000000000000000007F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
      000000000000000080800000000000000000000000000000007F7F7FBFBFBF00
      0000000000BFBFBFBFBFBFBFBFBF000000000000000000008080000000000000
      0000000000000000007F7F7FBFBFBF000000000000BFBFBFBFBFBFBFBFBF0000
      000000000000000080800000000000000000000000000000007F7F7FBFBFBFBF
      BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000008080000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000808000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000008080000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000008080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000008080000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000008080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000008080000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      00000000000000008080000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F7F000000008080000000000000
      000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
      000000000000000080800080800000000000000000FF0000FF0000FF0000FF00
      00FF0000FF0000FF0000FF0000FF000000000000008080008080}
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton5Click
  end
  object SpeedButton4: TSpeedButton
    Left = 164
    Top = 256
    Width = 56
    Height = 25
    Caption = 'Liczby III'
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton4Click
  end
  object SpeedButton6: TSpeedButton
    Left = 72
    Top = 256
    Width = 17
    Height = 17
    Hint = 'Kasuj Liczby I'
    Caption = 'X'
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton6Click
  end
  object SpeedButton7: TSpeedButton
    Left = 146
    Top = 256
    Width = 17
    Height = 17
    Hint = 'Kasuj Liczby II'
    Caption = 'X'
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton7Click
  end
  object SpeedButton8: TSpeedButton
    Left = 220
    Top = 256
    Width = 17
    Height = 17
    Hint = 'Kasuj Liczby III'
    Caption = 'X'
    Flat = True
    ParentShowHint = False
    ShowHint = True
    OnClick = SpeedButton8Click
  end
  object SB_pamietaj: TSpeedButton
    Left = 0
    Top = 318
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
  object StringGrid1: TStringGrid
    Left = 16
    Top = 16
    Width = 220
    Height = 235
    ColCount = 4
    DefaultRowHeight = 20
    RowCount = 11
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
    ScrollBars = ssNone
    TabOrder = 0
  end
  object StringGrid2: TStringGrid
    Left = 264
    Top = 16
    Width = 306
    Height = 235
    DefaultRowHeight = 20
    RowCount = 101
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
    ScrollBars = ssVertical
    TabOrder = 1
    OnContextPopup = StringGrid2ContextPopup
  end
  object SpinEdit1: TSpinEdit
    Left = 56
    Top = 305
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
    TabOrder = 2
    Value = 0
    OnChange = SpinEdit1Change
  end
  object SpinEdit2: TSpinEdit
    Left = 152
    Top = 305
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
    TabOrder = 3
    Value = 0
    OnChange = SpinEdit2Change
  end
  object RadioButton1: TRadioButton
    Left = 264
    Top = 256
    Width = 49
    Height = 17
    Caption = 'Pary'
    Checked = True
    TabOrder = 4
    TabStop = True
  end
  object RadioButton2: TRadioButton
    Left = 264
    Top = 272
    Width = 49
    Height = 17
    Caption = 'Tr'#243'jki'
    TabOrder = 5
  end
  object PopupMenu2: TPopupMenu
    Left = 456
    Top = 304
    object Czstocimalejco1: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> malej'#261'co'
      OnClick = Czstocimalejco1Click
    end
    object Czstocirosnco1: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> rosn'#261'co'
      OnClick = Czstocirosnco1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Maxmalejco1: TMenuItem
      Caption = 'Max -> malej'#261'co'
      OnClick = Maxmalejco1Click
    end
    object Maxrosnco1: TMenuItem
      Caption = 'Max -> rosn'#261'co'
      OnClick = Maxrosnco1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Oczekiwaniemalejco1: TMenuItem
      Caption = 'Oczekiwanie -> malej'#261'co'
      OnClick = Oczekiwaniemalejco1Click
    end
    object Oczekiwanierosnco1: TMenuItem
      Caption = 'Oczekiwanie -> rosn'#261'co'
      OnClick = Oczekiwanierosnco1Click
    end
  end
end
