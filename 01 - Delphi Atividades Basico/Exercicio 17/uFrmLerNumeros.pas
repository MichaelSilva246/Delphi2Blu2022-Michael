unit uFrmLerNumeros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    btnLer: TButton;
    mmMemo1: TMemo;
    Label2: TLabel;
    edtLer: TEdit;
    lbResultado: TLabel;
    procedure btnLerClick(Sender: TObject);
  private
    procedure Entre;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }


{ TForm1 }

procedure TForm1.btnLerClick(Sender: TObject);

begin
  Entre;
end;

procedure TForm1.Entre;
var
  xQtdEntrada: Integer;
  xNumeros: Integer;
  I: Integer;
  xNome: Integer;
begin
  if TryStrToInt(edtLer.Text, xQtdEntrada) then

  for I := 0 to xQtdEntrada-1 do
  begin
    xNome := StrToInt(InputBox('Informar', 'Informar', '0'));
    if (xNome >= 10) and (xNome <= 150) then
    mmMemo1.Lines.Add(xNome.ToString);
    lbResultado.caption := mmMemo1.lines.Count.ToString;
  end;
end;

end.
