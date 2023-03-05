unit UConcreteSubject;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, USubject, System.Classes,
  System.Generics.Collections, UObserver;

type
  TfraCadastro = class(TFrame, ISubject)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnGravar: TButton;
    edtValor: TEdit;
    DBGrid1: TDBGrid;
    cmbOperacao: TComboBox;
    cmbCategoria: TComboBox;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet1Operacao: TStringField;
    ClientDataSet1Categoria: TStringField;
    ClientDataSet1Valor: TCurrencyField;
    Shape1: TShape;
    procedure btnGravarClick(Sender: TObject);
    procedure cmbOperacaoChange(Sender: TObject);
  private
    FObservers: TList<IObserver>;
    procedure Notificar;
    procedure CarregarCategorias;
  public
    constructor Create(AOwner: TComponent); override;
    destructor destroy; override;

    procedure AdicionarObserver(aObserver: IObserver);
    procedure RemoverObserver(aObserver: IObserver);
  end;

implementation

uses
  UNotificacao;

{$R *.dfm}

{ TFrame1 }

procedure TfraCadastro.AdicionarObserver(aObserver: IObserver);
begin
  FObservers.Add(aObserver);
end;

procedure TfraCadastro.btnGravarClick(Sender: TObject);
begin
  //Adicionar um registro no DataSet conforme valores informados pelo usuário
  ClientDataset1.AppendRecord([cmbOperacao.Text, cmbCategoria.Text, StrToFloatDef(edtValor.Text, 0)]);

  //chama o método de notificacao
  Self.Notificar;
end;

procedure TfraCadastro.CarregarCategorias;
begin
  cmbCategoria.Clear;

  case cmbOperacao.ItemIndex of
    0:
    begin
      cmbCategoria.Items.Add('Salário');
      cmbCategoria.Items.Add('13º');
      cmbCategoria.items.Add('Restitução do IR');
      cmbCategoria.items.Add('Freelancing');
    end;
    1:
    begin
      cmbCategoria.items.Add('Aluguel');
      cmbCategoria.items.Add('Supermercado');
      cmbCategoria.items.Add('Farmácia');
      cmbCategoria.items.Add('Escola');
      cmbCategoria.items.Add('Combustível');
      cmbCategoria.items.Add('Alimentação');
      cmbCategoria.items.Add('Roupas');
      cmbCategoria.items.Add('Viagens');
    end;
  end;
end;

procedure TfraCadastro.cmbOperacaoChange(Sender: TObject);
begin
  Self.CarregarCategorias;
end;

constructor TfraCadastro.Create(AOwner: TComponent);
begin
  inherited;
  FObservers := TList<IObserver>.Create;
end;

destructor TfraCadastro.destroy;
begin
  FObservers.Free;
  inherited;
end;

procedure TfraCadastro.Notificar;
var
  xNotificacao: TNotificacao;
  xObserver: IObserver;
begin
  xNotificacao.Operacao := ClientDataSet1.FieldByName('Operacao').AsString;
  xNotificacao.Categoria := ClientDataSet1.FieldByName('Categoria').AsString;
  xNotificacao.Valor := ClientDataSet1.FieldByName('Valor').AsFloat;

  for xObserver in FObservers do
  begin
    xObserver.Atualizar(xNotificacao);
  end;
end;

procedure TfraCadastro.RemoverObserver(aObserver: IObserver);
begin
  FObservers.Delete(FObservers.IndexOf(aObserver));
end;

end.
