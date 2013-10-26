object fResolucaoTela: TfResolucaoTela
  Left = 640
  Top = 274
  Width = 326
  Height = 305
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 318
    Height = 271
    Align = alClient
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clMoneyGreen
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object Label1: TLabel
      Left = 85
      Top = 24
      Width = 146
      Height = 20
      Caption = 'Resolu'#231#227'o de tela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 86
      Top = 24
      Width = 146
      Height = 20
      Caption = 'Resolu'#231#227'o de tela'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object RadioGroup1: TRadioGroup
      Left = 82
      Top = 47
      Width = 153
      Height = 182
      Color = clMoneyGreen
      Items.Strings = (
        '  800 por 600 pixels'
        '1024 por 768 pixels'
        '1280 por 800 pixels'
        '1440 por 900 pixels')
      ParentColor = False
      TabOrder = 0
    end
    object dxButton1: TdxButton
      Left = 76
      Top = 240
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton1Click
      Caption = 'CONFIRMA'
      TabOrder = 1
    end
    object dxButton2: TdxButton
      Left = 169
      Top = 240
      About = 'Design eXperience. '#169' 2002 M. Hoffmann'
      Version = '1.0.2e'
      OnClick = dxButton2Click
      Caption = 'CANCELA'
      TabOrder = 2
    end
  end
  object sds_parametro: TSQLDataSet
    CommandText = 'select * from ACESSO_SENHA '#13#10'where LOGIN = :LG'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'LG'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 208
    Top = 48
    object sds_parametroLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_parametroSENHA: TStringField
      FieldName = 'SENHA'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object sds_parametroPERFIL: TStringField
      FieldName = 'PERFIL'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_parametroCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_parametroMICRO: TStringField
      FieldName = 'MICRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_parametroP1: TStringField
      FieldName = 'P1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object sds_parametroP2: TStringField
      FieldName = 'P2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object dsp: TDataSetProvider
    DataSet = sds_parametro
    UpdateMode = upWhereKeyOnly
    Left = 240
    Top = 48
  end
  object cds_parametro: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'LG'
        ParamType = ptInput
      end>
    ProviderName = 'dsp'
    Left = 272
    Top = 48
    object cds_parametroLOGIN: TStringField
      FieldName = 'LOGIN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cds_parametroSENHA: TStringField
      FieldName = 'SENHA'
      Size = 10
    end
    object cds_parametroPERFIL: TStringField
      FieldName = 'PERFIL'
      Size = 15
    end
    object cds_parametroCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
    end
    object cds_parametroMICRO: TStringField
      FieldName = 'MICRO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroP1: TStringField
      FieldName = 'P1'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object cds_parametroP2: TStringField
      FieldName = 'P2'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
  end
  object sLog: TSQLDataSet
    CommandText = 'select * from LOG_ACESSO '#13#10'where MICRO = :mc'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'mc'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 208
    Top = 80
    object sLogLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
    end
    object sLogMICRO: TStringField
      FieldName = 'MICRO'
      Size = 30
    end
    object sLogMODULO: TStringField
      FieldName = 'MODULO'
      Size = 30
    end
    object sLogID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      Required = True
    end
    object sLogUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 60
    end
  end
  object cLog: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'mc'
        ParamType = ptInput
      end>
    ProviderName = 'pLog'
    Left = 272
    Top = 80
    object cLogLOGIN: TStringField
      FieldName = 'LOGIN'
      Required = True
    end
    object cLogMICRO: TStringField
      FieldName = 'MICRO'
      Size = 30
    end
    object cLogMODULO: TStringField
      FieldName = 'MODULO'
      Size = 30
    end
    object cLogID_LOG: TIntegerField
      FieldName = 'ID_LOG'
      Required = True
    end
    object cLogUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 60
    end
  end
  object pLog: TDataSetProvider
    DataSet = sLog
    Left = 240
    Top = 80
  end
end
