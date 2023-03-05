object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Conta Corrente'
  ClientHeight = 129
  ClientWidth = 382
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object lblSaldo: TLabel
    Left = 21
    Top = 90
    Width = 66
    Height = 13
    Caption = 'Saldo atual:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblNome: TLabel
    Left = 21
    Top = 59
    Width = 35
    Height = 13
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnComecar: TButton
    Left = 21
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Cadastrar '
    TabOrder = 0
    OnClick = btnComecarClick
  end
  object btnAlterarNome: TButton
    Left = 288
    Top = 78
    Width = 75
    Height = 25
    Caption = 'Alterar Nome'
    TabOrder = 1
    Visible = False
    OnClick = btnAlterarNomeClick
  end
  object btnDepositar: TButton
    Left = 288
    Top = 16
    Width = 75
    Height = 25
    Caption = 'Depositar'
    TabOrder = 2
    Visible = False
    OnClick = btnDepositarClick
  end
  object btnSacar: TButton
    Left = 288
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Sacar'
    TabOrder = 3
    Visible = False
    OnClick = btnSacarClick
  end
end
