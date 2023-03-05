object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Form1'
  ClientHeight = 462
  ClientWidth = 370
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
    Top = 28
    Width = 63
    Height = 16
    Caption = 'Vendedor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 71
    Height = 16
    Caption = 'Sal'#225'rio fixo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 129
    Width = 166
    Height = 16
    Caption = 'Valor somado das vendas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbObs: TLabel
    Left = 24
    Top = 239
    Width = 82
    Height = 19
    Caption = 'Observa'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object edtVendedor: TEdit
    Left = 208
    Top = 23
    Width = 113
    Height = 21
    TabOrder = 0
  end
  object edtSalarioFixo: TEdit
    Left = 208
    Top = 71
    Width = 113
    Height = 21
    TabOrder = 1
  end
  object btnExecutar: TButton
    Left = 208
    Top = 173
    Width = 113
    Height = 25
    Caption = 'Executar'
    TabOrder = 2
    OnClick = btnExecutarClick
  end
  object edtVendas: TEdit
    Left = 208
    Top = 128
    Width = 113
    Height = 21
    TabOrder = 3
  end
  object mmObs: TMemo
    Left = 24
    Top = 264
    Width = 297
    Height = 121
    TabOrder = 4
  end
end
