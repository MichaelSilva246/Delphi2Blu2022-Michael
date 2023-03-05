program Command;

uses
  Vcl.Forms,
  UfrmPrincipal in 'UfrmPrincipal.pas' {Form1},
  uCommand in 'pattern\uCommand.pas',
  UReceiver in 'pattern\UReceiver.pas',
  UInvoker in 'pattern\UInvoker.pas',
  UConcreteCommand in 'pattern\UConcreteCommand.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
