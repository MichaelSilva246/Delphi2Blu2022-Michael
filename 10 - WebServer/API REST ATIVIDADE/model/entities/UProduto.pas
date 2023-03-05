unit UProduto;

interface

type
  TProduto = class
  private
    FId: Integer;
    FDescricao: String;
    FUnidadeMedida: String;
    FPrecoVenda: Double;
  public
    [SwagProp('Produto Id', True)]
    property Id: Integer read FId write FId;

    [SwagProp('Produto Descricao', True)]
    property Descricao: String read FDescricao write FDescricao;

    [SwagProp('Produto UnidadeMedida', True)]
    property UnidadeMedida: String read fUnidadeMedida write FUnidadeMedida;

    [SwagProp('Produto PrecoVenda', True)]
    property PrecoVenda: Double read FPrecoVenda write FPrecoVenda;
  end;

  TAPIError = class 
    private
      FError: String;
    public
      property Error: String read FError write FError;
  end;
implementation

end.
