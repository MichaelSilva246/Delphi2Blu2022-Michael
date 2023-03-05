object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Consumindo meu WS SOAP'
  ClientHeight = 134
  ClientWidth = 340
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
    Top = 37
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object lblResultado: TLabel
    Left = 168
    Top = 96
    Width = 52
    Height = 13
    Caption = 'Resultado:'
  end
  object edtValor: TEdit
    Left = 24
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object btnEchoDouble: TButton
    Left = 168
    Top = 54
    Width = 75
    Height = 25
    Caption = 'EchoDouble'
    TabOrder = 1
    OnClick = btnEchoDoubleClick
  end
  object btnHelloWorld: TButton
    Left = 249
    Top = 54
    Width = 75
    Height = 25
    Caption = 'Hello World'
    TabOrder = 2
    OnClick = btnHelloWorldClick
  end
end
