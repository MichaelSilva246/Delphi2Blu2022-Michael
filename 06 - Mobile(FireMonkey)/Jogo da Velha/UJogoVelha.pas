unit UJogoVelha;

interface

uses
  System.Classes, System.SysUtils;

type
  TJogador = (tpPlayer1 = 1, tpCpu);
  TMinhaLinha = array[1..3] of byte;

  TJogoVelha = class
    private
      FFimJogo: Boolean;
      FJogadas: Byte;

      FPrimeiraLinha: TMinhaLinha;
      FSegundaLinha: TMinhaLinha;
      FTerceiraLinha: TMinhaLinha;

      FPrimeiraColuna: TMinhaLinha;
      FSegundaColuna: TMinhaLinha;
      FTerceiraColuna: TMinhaLinha;

      FPrimeiraDiagonal: TMinhaLinha;
      FSegundaDiagonal: TMinhaLinha;

      function GetFimJogo: Boolean;
      function GetJogadas: Byte;

      procedure SetFimJogo(const Value: Boolean);
      procedure SetJogadas(const Value: Byte);

      procedure VerificarFimDoJogo(const aJogador: TJogador; const aLinha: TMinhaLinha); overload;
    public
      constructor Create;

      procedure ReiniciarJogo;
      procedure RealizarJogada(const aJogador: TJogador; const aLinha, aColuna: Byte);
      procedure VerificarFimDoJogo(const aJogador: TJogador); overload;

      function JogadaComputador: String;

      property Jogadas: Byte read GetJogadas write SetJogadas;
      property FimJogo: Boolean read GetFimJogo write SetFimJogo;
  end;
implementation

{ TJogoVelha }

constructor TJogoVelha.Create;
begin
  FJogadas := 0;
end;

function TJogoVelha.GetFimJogo: Boolean;
begin
  Result := FFimJogo;
end;

function TJogoVelha.GetJogadas: Byte;
begin
  Result := FJogadas;
end;

function TJogoVelha.JogadaComputador: String;
var
  x, y: Byte;
begin
  if Fjogadas = 5 then
    Exit;

  while True do
  begin
    x := random(3)+1;
    y := random(3)+1;

    //Linhas
    if (x = 1) then
    begin
      if FPrimeiraLinha[y] > 0 then
        continue;
    end
    else if (x = 2) then
    begin
      if FSegundaLinha[y] > 0 then
        continue;
    end
    else if (x = 3) then
    begin
      if FTerceiraLinha[y] > 0 then
        continue;
    end;

    //Colunas
    if (y = 1) then
    begin
      if FPrimeiraColuna[x] > 0 then
        continue;
    end
    else if (y = 2) then
    begin
      if FSegundaColuna[x] > 0 then
       continue;
    end
    else if (y = 3) then
    begin
      if FTerceiraColuna[x] > 0 then
        continue;
    end;

    //Diagonais
    if (x = 1) and (y = 1) then
    begin
      if FPrimeiraDiagonal[1] > 0 then
        continue;
    end
    else if (x = 2) and (y = 2) then
    begin
      if (FPrimeiraDiagonal[2] > 0) and (FSegundaDiagonal[2] > 0) then
        continue;
    end
    else if (x = 3) and (y = 3) then
    begin
      if FPrimeiraDiagonal[3] > 0 then
        continue;
    end
    else if (x = 1) and (y = 3) then
    begin
      if FSegundaDiagonal[1] > 0 then
        continue;
    end
    else if (x = 3) and (y = 1) then
    begin
      if FSegundaDiagonal[3] > 0then
        continue;
    end;

    break;
  end;

  Result := x.ToString + '_' + y.ToString;
end;

procedure TJogoVelha.RealizarJogada(const aJogador: TJogador; const aLinha,
  aColuna: Byte);
begin
  //Linhas
  if aLinha = 1 then
    FPrimeiraLinha[aColuna] := Integer(aJogador)
  else if aLinha = 2 then
    FSegundaLinha[aColuna] := Integer(aJogador)
  else if aLinha = 3 then
    FTerceiraLinha[aColuna] := Integer(aJogador);

  //Colunas
  if aColuna = 1 then
    FPrimeiraColuna[aLinha] := Integer(aJogador)
  else if aColuna = 2 then
    FSegundaColuna [aLinha] := Integer(aJogador)
  else if aColuna = 3 then
    FTerceiraColuna[aLinha] := Integer(aJogador);

  //Diagonais
  if (aLinha = 1) and (aColuna = 1) then
    FPrimeiraDiagonal[1] := Integer(aJogador)
  else if (aLinha = 2) and (aColuna = 2) then
  begin
    FPrimeiraDiagonal[2] := Integer(aJogador);
    FSegundaDiagonal[2] := Integer(aJogador);
  end
  else if (aLinha = 3) and (aColuna = 3) then
    FPrimeiraDiagonal[3] := Integer(aJogador)
  else if (aLinha = 1) and (aColuna = 3) then
    FSegundaDiagonal[1] := Integer(aJogador)
  else if (aLinha = 3) and (aColuna = 1) then
    FSegundaDiagonal[3] := Integer(aJogador);

  if aJogador = tpPlayer1 then
    Inc(FJogadas);
end;

procedure TJogoVelha.ReiniciarJogo;
var
  I: Integer;
begin
  FFimJogo := False;
  Fjogadas := 0;

  for I := 1 to 3 do
  begin
    FPrimeiraLinha[i] := 0;
    FSegundaLinha[i] := 0;
    FTerceiraLinha[i] := 0;

    FPrimeiraColuna[i] := 0;
    FSegundaColuna[i] := 0;
    FTerceiraColuna[i] := 0;

    FPrimeiraDiagonal[i] := 0;
    FSegundaDiagonal[i] := 0;
  end;
end;

procedure TJogoVelha.SetFimJogo(const Value: Boolean);
begin
  FFimJogo := Value;
end;

procedure TJogoVelha.SetJogadas(const Value: Byte);
begin
  FJogadas := Value;
end;

procedure TJogoVelha.VerificarFimDoJogo(const aJogador: TJogador);
begin
  Self.VerificarFimDoJogo(aJogador, FPrimeiraLinha);
  Self.VerificarFimDoJogo(aJogador, FSegundaLinha);
  Self.VerificarFimDoJogo(aJogador, FTerceiraLinha);

  Self.VerificarFimDoJogo(aJogador, FPrimeiraColuna);
  Self.VerificarFimDoJogo(aJogador, FSegundaColuna);
  Self.VerificarFimDoJogo(aJogador, FTerceiraColuna);

  Self.VerificarFimDoJogo(aJogador, FPrimeiraDiagonal);
  Self.VerificarFimDoJogo(aJogador, FSegundaDiagonal);
end;

procedure TJogoVelha.VerificarFimDoJogo(const aJogador: TJogador;
  const aLinha: TMinhaLinha);
var
  I: Integer;
begin
  if FFimJogo then
    Exit;

  FFimJogo := True;
  for I := 1 to 3 do
  begin
    if aLinha[i] <> Integer(aJogador)then
    begin
      FFimJogo := False;
      Break;
    end;
  end;
end;

end.
