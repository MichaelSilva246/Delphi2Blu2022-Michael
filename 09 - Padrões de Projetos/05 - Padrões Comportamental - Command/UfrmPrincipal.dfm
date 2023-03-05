object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 351
  ClientWidth = 584
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
    Left = 16
    Top = 72
    Width = 51
    Height = 13
    Caption = 'Programas'
  end
  object Label2: TLabel
    Left = 216
    Top = 71
    Width = 48
    Height = 13
    Caption = 'Processos'
  end
  object Label3: TLabel
    Left = 390
    Top = 71
    Width = 105
    Height = 13
    Caption = 'Variaveis de ambiente'
  end
  object memoProgramas: TMemo
    Left = 8
    Top = 96
    Width = 185
    Height = 225
    ScrollBars = ssBoth
    TabOrder = 0
  end
  object memoProcessos: TMemo
    Left = 199
    Top = 96
    Width = 185
    Height = 225
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object memoVariaveis: TMemo
    Left = 390
    Top = 96
    Width = 185
    Height = 225
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object btnExecutar: TButton
    Left = 216
    Top = 24
    Width = 136
    Height = 25
    Caption = 'Executar comandos'
    TabOrder = 3
    OnClick = btnExecutarClick
  end
end
