program ConsumindoSOAPCalculadora;

uses
  Vcl.Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {Form1},
  ICalculadora1 in 'ICalculadora1.pas',
  NumberConversion in 'NumberConversion.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
