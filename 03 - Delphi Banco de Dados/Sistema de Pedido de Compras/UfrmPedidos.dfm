object frmPedidos: TfrmPedidos
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 386
  ClientWidth = 653
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
    Left = 8
    Top = 40
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 160
    Top = 40
    Width = 37
    Height = 13
    Caption = 'Numero'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 312
    Top = 40
    Width = 55
    Height = 13
    Caption = 'DataPedido'
    FocusControl = DBEdit3
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 8
    Width = 240
    Height = 25
    DataSource = dtsPedidoCompra
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 56
    Width = 134
    Height = 21
    DataField = 'Id'
    DataSource = dtsPedidoCompra
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 160
    Top = 56
    Width = 134
    Height = 21
    DataField = 'Numero'
    DataSource = dtsPedidoCompra
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 312
    Top = 56
    Width = 134
    Height = 21
    DataField = 'DataPedido'
    DataSource = dtsPedidoCompra
    TabOrder = 3
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 112
    Width = 145
    Height = 21
    DataField = 'idComprador'
    DataSource = dtsPedidoCompra
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = dtsLookupComprador
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 8
    Top = 168
    Width = 145
    Height = 21
    DataField = 'idFornecedor'
    DataSource = dtsPedidoCompra
    KeyField = 'Id'
    ListField = 'Nome'
    ListSource = dtsLookupFornecedor
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 232
    Width = 438
    Height = 107
    DataSource = dtsItemCompra
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idProduto'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LookUpProduto'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Quantidade'
        Width = 100
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 452
    Top = 232
    Width = 20
    Height = 100
    DataSource = dtsItemCompra
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    Kind = dbnVertical
    TabOrder = 7
  end
  object PedidoCompra: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.pedidocompra'
    Left = 480
    object PedidoCompraId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object PedidoCompraNumero: TLongWordField
      FieldName = 'Numero'
      Origin = 'Numero'
      Required = True
    end
    object PedidoCompraDataPedido: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DataPedido'
      Origin = 'DataPedido'
    end
    object PedidoCompraidComprador: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idComprador'
      Origin = 'idComprador'
    end
    object PedidoCompraidFornecedor: TLongWordField
      AutoGenerateValue = arDefault
      FieldName = 'idFornecedor'
      Origin = 'idFornecedor'
    end
  end
  object dtsPedidoCompra: TDataSource
    DataSet = PedidoCompra
    Left = 400
  end
  object LookupComprador: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'comprador'
    Left = 320
    Top = 112
    object LookupCompradorId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object LookupCompradorNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object LookupCompradorCargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
  object dtsLookupComprador: TDataSource
    DataSet = LookupComprador
    Left = 200
    Top = 112
  end
  object dtsLookupFornecedor: TDataSource
    DataSet = LookupFornecedor
    Left = 208
    Top = 168
  end
  object LookupFornecedor: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.fornecedor'
    Left = 336
    Top = 168
    object LookupFornecedorId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object LookupFornecedorCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object LookupFornecedorNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
  end
  object ItemCompra: TFDTable
    BeforePost = ItemCompraBeforePost
    IndexFieldNames = 'Id'
    MasterSource = dtsPedidoCompra
    MasterFields = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.itemcompra'
    Left = 576
    Top = 248
    object ItemCompraId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object ItemCompraQuantidade: TFloatField
      FieldName = 'Quantidade'
      Origin = 'Quantidade'
      Required = True
    end
    object ItemCompraidPedidoCompra: TLongWordField
      FieldName = 'idPedidoCompra'
      Origin = 'idPedidoCompra'
      Required = True
    end
    object ItemCompraidProduto: TLongWordField
      FieldName = 'idProduto'
      Origin = 'idProduto'
      Required = True
    end
    object ItemCompraLookUpProduto: TStringField
      FieldKind = fkLookup
      FieldName = 'LookUpProduto'
      LookupDataSet = LookupProdutos
      LookupKeyFields = 'id'
      LookupResultField = 'Descricao'
      KeyFields = 'idProduto'
      Size = 250
      Lookup = True
    end
  end
  object dtsItemCompra: TDataSource
    DataSet = ItemCompra
    Left = 504
    Top = 248
  end
  object LookupProdutos: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.produto'
    Left = 536
    Top = 320
    object LookupProdutosId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object LookupProdutosDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Required = True
      Size = 250
    end
    object LookupProdutosidUnidadeMedida: TLongWordField
      FieldName = 'idUnidadeMedida'
      Origin = 'idUnidadeMedida'
      Required = True
    end
  end
end
