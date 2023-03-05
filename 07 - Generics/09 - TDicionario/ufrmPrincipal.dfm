object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 304
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 160
    Top = 8
    Width = 19
    Height = 13
    Caption = 'CPF'
  end
  object Label2: TLabel
    Left = 279
    Top = 5
    Width = 27
    Height = 13
    Caption = 'Nome'
  end
  object btnAdd: TButton
    Left = 48
    Top = 24
    Width = 85
    Height = 25
    Caption = 'Add'
    TabOrder = 0
    OnClick = btnAddClick
  end
  object btnTryGetValue: TButton
    Left = 48
    Top = 48
    Width = 85
    Height = 25
    Caption = 'TryGetValue'
    TabOrder = 1
    OnClick = btnTryGetValueClick
  end
  object btnRemove: TButton
    Left = 48
    Top = 72
    Width = 85
    Height = 25
    Caption = 'Remove'
    TabOrder = 2
    OnClick = btnRemoveClick
  end
  object btnTrimExcess: TButton
    Left = 48
    Top = 96
    Width = 85
    Height = 25
    Caption = 'TrimExcess'
    TabOrder = 3
    OnClick = btnTrimExcessClick
  end
  object btnContainsKey: TButton
    Left = 48
    Top = 120
    Width = 85
    Height = 25
    Caption = 'ContainsKey'
    TabOrder = 4
    OnClick = btnContainsKeyClick
  end
  object btnAddOrSetValue: TButton
    Left = 48
    Top = 144
    Width = 85
    Height = 25
    Caption = 'AddOrSetValue'
    TabOrder = 5
    OnClick = btnAddOrSetValueClick
  end
  object btnListaKey: TButton
    Left = 48
    Top = 168
    Width = 85
    Height = 25
    Caption = 'ListaKey'
    TabOrder = 6
    OnClick = btnListaKeyClick
  end
  object btnListaValue: TButton
    Left = 48
    Top = 192
    Width = 85
    Height = 25
    Caption = 'ListaValue'
    TabOrder = 7
    OnClick = btnListaValueClick
  end
  object btnClear: TButton
    Left = 48
    Top = 215
    Width = 85
    Height = 25
    Caption = 'Clear'
    TabOrder = 8
    OnClick = btnClearClick
  end
  object btnOnKeyNotify: TButton
    Left = 48
    Top = 239
    Width = 85
    Height = 25
    Caption = 'OnKeyNotify'
    TabOrder = 9
    OnClick = btnOnKeyNotifyClick
  end
  object btnOnValueNotify: TButton
    Left = 48
    Top = 264
    Width = 85
    Height = 25
    Caption = 'OnValueNotify'
    TabOrder = 10
    OnClick = btnOnValueNotifyClick
  end
  object edtCpf: TEdit
    Left = 160
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'edtCpf'
  end
  object edtNome: TEdit
    Left = 280
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 12
    Text = 'edtNome'
  end
  object Memo1: TMemo
    Left = 160
    Top = 51
    Width = 240
    Height = 238
    Lines.Strings = (
      'Memo1')
    TabOrder = 13
  end
end
