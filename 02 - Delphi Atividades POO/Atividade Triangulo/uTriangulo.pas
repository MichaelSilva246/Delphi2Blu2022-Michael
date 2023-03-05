unit uTriangulo;

interface

type
  TTriangulo = class
    private
      Fa: Double;
      Fb: Double;
      Fc: Double;
      FD: Double;

      function GetA: Double;
      function GetB: Double;
      function GetC: Double;
      function GetD: Double;

      procedure SetA(const Value: Double);
      procedure SetB(const Value: Double);
      procedure SetC(const Value: Double);


    public
      function Area: Double;

      property A: Double read GetA write SetA;
      property B: Double read GetB write SetB;
      property C: Double read GetC write SetC;

      property D: Double read GetD; //Property somente leitura;
  end;

implementation

{ TTriangulo }

function TTriangulo.Area: Double;
var
  xP: Double;
begin
  FD := 10;

  xP := (Fa + Fb + Fc) / 2;
  Result := Sqrt(xP * (xP -Fa) * (xP - Fb) * (xP - Fc));
end;

function TTriangulo.GetA: Double;
begin
  Result := FA;
end;

function TTriangulo.GetB: Double;
begin
  Result := FB;
end;

function TTriangulo.GetC: Double;
begin
  Result := FC
end;

function TTriangulo.GetD: Double;
begin
  Result := FD
end;

procedure TTriangulo.SetA(const Value: Double);
begin
  FA := Value;
end;

procedure TTriangulo.SetB(const Value: Double);
begin
  FB := Value;
end;

procedure TTriangulo.SetC(const Value: Double);
begin
  FC := Value;
end;

end.
