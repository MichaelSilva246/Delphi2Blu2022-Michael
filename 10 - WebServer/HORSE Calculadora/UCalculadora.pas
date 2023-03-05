unit UCalculadora;

interface

type
  ICalculadora = interface
    function Somar(aNumero1, aNumero2: Double): Double;
    function Subtrair(aNumero1, aNumero2: Double): Double;
    function Dividir(aNumero1, aNumero2: Double): Double;
    function Multiplicar(aNumero1, aNumero2: Double): Double;
  end;

implementation

end.
