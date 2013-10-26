object fImporta: TfImporta
  Left = 731
  Top = 179
  Width = 530
  Height = 475
  Caption = 'fImporta'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 48
    Top = 40
    Width = 385
    Height = 305
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'RA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 185
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IMPORTA'
        Visible = True
      end>
  end
  object btnMarcar: TBitBtn
    Left = 216
    Top = 360
    Width = 97
    Height = 25
    Caption = 'Marcar Todos'
    TabOrder = 1
    OnClick = btnMarcarClick
  end
  object btnimporta: TBitBtn
    Left = 320
    Top = 360
    Width = 113
    Height = 25
    Caption = 'Importar'
    TabOrder = 2
    OnClick = btnimportaClick
  end
  object BitBtn1: TBitBtn
    Left = 80
    Top = 360
    Width = 113
    Height = 25
    Caption = 'Aluno n'#227'o importados'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object s1: TSQLDataSet
    CommandText = 'select * from RESP_ALUNO WHERE RA = :PRA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PRA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 64
    Top = 40
    object s1COD_RESP_ALUNO: TIntegerField
      FieldName = 'COD_RESP_ALUNO'
      Required = True
    end
    object s1COD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      Required = True
    end
    object s1RA: TStringField
      FieldName = 'RA'
      Required = True
      Size = 10
    end
    object s1TIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object s2: TSQLDataSet
    CommandText = 'select * from RESPONSAVEL where COD_RESPONSAVEL = :PRESP'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PRESP'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 64
    Top = 72
    object s2COD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      Required = True
    end
    object s2RESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Required = True
      Size = 200
    end
    object s2ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object s2BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object s2CEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object s2CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object s2UF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object s2TIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      FixedChar = True
      Size = 1
    end
    object s2CPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
      Size = 14
    end
    object s2RG: TStringField
      FieldName = 'RG'
    end
    object s2TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object s2TELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 14
    end
    object s2EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object s2LOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 100
    end
    object s2CAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
    end
    object s2TELEFONE_COMERCIAL: TStringField
      FieldName = 'TELEFONE_COMERCIAL'
      Size = 14
    end
  end
  object s3: TSQLDataSet
    CommandText = 'select * from TABALUNO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 64
    Top = 104
    object s3RA: TStringField
      FieldName = 'RA'
      Required = True
      Size = 10
    end
    object s3NOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object s3NUMERO: TSmallintField
      FieldName = 'NUMERO'
    end
    object s3SEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object s3ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object s3BAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object s3CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object s3CEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object s3FONE: TStringField
      FieldName = 'FONE'
      Size = 13
    end
    object s3DATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object s3RG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object s3CPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object s3ANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object s3SERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object s3SITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 1
    end
    object s3MAE: TStringField
      FieldName = 'MAE'
      Size = 30
    end
    object s3RGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object s3CPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object s3PAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object s3RGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object s3CPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object s3EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object s3LANCADOCLASSE: TSmallintField
      FieldName = 'LANCADOCLASSE'
    end
    object s3TRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object s3SERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object s3CIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object s3UFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object s3NACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object s3CERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object s3LIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object s3FLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object s3LOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object s3LOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object s3TELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object s3TELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object s3INFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object s3CARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object s3RAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object s3LOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object s3TELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object s3RAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object s3TEL_CELULAR: TStringField
      FieldName = 'TEL_CELULAR'
      Size = 12
    end
    object s3CERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object s3CERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object s3CERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object s3CERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object s3CERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object s3COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object s3DIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object s3DIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
  end
  object s4: TSQLDataSet
    CommandText = 'select * from RESP_ALUNO where RA = :PRA'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PRA'
        ParamType = ptInput
      end>
    SQLConnection = DmDados.sc2
    Left = 416
    Top = 40
    object s4COD_RESP_ALUNO: TIntegerField
      FieldName = 'COD_RESP_ALUNO'
      Required = True
    end
    object s4COD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      Required = True
    end
    object s4RA: TStringField
      FieldName = 'RA'
      Required = True
      Size = 10
    end
    object s4TIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object s4IMPORTA: TStringField
      FieldName = 'IMPORTA'
      FixedChar = True
      Size = 1
    end
  end
  object s5: TSQLDataSet
    CommandText = 'select * from RESPONSAVEL where COD_RESPONSAVEL = :PRESP'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'PRESP'
        ParamType = ptInput
      end>
    SQLConnection = DmDados.sc2
    Left = 416
    Top = 72
  end
  object s6: TSQLDataSet
    CommandText = 
      'select aluno.*,  resp.COD_RESPONSAVEL from TABALUNO aluno '#13#10'left' +
      ' outer join RESP_ALUNO resp on resp.RA = aluno.RA '#13#10'where (aluno' +
      '.IMPORTA = :PSIM) or (:PSIM = '#39'T'#39')'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'PSIM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PSIM'
        ParamType = ptInput
      end>
    SQLConnection = DmDados.sc2
    Left = 416
    Top = 104
    object s6RA: TStringField
      FieldName = 'RA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 10
    end
    object s6NOME: TStringField
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s6NUMERO: TSmallintField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
    end
    object s6SEXO: TStringField
      FieldName = 'SEXO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object s6ENDERECO: TStringField
      FieldName = 'ENDERECO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s6BAIRRO: TStringField
      FieldName = 'BAIRRO'
      ProviderFlags = [pfInUpdate]
    end
    object s6CIDADE: TStringField
      FieldName = 'CIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s6CEP: TStringField
      FieldName = 'CEP'
      ProviderFlags = [pfInUpdate]
      Size = 9
    end
    object s6FONE: TStringField
      FieldName = 'FONE'
      ProviderFlags = [pfInUpdate]
      Size = 13
    end
    object s6DATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s6RG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s6CPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object s6ANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object s6SERIE: TStringField
      FieldName = 'SERIE'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object s6SITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
    object s6MAE: TStringField
      FieldName = 'MAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s6RGMAE: TStringField
      FieldName = 'RGMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s6CPFMAE: TStringField
      FieldName = 'CPFMAE'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object s6PAI: TStringField
      FieldName = 'PAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s6RGPAI: TStringField
      FieldName = 'RGPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s6CPFPAI: TStringField
      FieldName = 'CPFPAI'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object s6EMAIL: TStringField
      FieldName = 'EMAIL'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s6LANCADOCLASSE: TSmallintField
      FieldName = 'LANCADOCLASSE'
      ProviderFlags = [pfInUpdate]
    end
    object s6TRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s6SERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      ProviderFlags = [pfInUpdate]
      Size = 4
    end
    object s6CIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s6UFNASC: TStringField
      FieldName = 'UFNASC'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object s6NACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s6CERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s6LIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s6FLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      ProviderFlags = [pfInUpdate]
      Size = 5
    end
    object s6LOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s6LOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s6TELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s6TELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s6INFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s6CARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s6RAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s6LOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s6TELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s6RAPROD: TStringField
      FieldName = 'RAPROD'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s6TEL_CELULAR: TStringField
      FieldName = 'TEL_CELULAR'
      ProviderFlags = [pfInUpdate]
      Size = 12
    end
    object s6CERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s6CERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      ProviderFlags = [pfInUpdate]
      Size = 2
    end
    object s6CERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s6CERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s6CERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s6COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object s6DIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s6DIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s6IMPORTA: TStringField
      FieldName = 'IMPORTA'
      ProviderFlags = [pfInUpdate]
      FixedChar = True
      Size = 1
    end
    object s6COD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      ProviderFlags = []
    end
  end
  object d1: TDataSetProvider
    DataSet = s1
    Left = 96
    Top = 40
  end
  object d2: TDataSetProvider
    DataSet = s2
    Left = 96
    Top = 72
  end
  object d3: TDataSetProvider
    DataSet = s3
    Options = [poAllowCommandText]
    Left = 96
    Top = 104
  end
  object d4: TDataSetProvider
    DataSet = s4
    Left = 448
    Top = 40
  end
  object d5: TDataSetProvider
    DataSet = s5
    Left = 448
    Top = 72
  end
  object d6: TDataSetProvider
    DataSet = s6
    UpdateMode = upWhereKeyOnly
    Left = 448
    Top = 104
  end
  object c1: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PRA'
        ParamType = ptInput
      end>
    ProviderName = 'd1'
    Left = 128
    Top = 40
    object c1COD_RESP_ALUNO: TIntegerField
      FieldName = 'COD_RESP_ALUNO'
      Required = True
    end
    object c1COD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      Required = True
    end
    object c1RA: TStringField
      FieldName = 'RA'
      Required = True
      Size = 10
    end
    object c1TIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object c2: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PRESP'
        ParamType = ptInput
      end>
    ProviderName = 'd2'
    Left = 128
    Top = 72
    object c2COD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      Required = True
    end
    object c2RESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Required = True
      Size = 200
    end
    object c2ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 200
    end
    object c2BAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 50
    end
    object c2CEP: TStringField
      FieldName = 'CEP'
      FixedChar = True
      Size = 10
    end
    object c2CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 50
    end
    object c2UF: TStringField
      FieldName = 'UF'
      FixedChar = True
      Size = 2
    end
    object c2TIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      FixedChar = True
      Size = 1
    end
    object c2CPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
      Size = 14
    end
    object c2RG: TStringField
      FieldName = 'RG'
    end
    object c2TELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 14
    end
    object c2TELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Size = 14
    end
    object c2EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 50
    end
    object c2LOCALTRABALHO: TStringField
      FieldName = 'LOCALTRABALHO'
      Size = 100
    end
    object c2CAIXAPOSTAL: TStringField
      FieldName = 'CAIXAPOSTAL'
    end
    object c2TELEFONE_COMERCIAL: TStringField
      FieldName = 'TELEFONE_COMERCIAL'
      Size = 14
    end
  end
  object c3: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'd3'
    Left = 128
    Top = 104
    object c3RA: TStringField
      FieldName = 'RA'
      Required = True
      Size = 10
    end
    object c3NOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object c3NUMERO: TSmallintField
      FieldName = 'NUMERO'
    end
    object c3SEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object c3ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object c3BAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object c3CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object c3CEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object c3FONE: TStringField
      FieldName = 'FONE'
      Size = 13
    end
    object c3DATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object c3RG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object c3CPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object c3ANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object c3SERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object c3SITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 1
    end
    object c3MAE: TStringField
      FieldName = 'MAE'
      Size = 30
    end
    object c3RGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object c3CPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object c3PAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object c3RGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object c3CPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object c3EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object c3LANCADOCLASSE: TSmallintField
      FieldName = 'LANCADOCLASSE'
    end
    object c3TRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object c3SERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object c3CIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object c3UFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object c3NACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object c3CERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object c3LIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object c3FLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object c3LOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object c3LOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object c3TELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object c3TELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object c3INFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object c3CARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object c3RAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object c3LOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object c3TELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object c3RAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object c3TEL_CELULAR: TStringField
      FieldName = 'TEL_CELULAR'
      Size = 12
    end
    object c3CERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object c3CERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object c3CERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object c3CERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object c3CERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object c3COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object c3DIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object c3DIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
  end
  object c4: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PRA'
        ParamType = ptInput
      end>
    ProviderName = 'd4'
    Left = 480
    Top = 40
    object c4COD_RESP_ALUNO: TIntegerField
      FieldName = 'COD_RESP_ALUNO'
      Required = True
    end
    object c4COD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
      Required = True
    end
    object c4RA: TStringField
      FieldName = 'RA'
      Required = True
      Size = 10
    end
    object c4TIPO_RESPONSAVEL: TStringField
      FieldName = 'TIPO_RESPONSAVEL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object c4IMPORTA: TStringField
      FieldName = 'IMPORTA'
      FixedChar = True
      Size = 1
    end
  end
  object c5: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'PRESP'
        ParamType = ptInput
      end>
    ProviderName = 'd5'
    Left = 480
    Top = 72
  end
  object c6: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'PSIM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PSIM'
        ParamType = ptInput
      end>
    ProviderName = 'd6'
    Left = 480
    Top = 104
    object c6RA: TStringField
      FieldName = 'RA'
      Required = True
      Size = 10
    end
    object c6NOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object c6NUMERO: TSmallintField
      FieldName = 'NUMERO'
    end
    object c6SEXO: TStringField
      FieldName = 'SEXO'
      Size = 1
    end
    object c6ENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object c6BAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object c6CIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object c6CEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object c6FONE: TStringField
      FieldName = 'FONE'
      Size = 13
    end
    object c6DATANASCIMENTO: TSQLTimeStampField
      FieldName = 'DATANASCIMENTO'
    end
    object c6RG: TStringField
      FieldName = 'RG'
      Size = 15
    end
    object c6CPF: TStringField
      FieldName = 'CPF'
      Size = 14
    end
    object c6ANOLETIVO: TStringField
      FieldName = 'ANOLETIVO'
      Size = 4
    end
    object c6SERIE: TStringField
      FieldName = 'SERIE'
      Size = 4
    end
    object c6SITUACAOESCOLAR: TStringField
      FieldName = 'SITUACAOESCOLAR'
      Size = 1
    end
    object c6MAE: TStringField
      FieldName = 'MAE'
      Size = 30
    end
    object c6RGMAE: TStringField
      FieldName = 'RGMAE'
      Size = 15
    end
    object c6CPFMAE: TStringField
      FieldName = 'CPFMAE'
      Size = 14
    end
    object c6PAI: TStringField
      FieldName = 'PAI'
      Size = 30
    end
    object c6RGPAI: TStringField
      FieldName = 'RGPAI'
      Size = 15
    end
    object c6CPFPAI: TStringField
      FieldName = 'CPFPAI'
      Size = 14
    end
    object c6EMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 30
    end
    object c6LANCADOCLASSE: TSmallintField
      FieldName = 'LANCADOCLASSE'
    end
    object c6TRANSPORTE: TStringField
      FieldName = 'TRANSPORTE'
      Size = 50
    end
    object c6SERIELETRA: TStringField
      FieldName = 'SERIELETRA'
      Size = 4
    end
    object c6CIDADENASC: TStringField
      FieldName = 'CIDADENASC'
      Size = 30
    end
    object c6UFNASC: TStringField
      FieldName = 'UFNASC'
      Size = 2
    end
    object c6NACIONALIDADE: TStringField
      FieldName = 'NACIONALIDADE'
      Size = 15
    end
    object c6CERTIDAONASCNUM: TStringField
      FieldName = 'CERTIDAONASCNUM'
      Size = 10
    end
    object c6LIVRONASC: TStringField
      FieldName = 'LIVRONASC'
      Size = 10
    end
    object c6FLLIVRONASC: TStringField
      FieldName = 'FLLIVRONASC'
      Size = 5
    end
    object c6LOCALTRABPAI: TStringField
      FieldName = 'LOCALTRABPAI'
      Size = 30
    end
    object c6LOCALTRABMAE: TStringField
      FieldName = 'LOCALTRABMAE'
      Size = 30
    end
    object c6TELTRABPAI: TStringField
      FieldName = 'TELTRABPAI'
      Size = 15
    end
    object c6TELTRABMAE: TStringField
      FieldName = 'TELTRABMAE'
      Size = 15
    end
    object c6INFONECESSARIAS: TStringField
      FieldName = 'INFONECESSARIAS'
      Size = 30
    end
    object c6CARTEIRAVACINACAO: TStringField
      FieldName = 'CARTEIRAVACINACAO'
      Size = 10
    end
    object c6RAPRODESP: TStringField
      FieldName = 'RAPRODESP'
      Size = 10
    end
    object c6LOCALTRABALUNO: TStringField
      FieldName = 'LOCALTRABALUNO'
      Size = 30
    end
    object c6TELTRABALUNO: TStringField
      FieldName = 'TELTRABALUNO'
      Size = 15
    end
    object c6RAPROD: TStringField
      FieldName = 'RAPROD'
      Size = 15
    end
    object c6TEL_CELULAR: TStringField
      FieldName = 'TEL_CELULAR'
      Size = 12
    end
    object c6CERT_NAS_COMARCA: TStringField
      FieldName = 'CERT_NAS_COMARCA'
      Size = 50
    end
    object c6CERT_NAS_UF: TStringField
      FieldName = 'CERT_NAS_UF'
      Size = 2
    end
    object c6CERT_NAS_MUNICIPIO: TStringField
      FieldName = 'CERT_NAS_MUNICIPIO'
      Size = 50
    end
    object c6CERT_NAS_DISTRITO: TStringField
      FieldName = 'CERT_NAS_DISTRITO'
      Size = 50
    end
    object c6CERT_NAS_SUBDISTRITO: TStringField
      FieldName = 'CERT_NAS_SUBDISTRITO'
      Size = 50
    end
    object c6COMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 80
    end
    object c6DIVERSO1: TStringField
      FieldName = 'DIVERSO1'
      Size = 50
    end
    object c6DIVERSO2: TStringField
      FieldName = 'DIVERSO2'
      Size = 50
    end
    object c6IMPORTA: TStringField
      FieldName = 'IMPORTA'
      FixedChar = True
      Size = 1
    end
    object c6COD_RESPONSAVEL: TIntegerField
      FieldName = 'COD_RESPONSAVEL'
    end
  end
  object DataSource1: TDataSource
    DataSet = c6
    Left = 376
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = c3
    Left = 424
    Top = 8
  end
end
