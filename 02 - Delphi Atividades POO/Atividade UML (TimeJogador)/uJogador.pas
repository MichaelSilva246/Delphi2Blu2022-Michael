unit uJogador;

interface

uses uTime;

type
  TJogador = class
  private
    FNomeID: Integer;
    FNome: String;
    FIdade: Byte;
    FPosicao: String;

    function GetIdade: Byte;
    function GetNome: String;
    function GetNomeID: Integer;
    function GetPosicao: String;

    procedure SetIdade(const Value: Byte);
    procedure SetNome(const Value: String);
    procedure SetNomeID(const Value: Integer);
    procedure SetPosicao(const Value: String);
  protected
    { protected declarations }
  public
    property NomeID: Integer read GetNomeID write SetNomeID;
    property Nome: String read GetNome write SetNome;
    property Idade: Byte read GetIdade write SetIdade;
    property Posicao: String read GetPosicao write SetPosicao;
  published
    { published declarations }
  end;
implementation

{ TJogador }

function TJogador.GetIdade: Byte;
begin
  Result := FIdade;
end;

function TJogador.GetNome: String;
begin
  Result := FNome;
end;

function TJogador.GetNomeID: Integer;
begin
  Result := FNomeID;
end;

function TJogador.GetPosicao: String;
begin
  Result := FPosicao;
end;

procedure TJogador.SetIdade(const Value: Byte);
begin
  FIdade := Value;
end;

procedure TJogador.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TJogador.SetNomeID(const Value: Integer);
begin
  FNomeID := Value;
end;

procedure TJogador.SetPosicao(const Value: String);
begin
  FPosicao := Value;
end;

end.
