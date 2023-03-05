unit uFrmCarroNovo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtCustoDeFabrica: TEdit;
    mmObs: TMemo;
    btnCalcular: TButton;
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
Var
  xCustoDeFabrica, xCustoDeConsumidor, xFabricaMaisImpostos: Currency;
  xImpostos, xDistribuidora: Double;
begin
  xCustoDeFabrica := StrToFloat(edtCustoDeFabrica.Text);
  xImpostos := 45/100 * xCustoDeFabrica;
  xFabricaMaisImpostos := xImpostos + xCustoDeFabrica;
  xDistribuidora := xFabricaMaisImpostos * 28/100;

  xCustoDeConsumidor := xDistribuidora + xFabricaMaisImpostos;

  mmObs.Lines.Add('O custo do carro ao consumidor é: R$' + FormatCurr('#,##0.00',xCustoDeConsumidor));
end;

end.
