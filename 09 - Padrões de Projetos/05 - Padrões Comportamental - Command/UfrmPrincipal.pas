unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    memoProgramas: TMemo;
    memoProcessos: TMemo;
    memoVariaveis: TMemo;
    btnExecutar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UReceiver, UInvoker, UConcreteCommand;

{$R *.dfm}

procedure TForm1.btnExecutarClick(Sender: TObject);
var
  xReceiver: TReceiver;
  xInvoker: TInvoker;
begin
  //Criar o receiver (objeto que contem a codificacao das operacoes)
  xReceiver := TReceiver.Create;

  //cria o invoker(objeto que armazena os comandos para executalos)
  xInvoker := TInvoker.Create;
  try
    //armazena o comando de extracao de programas no invoker
    xInvoker.Add(TProgramas.Create(xReceiver));

    //armazena o comando de extracao de processos no Invoker
    xInvoker.Add(TProcessos.Create(xReceiver));

    //Armazena o comando de extracao das variaveis de ambiente no invoker
    xInvoker.Add(TVariaveisAmbiente.Create(xReceiver));

    //Solicita ao invoker que execute todos os comandos armazenados
    xInvoker.ExtrairInformacoes;
  finally
    //Libera os objetos da memorias
    FreeAndNil(xInvoker);
    FreeAndNil(xReceiver);
  end;

  MemoProgramas.Lines.LoadFromFile(GetCurrentDir + '\Programas.txt');
  memoprocessos.Lines.LoadFromFile(GetCurrentDir + '\Processos.txt');
  MemoVariaveis.Lines.LoadFromFile(GetCurrentDir + '\Variaveis.txt');
end;

end.
