unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TOperacoes = (tpSomar, tpSubtrair, tpDividir, tpMultiplicar);
  TForm1 = class(TForm)
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    cmbOperacao: TComboBox;
    btnCalcular: TButton;
    lblResultado: TLabel;
    Label1: TLabel;
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

uses ICalculadora1, NumberConversion;

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  xNumero1, xNumero2: Double;
begin
  if not tryStrToFloat(edtNumero1.Text, xNumero1) then
    raise Exception.Create('Valor inválido!');
  if not tryStrToFloat(edtNumero2.Text, xNumero2) then
    raise Exception.Create('Valor inválido!');

  case TOperacoes(cmbOperacao.ItemIndex) of
    tpSomar: lblResultado.Caption := GetICalculadora.Somar(xNumero1, xNumero2).ToString;
    tpSubtrair: lblResultado.Caption := GetICalculadora.Substrair(xNumero1, xNumero2).ToString;
    tpDividir: lblResultado.Caption := GetICalculadora.Dividir(xNumero1, xNumero2).ToString;
    tpMultiplicar: lblResultado.Caption := GetICalculadora.Multiplicar(xNumero1, xNumero2).ToString;
  end;

  
end;

end.
