unit ufrmExercicio3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, udmConexao,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxClass, frxDBSet, frxExportBaseDialog, frxExportPDF;

type
  TfrmExercicio3 = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    btnVisualizar: TButton;
    btnExportar: TButton;
    FDQuery1: TFDQuery;
    edtAtor: TEdit;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    FDQuerySum: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVisualizarClick(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
  private
    procedure PrepararFiltro;
  public
    { Public declarations }
  end;

var
  frmExercicio3: TfrmExercicio3;

implementation

{$R *.dfm}

{ TfrmExercicio3 }

procedure TfrmExercicio3.btnExportarClick(Sender: TObject);
var
  xCaminho: String;
begin
  Self.PrepararFiltro;

  xCaminho := ExtractFilePath(Application.ExeName) + 'temp';

  if not DirectoryExists(xCaminho) then
    ForceDirectories(xCaminho);

  frxPDFExport1.Filename := Format('%s\Exercicio3.pdf', [xCaminho]);
  frxReport1.PrepareScript;
  frxReport1.Export(frxPDFExport1);
end;

procedure TfrmExercicio3.btnVisualizarClick(Sender: TObject);
begin
  Self.PrepararFiltro;

  frxReport1.ShowReport;
end;

procedure TfrmExercicio3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  FDQuery1.Close;

  frmExercicio3 := nil;
end;

procedure TfrmExercicio3.PrepararFiltro;
begin
  FDQuery1.close;
  FDQuery1.ParamByName('first_name').AsString := '';
  if Trim(edtAtor.Text) <> EmptyStr then
    FDQuery1.ParamByName('first_name').AsString := '%' + Trim(edtAtor.Text) + '%';
  FDQuery1.Open;
end;

end.
