object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Criando Arquivo Texto'
  ClientHeight = 160
  ClientWidth = 202
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
    Left = 56
    Top = 42
    Width = 95
    Height = 13
    Caption = 'Informe um N'#250'mero'
  end
  object edtNumero: TEdit
    Left = 56
    Top = 61
    Width = 95
    Height = 21
    TabOrder = 0
  end
  object btnTabuado: TButton
    Left = 56
    Top = 88
    Width = 95
    Height = 25
    Caption = 'Tabuada'
    TabOrder = 1
    OnClick = btnTabuadoClick
  end
end
