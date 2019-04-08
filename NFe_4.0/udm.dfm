object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 344
  Width = 427
  object con: TZConnection
    ControlsCodePage = cCP_UTF16
    ClientCodepage = 'WIN1252'
    Catalog = ''
    Properties.Strings = (
      'codepage=WIN1252'
      'AutoEncodeStrings=ON'
      'controls_cp=CP_UTF16')
    AutoCommit = False
    HostName = 'localhost'
    Port = 3050
    Database = ''
    User = 'sysdba'
    Password = 'masterkey'
    Protocol = 'firebirdd-2.5'
    Left = 32
    Top = 40
  end
end
