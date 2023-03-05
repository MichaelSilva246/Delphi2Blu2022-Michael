unit uFrmPrincipla;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmPrincipal = class(TForm)
    edtNumero: TEdit;
    btnTabuado: TButton;
    Label1: TLabel;
    procedure btnTabuadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnTabuadoClick(Sender: TObject);
var
  //Declarando a variável 'xArq' do tipo arquivo texto
  xArq: TextFile;
  i, n: Integer;
begin
  try
    // associa a variavel do progeama 'xArq' ao arquivo externo 'tabuada.txt' na raiz do projeto
    AssignFile(xArq, 'Tabuada.txt');

    //cria o arquvio 'tabuada.txt'
    Rewrite(xArq);

    n := StrToIntDef(edtNumero.text, 0);

    //grava uma linha no arquvio
    Writeln(xArq, '+--Resultado--+');

    for I := 1 to 10 do
    begin
      //grava uma linha da tabuada no arquivo
      Writeln(xArq, '| ', i, ' x ', n, ' = ', (i*n), ' |');
    end;

    //gravar uma linha no arquivo
    writeln(xArq, '+-------------+');

    ShowMessage('Tabuada gravada com sucesso!');
  finally
  //fecha o arquivo texto
    CloseFile(xArq);
  end;
end;

end.
