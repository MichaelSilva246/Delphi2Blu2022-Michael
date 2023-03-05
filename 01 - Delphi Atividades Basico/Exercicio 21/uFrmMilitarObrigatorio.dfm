object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 353
  ClientWidth = 350
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
    Left = 8
    Top = 8
    Width = 74
    Height = 13
    Caption = 'Lista do quartel'
  end
  object Label2: TLabel
    Left = 24
    Top = 37
    Width = 62
    Height = 13
    Caption = 'APROVADOS'
  end
  object Label3: TLabel
    Left = 24
    Top = 151
    Width = 72
    Height = 13
    Caption = 'DESPENSADOS'
  end
  object mmAprovados: TMemo
    Left = 24
    Top = 56
    Width = 273
    Height = 89
    TabOrder = 0
  end
  object mmDespensados: TMemo
    Left = 24
    Top = 168
    Width = 273
    Height = 89
    TabOrder = 1
  end
  object btnCadastrar: TButton
    Left = 8
    Top = 296
    Width = 161
    Height = 41
    Caption = 'Cadastrar pessoa'
    TabOrder = 2
    OnClick = btnCadastrarClick
  end
end
