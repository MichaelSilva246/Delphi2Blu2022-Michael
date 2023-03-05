unit ufrmExercicio2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, udmConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TfrmExercicio2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    btnVisualizar: TButton;
    btnExportar: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    lookupCidade: TFDTable;
    dtsLookupCidade: TDataSource;
    FDQuery2: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    DataSource1: TDataSource;
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
  frmExercicio2: TfrmExercicio2;

implementation

{$R *.dfm}

{ TfrmExercicio2 }

procedure TfrmExercicio2.btnExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    forceDirectories(xCaminho);

  frxPDFExport1.Filename := Format('%\Exercicio2.pdf%', [xCaminho]);
  frxReport1.PrepareReport;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmExercicio2.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmExercicio2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;
  FDQuery2.Close;

  LookupCidade.close;

  frmExercicio2 := nil;
end;

procedure TfrmExercicio2.FormCreate(Sender: TObject);
begin
  lookupCidade.Open;
end;

procedure TfrmExercicio2.PrepararFiltro;
begin
  FDQuery1.Close;
  FDQuery1.ParambyName('CITY').AsInteger := 0;

  if DBLookupComboBox1.Text <> EmptyStr then
    FDQuery1.ParamByName('CITY').AsInteger := LookupCidade.FieldByName('city_ID').asInteger;

   FDQuery1.Open;

   FDQuery2.Close;
   FDQuery2.Open;

end;

end.
