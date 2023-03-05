object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 293
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
    Top = 32
    Width = 107
    Height = 18
    Caption = 'Maior que 10?'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 64
    Width = 103
    Height = 13
    Caption = 'Entre com o numero: '
  end
  object lbResposta: TLabel
    Left = 24
    Top = 208
    Width = 52
    Height = 13
    Caption = 'Resposta: '
  end
  object edtNumero: TEdit
    Left = 24
    Top = 96
    Width = 97
    Height = 21
    TabOrder = 0
  end
  object btnVerificar: TButton
    Left = 24
    Top = 144
    Width = 97
    Height = 25
    Caption = 'Verificar'
    TabOrder = 1
    OnClick = btnVerificarClick
  end
end
