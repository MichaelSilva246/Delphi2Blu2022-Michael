unit uElevador;

interface

type
  TElevador = class
  private
    FAndarAtual: Byte;
    FTotalAndares: Byte;
    FCapacidadePessoas: Byte;
    FPessoasPresentes: Byte;

    function GetAndarAtual: Byte;
    function GetCapacidadePessoas: Byte;
    function GetPessoasPresentes: Byte;
    function GetTotalAndares: Byte;

    procedure SetAndarAtual(const Value: Byte);
    procedure SetCapacidadePessoas(const Value: Byte);
    procedure SetPessoasPresentes(const Value: Byte);
    procedure SetTotalAndares(const Value: Byte);

  public
    constructor Create; //Metodo Inicializar ?!
    constructor Destruo; //Metodo Inicializar ?!
    function Entrar: Byte;
    function Sair: Byte;
    function Subir: Byte;
    function Descer: Byte;
    function EscolherAndar: Byte;
    property AndarAtual: Byte read GetAndarAtual write SetAndarAtual;
    property TotalAndares: Byte read GetTotalAndares write SetTotalAndares;
    property CapacidadePessoas: Byte read GetCapacidadePessoas write SetCapacidadePessoas;
    property PessoasPresentes: Byte read GetPessoasPresentes write SetPessoasPresentes;
  end;

implementation

uses
  Vcl.Dialogs, System.SysUtils;

{ TElevador }

constructor TElevador.Create;
begin
  CapacidadePessoas := 3;
  TotalAndares := 10;
  AndarAtual := 0;
  PessoasPresentes := 0;
end;

constructor TElevador.Destruo;
begin
  Self.Free;
end;

function TElevador.Entrar: Byte;
begin
  if PessoasPresentes >= CapacidadePessoas then
    ShowMessage('Não foi possivel entrar! Capacidade máxima de 3 pessoas.')
  else
    PessoasPresentes := PessoasPresentes +1;

  Result := PessoasPresentes;
end;

function TElevador.EscolherAndar: Byte;
  var
    xEscolha: Integer;
begin
  if PessoasPresentes = 0 then
    ShowMessage('Elevador vazio... Você é um fantasma?')
  else if TryStrToInt(Inputbox('Escolher Andar', 'Digite o andar', 'Exemplo: 7'), xEscolha)
                          and (xEscolha >= 0) 
                          and (xEscolha < 11) then
    AndarAtual := xEscolha
  else  
    ShowMessage('Andar indisponível! Tente de 0 á 10.');
  
  Result := AndarAtual;
end;

function TElevador.Sair: Byte;
begin
  if PessoasPresentes <= 0 then
    ShowMessage('Não foi possivel sair! O elevador está vazio.')
  else
    PessoasPresentes := PessoasPresentes -1;

  Result := PessoasPresentes;
end;

function TElevador.Subir: Byte;
begin
  if PessoasPresentes = 0 then
    ShowMessage('Elevador vazio... Você é um fantasma?')

  else if AndarAtual >= 10 then
    ShowMessage('Andar indisponível! Tente de 0 á 10.')
  else
    AndarAtual := AndarAtual +1 ;

    Result := AndarAtual;
end;

function TElevador.Descer: Byte;
begin
  if PessoasPresentes = 0 then
    ShowMessage('Elevador vazio... Você é um fantasma?')

  else if AndarAtual = 0 then
    ShowMessage('Não foi possivel descer! Você já está no térreo.')
  else
    AndarAtual := AndarAtual -1;

  Result := AndarAtual;
end;

function TElevador.GetAndarAtual: Byte;
begin
  Result := FAndarAtual;
end;

function TElevador.GetCapacidadePessoas: Byte;
begin
  Result := FCapacidadePessoas;
end;

function TElevador.GetPessoasPresentes: Byte;
begin
  Result := FPessoasPresentes;
end;

function TElevador.GetTotalAndares: Byte;
begin
  Result := FTotalAndares;
end;

procedure TElevador.SetAndarAtual(const Value: Byte);
begin
  FAndarAtual := Value;
end;

procedure TElevador.SetCapacidadePessoas(const Value: Byte);
begin
  FCapacidadePessoas := Value;
end;

procedure TElevador.SetPessoasPresentes(const Value: Byte);
begin
  FPessoasPresentes := Value;
end;

procedure TElevador.SetTotalAndares(const Value: Byte);
begin
  FTotalAndares := Value;
end;

end.
