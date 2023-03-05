unit uFrmPrecoDeCusto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtValorDeCusto: TEdit;
    Label2: TLabel;
    edtValorDeImpostos: TEdit;
    btnCalcular: TButton;
    lbValorDaVenda: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  xValorDeCusto, xValorDeImpostos, xValorDeVenda: Currency;
begin
  xValorDeCusto := StrToFloat(edtValorDeCusto.Text);
  xValorDeImpostos := StrToFloat(edtValorDeImpostos.Text)/100;

  xValorDeVenda := (xValorDeCusto * xValorDeImpostos) + xValorDeCusto;

  lbValorDaVenda.caption := 'Valor da venda: R$' + formatCurr('#,##0.00', xValorDeVenda);
end;

end.
