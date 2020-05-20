object Form20: TForm20
  Left = 278
  Top = 204
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Statystyki pozycji...'
  ClientHeight = 353
  ClientWidth = 513
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
    Top = 330
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
    Left = 120
    Top = 330
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
  object SpeedButton1: TSpeedButton
    Left = 216
    Top = 318
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
    OnClick = SpeedButton1Click
  end
  object Gauge1: TGauge
    Left = 8
    Top = 291
    Width = 497
    Height = 20
    Progress = 0
  end
  object Label9: TLabel
    Left = 320
    Top = 330
    Width = 40
    Height = 13
    Caption = 'Skok co'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 432
    Top = 330
    Width = 42
    Height = 13
    Caption = 'losowa'#324'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object SpeedButton5: TSpeedButton
    Left = 485
    Top = 322
    Width = 23
    Height = 22
    Hint = 'Zapisz do pliku...'
    Enabled = False
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
  object SB_pamietaj: TSpeedButton
    Left = 0
    Top = 336
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
    Left = 48
    Top = 321
    Width = 65
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 0
    MinValue = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    Value = 0
    OnChange = SpinEdit1Change
  end
  object SpinEdit2: TSpinEdit
    Left = 144
    Top = 321
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
    TabOrder = 1
    Value = 0
    OnChange = SpinEdit2Change
  end
  object SpinEdit3: TSpinEdit
    Left = 368
    Top = 321
    Width = 57
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxValue = 100
    MinValue = 1
    ParentFont = False
    TabOrder = 2
    Value = 1
  end
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 497
    Height = 273
    ActivePage = TabSheet1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    Style = tsFlatButtons
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Pojedyncze pozycje'
      object StringGridpoj: TStringGrid
        Left = 144
        Top = 4
        Width = 340
        Height = 235
        ColCount = 6
        DefaultRowHeight = 20
        RowCount = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ParentFont = False
        TabOrder = 0
        OnContextPopup = StringGridpojContextPopup
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Pary pozycji'
      ImageIndex = 1
      object StringGridpar: TStringGrid
        Left = 144
        Top = 4
        Width = 340
        Height = 235
        ColCount = 6
        DefaultRowHeight = 20
        RowCount = 191
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ParentFont = False
        TabOrder = 0
        OnContextPopup = StringGridparContextPopup
      end
      object CheckBox1: TCheckBox
        Left = 0
        Top = 8
        Width = 121
        Height = 17
        Caption = 'Ka'#380'da pozycja tylko:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox1Click
      end
      object SpinEdit9: TSpinEdit
        Left = 40
        Top = 28
        Width = 41
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxValue = 5
        MinValue = 1
        ParentFont = False
        TabOrder = 2
        Value = 1
      end
      object CheckBox4: TCheckBox
        Left = 16
        Top = 56
        Width = 105
        Height = 17
        Caption = 'Sortuj tylko tabele'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CheckBox4Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Tr'#243'jki pozycji'
      ImageIndex = 2
      object StringGridtroj: TStringGrid
        Left = 144
        Top = 4
        Width = 340
        Height = 235
        ColCount = 6
        DefaultRowHeight = 20
        RowCount = 1141
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect, goThumbTracking]
        ParentFont = False
        TabOrder = 0
        OnContextPopup = StringGridtrojContextPopup
      end
      object CheckBox2: TCheckBox
        Left = 0
        Top = 8
        Width = 121
        Height = 17
        Caption = 'Ka'#380'da pozycja tylko:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = CheckBox2Click
      end
      object SpinEdit4: TSpinEdit
        Left = 40
        Top = 28
        Width = 41
        Height = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxValue = 5
        MinValue = 1
        ParentFont = False
        TabOrder = 2
        Value = 1
      end
      object CheckBox3: TCheckBox
        Left = 16
        Top = 56
        Width = 105
        Height = 17
        Caption = 'Sortuj tylko tabele'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = CheckBox3Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 16
    Top = 32
    object Liczbymalejco1: TMenuItem
      Caption = 'Liczby -> malej'#261'co'
      OnClick = Liczbymalejco1Click
    end
    object Liczbyrosnce1: TMenuItem
      Caption = 'Liczby -> rosn'#261'ce'
      OnClick = Liczbyrosnce1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MenuItem9: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> malej'#261'co'
      OnClick = MenuItem9Click
    end
    object MenuItem10: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> rosn'#261'co'
      OnClick = MenuItem10Click
    end
    object MenuItem11: TMenuItem
      Caption = '-'
    end
    object MenuItem12: TMenuItem
      Caption = 'Max -> malej'#261'co'
      OnClick = MenuItem12Click
    end
    object MenuItem13: TMenuItem
      Caption = 'Max -> rosn'#261'co'
      OnClick = MenuItem13Click
    end
    object MenuItem14: TMenuItem
      Caption = '-'
    end
    object MenuItem15: TMenuItem
      Caption = 'Oczekiwanie -> malej'#261'co'
      OnClick = MenuItem15Click
    end
    object MenuItem16: TMenuItem
      Caption = 'Oczekiwanie -> rosn'#261'co'
      OnClick = MenuItem16Click
    end
  end
  object PopupMenu2: TPopupMenu
    Left = 144
    Top = 32
    object MenuItem4: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> malej'#261'co'
      OnClick = MenuItem4Click
    end
    object MenuItem5: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> rosn'#261'co'
      OnClick = MenuItem5Click
    end
    object MenuItem6: TMenuItem
      Caption = '-'
    end
    object MenuItem7: TMenuItem
      Caption = 'Max -> malej'#261'co'
      OnClick = MenuItem7Click
    end
    object MenuItem8: TMenuItem
      Caption = 'Max -> rosn'#261'co'
      OnClick = MenuItem8Click
    end
    object MenuItem17: TMenuItem
      Caption = '-'
    end
    object MenuItem18: TMenuItem
      Caption = 'Oczekiwanie -> malej'#261'co'
      OnClick = MenuItem18Click
    end
    object MenuItem19: TMenuItem
      Caption = 'Oczekiwanie -> rosn'#261'co'
      OnClick = MenuItem19Click
    end
  end
  object PopupMenu3: TPopupMenu
    Left = 232
    Top = 32
    object MenuItem1: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> malej'#261'co'
      OnClick = MenuItem1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Cz'#281'sto'#347'ci -> rosn'#261'co'
      OnClick = MenuItem2Click
    end
    object MenuItem3: TMenuItem
      Caption = '-'
    end
    object MenuItem20: TMenuItem
      Caption = 'Max -> malej'#261'co'
      OnClick = MenuItem20Click
    end
    object MenuItem21: TMenuItem
      Caption = 'Max -> rosn'#261'co'
      OnClick = MenuItem21Click
    end
    object MenuItem22: TMenuItem
      Caption = '-'
    end
    object MenuItem23: TMenuItem
      Caption = 'Oczekiwanie -> malej'#261'co'
      OnClick = MenuItem23Click
    end
    object MenuItem24: TMenuItem
      Caption = 'Oczekiwanie -> rosn'#261'co'
      OnClick = MenuItem24Click
    end
  end
end
