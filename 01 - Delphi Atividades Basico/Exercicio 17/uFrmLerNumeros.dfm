object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 256
  ClientWidth = 279
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
    Left = 79
    Top = 21
    Width = 59
    Height = 13
    Caption = 'Ler numeros'
  end
  object Label2: TLabel
    Left = 95
    Top = 109
    Width = 42
    Height = 13
    Caption = 'Numeros'
  end
  object lbResultado: TLabel
    Left = 200
    Top = 40
    Width = 56
    Height = 13
    Caption = 'lbResultado'
  end
  object btnLer: TButton
    Left = 72
    Top = 67
    Width = 74
    Height = 22
    Caption = 'Ler'
    TabOrder = 0
    OnClick = btnLerClick
  end
  object mmMemo1: TMemo
    Left = 31
    Top = 128
    Width = 178
    Height = 120
    TabOrder = 1
  end
  object edtLer: TEdit
    Left = 72
    Top = 40
    Width = 81
    Height = 21
    TabOrder = 2
  end
end
