unit uCalculadora;

interface

type

  TOperacao = (tpSomar, tpSubtrair,  tpMultiplicar, tpDividir);

  TCalculadora = class
  public
    function somar(aNum1, aNum2: Double): Double;
    function subtrair(aNum1, aNum2: Double): Double;
    function multiplicar(aNum1, aNum2: Double): Double;
    function dividir(aNum1, aNum2: Double): Double;
  end;

implementation

{ TCalculadora }

function TCalculadora.dividir(aNum1, aNum2: Double): Double;
begin
  Result := aNum1 / aNum2;
end;

function TCalculadora.multiplicar(aNum1, aNum2: Double): Double;
begin
  Result := aNum1 * aNum2;
end;

function TCalculadora.somar(aNum1, aNum2: Double): Double;
begin
  Result := aNum1 + aNum2;
end;

function TCalculadora.subtrair(aNum1, aNum2: Double): Double;
begin
  Result := aNum1 - aNum2;
end;

end.
