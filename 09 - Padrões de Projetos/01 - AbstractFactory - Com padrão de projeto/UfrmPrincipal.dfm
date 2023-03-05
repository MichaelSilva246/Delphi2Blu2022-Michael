object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 391
  ClientWidth = 344
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object cmbMarca: TComboBox
    Left = 64
    Top = 48
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 0
    Text = 'Dell'
    Items.Strings = (
      'Dell'
      'Apple')
  end
  object GroupBox1: TGroupBox
    Left = 64
    Top = 120
    Width = 185
    Height = 105
    Caption = 'Dados do Notebook'
    TabOrder = 1
    object lblTamanhoTela: TLabel
      Left = 16
      Top = 32
      Width = 90
      Height = 13
      Caption = 'lblTamanhoTela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMemoriaRam: TLabel
      Left = 16
      Top = 64
      Width = 89
      Height = 13
      Caption = 'lblMemoriaRam'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 64
    Top = 248
    Width = 185
    Height = 105
    Caption = 'Dados do Desktop'
    TabOrder = 2
    object lblProcessador: TLabel
      Left = 16
      Top = 32
      Width = 83
      Height = 13
      Caption = 'lblProcessador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTamanhoHd: TLabel
      Left = 16
      Top = 64
      Width = 81
      Height = 13
      Caption = 'lblTamanhoHd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object btnExibir: TButton
    Left = 134
    Top = 75
    Width = 75
    Height = 25
    Caption = 'Exibir'
    TabOrder = 3
    OnClick = btnExibirClick
  end
end
