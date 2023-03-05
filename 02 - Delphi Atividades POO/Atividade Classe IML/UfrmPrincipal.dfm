object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 424
  ClientWidth = 426
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Result: TLabel
    Left = 23
    Top = 245
    Width = 30
    Height = 13
    Caption = 'Result'
    Visible = False
  end
  object Result2: TLabel
    Left = 256
    Top = 245
    Width = 36
    Height = 13
    Caption = 'Result2'
    Visible = False
  end
  object lblGravar: TLabel
    Left = 143
    Top = 112
    Width = 41
    Height = 13
    Caption = 'Situa'#231#227'o'
  end
  object lblPessoa: TLabel
    Left = 190
    Top = 5
    Width = 34
    Height = 13
    Caption = 'Pessoa'
  end
  object lblPessoaFisica: TLabel
    Left = 48
    Top = 141
    Width = 63
    Height = 13
    Caption = 'Pessoa Fisica'
    Visible = False
  end
  object lblPessoaJuridica: TLabel
    Left = 294
    Top = 141
    Width = 73
    Height = 13
    Caption = 'Pessoa Juridica'
    Visible = False
  end
  object CPF: TEdit
    Left = 23
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'CPF'
    Visible = False
  end
  object btnValidarCPF: TButton
    Left = 70
    Top = 214
    Width = 75
    Height = 25
    Caption = 'Validar'
    TabOrder = 1
    Visible = False
    OnClick = btnValidarCPFClick
  end
  object CNPJ: TEdit
    Left = 256
    Top = 160
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '14572457000185'
    TextHint = 'CNPJ'
    Visible = False
  end
  object btnValidarCNPJ: TButton
    Left = 302
    Top = 214
    Width = 75
    Height = 25
    Caption = 'Validar'
    TabOrder = 3
    Visible = False
    OnClick = btnValidarCNPJClick
  end
  object edtNome: TEdit
    Left = 144
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 4
    TextHint = 'Nome'
  end
  object edtEndereco: TEdit
    Left = 144
    Top = 51
    Width = 121
    Height = 21
    TabOrder = 5
    TextHint = 'Endere'#231'o'
  end
  object btnGravar: TButton
    Left = 190
    Top = 86
    Width = 75
    Height = 25
    Caption = 'Gravar'
    TabOrder = 6
    OnClick = btnGravarClick
  end
  object edtIdade: TEdit
    Left = 24
    Top = 187
    Width = 121
    Height = 21
    TabOrder = 7
    TextHint = 'Idade'
    Visible = False
  end
  object edtIE: TEdit
    Left = 256
    Top = 187
    Width = 121
    Height = 21
    TabOrder = 8
    TextHint = 'FIE'
    Visible = False
  end
  object mmPessoaFisica: TMemo
    Left = 24
    Top = 288
    Width = 185
    Height = 89
    TabOrder = 9
    Visible = False
  end
  object mmPessoaJuridica: TMemo
    Left = 233
    Top = 288
    Width = 185
    Height = 89
    TabOrder = 10
    Visible = False
  end
end
