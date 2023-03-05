unit uCalcularServico;

interface

type
  ICalcularServico = Interface
    ['{B9D29E7D-A181-45FC-8256-B54571FA5B8F}']

    function Somar(aNum1, aNum2: Double): Double;
    function Subtrair(aNum1, aNum2: Double): Double;
    function Multiplicar(aNum1, aNum2: Double): Double;
    function Dividir(aNum1, aNum2: Double): Double;
  End;

implementation

end.
