unit UContaCorrente;

interface

type
  TContaCorrente = Class
    private
      FNumeroConta: Integer;
      FNomeCorretista: String;
      FSaldo: Double;

      function GetNomeCorretista: String;
      function GetNumeroConta: Integer;
      function GetSaldo: Double;

      procedure SetNomeCorretista(const Value: String);
      procedure SetNumeroConta(const Value: Integer);
      procedure SetSaldo(const Value: Double);

    public
      Constructor Create(const aNumeroConta: Integer;
                         const aNomeCorretista: String;
                         const aSaldo: Double = 0);

      procedure AlterarNome;
      procedure Depositar;
      procedure Sacar;

      property NumeroConta: Integer read GetNumeroConta write SetNumeroConta;
      property NomeCorretista: String read GetNomeCorretista write SetNomeCorretista;
      property Saldo: Double read GetSaldo write SetSaldo;
  End;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TContaCorrente }

//Metodo Alterar o nome
procedure TContaCorrente.alterarNome;
begin
  NomeCorretista := InputBox('Alterar nome', 'Alterar nome', '');
end;

//Metodo depositar
constructor TContaCorrente.Create(const aNumeroConta: Integer;
  const aNomeCorretista: String; const aSaldo: Double);
begin
  FNumeroConta := aNumeroConta;
  FnomeCorretista := aNomeCorretista;
  FSaldo := aSaldo;
end;

procedure TContaCorrente.Depositar;
var
  xDeposito: Double;
begin
  xDeposito := StrToFloat(inputbox('Insira o deposito','Insira o deposito', '0'));
  Saldo := Saldo + xDeposito;
end;

//Metodo sacar
procedure TContaCorrente.Sacar;
var
  xSacar: Double;
begin
  xSacar := StrToFloat(inputbox('Sacar','Insira o valor a ser sacado', ''));
  Saldo := Saldo - xSacar;
end;

function TContaCorrente.GetNomeCorretista: String;
begin
  Result := FNomeCorretista;
end;

function TContaCorrente.GetNumeroConta: Integer;
begin
  Result := FNumeroConta;
end;

function TContaCorrente.GetSaldo: Double;
begin
  Result := FSaldo;
end;

procedure TContaCorrente.SetNomeCorretista(const Value: String);
begin
  FNomeCorretista := Value;
end;

procedure TContaCorrente.SetNumeroConta(const Value: Integer);
begin
    FNumeroConta := Value;
end;

procedure TContaCorrente.SetSaldo(const Value: Double);
begin
  FSaldo := Value;
end;

end.
