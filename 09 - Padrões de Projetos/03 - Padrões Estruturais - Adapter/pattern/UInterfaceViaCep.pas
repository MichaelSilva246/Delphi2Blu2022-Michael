unit UInterfaceViaCep;

interface

type
  IWebServiceViaCep = interface
    ['{73A44535-8608-4278-A5E2-840B968E4E3C}']
    procedure ConsultarEnderecoWebService(const aCep: String);
    function ObterLogradouro: String;
    function ObterBairro: String;
    function ObterCidade: String;
  end;
implementation

end.
