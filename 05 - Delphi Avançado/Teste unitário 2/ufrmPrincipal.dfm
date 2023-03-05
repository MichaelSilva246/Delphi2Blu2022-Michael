object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 298
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 0
    Top = 0
    Width = 324
    Height = 39
    Align = alTop
    Alignment = taCenter
    Caption = 'Calcular desconto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 284
  end
  object edtNomeProduto: TEdit
    Left = 96
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Nome do Produto'
  end
  object edtQuantidade: TEdit
    Left = 96
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Quantidade'
  end
  object edtPrecoUnitario: TEdit
    Left = 96
    Top = 144
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Valor Unit'#225'rio'
  end
  object btnCalcular: TButton
    Left = 96
    Top = 171
    Width = 121
    Height = 25
    Caption = 'Calcular Desconto'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
  object mmExtrato: TMemo
    Left = 64
    Top = 202
    Width = 185
    Height = 89
    TabOrder = 4
  end
end
