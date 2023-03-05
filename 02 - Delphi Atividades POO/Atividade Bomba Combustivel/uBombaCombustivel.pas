unit uBombaCombustivel;

interface

type

  TTipos = (tpDiesel=2, tpGasolinaComum=0, tpGasolinaAditivada=1, tpAlcool=3);

  TBombaCombustivel = class
  private
    FTipoCombustivel: String;
    FValorLitro: Currency;
    FQuantidadeCombustivel: Double;

    function GetQuantidadeCombustivel: Double;
    function GetTipoCombustivel: String;
    function GetValorLitro: Currency;

    procedure SetQuantidadeCombustivel(const Value: Double);
    procedure SetTipoCombustivel(const Value: String);
    procedure SetValorLitro(const Value: Currency);
  public
    function abastecerPorValor(Const aValor: Currency): Double;
    function abastecerPorLitro(Const aLitros: Double): String;
    procedure alterarValor(Const aAlterarValor: String);
    procedure alterarCombustivel(Const aAlterarCombustivel: String);
    procedure alterarQuantidadeCombustivel(Const aAlterarQtdCombustivel: String);

    property TipoCombustivel: String read GetTipoCombustivel write SetTipoCombustivel;
    property ValorLitro: Currency read GetValorLitro write SetValorLitro;
    property QuantidadeCombustivel: Double read GetQuantidadeCombustivel write SetQuantidadeCombustivel;

  end;
implementation

uses
  System.SysUtils, Vcl.Dialogs;

{ TBombaCombustivel }
function TBombaCombustivel.abastecerPorValor(Const aValor : Currency): Double;
var
  xQuantidade: Double;
begin
  xQuantidade := aValor / FValorLitro;

  if xQuantidade > FQuantidadeCombustivel then
    raise Exception.Create('Quantidade indisponivel');

  FQuantidadeCombustivel := FQuantidadeCombustivel - xQuantidade;
  Result := xQuantidade;
end;

function TBombaCombustivel.abastecerPorLitro(const aLitros: Double): String;
var
  xQuantidade: Double;
begin
  xQuantidade := aLitros;

  if xQuantidade > FQuantidadeCombustivel then
    raise Exception.Create('Quantidade indisponivel');

  FQuantidadeCombustivel := FQuantidadeCombustivel - xQuantidade;
  xQuantidade := xQuantidade * ValorLitro;
  Result := xQuantidade.ToString;
end;

procedure TBombaCombustivel.alterarValor(const aAlterarValor: String);
var
  xValor: Currency;
begin
  if TryStrtoCurr(aAlterarValor, xValor) then
    begin
      ValorLitro := xValor;
    end
  else
    ShowMessage('Erro');
end;

procedure TBombaCombustivel.alterarCombustivel(const aAlterarCombustivel: String);
var
  xCombustivel: String;
begin
  TipoCombustivel := xCombustivel;
end;

procedure TBombaCombustivel.alterarQuantidadeCombustivel(const aAlterarQtdCombustivel: String);
var
  xValor: Double;
begin
  if TryStrToFloat(aAlterarQtdCombustivel, xValor) then
    begin
      QuantidadeCombustivel := xValor;
    end
  else
     ShowMessage('Erro');
end;

function TBombaCombustivel.GetQuantidadeCombustivel: Double;
begin
  result := FQuantidadeCombustivel;
end;

function TBombaCombustivel.GetTipoCombustivel: String;
begin
  result := FTipoCombustivel;
end;

function TBombaCombustivel.GetValorLitro: Currency;
begin
  result := FValorLitro;
end;

procedure TBombaCombustivel.SetQuantidadeCombustivel(const Value: Double);
begin
  FQuantidadeCombustivel := Value;
end;

procedure TBombaCombustivel.SetTipoCombustivel(const Value: String);
begin
  FTipoCombustivel := Value;
end;

procedure TBombaCombustivel.SetValorLitro(const Value: Currency);
begin
  FValorLitro := Value;
end;

end.
