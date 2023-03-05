{ Invokable interface ICalculadora }

unit CalculadoraIntf;

interface

uses Soap.InvokeRegistry, System.Types, Soap.XSBuiltIns;

type

  TEnumTest = (etNone, etAFew, etSome, etAlot);

  TDoubleArray = array of Double;

  TMyEmployee = class(TRemotable)
  private
    FLastName: UnicodeString;
    FFirstName: UnicodeString;
    FSalary: Double;
  published
    property LastName: UnicodeString read FLastName write FLastName;
    property FirstName: UnicodeString read FFirstName write FFirstName;
    property Salary: Double read FSalary write FSalary;
  end;

  { Invokable interfaces must derive from IInvokable }
  ICalculadora = interface(IInvokable)
  ['{96C75182-B217-4CA8-98A3-B348DAD38ED9}']

    { Methods of Invokable interface must not use the default }
    { calling convention; stdcall is recommended }
    function Somar(aNumero1, aNumero2: Double): Double; stdcall;
    function Substrair(aNumero1, aNumero2: Double): Double; stdcall;
    function Multiplicar(aNumero1, aNumero2: Double): Double; stdcall;
    function Dividir(aNumero1, aNumero2: Double): Double; stdcall;
  end;

implementation

initialization
  { Invokable interfaces must be registered }
  InvRegistry.RegisterInterface(TypeInfo(ICalculadora));

end.
