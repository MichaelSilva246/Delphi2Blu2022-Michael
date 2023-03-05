program AreaTriangulo;

uses
  Vcl.Forms,
  uFrmPrimeiraClasse in 'uFrmPrimeiraClasse.pas' {frmPrimeiraClasse},
  uTriangulo in 'uTriangulo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrimeiraClasse, frmPrimeiraClasse);
  Application.Run;
end.
