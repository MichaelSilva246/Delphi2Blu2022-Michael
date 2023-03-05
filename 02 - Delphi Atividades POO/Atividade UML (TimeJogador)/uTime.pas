unit uTime;

interface

uses
  System.Classes, uJogador, System.Generics.Collections;

type
  TTime = class
  private
    FTimeID: Integer;
    FNomeTime: String;
    FTecnico: String;
    FJogadores: TList<TJogador>;

    function GetAnoFundacao: TDate;
    function GetNomeTime: String;
    function GetTecnico: String;
    function GetTimeID: Integer;
    function GetJogadores: TList;

    procedure SetAnoFundacao(const Value: TDate);
    procedure SetNomeTime(const Value: String);
    procedure SetTecnico(const Value: String);
    procedure SetTimeID(const Value: Integer);
    procedure SetJogadores(const Value: TList);

  public
    FAnoFundacao: TDate;

    constructor Create(aJogadores: TList<TJogador>);

    property Jogadores: TList read GetJogadores write SetJogadores;
    property TimeID: Integer read GetTimeID write SetTimeID;
    property NomeTime: String read GetNomeTime write SetNomeTime;
    property Tecnico: String read GetTecnico write SetTecnico;
    property AnoFundacao: TDate read GetAnoFundacao;
  end;
implementation

{ TTime }

constructor TTime.Create(aJogadores: TList<TJogador>);
begin
  Inherited create;

  FJogadores := aJogadores;
end;

function TTime.GetAnoFundacao: TDate;
begin
  Result := FAnoFundacao;
end;

function TTime.GetJogadores: TList;
begin
  Result := FJogadores;
end;

function TTime.GetNomeTime: String;
begin
  Result := FNomeTime;
end;

function TTime.GetTecnico: String;
begin
  Result := FTecnico;
end;

function TTime.GetTimeID: Integer;
begin
  Result := FTimeID;
end;

procedure TTime.SetAnoFundacao(const Value: TDate);
begin
  FAnoFundacao := Value;
end;

procedure TTime.SetJogadores(const Value: TList);
begin
  FJogadores := Value;
end;

procedure TTime.SetNomeTime(const Value: String);
begin
  FNomeTime := Value;
end;

procedure TTime.SetTecnico(const Value: String);
begin
  FTecnico := Value;
end;

procedure TTime.SetTimeID(const Value: Integer);
begin
  FTimeID := Value;
end;

end.
