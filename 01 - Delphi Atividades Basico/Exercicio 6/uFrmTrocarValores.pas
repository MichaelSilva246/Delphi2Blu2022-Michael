unit uFrmTrocarValores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtVariavelA: TEdit;
    edtVariavelB: TEdit;
    btnTrocar: TButton;
    lbVarA: TLabel;
    lbVarB: TLabel;
    procedure btnTrocarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnTrocarClick(Sender: TObject);
var
  xVarA, xVarB, xVarC: String;
begin
  xVarA := edtVariavelA.Text;
  xVarC := xVarA;
  xVarB := edtVariavelB.Text;

  xVarA := xVarB;
  xVarB := xVarC;

  lbVarA.Caption := (xVarA);
  lbVarB.Caption := (xVarB);
end;
end.


