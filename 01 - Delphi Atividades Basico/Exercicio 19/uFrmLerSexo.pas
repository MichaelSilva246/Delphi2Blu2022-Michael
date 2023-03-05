unit uFrmLerSexo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  //TNomeSexo = Array[0..4] of string;
  TForm1 = class(TForm)
    btnExecutar: TButton;
    Label1: TLabel;
    mmDescricao: TMemo;
    mmTotal: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    procedure btnExecutarClick(Sender: TObject);
  private
    procedure Cadastrar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



{ TForm1 }

procedure TForm1.btnExecutarClick(Sender: TObject);
begin
  Cadastrar;
end;

procedure TForm1.Cadastrar;
var
  xQtdEntrada, I, xMasculino, xFeminino: Integer;
  xNome: array [0..4] of String;
  xSexo: array [0..4] of String;
begin
  xMasculino := 0;
  xFeminino := 0;

  xQtdEntrada := StrToInt(InputBox('Vezes', 'Quantas pessoas cadastrar?', '0'));

  for I := 0 to xQtdEntrada-1 do
  begin
    xNome[I] := InputBox('Nome', 'Entre com o nome', '0');
    xSexo[I] := InputBox('Sexo', 'Entre com o sexo', '0');
    if xSexo[I] = 'Masculino' then
      xMasculino := xMasculino + 1
    else if xSexo[I] = 'Feminino' then
      xFeminino := xFeminino + 1;

    mmDescricao.Lines.Add(xNome[I] + ', do sexo: ' + xSexo[I]);
  end;

  mmTotal.Lines.Add('Total de Masculino: ' + IntToStr(xMasculino));
  mmTotal.Lines.Add('Total de Feminino: ' + IntToStr(xFeminino));
end;

end.
