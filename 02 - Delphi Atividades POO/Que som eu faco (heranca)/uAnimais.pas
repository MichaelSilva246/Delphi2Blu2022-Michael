unit uAnimais;

interface

type
  TEnumAnimal = (stCachorro, stGato, stPassaro);

  //TOBject - Primeira classe do Delpli - todas as classes herda dela
  TAnimal = class //Classe abstrata ou classe base, sempre vazio herda de uma classe principal
    private
      FPatas: Byte;  //Tipos primitivos o delphi limpa da memoria

      function GetPatas: Byte;
      procedure SetPatas(Const aValue: Byte);
    public
    //Metodo abstrato
    //Virtual abstract sempre sao as filhas que terao a implementacao
      function RetornarSom: String; virtual; abstract;
      property Patas: Byte read GetPatas write SetPatas;
  end;

  TCachorro = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override; //Sobrescrita do metodo da classe
  end;

  TGato = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override;
  end;

  TPassaro = class(TAnimal)
    private
    public
      constructor Create;
      function RetornarSom: String; override;
  end;

implementation

{ TCachorro }

constructor TCachorro.Create;
begin
  FPatas := 4;
end;

function TCachorro.RetornarSom: String;
begin
  Result := 'Au Au';
end;

{ TAnimal }

function TAnimal.GetPatas: Byte;
begin
  Result := FPatas;
end;

procedure TAnimal.SetPatas(const aValue: Byte);
begin
  FPatas := aValue;
end;

{ TGato }

constructor TGato.Create;
begin
  FPatas := 4;
end;

function TGato.RetornarSom: String;
begin
 Result := 'Miau';
end;

{ TPassaro }

constructor TPassaro.Create;
begin
  FPatas := 2;
end;

function TPassaro.RetornarSom: String;
begin
  Result := 'Piupiu';
end;

end.
