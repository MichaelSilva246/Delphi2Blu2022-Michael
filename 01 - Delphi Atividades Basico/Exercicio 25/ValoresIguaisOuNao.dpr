program ValoresIguaisOuNao;

uses
  Vcl.Forms,
  uFrmDiferentes in '..\..\..\Documents\Embarcadero\Studio\Projects\uFrmDiferentes.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
