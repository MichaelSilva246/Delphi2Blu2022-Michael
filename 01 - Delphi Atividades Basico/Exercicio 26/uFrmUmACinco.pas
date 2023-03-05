unit uFrmUmACinco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnEntrar: TButton;
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnEntrarClick(Sender: TObject);
var
  xEntrada: Integer;
  xResp: Integer;
begin
  while xResp <> 0 do
  begin
    if TryStrToInt(InputBox('Entre', 'Entre', 'Numero'), xEntrada) then
    begin
      if xEntrada = 1 then
        ShowMessage('Um')
      else if xEntrada = 2 then
        ShowMessage('Dois')
      else if xEntrada = 3 then
        ShowMessage('Três')
      else if xEntrada = 4 then
        ShowMessage('Quatro')
      else if xEntrada = 5 then
        ShowMessage('Cinco')
      else
        ShowMessage('Valor Inválido!')
    end
    else
      ShowMessage('Digite um numero!');
  xResp := MessageDlg('Deseja continuar?', mtCustom, [mbYes, mbNo], 0);
  end;

end;

end.
