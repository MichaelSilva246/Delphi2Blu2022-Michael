unit uPessoa;

interface

uses
  System.Generics.Collections;

type
  TPessoa = class
  private
    FCPF, FNome, FEspecialidade: String;

    function GetCPF: String;
    function GetEspecialidade: String;
    function GetNome: String;

    procedure SetCPF(const Value: String);
    procedure SetEspecialidade(const Value: String);
    procedure SetNome(const Value: String);

  public
    property CPF: String read GetCPF write SetCPF;
    property Nome: String read GetNome write SetNome;
    property Especialidade: String read GetEspecialidade write SetEspecialidade;
  end;

  TFila = class
  private
    FFilaPaciente: TQueue<TPessoa>;
  public
    constructor Create;
    destructor Destroy;
    procedure Adicionar(aPessoa: TPessoa);
    function proximo: TPessoa;
    function contar: String;
  end;

implementation

uses
  System.SysUtils;

{ TPessoa }

function TPessoa.GetCPF: String;
begin
  Result := FCPF;
end;

function TPessoa.GetEspecialidade: String;
begin
  Result := FEspecialidade;
end;

function TPessoa.GetNome: String;
begin
  Result := FNome;
end;

procedure TPessoa.SetCPF(const Value: String);
begin
  FCPF := Value;
end;

procedure TPessoa.SetEspecialidade(const Value: String);
begin
  FEspecialidade := Value;
end;

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

{ TFila }

function TFila.contar: String;
begin
  Result := IntToStr(FFilaPaciente.Count);
end;

constructor TFila.Create;
begin
  FFilaPaciente := TQueue<TPessoa>.Create;
end;

destructor TFila.Destroy;
begin
  FFilaPaciente.Free;
end;

procedure TFila.Adicionar(aPessoa: TPessoa);
begin
  FFilaPaciente.Enqueue(aPessoa);
end;

function TFila.proximo: TPessoa;
begin
  if FFilaPaciente.Count = 0 then
    raise Exception.Create('Não há mais pacientes!');

  Result := FFilaPaciente.peek;
  FFilaPaciente.Dequeue;
end;

end.
