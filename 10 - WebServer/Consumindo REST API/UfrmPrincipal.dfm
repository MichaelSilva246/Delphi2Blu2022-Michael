object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 322
  ClientWidth = 248
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblResultado: TLabel
    Left = 88
    Top = 184
    Width = 57
    Height = 13
    Caption = 'Resultado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNumero1: TEdit
    Left = 24
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object edtNumero2: TEdit
    Left = 24
    Top = 64
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object cmbOperacao: TComboBox
    Left = 24
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Opera'#231#227'o'
    Items.Strings = (
      'Somar'
      'Subtrair'
      'Dividir'
      'Multiplicar')
  end
  object btnCalcular: TButton
    Left = 70
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 3
    OnClick = btnCalcularClick
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://localhost:9005/multiplicar/1/2'
    Params = <>
    Left = 32
    Top = 240
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 104
    Top = 240
  end
  object RESTResponse1: TRESTResponse
    Left = 176
    Top = 240
  end
end
