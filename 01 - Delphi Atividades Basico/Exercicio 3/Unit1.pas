unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtCombustivel: TEdit;
    edtKms: TEdit;
    Button1: TButton;
    edtConsumoMedio: TEdit;
    Label4: TLabel;
    lbComentario: TLabel;
    imgShell: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
xValor1, xValor2, xMedia: Double;
begin
  xValor1 := StrToFloat(edtKms.Text);
  xValor2 := StrToFloat(edtCombustivel.Text);
  xMedia := (xValor1 / xValor2);

  edtConsumoMedio.Text := FloatToStr(xMedia);

  if xMedia >= 12 then
  lbComentario.Caption := 'É econômico'
  else
  lbComentario.Caption := 'Não é econômico';
end;

end.
