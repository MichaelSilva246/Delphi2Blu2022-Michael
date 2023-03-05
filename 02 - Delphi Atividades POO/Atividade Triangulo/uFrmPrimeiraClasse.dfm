object frmPrimeiraClasse: TfrmPrimeiraClasse
  Left = 0
  Top = 0
  Caption = 'Minha Primeira Classe'
  ClientHeight = 352
  ClientWidth = 414
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
    Left = 152
    Top = 8
    Width = 110
    Height = 23
    Caption = 'Triangulo X'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 152
    Top = 104
    Width = 110
    Height = 23
    Caption = 'Triangulo Y'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 48
    Top = 46
    Width = 12
    Height = 16
    Caption = 'a:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 56
    Top = 144
    Width = 12
    Height = 16
    Caption = 'a:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 168
    Top = 46
    Width = 12
    Height = 16
    Caption = 'b:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 168
    Top = 144
    Width = 12
    Height = 16
    Caption = 'b:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 273
    Top = 46
    Width = 11
    Height = 16
    Caption = 'c:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 273
    Top = 144
    Width = 11
    Height = 16
    Caption = 'c:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object lblX: TLabel
    Left = 56
    Top = 264
    Width = 99
    Height = 13
    Caption = 'Triangulo X '#193'rea: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblY: TLabel
    Left = 56
    Top = 291
    Width = 99
    Height = 13
    Caption = 'Triangulo Y '#193'rea: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblResultado: TLabel
    Left = 56
    Top = 316
    Width = 38
    Height = 13
    Caption = 'Maior :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtAX: TEdit
    Left = 74
    Top = 45
    Width = 63
    Height = 21
    TabOrder = 0
  end
  object edtBX: TEdit
    Left = 186
    Top = 45
    Width = 62
    Height = 21
    TabOrder = 1
  end
  object edtCX: TEdit
    Left = 290
    Top = 45
    Width = 63
    Height = 21
    TabOrder = 2
  end
  object edtAY: TEdit
    Left = 74
    Top = 143
    Width = 63
    Height = 21
    TabOrder = 3
  end
  object edtBY: TEdit
    Left = 186
    Top = 143
    Width = 62
    Height = 21
    TabOrder = 4
  end
  object edtCY: TEdit
    Left = 290
    Top = 143
    Width = 63
    Height = 21
    TabOrder = 5
  end
  object btnCalcular: TButton
    Left = 105
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 6
    OnClick = btnCalcularClick
  end
  object btnCalcularOOP: TButton
    Left = 232
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Calcular OOP'
    TabOrder = 7
    OnClick = btnCalcularOOPClick
  end
end
