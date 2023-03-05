{ Invokable implementation File for TCalculadora which implements ICalculadora }

unit CalculadoraImpl;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns, CalculadoraIntf;

type

  { TCalculadora }
  TCalculadora = class(TInvokableClass, ICalculadora)
  public
    function Somar(aNumero1, aNumero2: Double): Double; stdcall;
    function Substrair(aNumero1, aNumero2: Double): Double; stdcall;
    function Multiplicar(aNumero1, aNumero2: Double): Double; stdcall;
    function Dividir(aNumero1, aNumero2: Double): Double; stdcall;
  end;

implementation

uses
  System.SysUtils;

{ TCalculadora }

function TCalculadora.Dividir(aNumero1, aNumero2: Double): Double;
begin
  if aNumero2 = 0 then
    raise Exception.Create('Impossivel dividir por 0!')
  else
    Result := aNumero1 / aNumero2;
end;

function TCalculadora.Multiplicar(aNumero1, aNumero2: Double): Double;
begin
  Result := aNumero1 * aNumero2;
end;

function TCalculadora.Somar(aNumero1, aNumero2: Double): Double;
begin
  Result := aNumero1 + aNumero2;
end;

function TCalculadora.Substrair(aNumero1, aNumero2: Double): Double;
begin
  Result := aNumero1 - aNumero2;
end;

initialization
{ Invokable classes must be registered }
   InvRegistry.RegisterInvokableClass(TCalculadora);
end.

