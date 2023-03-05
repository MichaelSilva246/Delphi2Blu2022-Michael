object fraCadastro: TfraCadastro
  Left = 0
  Top = 0
  Width = 328
  Height = 599
  TabOrder = 0
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 51
    Height = 13
    Caption = 'Opera'#231#227'o:'
  end
  object Label2: TLabel
    Left = 16
    Top = 45
    Width = 51
    Height = 13
    Caption = 'Categoria:'
  end
  object Label3: TLabel
    Left = 39
    Top = 72
    Width = 28
    Height = 13
    Caption = 'Valor:'
  end
  object Shape1: TShape
    Left = 221
    Top = 13
    Width = 3
    Height = 74
  end
  object btnGravar: TButton
    Left = 250
    Top = 13
    Width = 75
    Height = 77
    Caption = 'Gravar'
    TabOrder = 0
    OnClick = btnGravarClick
  end
  object edtValor: TEdit
    Left = 73
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 3
    Top = 104
    Width = 320
    Height = 495
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Operacao'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Categoria'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Valor'
        Width = 75
        Visible = True
      end>
  end
  object cmbOperacao: TComboBox
    Left = 73
    Top = 13
    Width = 121
    Height = 21
    TabOrder = 3
    OnChange = cmbOperacaoChange
    Items.Strings = (
      'Cr'#233'dito'
      'D'#233'bito')
  end
  object cmbCategoria: TComboBox
    Left = 73
    Top = 42
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object ClientDataSet1: TClientDataSet
    PersistDataPacket.Data = {
      770000009619E0BD0100000018000000030000000000030000007700084F7065
      726163616F01004900000001000557494454480200020079000943617465676F
      72696101004900000001000557494454480200020079000556616C6F72080004
      000000010007535542545950450200490006004D6F6E6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 48
    Top = 152
    object ClientDataSet1Operacao: TStringField
      FieldName = 'Operacao'
      Size = 121
    end
    object ClientDataSet1Categoria: TStringField
      FieldName = 'Categoria'
      Size = 121
    end
    object ClientDataSet1Valor: TCurrencyField
      FieldName = 'Valor'
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 216
    Top = 160
  end
end
