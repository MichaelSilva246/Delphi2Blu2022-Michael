object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 32
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object btnAdd: TButton
    Left = 32
    Top = 51
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 1
    OnClick = btnAddClick
  end
  object btnCapacity: TButton
    Left = 32
    Top = 149
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 2
    OnClick = btnCapacityClick
  end
  object btnCount: TButton
    Left = 32
    Top = 180
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 3
    OnClick = btnCountClick
  end
  object btnListar: TButton
    Left = 32
    Top = 118
    Width = 75
    Height = 25
    Caption = 'Listar'
    TabOrder = 4
    OnClick = btnListarClick
  end
  object btnNotify: TButton
    Left = 32
    Top = 211
    Width = 75
    Height = 25
    Caption = 'OnNotify'
    TabOrder = 5
    OnClick = btnNotifyClick
  end
  object btnRemove: TButton
    Left = 32
    Top = 87
    Width = 75
    Height = 25
    Caption = 'Remove'
    TabOrder = 6
    OnClick = btnRemoveClick
  end
  object Memo1: TMemo
    Left = 176
    Top = 24
    Width = 185
    Height = 212
    Lines.Strings = (
      'Memo1')
    TabOrder = 7
  end
end
