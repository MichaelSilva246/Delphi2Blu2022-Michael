unit ufrmExercicio1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, udmConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TfrmExercicio1 = class(TForm)
    Label1: TLabel;
    btnVisualizar: TButton;
    btnExportar: TButton;
    Label2: TLabel;
    edtAtor: TEdit;
    FDQuery1: TFDQuery;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmExercicio1: TfrmExercicio1;

implementation

{$R *.dfm}

{ TfrmExercicio1 }

procedure TfrmExercicio1.btnExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.Filename := Format('%s\Exercicio1.pdf', [xCaminho]);
  frxReport1.PrepareScript;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmExercicio1.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmExercicio1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;

  frmExercicio1 := nil;
end;

procedure TfrmExercicio1.PrepararFiltro;
begin
  FDQuery1.close;
  FDQuery1.ParamByName('LAST_NAME').AsString := '';
  if Trim(edtAtor.Text) <> EmptyStr then
    FDQuery1.ParamByName('LAST_NAME').AsString := '%' + Trim(edtAtor.Text) + '%';
  FDQuery1.Open;
end;

end.
