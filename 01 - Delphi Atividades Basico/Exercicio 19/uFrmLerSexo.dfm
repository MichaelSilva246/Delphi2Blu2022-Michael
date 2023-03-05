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
    Left = 48
    Top = 32
    Width = 79
    Height = 13
    Caption = 'Ler nome e sexo'
  end
  object Label2: TLabel
    Left = 48
    Top = 109
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 256
    Top = 109
    Width = 24
    Height = 13
    Caption = 'Total'
  end
  object btnExecutar: TButton
    Left = 48
    Top = 51
    Width = 113
    Height = 25
    Caption = 'Executar'
    TabOrder = 0
    OnClick = btnExecutarClick
  end
  object mmDescricao: TMemo
    Left = 48
    Top = 128
    Width = 145
    Height = 129
    TabOrder = 1
  end
  object mmTotal: TMemo
    Left = 256
    Top = 128
    Width = 129
    Height = 129
    TabOrder = 2
  end
end
