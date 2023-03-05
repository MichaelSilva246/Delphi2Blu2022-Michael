unit UInterfaces;

interface

type
  INotebook = interface
    ['{B3277B39-8830-4D2A-A920-4A9628937946}']
    function BuscarTamanhoTela: String;
    function BuscarMemoriaRam: String;
  end;

  IDesktop = interface
    ['{0A36F981-AA89-4427-B2DF-F699D26920BF}']
    function BuscarNomeProcessador: String;
    function BuscarTamanhoHd: String;
  end;

  IFactoryMarca = Interface
    ['{7BE5D4DE-7AB1-49C5-B6FA-F2018968FB19}']
    function ConsultarNotebook: INotebook;
    function ConsultarDeskTop: IDesktop;
  End;

implementation

end.
