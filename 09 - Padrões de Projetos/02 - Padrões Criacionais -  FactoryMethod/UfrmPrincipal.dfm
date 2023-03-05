object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 394
  ClientWidth = 557
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
    Left = 24
    Top = 24
    Width = 52
    Height = 13
    Caption = 'Valor Atual'
  end
  object Label2: TLabel
    Left = 168
    Top = 24
    Width = 69
    Height = 13
    Caption = 'Qtd. Parcelas:'
  end
  object Label3: TLabel
    Left = 312
    Top = 24
    Width = 99
    Height = 13
    Caption = 'Prazo de pagamento'
  end
  object edtValor: TEdit
    Left = 24
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtQtdParcelas: TEdit
    Left = 168
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object btnGerar: TButton
    Left = 447
    Top = 62
    Width = 87
    Height = 25
    Caption = 'Gerar Proje'#231#227'o'
    TabOrder = 2
    OnClick = btnGerarClick
  end
  object Memo1: TMemo
    Left = 24
    Top = 112
    Width = 510
    Height = 241
    TabOrder = 3
  end
  object cmbPrazoPagamento: TComboBox
    Left = 312
    Top = 64
    Width = 113
    Height = 21
    TabOrder = 4
    Items.Strings = (
      'Mensal'
      'Anual')
  end
end
