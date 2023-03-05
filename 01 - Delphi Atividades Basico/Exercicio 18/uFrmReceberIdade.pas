unit uFrmReceberIdade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtEntrada: TEdit;
    btnExecutar: TButton;
    mmObs: TMemo;
    procedure btnExecutarClick(Sender: TObject);
  private
    procedure MaiorIdade;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnExecutarClick(Sender: TObject);
begin
  MaiorIdade;
end;

procedure TForm1.MaiorIdade;
var
  xQtdEntrada, xNumero, I: Integer;
begin
  if TryStrToInt(edtEntrada.Text, xQtdEntrada) then
    for I := 0 to xQtdEntrada-1 do
    begin
      xNumero := StrToInt(InputBox('Informar', 'Informar', '0'));
      if xNumero > 18 then
        mmObs.Lines.add(xNumero.ToString + ' É maior de idade')
      else
        mmObs.Lines.add(xNumero.ToString + ' É menor de idade');
    end;
end;

end.
