unit UfrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, REST.Types, REST.Client,
  Data.Bind.Components, Data.Bind.ObjectScope;

type
  TForm1 = class(TForm)
    btnPingPong: TButton;
    btnHelloWorld: TButton;
    lblResultado: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure btnHelloWorldClick(Sender: TObject);
    procedure btnPingPongClick(Sender: TObject);
  private
    const SUCESSO = 200;
  public
    procedure PingPong;
    procedure TratarResposta;
    procedure HelloWorld;

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


{ TForm1 }

procedure TForm1.btnHelloWorldClick(Sender: TObject);
begin
  Self.HelloWorld;
end;

procedure TForm1.btnPingPongClick(Sender: TObject);
begin
  Self.PingPong;
end;

procedure TForm1.HelloWorld;
begin
  RESTClient1.BaseURL := 'http://localhost:10001/helloworld';
  RESTRequest1.Execute;

  Self.TratarResposta;
end;

procedure TForm1.PingPong;
begin
  RESTClient1.BaseURL := 'http://localhost:10001/ping';
  RESTRequest1.Execute;

  Self.TratarResposta;
end;

procedure TForm1.TratarResposta;
begin
  if RESTResponse1.StatusCode = SUCESSO then
    lblResultado.Caption := 'Resultado: ' + RESTResponse1.Content
  else
    lblResultado.Caption := Format('Erro na Requisição: Status(%d)', [RESTResponse1.StatusCode]);
end;

end.
