unit uCalculadora;

interface

uses uCalcularServico;


type
  TTypeCalc = (tpSomar, tpSubtrair, tpMultiplicar, tpDividir);

  TCalculadora = class
  private
    FNum1: Double;
    FNum2: Double;

    FServico: ICalcularServico;

    function GetNum1: Double;
    function GetNum2: Double;
    procedure SetNum1(const Value: Double);
    procedure SetNum2(const Value: Double);
  public
    function processCalc(aTypeCalc: TTypeCalc): Double;
    Constructor Create(const aNum1, aNum2: Double; aServico: IcalcularServico);
    destructor Destroy;

    property Num1: Double read GetNum1 write SetNum1;
    property Num2: Double read GetNum2 write SetNum2;
  end;


implementation

{ TCalculadora }

constructor TCalculadora.Create(const aNum1, aNum2: Double;
  aServico: IcalcularServico);
begin
  FNum1 := aNum1;
  FNum2 := aNum2;
  FServico := aServico;
end;

destructor TCalculadora.Destroy;
begin
  inherited;
end;

function TCalculadora.GetNum1: Double;
begin
  Result := FNum1;
end;

function TCalculadora.GetNum2: Double;
begin
  Result := FNum2;
end;

function TCalculadora.processCalc(aTypeCalc: TTypeCalc): Double;
begin
  case aTypeCalc of
    tpSomar: Result := FServico.Somar(Fnum1, Fnum2);
    tpSubtrair: Result := FServico.Subtrair(FNum1, Fnum2);
    tpMultiplicar: Result := FServico.Multiplicar(Fnum1, FNum2);
    tpDividir: Result := FServico.Dividir(Fnum1, FNum2);
  end;
end;

procedure TCalculadora.SetNum1(const Value: Double);
begin
  FNum1 := Value;
end;

procedure TCalculadora.SetNum2(const Value: Double);
begin
  FNum2 := Value;
end;

end.
