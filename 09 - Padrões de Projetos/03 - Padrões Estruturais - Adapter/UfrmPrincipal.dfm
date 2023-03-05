object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 206
  ClientWidth = 312
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblLogradouro: TLabel
    Left = 48
    Top = 89
    Width = 61
    Height = 13
    Caption = 'lblLogadouro'
  end
  object lblCidade: TLabel
    Left = 48
    Top = 164
    Width = 43
    Height = 13
    Caption = 'lblCidade'
  end
  object lblBairro: TLabel
    Left = 48
    Top = 129
    Width = 38
    Height = 13
    Caption = 'lblBairro'
  end
  object Label4: TLabel
    Left = 48
    Top = 29
    Width = 23
    Height = 13
    Caption = 'CEP:'
  end
  object edtCep: TEdit
    Left = 48
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object btnConsultarClick: TButton
    Left = 216
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Consultar Click'
    TabOrder = 1
    OnClick = btnConsultarClickClick
  end
  object btnConsultarCorreios: TButton
    Left = 216
    Top = 77
    Width = 75
    Height = 25
    Caption = 'Consultar Correios'
    TabOrder = 2
    OnClick = btnConsultarCorreiosClick
  end
end
