unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtVendedor: TEdit;
    Label2: TLabel;
    edtSalarioFixo: TEdit;
    Label3: TLabel;
    btnExecutar: TButton;
    lbObs: TLabel;
    edtVendas: TEdit;
    mmObs: TMemo;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExecutarClick(Sender: TObject);
var
  xVendedor: String;
  xSalarioFixo, xVendas, xSalarioFinal: Currency;
begin
  xVendedor := edtVendedor.Text;
  xSalarioFixo := StrToCurr(edtSalarioFixo.Text);
  xVendas := StrToCurr(edtVendas.Text);

  xVendas := xVendas * (15/100);
  xSalarioFinal := xSalarioFixo + xVendas;

  lbObs.Caption := 'Vendedor: ' + xVendedor;
  mmObs.Lines.Add('Salário: ' + CurrToStr(xSalarioFixo));
  mmObs.Lines.Add('Comissão: ' + CurrToStr(xVendas));
  mmObs.Lines.Add('Salário final: ' + CurrToStr(xSalarioFinal));
end;

end.
