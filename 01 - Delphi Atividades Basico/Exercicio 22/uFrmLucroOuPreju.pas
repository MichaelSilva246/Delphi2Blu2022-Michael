unit uFrmLucroOuPreju;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnCalcular: TButton;
    mmRelatorio: TMemo;
    procedure btnCalcularClick(Sender: TObject);
  private
    procedure Situacao;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
begin
  Situacao;
end;

procedure TForm1.Situacao;
var
  xPrecoCusto, xPrecoVenda, xMediaCusto, xMediaVenda: Currency;
  xQtdEntrada, I: Integer;
  xSituacao: String;
begin
  xMediaCusto := 0;
  xMediaVenda := 0;

  xQtdEntrada := StrToInt(InputBox('Contador', 'Quantas produtos cadastrar?', 'Digite'));

  for I := 0 to xQtdEntrada-1  do
  begin
    xPrecoCusto := StrToInt(InputBox('Contador', 'Preco de custo?', 'Digite'));
    xMediaCusto := xPrecoCusto + xMediaCusto;
    xPrecoVenda := StrToInt(InputBox('Contador', 'Preco de venda?', 'Digite'));
    xMediaVenda := xPrecoVenda + xMediaVenda;

    if xPrecoCusto < xPrecoVenda then
      xSituacao := 'Lucro!'
    else if xPrecoCusto = xPrecoVenda then
      xSituacao := 'Empate!'
    else
      xSituacao := 'Prejuizo!';

      mmRelatorio.Lines.Add('Custo: R$' + FloatToStr(xPrecoCusto) + ' Para ser prozudida.' + #13#10 +
                            'Sua venda foi de: R$' +  FloatToStr(xPrecoVenda) + #13#10 +
                            'A situação dessa venda foi de: ' + xSituacao + #13#10);
  end;

  xMediaCusto := xMediaCusto / xQtdEntrada;
  xMediaVenda := xMediaVenda / xQtdEntrada;
  mmRelatorio.Lines.Add('Media de custo: ' + FloatToStr(xMediaCusto) + #13#10 +
                        'Media de venda: ' + FloatToStr(xMediaVenda));
end;
end.
