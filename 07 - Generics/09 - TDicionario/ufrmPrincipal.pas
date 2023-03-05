unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
  TPessoa = record
    CPF: String;
    Nome: String;
  end;

  TForm1 = class(TForm)
    btnAdd: TButton;
    btnTryGetValue: TButton;
    btnRemove: TButton;
    btnTrimExcess: TButton;
    btnContainsKey: TButton;
    btnAddOrSetValue: TButton;
    btnListaKey: TButton;
    btnListaValue: TButton;
    btnClear: TButton;
    btnOnKeyNotify: TButton;
    btnOnValueNotify: TButton;
    edtCpf: TEdit;
    edtNome: TEdit;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnAddClick(Sender: TObject);
    procedure btnAddOrSetValueClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure btnContainsKeyClick(Sender: TObject);
    procedure btnListaKeyClick(Sender: TObject);
    procedure btnListaValueClick(Sender: TObject);
    procedure btnOnKeyNotifyClick(Sender: TObject);
    procedure btnOnValueNotifyClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure btnTrimExcessClick(Sender: TObject);
    procedure btnTryGetValueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    FDicionario: TDictionary<String, TPessoa>;

    procedure KeyNotify(Sender: TObject; const aItem: String; aAction: TCollectionNotification);

    procedure ValueNotify(Sender: TObject; const aItem: TPessoa; aAction: TCollectionNotification);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnAddClick(Sender: TObject);
var
  xPessoa: TPessoa;
begin
  xPessoa.CPF := edtCpf.Text;
  xPessoa.Nome := edtNome.Text;

  FDicionario.Add(xPessoa.CPF, xPessoa);
end;

procedure TForm1.btnAddOrSetValueClick(Sender: TObject);
var
  xPessoa: TPessoa;
begin
  xPessoa.CPF := edtCPF.Text;
  XPessoa.Nome := edtNome.Text;

  //Atualziar
  FDicionario.AddOrSetValue(xPessoa.CPF, xPessoa);
end;

procedure TForm1.btnClearClick(Sender: TObject);
begin
  Fdicionario.Clear;
end;

procedure TForm1.btnContainsKeyClick(Sender: TObject);
begin
  if FDicionario.ContainsKey(edtCPF.Text) then
    Memo1.Lines.Add('Usuário encontrado!')
  else
    Memo1.Lines.Add('Usuário não encontrado!');
end;

procedure TForm1.btnListaKeyClick(Sender: TObject);
var
  xKey: String;
begin
  for xKey in FDicionario.Keys do
    Memo1.Lines.Add(xKey);
end;

procedure TForm1.btnListaValueClick(Sender: TObject);
var
  xValue: TPessoa;
begin
  for xValue in FDicionario.Values do
    Memo1.Lines.Add(xValue.Nome);
end;

procedure TForm1.btnOnKeyNotifyClick(Sender: TObject);
begin
  FDicionario.OnKeyNotify := KeyNotify;
end;

procedure TForm1.btnOnValueNotifyClick(Sender: TObject);
begin
  FDicionario.OnValueNotify := ValueNotify;
end;

procedure TForm1.btnRemoveClick(Sender: TObject);
begin
  FDicionario.Remove(edtCpf.Text);
end;

procedure TForm1.btnTrimExcessClick(Sender: TObject);
begin
  FDicionario.TrimExcess;
end;

procedure TForm1.btnTryGetValueClick(Sender: TObject);
var
  xPessoa: TPessoa;
begin
  if FDicionario.TryGetValue(edtCpf.Text, xPessoa) then
    Memo1.Lines.Add(xPessoa.Nome + ' - ' + xPessoa.CPF)
  else
    Memo1.Lines.Add('Usuário não encontrado!');
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fdicionario.Free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDicionario := TDictionary<String, TPessoa>.Create;
end;

procedure TForm1.KeyNotify(Sender: TObject; const aItem: String;
  aAction: TCollectionNotification);
begin
  case aAction of
    cnAdded:
      Memo1.Lines.Add('A Chave ' + aItem + ' foi adicionada!');
    cnExtracted:
      Memo1.Lines.Add('A Chave ' + aItem + ' foi extraida!');
    cnRemoved:
      Memo1.Lines.Add('A Chave ' + aItem + ' foi removida!');
  end;
end;

procedure TForm1.ValueNotify(Sender: TObject; const aItem: TPessoa;
  aAction: TCollectionNotification);
begin
  case aAction of
    cnAdded:
      Memo1.Lines.Add('O Value ' + aItem.Nome + ' foi adicionado!');
    cnExtracted:
      Memo1.Lines.Add('O Value ' + aItem.Nome + ' foi extraido!');
    cnRemoved:
      Memo1.Lines.Add('O Value ' + aItem.Nome + ' foi removido!')
  end;
end;

end.
