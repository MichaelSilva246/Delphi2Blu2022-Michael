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
    Left = 0
    Top = 0
    Width = 418
    Height = 29
    Align = alTop
    Alignment = taCenter
    Caption = 'Calculadora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 140
  end
  object lblResul: TLabel
    Left = 216
    Top = 232
    Width = 57
    Height = 13
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNumero1: TEdit
    Left = 152
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Primeiro n'#250'mero'
  end
  object edtNumero2: TEdit
    Left = 152
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Segundo n'#250'mero'
  end
  object cmbOperacao: TComboBox
    Left = 152
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 2
    TextHint = 'Opera'#231#227'o'
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Multiplicar'
      'Dividir')
  end
  object btnCalcular: TButton
    Left = 198
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
end
