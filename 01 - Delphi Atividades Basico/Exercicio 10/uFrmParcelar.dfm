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
    Left = 168
    Top = 16
    Width = 69
    Height = 19
    Caption = 'Parcelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 64
    Width = 133
    Height = 19
    Caption = 'Valor da compra'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtValorDaCompra: TEdit
    Left = 200
    Top = 66
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object mmParcelas: TMemo
    Left = 32
    Top = 152
    Width = 305
    Height = 121
    TabOrder = 1
  end
  object btnParcelar: TButton
    Left = 200
    Top = 104
    Width = 137
    Height = 25
    Caption = 'Parcelar'
    TabOrder = 2
    OnClick = btnParcelarClick
  end
end
