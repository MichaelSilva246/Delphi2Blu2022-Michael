object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 381
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
    Left = 32
    Top = 88
    Width = 143
    Height = 19
    Caption = 'Valor do dep'#243'sito'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 24
    Width = 243
    Height = 23
    Caption = 'Rendimento de poupan'#231'a'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold, fsUnderline]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 199
    Width = 99
    Height = 19
    Caption = 'Rendimento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 136
    Width = 55
    Height = 19
    Caption = 'Meses '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtDeposito: TEdit
    Left = 200
    Top = 88
    Width = 185
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object mmRendimento: TMemo
    Left = 32
    Top = 224
    Width = 241
    Height = 129
    TabOrder = 1
  end
  object btnSimular: TButton
    Left = 234
    Top = 168
    Width = 97
    Height = 25
    Caption = 'Simular'
    TabOrder = 2
    OnClick = btnSimularClick
  end
  object edtMeses: TEdit
    Left = 200
    Top = 136
    Width = 185
    Height = 23
    TabOrder = 3
  end
end
