object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 439
  ClientWidth = 272
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
    Left = 0
    Top = 0
    Width = 272
    Height = 25
    Align = alTop
    Alignment = taCenter
    Caption = 'Calcular conta de luz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 217
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 66
    Height = 13
    Caption = 'Digite o valor '
  end
  object Label3: TLabel
    Left = 24
    Top = 99
    Width = 83
    Height = 13
    Caption = 'Digite o desconto'
  end
  object edtEntrada: TEdit
    Left = 120
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'KW/h'
  end
  object rgOpcoes: TRadioGroup
    Left = 24
    Top = 136
    Width = 217
    Height = 105
    Caption = 'Op'#231#245'es de cliente'
    Items.Strings = (
      'Resid'#234'ncial'
      'Comercial'
      'Industrial'
      'Fazenda')
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 166
    Top = 264
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
  object mmResultado: TMemo
    Left = 24
    Top = 305
    Width = 217
    Height = 114
    TabOrder = 3
  end
  object edtDesconto: TEdit
    Left = 120
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'R$'
  end
end
