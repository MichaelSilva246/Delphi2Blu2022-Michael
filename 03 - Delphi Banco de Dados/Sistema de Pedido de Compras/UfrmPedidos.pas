unit UfrmPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask;

type
  TfrmPedidos = class(TForm)
    PedidoCompra: TFDTable;
    dtsPedidoCompra: TDataSource;
    DBNavigator1: TDBNavigator;
    PedidoCompraId: TFDAutoIncField;
    PedidoCompraNumero: TLongWordField;
    PedidoCompraDataPedido: TDateField;
    PedidoCompraidComprador: TLongWordField;
    PedidoCompraidFornecedor: TLongWordField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    LookupComprador: TFDTable;
    dtsLookupComprador: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    LookupCompradorId: TFDAutoIncField;
    LookupCompradorNome: TStringField;
    LookupCompradorCargo: TStringField;
    dtsLookupFornecedor: TDataSource;
    LookupFornecedor: TFDTable;
    DBLookupComboBox2: TDBLookupComboBox;
    LookupFornecedorId: TFDAutoIncField;
    LookupFornecedorCNPJ: TStringField;
    LookupFornecedorNome: TStringField;
    DBGrid1: TDBGrid;
    DBNavigator2: TDBNavigator;
    ItemCompra: TFDTable;
    dtsItemCompra: TDataSource;
    ItemCompraId: TFDAutoIncField;
    ItemCompraQuantidade: TFloatField;
    ItemCompraidPedidoCompra: TLongWordField;
    ItemCompraidProduto: TLongWordField;
    LookupProdutos: TFDTable;
    LookupProdutosId: TFDAutoIncField;
    LookupProdutosDescricao: TStringField;
    LookupProdutosidUnidadeMedida: TLongWordField;
    ItemCompraLookUpProduto: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ItemCompraBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPedidos: TfrmPedidos;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmPedidos.ItemCompraBeforePost(DataSet: TDataSet);
begin
  ItemCompraidPedidoCompra.AsInteger:= PedidoCompraId.AsInteger;
end;

procedure TfrmPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;

  PedidoCompra.Close;
  LookupComprador.Close;
  lookupFornecedor.Close;
  ItemCompra.Close;
  LookupProdutos.Close;

  frmpedidos := nil;
end;

procedure TfrmPedidos.FormCreate(Sender: TObject);
begin
  PedidoCompra.Open;
  LookupComprador.Open;
  lookupFornecedor.Open;
  ItemCompra.open;
  LookupProdutos.open;
end;

end.
