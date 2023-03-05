object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 270
  ClientWidth = 432
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 432
    Height = 23
    Align = alTop
    Caption = 'ELEVADOR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 104
  end
  object Label2: TLabel
    Left = 248
    Top = 8
    Width = 124
    Height = 14
    Alignment = taRightJustify
    Caption = 'Pessoas no elevador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 118
    Top = 7
    Width = 72
    Height = 14
    Alignment = taRightJustify
    Caption = 'Andar atual'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblAndarAtual: TLabel
    Left = 196
    Top = 8
    Width = 3
    Height = 13
  end
  object lblPessoasElevador: TLabel
    Left = 378
    Top = 8
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 352
    Top = 231
    Width = 59
    Height = 13
    Caption = 'Andares: 10'
  end
  object Label5: TLabel
    Left = 352
    Top = 250
    Width = 69
    Height = 13
    Caption = 'Capacidade: 3'
  end
  object btnInicializar: TButton
    Left = 24
    Top = 37
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 0
    OnClick = btnInicializarClick
  end
  object btnEntrar: TButton
    Left = 24
    Top = 77
    Width = 75
    Height = 25
    Caption = 'Entrar'
    Enabled = False
    TabOrder = 1
    OnClick = btnEntrarClick
  end
  object btnSair: TButton
    Left = 24
    Top = 117
    Width = 75
    Height = 25
    Caption = 'Sair'
    Enabled = False
    TabOrder = 2
    OnClick = btnSairClick
  end
  object btnSubir: TButton
    Left = 24
    Top = 157
    Width = 75
    Height = 25
    Caption = 'Subir'
    Enabled = False
    TabOrder = 3
    OnClick = btnSubirClick
  end
  object btnDescer: TButton
    Left = 24
    Top = 197
    Width = 75
    Height = 25
    Caption = 'Descer'
    Enabled = False
    TabOrder = 4
    OnClick = btnDescerClick
  end
  object btnEscolher: TButton
    Left = 16
    Top = 231
    Width = 97
    Height = 25
    Caption = 'Escolher Andar'
    Enabled = False
    TabOrder = 5
    OnClick = btnEscolherClick
  end
end
