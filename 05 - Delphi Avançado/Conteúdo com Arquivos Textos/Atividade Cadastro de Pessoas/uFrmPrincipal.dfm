object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Cadastro Cliente'
  ClientHeight = 204
  ClientWidth = 534
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 534
    Height = 25
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro de Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 215
  end
  object edtCodigo: TEdit
    Left = 16
    Top = 53
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'C'#243'digo'
  end
  object edtNome: TEdit
    Left = 16
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Nome'
  end
  object btnGravar: TButton
    Left = 16
    Top = 134
    Width = 121
    Height = 25
    Caption = 'Gravar'
    TabOrder = 2
    OnClick = btnGravarClick
  end
  object btnLer: TButton
    Left = 16
    Top = 165
    Width = 121
    Height = 25
    Caption = 'Ler'
    TabOrder = 3
    OnClick = btnLerClick
  end
  object mmLista: TMemo
    Left = 184
    Top = 53
    Width = 329
    Height = 143
    ScrollBars = ssVertical
    TabOrder = 4
  end
  object edtNascimento: TEdit
    Left = 16
    Top = 107
    Width = 121
    Height = 21
    TabOrder = 5
    TextHint = 'Nascimento'
  end
end
