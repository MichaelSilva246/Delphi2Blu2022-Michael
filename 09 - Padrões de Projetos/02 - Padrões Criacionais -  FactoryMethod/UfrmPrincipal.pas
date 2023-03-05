unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtValor: TEdit;
    edtQtdParcelas: TEdit;
    btnGerar: TButton;
    Memo1: TMemo;
    cmbPrazoPagamento: TComboBox;
    procedure btnGerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UFabricaPrazos, UPrazoAnual, UPrazoMensal, UTipoPrazo;

procedure TForm1.btnGerarClick(Sender: TObject);
var
  xTipoPrazo: ITipoPrazo;
  xMetodo: IFactoryMethod;
begin
  //Instancia a fabrica (Factory method)
  xMetodo := TFabricaPrazos.Create;
  //obtem o produto baseado no parametro informado
  xTipoPrazo := xMetodo.ConsultarPrazo(cmbPrazoPagamento.Items[cmbPrazoPagamento.ItemIndex]);

  memo1.Lines.Clear;
  memo1.Lines.Add(xTipoPrazo.ConsultarDescricao);
  memo1.Lines.Add(xTipoPrazo.ConsultarJuros);
  memo1.Lines.Add(xTipoPrazo.ConsultarProjecao(StrToFloat(edtValor.Text), StrToInt(edtQtdParcelas.Text)));
  memo1.Lines.Add(xTipoPrazo.ConsultarTotal);
end;

end.
