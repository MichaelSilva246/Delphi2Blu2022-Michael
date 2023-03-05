unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Vcl.StdCtrls,
  Xml.XMLDoc;

type
  TForm1 = class(TForm)
    mmLeitura: TMemo;
    XMLDocument1: TXMLDocument;
    btnLeitura: TButton;
    procedure btnLeituraClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnLeituraClick(Sender: TObject);
var
  xAplicacao: IXMLNode;
  xExecutaveis: IXMLNode;
  xExecutavel: IXMLNode;
  xBibliotecas: IXMLNode;
  xBiblioteca: IXMLNode;
  xVersao: IXMLNode;
  xDescricao: IXMLNode;
  xInfNo: IXMLNodeList;
  I: Integer;
begin
  mmLeitura.Clear;

  //Ativa o XMLDocument para podemos ler as informações do xml
  XMLDocument1.Active := true;

  //Busco o nó principal do xml
  xAplicacao := XMLDocument1.DocumentElement;

  //Busca o nó onde está a lista de executaveis
  xExecutaveis := xAplicacao.ChildNodes.FindNode('executaveis');

  //Busca o nó onde está a lista de bibliotecas
  xBibliotecas := xAplicacao.ChildNodes.FindNode('bibliotecas');

  mmLeitura.Lines.Add('[EXECUTAVEIS]');
  mmLeitura.Lines.add('');

  //Percorrer todos os executaveis da lista
  for I := 0 to xExecutaveis.ChildNodes.Count -1 do
  begin
    xExecutavel := xExecutaveis.ChildNodes[I];
    //recupera os atributos do nó executavel
    xInfNo := xExecutavel.AttributeNodes;

    mmLeitura.Lines.Add(xExecutavel.Text);
    mmLeitura.Lines.Add('----------------------');
    mmLeitura.Lines.Add('versão: ' + xInfNo.FindNode('versao').text);
    mmLeitura.Lines.Add('descrição: ' + xInfNo.FindNode('descricao').text);
    mmLeitura.Lines.Add('');
  end;

  mmLeitura.Lines.Add('');
  mmLeitura.Lines.Add('[BIBLIOTECAS]');
  mmLeitura.Lines.Add('');

  //Percorre todas as bibliotecas
  for I := 0 to xBibliotecas.ChildNodes.Count -1 do
  begin
    xBiblioteca := xBibliotecas.ChildNodes[I];

    //Recupera os atributos do nó biblioteca
    xInfNo := xBiblioteca.AttributeNodes;

    mmLeitura.Lines.add(xBiblioteca.Text);
    mmLeitura.Lines.add('----------------------');
    mmLeitura.Lines.add('versão: ' + xInfNo.FindNode('versao').text);
    mmLeitura.Lines.add('descrição: ' + xInfNo.FindNode('descricao').text);
    mmLeitura.Lines.add('');
  end;

end;

end.
