unit uProduto;

interface

type
  TProduto = class
  private
    FNomeProduto: String;
    FQuantidade: Integer;
    FPrecoUnitario: Double;
    FValorTotal: Double;

    function GetNomeProduto: String;
    function GetPrecoUnitario: Double;
    function GetQuantidade: Integer;
    function GetValorTotal: Double;

    procedure SetNomeProduto(const Value: String);
    procedure SetPrecoUnitario(const Value: Double);
    procedure SetQuantidade(const Value: Integer);
    procedure SetValorTotal(const Value: Double);

  public
    function calcularDesconto: Double;
    property NomeProduto: String read GetNomeProduto write SetNomeProduto;
    property Quantidade: Integer read GetQuantidade write SetQuantidade;
    property PrecoUnitario: Double read GetPrecoUnitario write SetPrecoUnitario;
    //property ValorTotal: Double read GetValorTotal write SetValorTotal;
  end;

implementation

{ TProduto }

function TProduto.calcularDesconto: Double;
begin
  if (Quantidade >= 11) and (Quantidade <= 50) then
    Result := (Quantidade * PrecoUnitario) * 0.9
  else if Quantidade >= 51 then
    Result := (Quantidade * PrecoUnitario) * 0.75
  else
    Result := (Quantidade * PrecoUnitario) * 1
end;

function TProduto.GetNomeProduto: String;
begin
  Result := FNomeProduto;
end;

function TProduto.GetPrecoUnitario: Double;
begin
  Result := FPrecoUnitario
end;

function TProduto.GetQuantidade: Integer;
begin
  Result := FQuantidade
end;

function TProduto.GetValorTotal: Double;
begin
  Result := FValorTotal;
end;

procedure TProduto.SetNomeProduto(const Value: String);
begin
  FNomeProduto := Value
end;

procedure TProduto.SetPrecoUnitario(const Value: Double);
begin
  FPrecoUnitario := Value
end;

procedure TProduto.SetQuantidade(const Value: Integer);
begin
  FQuantidade := Value
end;

procedure TProduto.SetValorTotal(const Value: Double);
begin
  FValorTotal := Value;
end;

end.
