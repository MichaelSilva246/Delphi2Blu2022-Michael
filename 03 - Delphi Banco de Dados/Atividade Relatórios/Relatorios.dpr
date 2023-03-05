program Relatorios;

uses
  Vcl.Forms,
  ufrmPrincipal in 'src\view\ufrmPrincipal.pas' {frmPrincipal},
  ufrmExercicio1 in 'src\view\ufrmExercicio1.pas' {frmExercicio1},
  udmConexao in 'src\model\udmConexao.pas' {DataModule1: TDataModule},
  ufrmExercicio2 in 'src\view\ufrmExercicio2.pas' {frmExercicio2},
  ufrmExercicio3 in 'src\view\ufrmExercicio3.pas' {frmExercicio3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmExercicio1, frmExercicio1);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TfrmExercicio2, frmExercicio2);
  Application.CreateForm(TfrmExercicio3, frmExercicio3);
  Application.Run;
end.
