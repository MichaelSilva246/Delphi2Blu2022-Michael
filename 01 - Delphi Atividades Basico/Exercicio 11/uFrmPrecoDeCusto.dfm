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
    Left = 32
    Top = 56
    Width = 78
    Height = 13
    Caption = 'Pre'#231'o de custo: '
  end
  object Label2: TLabel
    Left = 40
    Top = 91
    Width = 70
    Height = 13
    Caption = 'Impostos (%):'
  end
  object lbValorDaVenda: TLabel
    Left = 31
    Top = 184
    Width = 79
    Height = 13
    Caption = 'Valor da venda: '
  end
  object edtValorDeCusto: TEdit
    Left = 128
    Top = 53
    Width = 129
    Height = 21
    TabOrder = 0
  end
  object edtValorDeImpostos: TEdit
    Left = 128
    Top = 88
    Width = 129
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 128
    Top = 128
    Width = 129
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
end
