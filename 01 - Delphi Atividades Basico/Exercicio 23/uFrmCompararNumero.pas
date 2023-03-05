unit uFrmCompararNumero;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNumero: TEdit;
    btnCalcular: TButton;
    lblResultado: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure Valores;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  Valores;
end;

procedure TForm1.Valores;
var
  xEntrada: Double;
begin
  xEntrada := StrToFloat(edtNumero.Text);

  if xEntrada > 80 then
    lblResultado.Caption := FloatToStr(xEntrada) + ' É maior que 80'
  else if xEntrada < 25 then
    lblResultado.Caption := FloatToStr(xEntrada) + ' É menor que 25'
  else if xEntrada = 40 then
    lblResultado.Caption := FloatToStr(xEntrada) + ' É igual a 40'
  else
    lblResultado.Caption := FloatToStr(xEntrada) + ' Não está na condição do exercício';

end;

end.
