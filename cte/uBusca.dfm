object fBusca: TfBusca
  Left = 0
  Top = 0
  Caption = 'fBusca'
  ClientHeight = 418
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 32
    Top = 24
    Width = 793
    Height = 313
    DataSource = dsBuscaCli
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 328
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object cdsBuscaCli: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspBuscaCli'
    Left = 256
    Top = 136
    object cdsBuscaCliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object cdsBuscaCliNOMECLIENTE: TWideStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 60
    end
    object cdsBuscaCliRAZAOSOCIAL: TWideStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
  end
  object dspBuscaCli: TDataSetProvider
    DataSet = zqBuscaCli
    Left = 144
    Top = 128
  end
  object dsBuscaCli: TDataSource
    DataSet = cdsBuscaCli
    Left = 256
    Top = 24
  end
  object zqBuscaCli: TZQuery
    Connection = dm.con
    SQL.Strings = (
      'select * from clientes')
    Params = <>
    Left = 64
    Top = 136
    object zqBuscaCliCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Required = True
    end
    object zqBuscaCliNOMECLIENTE: TWideStringField
      FieldName = 'NOMECLIENTE'
      Required = True
      Size = 60
    end
    object zqBuscaCliRAZAOSOCIAL: TWideStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 60
    end
  end
end
