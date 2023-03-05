unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uCalculadora;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNumero1: TEdit;
    edtNumero2: TEdit;
    cmbOperacao: TComboBox;
    btnCalcular: TButton;
    lblResul: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure Calcular;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  Calcular;
end;

//Procedure para calcular
procedure TForm1.Calcular;
var
  xNum1, xNum2: Double;
  xCalculadora: TCalculadora;
begin
  xCalculadora := TCalculadora.Create;

  try
    if (TryStrToFloat(edtNumero1.Text, xNum1)) and (TryStrToFloat(edtNumero2.Text, xNum2)) then
    begin
      case TOperacao(cmbOperacao.ItemIndex) of
        tpSomar: lblResul.Caption := xCalculadora.somar(xNum1, xNum2).ToString;

        tpSubtrair: lblResul.Caption := xCalculadora.subtrair(xNum1, xNum2).ToString;

        tpMultiplicar: lblResul.Caption := xCalculadora.Multiplicar(xNum1, xNum2).ToString;

        tpDividir: lblResul.Caption := xCalculadora.Dividir(xNum1, xNum2).ToString;

        else ShowMessage('Escolha uma operação');
      end;
    end
    else
      ShowMessage('Valor Inválido!');
  finally
    FreeAndNil(xCalculadora);
  end;
end;
end.
