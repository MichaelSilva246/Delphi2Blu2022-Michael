object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 281
  ClientWidth = 377
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
    Left = 282
    Top = 64
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
  object btnPingPong: TButton
    Left = 144
    Top = 16
    Width = 75
    Height = 25
    Caption = 'PingPong'
    TabOrder = 0
    OnClick = btnPingPongClick
  end
  object btnHelloWorld: TButton
    Left = 264
    Top = 16
    Width = 75
    Height = 25
    Caption = 'HelloWorld'
    TabOrder = 1
    OnClick = btnHelloWorldClick
  end
  object RESTClient1: TRESTClient
    BaseURL = 'http://localhost:10001/ping'
    Params = <>
    Left = 96
    Top = 144
  end
  object RESTRequest1: TRESTRequest
    AssignedValues = [rvConnectTimeout, rvReadTimeout]
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    Left = 176
    Top = 144
  end
  object RESTResponse1: TRESTResponse
    Left = 256
    Top = 144
  end
end
