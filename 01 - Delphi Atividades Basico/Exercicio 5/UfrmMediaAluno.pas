unit UfrmMediaAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    edtAluno: TEdit;
    Aluno: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtPrimeiraNota: TEdit;
    edtSegundaNota: TEdit;
    edtTerceiraNota: TEdit;
    btnCalcular: TButton;
    lbMedia: TLabel;
    lbComentario: TLabel;
    procedure btnCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnCalcularClick(Sender: TObject);
var
  xAluno: String;
  xPrimeiraNota, xSegundaNota, xTerceiraNota, xMedia: Double;
begin
  xAluno := edtAluno.Text;
  xPrimeiraNota := StrToFloat(edtPrimeiraNota.Text);
  xSegundaNota := StrToFloat(edtSegundaNota.Text);
  xTerceiraNota := StrToFloat(edtTerceiraNota.Text);

  xMedia := (xPrimeiraNota + xSegundaNota + xTerceiraNota)/3;

  lbMedia.Caption := FormatFloat('0.##', xMedia);

  if xMedia >= 7 then
    lbComentario.Caption := xAluno + ', sua nota está a cima da média!'
  else
    lbComentario.Caption := xAluno + ', sua nota está a baixo da média!';
end;

end.
