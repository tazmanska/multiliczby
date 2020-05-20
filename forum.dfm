object forum_form: Tforum_form
  Left = 191
  Top = 137
  Width = 676
  Height = 524
  Caption = 'Forum u'#380'ytkownik'#243'w'
  Color = clBtnFace
  Constraints.MinHeight = 340
  Constraints.MinWidth = 440
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
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 284
    Width = 668
    Height = 12
    Cursor = crVSplit
    Align = alBottom
    Beveled = True
    ResizeStyle = rsLine
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 668
    Height = 284
    Align = alClient
    Caption = ' Lista wiadomo'#347'ci '
    Constraints.MinHeight = 100
    TabOrder = 0
    object wiadomosci_lista: TListView
      Left = 2
      Top = 15
      Width = 664
      Height = 267
      Align = alClient
      Columns = <
        item
          Caption = 'Lp.'
        end
        item
          Caption = 'Data'
          Width = 115
        end
        item
          Caption = 'Autor'
          Width = 100
        end
        item
          Caption = 'Temat'
          Width = 375
        end>
      ReadOnly = True
      RowSelect = True
      TabOrder = 0
      ViewStyle = vsReport
      OnSelectItem = wiadomosci_listaSelectItem
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 296
    Width = 668
    Height = 108
    Align = alBottom
    Caption = ' Wiadomo'#347#263' '
    Constraints.MinHeight = 100
    TabOrder = 1
    object wiadomosc_memo: TMemo
      Left = 2
      Top = 15
      Width = 664
      Height = 91
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 404
    Width = 668
    Height = 49
    Align = alBottom
    Caption = ' Opcje '
    TabOrder = 2
    DesignSize = (
      668
      49)
    object Button1: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Napisz...'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 88
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Odpowiedz...'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 168
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Usu'#324
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 586
      Top = 16
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'Odczytaj'
      TabOrder = 3
      OnClick = Button4Click
    end
  end
  object status: TListBox
    Left = 0
    Top = 453
    Width = 668
    Height = 44
    Align = alBottom
    Color = clScrollBar
    ExtendedSelect = False
    ItemHeight = 13
    TabOrder = 3
  end
end
