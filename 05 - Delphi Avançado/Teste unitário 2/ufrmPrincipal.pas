unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uProduto;

type
  TForm1 = class(TForm)
    edtNomeProduto: TEdit;
    edtQuantidade: TEdit;
    edtPrecoUnitario: TEdit;
    Label2: TLabel;
    btnCalcular: TButton;
    mmExtrato: TMemo;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure CalcularDesconto;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  CalcularDesconto;
end;

procedure TForm1.CalcularDesconto;
var
  xProduto: TProduto;
  xNomeProduto: String;
  xQuantidade: Integer;
  xPrecoUnitario, xValorTotal: Double;
begin
  xProduto := TProduto.Create;

  try
    xProduto.NomeProduto := edtNomeProduto.Text;
    xProduto.Quantidade := StrToInt(edtQuantidade.text);
    xProduto.PrecoUnitario := StrToFloat(edtPrecoUnitario.Text);

    mmExtrato.Lines.Add('Nome do produto: ' + xProduto.NomeProduto);
    mmExtrato.Lines.Add('Quantidade : ' + xProduto.Quantidade.ToString);
    mmExtrato.Lines.Add('Valor total: ' + (xProduto.PrecoUnitario * xProduto.Quantidade).ToString);
    mmExtrato.Lines.Add('Valor total com desconto: ' + xProduto.calcularDesconto.ToString);
  finally
    FreeAndNil(xProduto);
  end;

end;

end.
