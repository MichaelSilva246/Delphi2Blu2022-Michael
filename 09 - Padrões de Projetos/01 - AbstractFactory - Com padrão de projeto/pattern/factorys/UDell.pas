unit UDell;

interface

uses UInterfaces;

type
  TDell = class(TInterfacedObject, IFactoryMarca)
    function ConsultarNotebook: INotebook;
    function ConsultarDesktop: IDesktop;
  end;

implementation

{ TDell }

uses UInspiron, UVostro;

function TDell.ConsultarDesktop: IDesktop;
begin
  Result := TInspiron.Create;
end;

function TDell.ConsultarNotebook: INotebook;
begin
  Result := TVostro.Create;
end;

end.
