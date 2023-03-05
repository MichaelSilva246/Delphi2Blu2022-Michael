object frmCompradores: TfrmCompradores
  Left = 0
  Top = 0
  Caption = 'Compradores'
  ClientHeight = 380
  ClientWidth = 483
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
    Left = 24
    Top = 47
    Width = 10
    Height = 13
    Caption = 'Id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 93
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 22
    Top = 139
    Width = 29
    Height = 13
    Caption = 'Cargo'
    FocusControl = DBEdit3
  end
  object DBNavigator1: TDBNavigator
    Left = 24
    Top = 8
    Width = 240
    Height = 25
    DataSource = DataSource2
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 227
    Width = 467
    Height = 145
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cargo'
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit
    Left = 22
    Top = 66
    Width = 134
    Height = 21
    DataField = 'Id'
    DataSource = DataSource2
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 22
    Top = 112
    Width = 134
    Height = 21
    DataField = 'Nome'
    DataSource = DataSource2
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 20
    Top = 158
    Width = 136
    Height = 21
    DataField = 'Cargo'
    DataSource = DataSource2
    TabOrder = 4
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'Id'
    Connection = dmPedidos.FDConexao
    TableName = 'devs2blu.comprador'
    Left = 400
    Top = 64
    object FDTable1Id: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDTable1Nome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 250
    end
    object FDTable1Cargo: TStringField
      FieldName = 'Cargo'
      Origin = 'Cargo'
      Required = True
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = FDTable1
    Left = 336
    Top = 64
  end
end
