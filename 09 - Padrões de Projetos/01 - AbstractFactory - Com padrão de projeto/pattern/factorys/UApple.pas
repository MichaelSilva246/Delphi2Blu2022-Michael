unit UApple;

interface

uses UInterfaces;

type
  TApple = class(TInterfacedObject, IFactoryMarca)
    function ConsultarNotebook: INotebook;
    function ConsultarDesktop: IDesktop;
  end;

implementation

{ TApple }

uses UIMac, UMacBook;

function TApple.ConsultarDesktop: IDesktop;
begin
  Result := TImac.Create;
end;

function TApple.ConsultarNotebook: INotebook;
begin
  Result := TMacBook.Create;
end;

end.
