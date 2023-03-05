unit UTarget;

interface

uses UInterfaceViaCep, System.Classes;

type
  TComunicador = class
    private
      FWebServiceViaCEP: IWebServiceViaCEP;
    public
      constructor Create(aWebServiceViaCEP: IWebServiceViaCep);
      destructor Destroy; override;

      function ConsultarEndereco(const aCep: String): TStringList;
  end;
implementation

{ TComunicador }

function TComunicador.ConsultarEndereco(const aCep: String): TStringList;
var
  xDados: TStringList;
begin
  FWebServiceViaCep.ConsultarEnderecoWebService(aCep);

  xDados := TStringList.Create;

  xDados.Values['Logradouro'] := FWebServiceViaCep.ObterLogradouro;
  xDados.Values['Bairro'] := FWebServiceViaCep.ObterBairro;
  xDados.Values['Cidade'] := FWebServiceViaCep.ObterCidade;

  Result := xDados;
end;

constructor TComunicador.Create(aWebServiceViaCEP: IWebServiceViaCep);
begin
  FWebServiceViaCep := aWebServiceViaCEP;
end;

destructor TComunicador.Destroy;
begin
  FWebServiceViaCep := nil;
  inherited;
end;

end.
