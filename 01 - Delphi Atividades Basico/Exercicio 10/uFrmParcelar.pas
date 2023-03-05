unit uFrmParcelar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtValorDaCompra: TEdit;
    mmParcelas: TMemo;
    btnParcelar: TButton;
    procedure btnParcelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnParcelarClick(Sender: TObject);
var
  xValorDaCompra: Currency;
begin
  xValorDaCompra := StrToFloat(edtValorDaCompra.Text);

  mmParcelas.Lines.Add('1x de R$' + (FormatCurr('#,##0.00', xValorDaCompra)));
  mmParcelas.Lines.Add('2x de R$' + (FormatCurr('#,##0.00', xValorDaCompra /2)));
  mmParcelas.Lines.Add('3x de R$' + (FormatCurr('#,##0.00', xValorDaCompra /3)));
  mmParcelas.Lines.Add('4x de R$' + (FormatCurr('#,##0.00', xValorDaCompra /4)));
  mmParcelas.Lines.Add('5x de R$' + (FormatCurr('#,##0.00', xValorDaCompra /5)));
end;

end.
