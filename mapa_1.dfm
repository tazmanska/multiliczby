object mapa1form: Tmapa1form
  Left = 247
  Top = 170
  Width = 642
  Height = 480
  Caption = 'Mapa I'
  Color = clBtnFace
  Constraints.MinHeight = 300
  Constraints.MinWidth = 640
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 370
    Width = 634
    Height = 8
    Cursor = crArrow
    Align = alBottom
    AutoSnap = False
  end
  object StringGrid1: TStringGrid
    Left = 0
    Top = 0
    Width = 634
    Height = 370
    Align = alClient
    ColCount = 81
    DefaultColWidth = 14
    DefaultRowHeight = 14
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Arial'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goThumbTracking]
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnContextPopup = StringGrid1ContextPopup
    OnDrawCell = StringGrid1DrawCell
    OnSelectCell = StringGrid1SelectCell
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 378
    Width = 634
    Height = 75
    Align = alBottom
    Constraints.MaxHeight = 75
    Constraints.MinHeight = 75
    TabOrder = 1
    object SpeedButton1: TSpeedButton
      Left = 544
      Top = 44
      Width = 49
      Height = 25
      Caption = 'Poka'#380
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton5: TSpeedButton
      Left = 603
      Top = 46
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
    object Label46: TLabel
      Left = 40
      Top = 52
      Width = 30
      Height = 13
      Caption = 'Mapa:'
    end
    object Label47: TLabel
      Left = 248
      Top = 52
      Width = 24
      Height = 13
      Caption = 'Tryb:'
    end
    object Label48: TLabel
      Left = 344
      Top = 52
      Width = 53
      Height = 13
      Caption = 'Wy'#347'wietlaj:'
    end
    object Label49: TLabel
      Left = 160
      Top = 52
      Width = 28
      Height = 13
      Caption = 'Skok:'
    end
    object SB_pamietaj: TSpeedButton
      Left = 8
      Top = 47
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
    object Shape2: TShape
      Left = 512
      Top = 50
      Width = 21
      Height = 21
      Cursor = crHandPoint
      Hint = 'Kliknij aby zmieni'#263' kolor t'#322'a'
      ParentShowHint = False
      ShowHint = True
      OnMouseUp = Shape2MouseUp
    end
    object Shape1: TShape
      Left = 496
      Top = 42
      Width = 21
      Height = 21
      Cursor = crHandPoint
      Hint = 'Kliknij aby zmieni'#263' kolor kom'#243'rki'
      ParentShowHint = False
      ShowHint = True
      OnMouseUp = Shape1MouseUp
    end
    object ComboBox1: TComboBox
      Left = 72
      Top = 47
      Width = 81
      Height = 22
      Style = csOwnerDrawVariable
      ItemHeight = 16
      TabOrder = 0
      OnChange = ComboBox1Change
      Items.Strings = (
        'Wyst'#261'pie'#324
        'Powt'#243'rze'#324)
    end
    object ComboBox2: TComboBox
      Left = 274
      Top = 47
      Width = 65
      Height = 22
      Style = csOwnerDrawVariable
      ItemHeight = 16
      TabOrder = 1
      OnChange = ComboBox2Change
      Items.Strings = (
        'Liczb'
        'Pozycji')
    end
    object ComboBox3: TComboBox
      Left = 400
      Top = 47
      Width = 89
      Height = 22
      Style = csOwnerDrawVariable
      ItemHeight = 16
      TabOrder = 2
      Items.Strings = (
        'Liczbe'
        'Oczekiwanie')
    end
    object SpinEdit15: TSpinEdit
      Left = 192
      Top = 47
      Width = 49
      Height = 22
      MaxValue = 100
      MinValue = 1
      TabOrder = 3
      Value = 1
    end
    object CheckBox1: TCheckBox
      Left = 8
      Top = 16
      Width = 201
      Height = 17
      Caption = 'Poka'#380' tylko kolumny z oczekiwaniem'
      TabOrder = 4
      OnClick = CheckBox1Click
    end
    object ComboBox4: TComboBox
      Left = 210
      Top = 12
      Width = 47
      Height = 22
      Style = csOwnerDrawVariable
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 5
      Items.Strings = (
        '<'
        '<='
        '='
        '=>'
        '>')
    end
    object SpinEdit1: TSpinEdit
      Left = 262
      Top = 12
      Width = 51
      Height = 22
      Enabled = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 6
      Value = 0
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 596
    Top = 19
    object gdh1: TMenuItem
      Caption = 'Rozmiar kom'#243'rki'
      Default = True
      Enabled = False
    end
    object Pole8x81: TMenuItem
      Caption = 'Pole 10x10'
      RadioItem = True
      OnClick = Pole8x81Click
    end
    object Pole10x101: TMenuItem
      Caption = 'Pole 12x12'
      RadioItem = True
      OnClick = Pole10x101Click
    end
    object Pole12x121: TMenuItem
      Caption = 'Pole 14x14'
      Checked = True
      RadioItem = True
      OnClick = Pole12x121Click
    end
    object Pole16x161: TMenuItem
      Caption = 'Pole 16x16'
      RadioItem = True
      OnClick = Pole16x161Click
    end
    object Pole18x181: TMenuItem
      Caption = 'Pole 18x18'
      RadioItem = True
      OnClick = Pole18x181Click
    end
    object Pole20x201: TMenuItem
      Caption = 'Pole 20x20'
      RadioItem = True
      OnClick = Pole20x201Click
    end
  end
end
