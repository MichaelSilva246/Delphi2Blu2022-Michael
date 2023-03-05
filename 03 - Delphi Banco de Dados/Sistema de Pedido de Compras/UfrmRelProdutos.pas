unit UfrmRelProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, UdmPedidos, frxClass,
  frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TfrmRelProdutos = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtDescricao: TEdit;
    btnVisualizar: TButton;
    btnExportar: TButton;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    edtUnMedida: TEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmRelProdutos: TfrmRelProdutos;

implementation

{$R *.dfm}

{ TfrmRelProdutos }

procedure TfrmRelProdutos.btnExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.Filename := Format('%s\produtos.pdf', [xCaminho]);
  frxReport1.PrepareScript;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmRelProdutos.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmRelProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;

  frmRelProdutos := nil;
end;

procedure TfrmRelProdutos.PrepararFiltro;
begin
  FDQuery1.close;
  FDQuery1.ParamByName('DESCRICAO').AsString := '';
  FDQuery1.ParamByName('UNDMEDIDA').AsString := '';

  if Trim(edtDescricao.Text) <> EmptyStr then
    FDQuery1.ParamByName('DESCRICAO').AsString := '%' + Trim(edtDescricao.Text) + '%';

  if Trim(edtUnMedida.Text) <> EmptyStr then
    FDQuery1.ParamByName('UNDMEDIDA').AsString := '%' + Trim(edtUnMedida.Text) + '%';

  FDQuery1.Open;
end;

end.
