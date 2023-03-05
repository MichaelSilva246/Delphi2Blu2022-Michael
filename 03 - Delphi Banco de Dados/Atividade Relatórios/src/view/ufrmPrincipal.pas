unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ufrmExercicio1, udmConexao,
  ufrmExercicio2, ufrmExercicio3, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Relatrios1: TMenuItem;
    Relatrio11: TMenuItem;
    Relatrio21: TMenuItem;
    Relatrio31: TMenuItem;
    Image1: TImage;
    procedure Relatrio11Click(Sender: TObject);
    procedure Relatrio21Click(Sender: TObject);
    procedure Relatrio31Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Relatrio11Click(Sender: TObject);
begin
  if not Assigned(frmExercicio1) then
    frmExercicio1 := TfrmExercicio1.Create(Self);

    frmExercicio1.Show;
end;

procedure TfrmPrincipal.Relatrio21Click(Sender: TObject);
begin
  if not Assigned(frmExercicio2) then
    frmExercicio2 := TfrmExercicio2.Create(Self);

    frmExercicio2.Show;
end;

procedure TfrmPrincipal.Relatrio31Click(Sender: TObject);
begin
  if not Assigned(frmExercicio3) then
    frmExercicio3 := TfrmExercicio3.Create(Self);

    frmExercicio3.Show;
end;

end.
