unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Funcionario1: TMenuItem;
    Sair1: TMenuItem;
    Reajuste1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Reajuste1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  uFrmFuncionario;

{$R *.dfm}

procedure TfrmPrincipal.Reajuste1Click(Sender: TObject);
begin
  if frmFuncionarios = nil then
    frmFuncionarios := TfrmFuncionarios.Create(Self);

    frmFuncionarios.Show;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Self.Close;
end;

end.
