program CALCULADORA;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UfrmCalculadora in 'UfrmCalculadora.pas' {Form1},
  CalculadoraSOAP in 'CalculadoraSOAP.pas' {WebModule1: TWebModule},
  CalculadoraImpl in 'CalculadoraImpl.pas',
  CalculadoraIntf in 'CalculadoraIntf.pas';

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
