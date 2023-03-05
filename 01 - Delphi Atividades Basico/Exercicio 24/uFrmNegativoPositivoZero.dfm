object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 387
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 144
    Top = 40
    Width = 113
    Height = 33
    Caption = 'Entrar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object mmPositivo: TMemo
    Left = 8
    Top = 128
    Width = 113
    Height = 153
    TabOrder = 1
  end
  object mmNegativo: TMemo
    Left = 152
    Top = 128
    Width = 113
    Height = 153
    TabOrder = 2
  end
  object mmZero: TMemo
    Left = 288
    Top = 128
    Width = 121
    Height = 153
    TabOrder = 3
  end
  object edtNumero: TEdit
    Left = 112
    Top = 88
    Width = 177
    Height = 21
    TabOrder = 4
  end
end
