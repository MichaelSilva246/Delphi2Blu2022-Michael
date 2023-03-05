object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 387
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
    Left = 0
    Top = 0
    Width = 418
    Height = 25
    Align = alTop
    Alignment = taCenter
    Caption = 'Cadastro Pessoa'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 175
  end
  object Label2: TLabel
    Left = 48
    Top = 80
    Width = 34
    Height = 14
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 128
    Width = 122
    Height = 14
    Caption = 'Data de nascimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 48
    Top = 176
    Width = 38
    Height = 14
    Caption = 'Altura'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 48
    Top = 271
    Width = 51
    Height = 14
    Caption = 'Imprimir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNome: TEdit
    Left = 200
    Top = 78
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Nathan'
    TextHint = 'Nome'
  end
  object edtDataNascimento: TEdit
    Left = 200
    Top = 126
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '15/04/2002'
    TextHint = 'dd/mm/aa'
  end
  object edtAltura: TEdit
    Left = 200
    Top = 174
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '1,71'
    TextHint = 'Altura'
  end
  object btnCadastrar: TButton
    Left = 240
    Top = 216
    Width = 81
    Height = 33
    Caption = 'Cadastrar'
    TabOrder = 3
    OnClick = btnCadastrarClick
  end
  object mmImprimir: TMemo
    Left = 48
    Top = 290
    Width = 273
    Height = 89
    TabOrder = 4
  end
end
