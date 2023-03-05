unit UCalculadoraT;

interface

uses
  UCalculadora;

type

  TCalculadora = class(TInterfacedObject, ICalculadora)
    public
      function Somar(aNumero1, aNumero2: Double): Double;
      function Subtrair(aNumero1, aNumero2: Double): Double;
      function Dividir(aNumero1, aNumero2: Double): Double;
      function Multiplicar(aNumero1, aNumero2: Double): Double;
  end;

implementation

{ TCalculadora }

function TCalculadora.Dividir(aNumero1, aNumero2: Double): Double;
begin
  result := aNumero1 / aNumero2;
end;

function TCalculadora.Multiplicar(aNumero1, aNumero2: Double): Double;
begin
  result := aNumero1 * aNumero2;
end;

function TCalculadora.Somar(aNumero1, aNumero2: Double): Double;
begin
  result := aNumero1 + aNumero2;
end;

function TCalculadora.Subtrair(aNumero1, aNumero2: Double): Double;
begin
  result := aNumero1 - aNumero2;
end;

end.
