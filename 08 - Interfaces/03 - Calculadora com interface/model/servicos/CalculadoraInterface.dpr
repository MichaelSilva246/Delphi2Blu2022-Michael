program CalculadoraInterface;

uses
  Vcl.Forms,
  ufrmPrincipal in '..\entidades\ufrmPrincipal.pas' {Form1},
  uCalcularServico in 'uCalcularServico.pas',
  uCalcularServicoDefault in 'uCalcularServicoDefault.pas',
  uCalculadora in '..\entidades\uCalculadora.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
