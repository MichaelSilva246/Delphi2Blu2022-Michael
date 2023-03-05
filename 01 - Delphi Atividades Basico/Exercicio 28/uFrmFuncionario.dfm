object frmFuncionarios: TfrmFuncionarios
  Left = 0
  Top = 0
  Caption = 'Funcionarios'
  ClientHeight = 411
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 418
    Height = 25
    Align = alTop
    Alignment = taCenter
    Caption = 'Reajuste'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitLeft = 136
    ExplicitTop = 48
    ExplicitWidth = 93
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 98
    Height = 13
    Caption = 'Nome do funcion'#225'rio'
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 103
    Height = 13
    Caption = 'Sal'#225'rio do funcion'#225'rio'
  end
  object Label4: TLabel
    Left = 24
    Top = 136
    Width = 94
    Height = 13
    Caption = 'Sal'#225'rio Minimo atual'
  end
  object edtNome: TEdit
    Left = 144
    Top = 53
    Width = 97
    Height = 21
    TabOrder = 0
    TextHint = 'Nome'
  end
  object edtSalario: TEdit
    Left = 144
    Top = 93
    Width = 97
    Height = 21
    TabOrder = 1
    TextHint = 'Sal'#225'rio'
  end
  object edtSalarioMin: TEdit
    Left = 144
    Top = 136
    Width = 97
    Height = 21
    TabOrder = 2
    TextHint = '1212'
  end
  object mmObs: TMemo
    Left = 24
    Top = 239
    Width = 217
    Height = 146
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object btnCalcular: TButton
    Left = 144
    Top = 171
    Width = 97
    Height = 25
    Caption = 'Calcular'
    TabOrder = 4
    OnClick = btnCalcularClick
  end
  object bntListar: TButton
    Left = 144
    Top = 202
    Width = 97
    Height = 25
    Caption = 'Listar Total'
    TabOrder = 5
  end
end
