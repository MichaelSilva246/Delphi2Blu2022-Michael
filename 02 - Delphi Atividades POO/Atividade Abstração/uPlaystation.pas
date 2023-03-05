unit uPlaystation;

interface

type
  TPlaystation4 = class
  private
    FModelo: String;
    FCor: String;
    FArmazenamento: Word;
    FValor: Currency;

    function GetArmazenamento: Word;
    function GetCor: String;
    function GetModelo: String;
    function GetValor: Currency;

    procedure SetArmazenamento(const Value: Word);
    procedure SetCor(const Value: String);
    procedure SetModelo(const Value: String);
    procedure SetValor(const Value: Currency);
  public
    function Ligar: String;
    function Desligar: String;
    function Jogar: String;

    property Modelo: String read GetModelo write SetModelo;
    property Cor: String read GetCor write SetCor;
    property Armazemanto: Word read GetArmazenamento write SetArmazenamento;
    property Valor: Currency read GetValor write SetValor;
  end;

implementation

uses
  Vcl.Dialogs;

{ TPlaystation4 }

function TPlaystation4.Ligar: String;
begin
  ShowMessage('Ligando...');
end;

function TPlaystation4.Desligar: String;
begin
  ShowMessage('Desligando...');
end;

function TPlaystation4.Jogar: String;
begin
  ShowMessage('Jogando...');
end;

function TPlaystation4.GetArmazenamento: Word;
begin
  Result := FArmazenamento;
end;

function TPlaystation4.GetCor: String;
begin
  Result := FCor;
end;

function TPlaystation4.GetModelo: String;
begin
  Result := FModelo;
end;

function TPlaystation4.GetValor: Currency;
begin
  Result := FValor;
end;

procedure TPlaystation4.SetArmazenamento(const Value: Word);
begin
  FArmazenamento := Value;
end;

procedure TPlaystation4.SetCor(const Value: String);
begin
  FCor := Value;
end;

procedure TPlaystation4.SetModelo(const Value: String);
begin
  Fmodelo := Value;
end;

procedure TPlaystation4.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.
