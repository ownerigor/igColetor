object dmConexao: TdmConexao
  OldCreateOrder = False
  Height = 151
  Width = 238
  object fbConnection: TFDConnection
    Params.Strings = (
      'Database=D:\Databases\DBCOLETOR.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=127.0.0.1'
      'Port=3050'
      'DriverID=FB')
    LoginPrompt = False
    Left = 41
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Sistemas\igColetor\dpr\Win32\Debug\gds32.dll'
    Left = 136
    Top = 32
  end
  object qryConsultas: TFDQuery
    Connection = fbConnection
    Left = 40
    Top = 88
  end
  object qryConsultas2: TFDQuery
    Connection = fbConnection
    Left = 120
    Top = 88
  end
end
