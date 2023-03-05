unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.WinXPickers,
  Winapi.CommCtrl;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    btnGravar: TButton;
    btnLer: TButton;
    mmLista: TMemo;
    edtNascimento: TEdit;
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
  frmPrincipal: TfrmPrincipal;

implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TfrmPrincipal.btnGravarClick(Sender: TObject);
begin
  if (edtCodigo.Text <> '') and (edtNome.Text <> '') and (edtNascimento.ToString <> '') then
  begin
    Writeln(FArq, edtCodigo.Text, '|', edtNome.Text, '|', edtNascimento.Text, '|');

    edtCodigo.Clear;
    edtNome.Clear;
    edtNascimento.Clear;
  end;
end;

procedure TfrmPrincipal.btnLerClick(Sender: TObject);
var
  xLinha, xNome, xDtNascimento:  String;
  xReg, I, xCodigo: Integer;
begin
  mmLista.Clear;

  Reset(Farq);

  try
    xReg := 0;

    while (not Eof(FArq)) do
    begin
      Readln(FArq, xLinha);

      xReg := xReg +1;

      //recupera o codigo
      I := pos('|', xLinha);
      xCodigo := StrToIntDef(copy(xLinha, 1, I-1),0);
      delete(xLinha, 1, i);

      //recupera o nome
      I := pos('|', xLinha);
      xNome := copy(xLinha, 1, I-1);
      Delete(xLinha, 1,i);

      //recupera a data nascimento
      I := pos('|', xLinha);
      xDtNascimento := copy(xLinha, 1, I-1);

      //Listando...
      mmLista.Lines.Add('Registro...........: ' + IntToStr(xReg));
      mmLista.Lines.Add('Código do Cliente..: ' + IntToStr(xCodigo));
      mmLista.Lines.Add('Nome...............:' + xNome);
      mmLista.Lines.Add('Data de Nascimento.:' + xDtNascimento);
      mmLista.Lines.add('');
    end;

  finally
    Append(FArq);
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseFile(FArq);
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  AssignFile(FArq, 'Lista.txt');
  {$I-}
  Reset(FArq);

  if IOResult <> 0 then
    Rewrite(FArq) //Criando se não existe!
  else
  begin
    CloseFile(FArq);
    Append(FArq); //Arquivo existe e será aberto para saidas adicionais
  end;
  {$I+}
end;

end.
