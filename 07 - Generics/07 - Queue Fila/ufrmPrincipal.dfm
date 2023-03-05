object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 303
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
  object btnEnqueue: TButton
    Left = 40
    Top = 58
    Width = 75
    Height = 25
    Caption = 'Enqueue'
    TabOrder = 0
    OnClick = btnEnqueueClick
  end
  object btnDequeue: TButton
    Left = 40
    Top = 89
    Width = 75
    Height = 25
    Caption = 'Dequeue'
    TabOrder = 1
    OnClick = btnDequeueClick
  end
  object btnExtract: TButton
    Left = 40
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Extract'
    TabOrder = 2
    OnClick = btnExtractClick
  end
  object btnPeek: TButton
    Left = 40
    Top = 151
    Width = 75
    Height = 25
    Caption = 'Peek'
    TabOrder = 3
    OnClick = btnPeekClick
  end
  object btnTrimExcess: TButton
    Left = 40
    Top = 182
    Width = 75
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 4
    OnClick = btnTrimExcessClick
  end
  object btnCount: TButton
    Left = 40
    Top = 213
    Width = 75
    Height = 25
    Caption = 'Count'
    TabOrder = 5
    OnClick = btnCountClick
  end
  object btnCapacity: TButton
    Left = 40
    Top = 244
    Width = 75
    Height = 25
    Caption = 'Capacity'
    TabOrder = 6
    OnClick = btnCapacityClick
  end
  object Edit1: TEdit
    Left = 40
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'Edit1'
  end
  object Memo1: TMemo
    Left = 200
    Top = 16
    Width = 185
    Height = 253
    Lines.Strings = (
      'Memo1')
    TabOrder = 8
  end
end
