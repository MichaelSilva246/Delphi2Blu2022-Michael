object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 236
  ClientWidth = 331
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
    Left = 16
    Top = 16
    Width = 75
    Height = 13
    Caption = 'Digite um Texto'
  end
  object Label2: TLabel
    Left = 16
    Top = 130
    Width = 37
    Height = 13
    Caption = 'Numero'
  end
  object Label3: TLabel
    Left = 184
    Top = 130
    Width = 28
    Height = 13
    Caption = 'Texto'
  end
  object edtTexto: TEdit
    Left = 16
    Top = 35
    Width = 289
    Height = 21
    TabOrder = 0
  end
  object edtTextoConvertido: TEdit
    Left = 168
    Top = 149
    Width = 137
    Height = 21
    TabOrder = 1
  end
  object edtNumero: TSpinEdit
    Left = 16
    Top = 149
    Width = 121
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 2
    Value = 0
  end
  object btnMaiusculas: TButton
    Left = 16
    Top = 72
    Width = 121
    Height = 25
    Caption = 'Mai'#250'sculas'
    TabOrder = 3
    OnClick = btnMaiusculasClick
  end
  object btnMinusculas: TButton
    Left = 168
    Top = 72
    Width = 137
    Height = 25
    Caption = 'Min'#250'sculas'
    TabOrder = 4
    OnClick = btnMinusculasClick
  end
  object btnConverter: TButton
    Left = 104
    Top = 198
    Width = 75
    Height = 25
    Caption = 'Converter'
    TabOrder = 5
    OnClick = btnConverterClick
  end
end
