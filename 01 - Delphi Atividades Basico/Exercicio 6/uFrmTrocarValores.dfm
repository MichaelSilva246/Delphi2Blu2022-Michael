object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 212
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
    Top = 40
    Width = 84
    Height = 19
    Caption = 'Variavel A'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 104
    Width = 83
    Height = 19
    Caption = 'Variavel B'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbVarA: TLabel
    Left = 136
    Top = 72
    Width = 52
    Height = 13
    Caption = 'Novo valor'
  end
  object lbVarB: TLabel
    Left = 136
    Top = 139
    Width = 52
    Height = 13
    Caption = 'Novo valor'
  end
  object edtVariavelA: TEdit
    Left = 24
    Top = 72
    Width = 89
    Height = 21
    TabOrder = 0
  end
  object edtVariavelB: TEdit
    Left = 24
    Top = 136
    Width = 89
    Height = 21
    TabOrder = 1
  end
  object btnTrocar: TButton
    Left = 24
    Top = 184
    Width = 89
    Height = 25
    Caption = 'Trocar'
    TabOrder = 2
    OnClick = btnTrocarClick
  end
end
