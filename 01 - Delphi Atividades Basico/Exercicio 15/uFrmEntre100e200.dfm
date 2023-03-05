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
    Left = 48
    Top = 24
    Width = 82
    Height = 13
    Caption = 'Entre 100 e 200?'
  end
  object Label2: TLabel
    Left = 48
    Top = 72
    Width = 96
    Height = 13
    Caption = 'Entre com o numero'
  end
  object lbResposta: TLabel
    Left = 48
    Top = 232
    Width = 49
    Height = 13
    Caption = 'Resposta:'
  end
  object edtNumero: TEdit
    Left = 48
    Top = 104
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object btnVerificar: TButton
    Left = 48
    Top = 144
    Width = 97
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btnVerificarClick
  end
end
