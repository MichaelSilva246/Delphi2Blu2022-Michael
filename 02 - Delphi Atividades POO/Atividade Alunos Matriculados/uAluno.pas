unit uAluno;

interface

type
  TNotas = Array[0..1] of Double;

  TAluno = class
  private
    FMatricula: Integer;
    FNome: String;
    FNotasProvas: TNotas;
    FNotaTrabalho: Double;

    function GetMatricula: Integer;
    function GetNome: String;
    function GetNotaTrabalho: Double;
    function GetNotasProvas: TNotas;

    procedure SetMatricula(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetNotaTrabalho(const Value: Double);
    procedure SetNotasProvas(const Value: TNotas);

  public
    function alunoMedia: Double;
    function alunoFinal: Double;
    constructor Notas;

    property Matricula: Integer read GetMatricula write SetMatricula;
    property Nome: String read GetNome write SetNome;
    property NotasProvas: TNotas read GetNotasProvas write SetNotasProvas;
    property NotaTrabalho: Double read GetNotaTrabalho write SetNotaTrabalho;
  end;
implementation

{ TAluno }
constructor TAluno.Notas;
begin

end;

function TAluno.alunoFinal: Double;
begin

end;

function TAluno.alunoMedia: Double;
var
  xMedia: Double;
begin
  xMedia := (NotaTrabalho + NotasProvas[0] + NotasProvas[1]) / 3;
end;

function TAluno.GetMatricula: Integer;
begin
  Result := FMatricula;
end;

function TAluno.GetNome: String;
begin
  Result := FNome;
end;

function TAluno.GetNotasProvas: TNotas;
begin
  Result := FNotasProvas;
end;

function TAluno.GetNotaTrabalho: Double;
begin
  Result := FNotaTrabalho;
end;

procedure TAluno.SetMatricula(const Value: Integer);
begin
  FMatricula := Value;
end;

procedure TAluno.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TAluno.SetNotasProvas(const Value: TNotas);
begin
  FNotasProvas := Value;
end;

procedure TAluno.SetNotaTrabalho(const Value: Double);
begin
  FNotaTrabalho := Value;
end;

end.
