unit UTipoPrazo;

interface

type
  ITipoPrazo = interface
    ['{E38F7F7E-22F1-42CD-9771-2762D249B3D8}']
    function ConsultarDescricao: String;
    function ConsultarJuros: String;
    function ConsultarProjecao(const aValor: Real; const aQtdParcelas: Integer): String;
    function ConsultarTotal: String;
  end;

  IFactoryMethod = interface
    ['{377BCED5-72FD-4F3E-9188-3A62C5928E34}']
    function ConsultarPrazo(const aPrazo: String): ITipoPrazo;
  end;
implementation

end.
