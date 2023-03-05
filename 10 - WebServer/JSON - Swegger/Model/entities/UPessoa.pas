unit UPessoa;

interface

type
  TPessoa = class
    private
      FID: Integer;
      FNome: String;
    public
      //custom attributes
      //rttu
      // 2 assuntos avançados que seria interessante ver;
      [SwagProp('Pessoa Id', True)]
      property Id: Integer read FID write FID;

      [SwagProp('Pessoa Nome', True)]
      property Nome: String read FNome write FNome;
  end;

  TAPIError = class
    private
      FError: String;
    public
      property Error: String read FError write FError;
  end;

implementation

end.
