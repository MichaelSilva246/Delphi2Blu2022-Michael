object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 175
  ClientWidth = 314
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
    Top = 32
    Width = 117
    Height = 13
    Caption = 'Temperatura em Celsiu: '
  end
  object lbFahrenheit: TLabel
    Left = 32
    Top = 144
    Width = 141
    Height = 13
    Caption = 'Temperatura em Fahrenheit: '
  end
  object edtCelsius: TEdit
    Left = 184
    Top = 29
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object btnConverter: TButton
    Left = 32
    Top = 81
    Width = 249
    Height = 33
    Caption = 'Converter'
    TabOrder = 1
    OnClick = btnConverterClick
  end
end
