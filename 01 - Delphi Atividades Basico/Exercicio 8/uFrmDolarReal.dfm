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
    Left = 32
    Top = 32
    Width = 59
    Height = 19
    Caption = 'Dolar $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 96
    Width = 137
    Height = 19
    Caption = 'Valor em Dolar $'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbObs: TLabel
    Left = 32
    Top = 200
    Width = 30
    Height = 19
    Caption = 'Obs'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtDolar: TEdit
    Left = 200
    Top = 34
    Width = 169
    Height = 21
    TabOrder = 0
    OnChange = edtDolarChange
  end
  object EdtValorDolar: TEdit
    Left = 200
    Top = 101
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object btnConversao: TButton
    Left = 200
    Top = 128
    Width = 169
    Height = 25
    Caption = 'Convers'#227'o'
    TabOrder = 2
    OnClick = btnConversaoClick
  end
end
