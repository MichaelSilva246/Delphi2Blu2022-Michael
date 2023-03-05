unit uFrmMilitarObrigatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    mmAprovados: TMemo;
    mmDespensados: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    btnCadastrar: TButton;
    procedure btnCadastrarClick(Sender: TObject);
  private
    procedure Apto;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Apto;
var
  xQtdEntrada, I, xApto, xNaoApto: Integer;
  xNome: Array [0..5] of String;
  xSexo: Array [0..5] of String;
  xIdade: Array [0..5] of Integer;
  xSaude: Array [0..5] of String;
begin
  xApto := 0;
  xNaoApto := 0;
  xQtdEntrada := StrToInt(InputBox('Contador', 'Quantas pessoas cadastrar?', ''));

  for I := 0 to xQtdEntrada-1 do
  begin
    xNome[I] := InputBox('Nome', 'Entre com o nome', 'Digite');
    xSexo[I] := InputBox('Sexo', 'Entre com o sexo[F/M]', 'Digite');
    xIdade[I] := StrToInt(InputBox('Idade', 'Entre com a idade', 'Digite'));
    xSaude[I] := InputBox('Saude', 'Entre com a Saude[Saudavel/Doente]', 'Digite');

    if xSexo[I] = 'F' then
      xNaoApto := xNaoApto +1
    else if xIdade[I] < 18 then
      xNaoApto := xNaoApto +1
    else if xSaude[I] = 'Doente' then
      xNaoApto := xNaoApto +1
    else
      xApto := xApto +1;
  end;

  mmAprovados.Lines.Add('Total de Aptos: ' + IntToStr(xApto));
  mmDespensados.Lines.Add('Total de Não Aptos: ' + IntToStr(xNaoApto));
end;

procedure TForm1.btnCadastrarClick(Sender: TObject);
begin
  Apto;
end;

end.
