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
    Height = 13
    Align = alTop
    Alignment = taCenter
    Caption = 'Calcular'
    ExplicitWidth = 38
  end
  object lblResultado: TLabel
    Left = 220
    Top = 216
    Width = 48
    Height = 13
    Caption = 'Resultado'
  end
  object edtNum1: TEdit
    Left = 144
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'Numero 1'
  end
  object edtNum2: TEdit
    Left = 144
    Top = 75
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Numero 2'
  end
  object ComboBox1: TComboBox
    Left = 144
    Top = 102
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Escolher opora'#231#227'o'
    Items.Strings = (
      'Somar'
      'Substrair'
      'Multiplicar'
      'Dividir')
  end
  object Button1: TButton
    Left = 176
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
end
