object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 452
  ClientWidth = 428
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
    Top = 24
    Width = 135
    Height = 13
    Caption = 'Informe o nome do Arquivo:'
  end
  object edtArquivo: TEdit
    Left = 32
    Top = 56
    Width = 361
    Height = 21
    TabOrder = 0
  end
  object mmArquivo: TMemo
    Left = 32
    Top = 128
    Width = 361
    Height = 289
    TabOrder = 1
  end
  object btnLeitura: TButton
    Left = 32
    Top = 88
    Width = 75
    Height = 25
    Caption = 'Ler Arquivo'
    TabOrder = 2
    OnClick = btnLeituraClick
  end
end
