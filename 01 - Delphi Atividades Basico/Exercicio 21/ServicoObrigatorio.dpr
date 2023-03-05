program ServicoObrigatorio;

uses
  Vcl.Forms,
  uFrmMilitarObrigatorio in 'uFrmMilitarObrigatorio.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
