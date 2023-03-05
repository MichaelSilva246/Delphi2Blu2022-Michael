unit UClasses;

interface

uses
  ValidaCPF, ValidaCNPJ;

type
  TPessoa = class
  private
    FNome: String;
    FEndereco: String;

    function GetEndereco: String;
    function GetNome: String;

    procedure SetNome(const Value: String);
    procedure SetEndereco(const Value: String);

  public
    Procedure Gravar(aPessoa: TPessoa); virtual; abstract;
    property Nome: String read GetNome write SetNome;
    property Endereco: String read GetEndereco write SetEndereco;
  end;

  TPessoaFisica = class(TPessoa)
  private
    FCPF: String;
    FIdade: Byte;

    function GetCPF: String;
    function GetIdade: Byte;

    procedure SetCPF(const Value: String);
    procedure SetIdade(const Value: Byte);

  public
    //function Gravar(aPessoa: TPessoa): String; override;
    Function CPF_Valido(CPF: String): Boolean;
    property CPF: String read GetCPF write SetCPF;
    property Idade: Byte read GetIdade write SetIdade;
  end;

  TPessoaJuridica = class(TPessoa)
  private
    FCNPJ: String;
    FIE: String;

    function GetCNPJ: String;
    function GetIE: String;

    procedure SetCNPJ(const Value: String);
    procedure SetIE(const Value: String);

  public
    function CNPJ_Valido(CNPJ: String): Boolean;
    property CNPJ: String read GetCNPJ write SetCNPJ;
    property IE: String read GetIE write SetIE;
  end;

implementation

uses
  Vcl.Dialogs;


{ TPessoa }

function TPessoa.GetEndereco: String;
begin
  Result :=  FEndereco;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;


procedure TPessoa.SetEndereco(const Value: String);
begin
  FEndereco := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TPessoaJuridica }

function TPessoaFisica.CPF_Valido(CPF: String): Boolean;
begin
  isCPF(CPF);
end;

function TPessoaFisica.GetCPF: String;
begin
  Result := FCPF;
end;

function TPessoaFisica.GetIdade: Byte;
begin
  Result := FIdade;
end;

{function TPessoaFisica.Gravar(aPessoa: TPessoa): String;
begin
  Result := 'Nome: ' + Nome + 'CNPJ: ' + TPessoaJuridica(xPessoa).CNPJ +
            'Endereço: ' + Endereco + 'IE: ' + IE;
end;  }

procedure TPessoaFisica.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TPessoaFisica.SetIdade(const Value: Byte);
begin
  FIDADE := Value;
end;

{ TPessoaJuridica }

function TPessoaJuridica.CNPJ_Valido(CNPJ: String): Boolean;
begin
  isCNPJ(CNPJ);
end;

function TPessoaJuridica.GetCNPJ: String;
begin
  Result := FCNPJ;
end;

function TPessoaJuridica.GetIE: String;
begin
  Result := FIE;
end;

procedure TPessoaJuridica.SetCNPJ(const Value: String);
begin
  FCNPJ := Value;
end;

procedure TPessoaJuridica.SetIE(const Value: String);
begin
  FIE := Value;
end;

end.
