object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 307
  Width = 477
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=Sakila'
      'User_Name=root'
      'Password=root'
      'Server=localhost'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 224
    Top = 128
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\mysql\Documents\Delphi2Blu2022\03 - Delphi Banco de Dad' +
      'os\Atividade Relat'#243'rios\lib\libmysql.dll'
    Left = 224
    Top = 40
  end
end
