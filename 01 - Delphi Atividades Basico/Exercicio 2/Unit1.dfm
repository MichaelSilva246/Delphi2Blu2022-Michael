object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 347
  ClientWidth = 452
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
    Left = 24
    Top = 32
    Width = 313
    Height = 25
    Caption = 'Entre com o primeiro n'#250'mero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 96
    Width = 313
    Height = 25
    Caption = 'Entre com o segundo n'#250'mero:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 119
    Top = 216
    Width = 46
    Height = 13
    Caption = 'Somado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 119
    Top = 272
    Width = 55
    Height = 13
    Caption = 'Subtraido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 255
    Top = 221
    Width = 68
    Height = 13
    Caption = 'Multiplicado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 261
    Top = 272
    Width = 45
    Height = 13
    Caption = 'Dividido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtPrimeiroNumero: TEdit
    Left = 343
    Top = 39
    Width = 81
    Height = 21
    TabOrder = 0
  end
  object edtSegundoNumero: TEdit
    Left = 343
    Top = 103
    Width = 81
    Height = 21
    TabOrder = 1
  end
  object btnCalcular: TButton
    Left = 24
    Top = 152
    Width = 177
    Height = 41
    Caption = 'Calcular'
    TabOrder = 2
    OnClick = btnCalcularClick
  end
  object edtSomar: TEdit
    Left = 119
    Top = 240
    Width = 59
    Height = 21
    TabOrder = 3
  end
  object edtSubtrair: TEdit
    Left = 119
    Top = 296
    Width = 59
    Height = 21
    TabOrder = 4
  end
  object edtMultiplicar: TEdit
    Left = 255
    Top = 240
    Width = 59
    Height = 21
    TabOrder = 5
  end
  object edtDividir: TEdit
    Left = 255
    Top = 296
    Width = 59
    Height = 21
    TabOrder = 6
  end
end
