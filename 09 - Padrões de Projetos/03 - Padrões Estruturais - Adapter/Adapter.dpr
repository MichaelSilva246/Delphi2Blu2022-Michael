program Adapter;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  UWebServiceCorreios in 'pattern\UWebServiceCorreios.pas',
  UInterfaceViaCep in 'pattern\UInterfaceViaCep.pas',
  UTarget in 'pattern\UTarget.pas',
  UWebServiceViaCEP in 'pattern\UWebServiceViaCEP.pas',
  UAdaptee in 'pattern\UAdaptee.pas',
  UAdapter in 'pattern\UAdapter.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
