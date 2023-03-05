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
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 91
    Height = 13
    Caption = 'Quantas pessoas ?'
  end
  object edtEntrada: TEdit
    Left = 40
    Top = 56
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object btnExecutar: TButton
    Left = 40
    Top = 96
    Width = 89
    Height = 25
    Caption = 'Executar'
    TabOrder = 1
    OnClick = btnExecutarClick
  end
  object mmObs: TMemo
    Left = 40
    Top = 152
    Width = 305
    Height = 105
    TabOrder = 2
  end
end
