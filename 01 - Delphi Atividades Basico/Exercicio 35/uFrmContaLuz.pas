unit uFrmContaLuz;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TOpcao = (tpResidencial, tpComercial, tpIndustrial, tpFazenda);
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtEntrada: TEdit;
    rgOpcoes: TRadioGroup;
    btnCalcular: TButton;
    mmResultado: TMemo;
    edtDesconto: TEdit;
    Label3: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure Calculo;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnCalcularClick(Sender: TObject);
begin
  Calculo;
end;

procedure TfrmPrincipal.Calculo;
var
  xDesconto, xEntrada, xConta: Double;
begin
  if (TryStrToFloat(edtEntrada.Text, xEntrada)) and (TryStrToFloat(edtDesconto.Text, xDesconto)) then;
  begin

    case TOpcao(rgOpcoes.ItemIndex) of

      tpResidencial:
      begin
        xConta := xEntrada * 0.8;
        mmResultado.Lines.Add('Valor residencial a pagar: R$' +
                              FormatFloat('#,##0.00', (xConta - xDesconto)));
      end;                                            //Aplicando o desconto

      tpComercial:
      begin
        xConta := xEntrada * 0.68;
        mmResultado.Lines.Add('Valor comercial a pagar: R$' +
                              FormatFloat('#,##0.00', (xConta - xDesconto)));
      end;

      tpIndustrial:
      begin
        xConta := xEntrada * 1.49;
        mmResultado.Lines.Add('Valor industrial a pagar: R$' +
                              FormatFloat('#,##0.00', (xConta - xDesconto)));
      end;

      tpFazenda:
      begin
        xConta := xEntrada * 3.18;
        mmResultado.Lines.Add('Valor rural a pagar: R$' +
                              FormatFloat('#,##0.00', (xConta - xDesconto)));
      end;

      else
        Showmessage('Digite os 2 valores!');
    end;
  end;

end;

end.
