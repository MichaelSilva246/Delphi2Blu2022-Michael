unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    edtPrimeiroNumero: TEdit;
    edtSegundoNumero: TEdit;
    btnSomar: TButton;
    edtSoma: TEdit;
    imgQuadro: TImage;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnSomarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnSomarClick(Sender: TObject);
var
xValor1, xValor2, xSoma: Integer;
begin
  xValor1 := StrToInt(edtPrimeiroNumero.Text);
  xValor2 := StrToInt(edtSegundoNumero.Text);
  xSoma := xValor1 + xValor2;

  edtSoma.Text := IntToStr(xSoma);
end;

end.
