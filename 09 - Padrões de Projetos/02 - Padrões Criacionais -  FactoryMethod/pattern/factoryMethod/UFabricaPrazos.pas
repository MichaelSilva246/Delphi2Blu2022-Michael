unit UFabricaPrazos;

interface

uses
  UTipoPrazo;

type
  TFabricaPrazos = class(TInterfacedObject, IFactoryMethod)
    function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
  end;
implementation

uses
  UPrazoAnual, UPrazoMensal, UfrmPrincipal;

{ TFabricaPrazos }

function TFabricaPrazos.ConsultarPrazo(const aPrazo: String): ITipoPrazo;
begin
  if aPrazo = 'Mensal' then
    Result := TPrazoMensal.Create
  else if aPrazo = 'Anual' then
    Result := TPrazoAnual.Create;
end;

end.
