unit uCalcularServicoDefault;

interface

uses uCalcularServico, uCalculadora;

type
  TCalcularServiceDefault = class(TInterfacedObject, ICalcularServico)
  private

  public
    function Somar(aNum1, aNum2: Double): Double;
    function Subtrair(aNum1, aNum2: Double): Double;
    function Multiplicar(aNum1, aNum2: Double): Double;
    function Dividir(aNum1, aNum2: Double): Double;
  end;

implementation

{ TCalcularServiceDefault }

function TCalcularServiceDefault.Dividir(aNum1, aNum2: Double): Double;
begin
  Result := aNum1 / aNum2;
end;

function TCalcularServiceDefault.Multiplicar(aNum1, aNum2: Double): Double;
begin
  Result := aNum1 * aNum2;
end;

function TCalcularServiceDefault.Somar(aNum1, aNum2: Double): Double;
begin
  Result := aNum1 + aNum2;
end;

function TCalcularServiceDefault.Subtrair(aNum1, aNum2: Double): Double;
begin
  Result := aNum1 - aNum2;
end;

end.
