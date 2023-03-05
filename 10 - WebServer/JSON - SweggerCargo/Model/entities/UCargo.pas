unit UCargo;

interface

type
  TCargo = class
  private
    FID: Integer;
    FDescricao: String;
  public
    // custom attributes
    // rttu
    // 2 assuntos avançados que seria interessante ver;
    [SwagProp('Pessoa Id', True)]
    property Id: Integer read FID write FID;

    [SwagProp('Pessoa Descricao', True)]
    property Descricao: String read FDescricao write FDescricao;
  end;

  TAPIError = class
  private
    FError: String;
  public
    property Error: String read FError write FError;
  end;

implementation

end.
