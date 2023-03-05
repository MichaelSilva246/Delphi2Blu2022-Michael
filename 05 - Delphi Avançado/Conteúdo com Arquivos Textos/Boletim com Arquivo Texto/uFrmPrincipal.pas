unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtNome: TEdit;
    edtPrimeiraNota: TEdit;
    edtSegundaNota: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    btnGravar: TButton;
    btnLer: TButton;
    mmDiario: TMemo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure btnLerClick(Sender: TObject);
  private
    FArq: TextFile;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnGravarClick(Sender: TObject);
begin
  if (edtNome.Text <> '') and (edtPrimeiraNota.text <> '') and (edtSegundaNota.Text <> '') then
  begin
    //Grava uma linha com os dados de um aluno no arquivo
    Writeln(FArq, edtNome.Text, '|', edtPrimeiraNota.text, '|', edtSegundaNota.Text, '|');

    edtNome.Clear;
    edtPrimeiraNota.Clear;
    edtSegundaNota.Clear;
  end;
end;

procedure TForm1.btnLerClick(Sender: TObject);
var
  xLinha, xNome: String;
  xReg, i: Integer;
  xNota1, xNota2, xMedia: Double;
begin
  mmDiario.Clear;

  //Abre o arquivo texto para leitura
  Reset(FArq);

  try
    xReg := 0;
    //Enquanto nao antigir a marca de final de arquivo
    while (not Eof(FArq)) do
    begin
      // lê uma linha, com os dados de um alino, do arquivo
      Readln(FArq, xLinha);

      xReg := xReg +1;

      //recupera o nome do aluno
      i := pos('|', xLinha);
      xNome := copy(xLinha, 1, i-1);
      delete(xLinha, 1, i);

      // recupera a 1a nota do aluno
      i := pos('|', xLinha);
      xNota1 := StrToFloatDef(copy(xLinha, 1, i-1),0);
      delete(xLinha, 1, i);

      // recupera a 2a nota do aluno
      i := pos('|', xLinha);
      xNota2 := StrToFloatDef(copy(xLinha, 1, i-1),0);

      //processando e exibindo os dados recuperados
      xMedia := (xNota1 + xNota2) / 2;
      mmDiario.Lines.Add('Registro Nro.: ' + IntToStr(xReg));
      mmDiario.lines.add('Nome do Aluno: ' + xNome);
      mmDiario.Lines.add('1a. nota.....:' + FloatToStr(xNota1));
      mmDiario.Lines.add('2a. nota.....:' + FloatToStr(xNota2));
      mmDiario.Lines.add('Média. nota..:' + FloatToStr(xMedia));

      if (xMedia >= 7) then
        mmDiario.Lines.add('Situação.....: Aprovado')
      else
        mmDiario.Lines.Add('Situação.....: Reprovado');

      mmDiario.Lines.Add('');
    end;
  finally
    Append(FArq);
  end;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseFile(FArq);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  AssignFile(FArq, 'diario.txt');
  {$I-}
  Reset(FArq);

  if IOResult <> 0 then
    Rewrite(FArq) // Arquivo nao existe e será criado
  else
  begin
    CloseFile(FArq);
    Append(Farq);//o arquivo existe e sera aberto para saidas adicionais
  end;
  {$I+}
end;

end.
