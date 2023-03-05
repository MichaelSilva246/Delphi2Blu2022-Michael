unit UVostro;

interface

uses UInterfaces;

type
  TVostro = class(TInterfacedObject, INotebook)
    function BuscarTamanhoTela: String;
    function BuscarMemoriaRam: String;
  end;

implementation

{ TVostro }

function TVostro.BuscarMemoriaRam: String;
begin
  Result := '3GB DDR3';
end;

function TVostro.BuscarTamanhoTela: String;
begin
  Result := '15 polegadas';
end;

end.
