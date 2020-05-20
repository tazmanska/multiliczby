object Form21: TForm21
  Left = 295
  Top = 213
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Okresowo'#347#263'...'
  ClientHeight = 324
  ClientWidth = 529
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
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 513
    Height = 129
    Stretch = True
  end
  object Label1: TLabel
    Left = 24
    Top = 305
    Width = 121
    Height = 13
    Caption = 'Licz do losowania nr:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton1: TSpeedButton
    Left = 224
    Top = 293
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
    Top = 264
    Width = 513
    Height = 20
    Progress = 0
  end
  object Label2: TLabel
    Left = 8
    Top = 232
    Width = 79
    Height = 13
    Caption = 'D'#322'ugo'#347#263' okresu:'
  end
  object Label3: TLabel
    Left = 152
    Top = 232
    Width = 79
    Height = 13
    Caption = 'Poka'#380' dla liczby:'
  end
  object Label4: TLabel
    Left = 296
    Top = 232
    Width = 90
    Height = 13
    Caption = 'Max ilo'#347#263' okres'#243'w:'
  end
  object Label5: TLabel
    Left = 8
    Top = 152
    Width = 23
    Height = 13
    Caption = 'Max:'
  end
  object Label6: TLabel
    Left = 8
    Top = 168
    Width = 20
    Height = 13
    Caption = 'Min:'
  end
  object Label7: TLabel
    Left = 40
    Top = 152
    Width = 6
    Height = 13
    Caption = '?'
  end
  object Label8: TLabel
    Left = 40
    Top = 168
    Width = 6
    Height = 13
    Caption = '?'
  end
  object Label9: TLabel
    Left = 8
    Top = 184
    Width = 130
    Height = 13
    Hint = 'Co ile losowa'#324' liczba wpada?'
    Caption = #346'rednia dla wybranej liczby:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label10: TLabel
    Left = 144
    Top = 184
    Width = 6
    Height = 13
    Caption = '?'
  end
  object Label11: TLabel
    Left = 176
    Top = 184
    Width = 130
    Height = 13
    Hint = 'Ile razy liczba wpada w ci'#261'gu jednego okresu?'
    Caption = #346'rednia dla wybranej liczby:'
    ParentShowHint = False
    ShowHint = True
  end
  object Label12: TLabel
    Left = 312
    Top = 184
    Width = 6
    Height = 13
    Caption = '?'
  end
  object Label13: TLabel
    Left = 8
    Top = 200
    Width = 148
    Height = 13
    Caption = 'Ilo'#347#263' wpadni'#281#263' wybranej liczby:'
    ParentShowHint = False
    ShowHint = False
  end
  object Label14: TLabel
    Left = 160
    Top = 200
    Width = 6
    Height = 13
    Caption = '?'
  end
  object SB_pamietaj: TSpeedButton
    Left = 0
    Top = 307
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
  object SpeedButton5: TSpeedButton
    Left = 501
    Top = 297
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
  object SpinEdit1: TSpinEdit
    Left = 152
    Top = 296
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
    TabOrder = 0
    Value = 1
    OnChange = SpinEdit1Change
  end
  object SpinEdit2: TSpinEdit
    Left = 96
    Top = 224
    Width = 49
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 100
    MinValue = 5
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    Value = 5
    OnChange = SpinEdit2Change
  end
  object ComboBox1: TComboBox
    Left = 240
    Top = 224
    Width = 41
    Height = 22
    Style = csOwnerDrawFixed
    DropDownCount = 10
    ItemHeight = 16
    TabOrder = 3
    OnChange = ComboBox1Change
  end
  object SpinEdit3: TSpinEdit
    Left = 392
    Top = 224
    Width = 41
    Height = 22
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 20
    MinValue = 2
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    Value = 10
  end
  object StringGrid1: TStringGrid
    Left = 72
    Top = 152
    Width = 424
    Height = 24
    Color = clActiveCaption
    ColCount = 20
    DefaultColWidth = 20
    DefaultRowHeight = 20
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goRowSelect]
    TabOrder = 1
  end
  object CheckBox1: TCheckBox
    Left = 360
    Top = 184
    Width = 153
    Height = 17
    Caption = 'Wy'#347'wietlaj ilo'#347#263' na wykresie'
    Checked = True
    State = cbChecked
    TabOrder = 5
  end
  object CheckBox2: TCheckBox
    Left = 184
    Top = 200
    Width = 121
    Height = 17
    Caption = 'Zaz'#281'biaj losowania o:'
    TabOrder = 6
    OnClick = CheckBox2Click
  end
  object SpinEdit4: TSpinEdit
    Left = 312
    Top = 200
    Width = 41
    Height = 22
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxValue = 49
    MinValue = 1
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    Value = 2
  end
end
