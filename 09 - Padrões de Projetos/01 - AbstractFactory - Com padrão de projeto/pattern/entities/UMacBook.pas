unit UMacBook;

interface

uses UInterfaces;

type
  TMacBook = class(TInterfacedObject, INotebook)
    function BuscarTamanhoTela: String;
    function BuscarMemoriaRam: String;
  end;

implementation

{ TMacBook }

function TMacBook.BuscarMemoriaRam: String;
begin
  Result := '4GB DDR3'
end;

function TMacBook.BuscarTamanhoTela: String;
begin
  Result := '11.6 polegadas';
end;

end.
