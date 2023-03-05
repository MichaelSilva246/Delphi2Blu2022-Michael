object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'frmPrincipal'
  ClientHeight = 604
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  inline fraCadastro1: TfraCadastro
    Left = 0
    Top = 8
    Width = 328
    Height = 599
    TabOrder = 0
    ExplicitTop = 8
    inherited edtValor: TEdit
      Top = 77
      ExplicitTop = 77
    end
    inherited DBGrid1: TDBGrid
      Left = 5
      Height = 478
    end
  end
  inline fraSaldo1: TfraSaldo
    Left = 331
    Top = 3
    Width = 320
    Height = 180
    TabOrder = 1
    ExplicitLeft = 331
    ExplicitTop = 3
  end
  inline fraHistorico1: TfraHistorico
    Left = 331
    Top = 186
    Width = 320
    Height = 240
    TabOrder = 2
    ExplicitLeft = 331
    ExplicitTop = 186
    inherited DBGrid1: TDBGrid
      Left = 3
      Top = 48
    end
  end
  inline fraLog1: TfraLog
    Left = 331
    Top = 429
    Width = 320
    Height = 161
    TabOrder = 3
    ExplicitLeft = 331
    ExplicitTop = 429
  end
end
