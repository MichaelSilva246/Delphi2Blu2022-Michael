object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 463
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 76
    Height = 13
    Caption = 'Nome do Aluno:'
  end
  object Label2: TLabel
    Left = 184
    Top = 101
    Width = 37
    Height = 13
    Caption = '2'#170' Nota'
  end
  object Label3: TLabel
    Left = 32
    Top = 101
    Width = 37
    Height = 13
    Caption = '1'#170' Nota'
  end
  object edtNome: TEdit
    Left = 32
    Top = 56
    Width = 459
    Height = 21
    TabOrder = 0
  end
  object edtPrimeiraNota: TEdit
    Left = 32
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtSegundaNota: TEdit
    Left = 184
    Top = 120
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object btnGravar: TButton
    Left = 328
    Top = 118
    Width = 75
    Height = 25
    Caption = 'Gravar Aluno'
    TabOrder = 3
    OnClick = btnGravarClick
  end
  object btnLer: TButton
    Left = 416
    Top = 118
    Width = 75
    Height = 25
    Caption = 'Ler Alunos'
    TabOrder = 4
    OnClick = btnLerClick
  end
  object mmDiario: TMemo
    Left = 32
    Top = 174
    Width = 459
    Height = 257
    ScrollBars = ssVertical
    TabOrder = 5
  end
end
