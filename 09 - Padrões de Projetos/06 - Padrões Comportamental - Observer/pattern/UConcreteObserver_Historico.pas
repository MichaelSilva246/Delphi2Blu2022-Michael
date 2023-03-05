unit UConcreteObserver_Historico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, UObserver, UNotificacao;

type
  TfraHistorico = class(TFrame, IObserver)
    Label1: TLabel;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ClientDataSet1Categoria: TStringField;
    ClientDataSet1Total: TCurrencyField;
  private
    { Private declarations }
  public
    procedure Atualizar(aNotificacao: TNotificacao);
  end;

implementation

{$R *.dfm}

{ TfraHistorico }

procedure TfraHistorico.Atualizar(aNotificacao: TNotificacao);
begin
  if aNotificacao.Operacao = 'Crédito' then
    Exit;

  //Encontra a categoria de debito para somar o valor
  if ClientDataSet1.Locate('Categoria', aNotificacao.Categoria, []) then
  begin
    ClientDataSet1.edit;

    ClientDataSet1.FieldByName('Total').AsFloat :=
      ClientDataSet1.FieldByName('Total').asFloat + aNotificacao.Valor;
    ClientDataset1.Post;

    Exit;
  end;

  //Cadastra a categoria caso ela ainda não exista no agrupamento
  ClientDataSet1.AppendRecord([aNotificacao.Categoria, aNotificacao.Valor]);
end;

end.
