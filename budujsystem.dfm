object Form25: TForm25
  Left = 128
  Top = 181
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Buduj system...'
  ClientHeight = 348
  ClientWidth = 758
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
    Left = 173
    Top = 320
    Width = 108
    Height = 25
    Caption = 'Generuj i poka'#380
    Flat = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton5: TSpeedButton
    Left = 732
    Top = 318
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
  object SB_pamietaj: TSpeedButton
    Left = 0
    Top = 331
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 441
    Height = 73
    Caption = ' Parametry systemu '
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 48
      Height = 13
      Caption = 'Ilo'#347#263' stref:'
    end
    object Label2: TLabel
      Left = 112
      Top = 24
      Width = 91
      Height = 13
      Caption = 'Ilo'#347#263' liczb w strefie:'
    end
    object Label3: TLabel
      Left = 256
      Top = 24
      Width = 110
      Height = 13
      Caption = 'Wybieraj liczb ze strefy:'
    end
    object Label10: TLabel
      Left = 8
      Top = 48
      Width = 49
      Height = 13
      Caption = 'Ilo'#347#263' liczb:'
    end
    object SpinEdit1: TSpinEdit
      Left = 64
      Top = 16
      Width = 41
      Height = 22
      Ctl3D = True
      EditorEnabled = False
      MaxValue = 10
      MinValue = 2
      ParentCtl3D = False
      TabOrder = 0
      Value = 2
      OnChange = SpinEdit1Change
    end
    object SpinEdit2: TSpinEdit
      Left = 208
      Top = 16
      Width = 41
      Height = 22
      EditorEnabled = False
      MaxValue = 5
      MinValue = 2
      TabOrder = 1
      Value = 2
      OnChange = SpinEdit2Change
    end
    object SpinEdit3: TSpinEdit
      Left = 376
      Top = 16
      Width = 41
      Height = 22
      EditorEnabled = False
      MaxValue = 1
      MinValue = 1
      ReadOnly = True
      TabOrder = 2
      Value = 1
      OnChange = SpinEdit1Change
    end
    object SpinEdit4: TSpinEdit
      Left = 64
      Top = 40
      Width = 41
      Height = 22
      Ctl3D = True
      EditorEnabled = False
      MaxValue = 5
      MinValue = 1
      ParentCtl3D = False
      TabOrder = 3
      Value = 1
      OnChange = SpinEdit1Change
    end
  end
  object StringGrid1: TStringGrid
    Left = 8
    Top = 80
    Width = 441
    Height = 235
    ColCount = 3
    Ctl3D = True
    DefaultColWidth = 78
    DefaultRowHeight = 20
    RowCount = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Default'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing, goTabs, goThumbTracking]
    ParentCtl3D = False
    ParentFont = False
    ScrollBars = ssNone
    TabOrder = 1
    OnKeyPress = StringGrid1KeyPress
  end
  object GroupBox2: TGroupBox
    Left = 456
    Top = 0
    Width = 297
    Height = 73
    Caption = ' System '
    TabOrder = 2
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 44
      Height = 13
      Caption = 'Skre'#347'le'#324':'
    end
    object Label5: TLabel
      Left = 88
      Top = 16
      Width = 52
      Height = 13
      Caption = 'Zak'#322'ad'#243'w:'
    end
    object Label6: TLabel
      Left = 8
      Top = 32
      Width = 29
      Height = 13
      Caption = 'Koszt:'
    end
    object Label7: TLabel
      Left = 64
      Top = 16
      Width = 6
      Height = 13
      Caption = '?'
    end
    object Label8: TLabel
      Left = 144
      Top = 16
      Width = 6
      Height = 13
      Caption = '?'
    end
    object Label9: TLabel
      Left = 46
      Top = 32
      Width = 6
      Height = 13
      Caption = '?'
    end
    object Label11: TLabel
      Left = 8
      Top = 48
      Width = 28
      Height = 13
      Caption = 'Liczb:'
    end
    object Label12: TLabel
      Left = 46
      Top = 48
      Width = 6
      Height = 13
      Caption = '?'
    end
  end
  object memo1: TRichEdit
    Left = 456
    Top = 80
    Width = 297
    Height = 235
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    PlainText = True
    ScrollBars = ssBoth
    TabOrder = 3
  end
  object PopupMenu1: TPopupMenu
    Left = 544
    Top = 320
    object Zapiszdoplikutekstowego1: TMenuItem
      Caption = 'Zapisz do pliku tekstowego'
      OnClick = Zapiszdoplikutekstowego1Click
    end
    object Zapiszjakomatryce1: TMenuItem
      Caption = 'Zapisz jako matryce'
      OnClick = Zapiszjakomatryce1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'mss'
    Filter = 'Matryca systemu (*.mss)|*.mss'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Title = 'Zapisz matryce systemu...'
    Left = 504
    Top = 320
  end
end
