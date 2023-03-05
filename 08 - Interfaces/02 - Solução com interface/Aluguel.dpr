program Aluguel;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  UVehicle in 'model\entities\UVehicle.pas',
  UCarRental in 'model\entities\UCarRental.pas',
  UInvoice in 'model\entities\UInvoice.pas',
  UBrazilTaxService in 'model\services\UBrazilTaxService.pas',
  URentalService in 'model\services\URentalService.pas', System.SysUtils;

var
  xCarModel: String;
  xStrStart, xStrFinish: String;
  xStart, xFinish: TDateTime;
  xCarRental: TCarRental;
  xStrPricePerHour, xStrPricePerDay: String;
  xPricePerHour, xPricePerDay: Double;
  xRentalService: TRentalService;
begin
  try
    Writeln('Entre com os dados do aluguel: ');
    Write('Modelo do carro: ');
    Readln(xCarModel);

    Write('Retirada (dd/mm/yyyy hh:mm): ');
    Readln(xStrStart);
    xStart := StrToDateTime(xStrStart);

    Write('Retorno (dd/mm/yyyy hh:mm): ');
    Readln(xStrFinish);
    xFinish := StrToDateTime(xStrFinish);

    xCarRental := TCarRental.Create(xStart, xFinish, TVehicle.Create(xCarModel));

    Write('Entre com o preço por hora: ');
    Readln(xStrPricePerHour);
    xPricePerHour :=  StrToFloatDef(xStrPricePerHour, 0);

    Write('Entre com o preço por dia: ');
    Readln(xStrPricePerDay);
    xPricePerDay := StrToFloatDef(xStrPricePerDay, 0);

    xRentalService := TRentalService.Create(xPricePerDay, xPricePerHour, TBrazilTaxService.Create);
    xRentalService.ProcessInvoice(xCarRental);

    WriteLn('FATURA');
    WriteLn('Pagamento básico...: ', xCarRental.Invoice.BasicPayment.ToString);
    Writeln('Imposto............: ', xCarRental.Invoice.Tax.ToString);
    Writeln('Total..............: ', xCarRental.Invoice.TotalPayment.ToString);

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
