program Client;

{$APPTYPE CONSOLE}

uses
  Horse,
  Horse.JWT,
  System.SysUtils;

begin
  THorse
    .Use(HorseJWT('key'));

  THorse.Get('/ping',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    begin
      Res.Send('pong');
    end);

  THorse.Listen(9000);

end.