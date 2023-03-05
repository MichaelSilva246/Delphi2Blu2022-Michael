unit UfrmRelPedidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.DBCtrls,
  frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TfrmRelPedidos = class(TForm)
    GroupBox1: TGroupBox;
    DBLookupComprador: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupFornecedor: TDBLookupComboBox;
    btnExportar: TButton;
    btnVisualizar: TButton;
    dtsLookpUpComprador: TDataSource;
    dtsLookupFornecedor: TDataSource;
    LookUpComprador: TFDTable;
    LookupFornecedor: TFDTable;
    QryPedido: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    QryItemCompra: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    dtsPedido: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelPedidos: TfrmRelPedidos;

implementation

{$R *.dfm}

uses UdmPedidos;

procedure TfrmRelPedidos.btnExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    forceDirectories(xCaminho);

  frxPDFExport1.Filename := Format('%\Pedidos.pdf%', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelPedidos.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmRelPedidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  QryPedido.Close;
  QryItemCompra.Close;

  LookupComprador.close;
  LookupFornecedor.Close;

  frmRelPedidos := nil;
end;

procedure TfrmRelPedidos.FormCreate(Sender: TObject);
begin
  LookupComprador.Open;
  LookupFornecedor.Open ;
end;

procedure TfrmRelPedidos.PrepararFiltro;
begin
  QryPedido.Close;
  QryPedido.ParambyName('IDCOMPRADOR').AsInteger := 0;
  QryPedido.ParamByName('IDFORNECEDOR').AsInteger := 0;

  if DBLookupComprador.Text <> EmptyStr then
    QryPedido.ParamByName('IDCOMPRADOR').AsInteger := LookupComprador.FieldByName('ID').asInteger;

   if DBLookupFornecedor.Text <> EmptyStr then
    QryPedido.ParamByName('IDFORNECEDOR').AsInteger := LookupFornecedor.FieldByName('ID').asInteger;

   QryPedido.Open;

   QryItemCompra.Close;
   QryItemCompra.Open;
end;

end.
