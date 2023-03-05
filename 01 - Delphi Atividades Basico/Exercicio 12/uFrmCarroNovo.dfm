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
    Left = 176
    Top = 16
    Width = 54
    Height = 13
    Caption = 'Carro novo'
  end
  object Label2: TLabel
    Left = 32
    Top = 64
    Width = 86
    Height = 13
    Caption = 'Custo de f'#225'brica: '
  end
  object edtCustoDeFabrica: TEdit
    Left = 124
    Top = 61
    Width = 113
    Height = 21
    TabOrder = 0
  end
  object mmObs: TMemo
    Left = 32
    Top = 144
    Width = 209
    Height = 105
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 124
    Top = 104
    Width = 113
    Height = 17
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
end
