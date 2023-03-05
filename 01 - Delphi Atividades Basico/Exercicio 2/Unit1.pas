unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtPrimeiroNumero: TEdit;
    edtSegundoNumero: TEdit;
    btnCalcular: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    edtSomar: TEdit;
    edtSubtrair: TEdit;
    edtMultiplicar: TEdit;
    edtDividir: TEdit;
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
xValor1, xValor2, xResultado: Integer;
begin
  xValor1 := StrToInt(edtPrimeiroNumero.Text);
  xValor2 := StrToInt(edtSegundoNumero.Text);

  //Somar
  xResultado := xValor1 + xValor2;
  edtSomar.Text := IntToStr(xResultado);
  //Subtrair
  xResultado := xValor1 - xValor2;
  edtSubtrair.Text := IntToStr(xResultado);
  //Multiplicar
  xResultado := xValor1 * xValor2;
  edtMultiplicar.Text := IntToStr(xResultado);
  //Dividir
  xResultado := Trunc(xValor1 / xValor2);
  edtDividir.Text := IntToStr(xResultado);

  {Neste exercicio eu usei só uma variavel como resultado.
  O que seria legal para um projeto.
  Já que a variavel iria sempre alterar de valor.
  Podendo prejudicar o resto do projeto. }
end;

end.
