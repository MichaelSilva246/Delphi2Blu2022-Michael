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
    Left = 40
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object btnPush: TButton
    Left = 40
    Top = 57
    Width = 75
    Height = 25
    Caption = 'Push'
    TabOrder = 1
    OnClick = btnPushClick
  end
  object btnPop: TButton
    Left = 40
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Pop'
    TabOrder = 2
    OnClick = btnPopClick
  end
  object btnExtract: TButton
    Left = 40
    Top = 119
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 3
    OnClick = btnExtractClick
  end
  object btnPeek: TButton
    Left = 40
    Top = 150
    Width = 75
    Height = 25
    Caption = 'Peek'
    TabOrder = 4
    OnClick = btnPeekClick
  end
  object btnTrimExcess: TButton
    Left = 40
    Top = 181
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 5
  end
  object btnCount: TButton
    Left = 40
    Top = 212
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 6
    OnClick = btnCountClick
  end
  object btnCapacity: TButton
    Left = 40
    Top = 243
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 7
    OnClick = btnCapacityClick
  end
  object Memo1: TMemo
    Left = 208
    Top = 24
    Width = 185
    Height = 244
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
end
