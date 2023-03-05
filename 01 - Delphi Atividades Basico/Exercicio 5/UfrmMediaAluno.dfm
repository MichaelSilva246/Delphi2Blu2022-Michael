object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 320
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Aluno: TLabel
    Left = 24
    Top = 21
    Width = 27
    Height = 13
    Caption = 'Aluno'
  end
  object Label1: TLabel
    Left = 23
    Top = 179
    Width = 64
    Height = 13
    Caption = 'Terceira nota'
  end
  object Label2: TLabel
    Left = 24
    Top = 77
    Width = 63
    Height = 13
    Caption = 'Primeira nota'
  end
  object Label3: TLabel
    Left = 24
    Top = 131
    Width = 67
    Height = 13
    Caption = 'Segunda nota'
  end
  object lbMedia: TLabel
    Left = 157
    Top = 116
    Width = 125
    Height = 58
    Caption = 'M'#233'dia'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lbComentario: TLabel
    Left = 23
    Top = 285
    Width = 55
    Height = 13
    Caption = 'Coment'#225'rio'
  end
  object edtAluno: TEdit
    Left = 24
    Top = 40
    Width = 81
    Height = 21
    TabOrder = 0
  end
  object edtPrimeiraNota: TEdit
    Left = 23
    Top = 96
    Width = 81
    Height = 21
    TabOrder = 1
  end
  object edtSegundaNota: TEdit
    Left = 24
    Top = 150
    Width = 81
    Height = 21
    TabOrder = 2
  end
  object edtTerceiraNota: TEdit
    Left = 23
    Top = 198
    Width = 81
    Height = 21
    TabOrder = 3
  end
  object btnCalcular: TButton
    Left = 24
    Top = 240
    Width = 81
    Height = 25
    Caption = 'Calcular m'#233'dia'
    TabOrder = 4
    OnClick = btnCalcularClick
  end
end
