unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uPlaystation,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    xPlay: TPlaystation4;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  xPlay := TPlaystation4.Create;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  xPlay := TPlaystation4.Create;
  xPlay.Ligar;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  xPlay := TPlaystation4.Create;
  xPlay.Desligar;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  xPlay := TPlaystation4.Create;
  xPlay.Jogar;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(xPlay);
end;

end.
