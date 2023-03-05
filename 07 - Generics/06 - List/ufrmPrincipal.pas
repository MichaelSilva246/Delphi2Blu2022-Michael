unit ufrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    btnAdd: TButton;
    btnCapacity: TButton;
    btnCount: TButton;
    btnListar: TButton;
    btnNotify: TButton;
    btnRemove: TButton;
    Memo1: TMemo;
    procedure btnAddClick(Sender: TObject);
    procedure btnCapacityClick(Sender: TObject);
    procedure btnCountClick(Sender: TObject);
    procedure btnListarClick(Sender: TObject);
    procedure btnNotifyClick(Sender: TObject);
    procedure btnRemoveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FListaNum: TList<Integer>;
    procedure Notificacao(Sender: TObject; const aItem: Integer; aAction: TCollectionNotification);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.btnAddClick(Sender: TObject);
begin
  FListaNum.Add(StrToIntDef(edit1.text, 0));
end;

procedure TForm1.btnCapacityClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(FListaNum.Capacity.ToString);
  //o delphi vai aumentando a capacidade por conta propria
end;

procedure TForm1.btnCountClick(Sender: TObject);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(FListaNum.Count.ToString);
end;

procedure TForm1.btnListarClick(Sender: TObject);
var
  I: Integer;
begin
  for I := 0 to Pred(FListaNum.Count) do
  begin
    Memo1.Lines.Add(FListaNum[I].ToString)
  end;
end;

procedure TForm1.btnNotifyClick(Sender: TObject);
begin
  FListaNum.OnNotify := Notificacao;
end;

procedure TForm1.btnRemoveClick(Sender: TObject);
begin
  FListaNum.Delete(Pred(FListaNum.Count));
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FListaNum.free;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FListaNum := Tlist<Integer>.create;
end;

procedure TForm1.Notificacao(Sender: TObject; const aItem: Integer;
  aAction: TCollectionNotification);
begin
  case aAction of
    cnAdded: Memo1.Lines.Add('O item ' + aItem.ToString + ' foi adicionado.');
    cnRemoved: Memo1.Lines.Add('O item ' + aItem.ToString + ' foi removido.');
  end;
end;

end.
