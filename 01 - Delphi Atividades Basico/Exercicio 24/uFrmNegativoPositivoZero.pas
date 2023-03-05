unit uFrmNegativoPositivoZero;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    mmPositivo: TMemo;
    mmNegativo: TMemo;
    mmZero: TMemo;
    edtNumero: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    procedure Numeros;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Numeros;
end;

procedure TForm1.Numeros;
var
  xNumero: Double;
begin
  xNumero := StrToFloat(edtNumero.Text);

  if xNumero = 0 then
    mmZero.Lines.Add('O numero: ' + FloatToStr(xNumero) + ' é zero')
  else if xNumero > 0 then
    mmPositivo.Lines.Add('O numero: ' + FloatToStr(xNumero) + ' é positivo')
  else if xNumero < 0 then
    mmNegativo.Lines.Add('O numero: ' + FloatToStr(xNumero) + ' é negativo');
end;

end.
