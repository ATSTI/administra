object fCheq_bolBaixa: TfCheq_bolBaixa
  Left = 183
  Top = 96
  Width = 821
  Height = 573
  Caption = 'Baixa Documentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object JvDBGrid1: TJvDBGrid
    Left = 16
    Top = 16
    Width = 769
    Height = 433
    DataSource = dsCheque
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.RealNamesOption = 'NUMERO_DOC'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'NUMERO_DOC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCLI_FORN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CLI_OU_FORN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTACORRENTE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAEMISSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATALANCAMENTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATADEPOSITO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORCHEQUE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BANCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGENCIA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_DOC'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LANCADO'
        Visible = True
      end>
  end
  object dspCheque: TDataSetProvider
    DataSet = sdsCheque
    Left = 184
    Top = 464
  end
  object cdsCheque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCheque'
    Left = 216
    Top = 464
    object cdsChequeCOD_CHEQ_BOL: TIntegerField
      FieldName = 'COD_CHEQ_BOL'
      Required = True
    end
    object cdsChequeCOD_ORIGEM: TIntegerField
      FieldName = 'COD_ORIGEM'
      Required = True
    end
    object cdsChequeTIPO_ORIGEM: TStringField
      FieldName = 'TIPO_ORIGEM'
      Required = True
      Size = 15
    end
    object cdsChequeNUMERO_DOC: TIntegerField
      FieldName = 'NUMERO_DOC'
      Required = True
    end
    object cdsChequeCODCLI_FORN: TIntegerField
      FieldName = 'CODCLI_FORN'
      Required = True
    end
    object cdsChequeCLI_OU_FORN: TStringField
      FieldName = 'CLI_OU_FORN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsChequeCONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      Size = 18
    end
    object cdsChequeDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object cdsChequeDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
    end
    object cdsChequeDATADEPOSITO: TDateField
      FieldName = 'DATADEPOSITO'
    end
    object cdsChequeVALORCHEQUE: TFloatField
      FieldName = 'VALORCHEQUE'
    end
    object cdsChequeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object cdsChequeBANCO: TSmallintField
      FieldName = 'BANCO'
    end
    object cdsChequeAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 18
    end
    object cdsChequeTIPO_DOC: TSmallintField
      FieldName = 'TIPO_DOC'
    end
    object cdsChequeLANCADO: TSmallintField
      FieldName = 'LANCADO'
    end
  end
  object dsCheque: TDataSource
    DataSet = cdsCheque
    Left = 248
    Top = 464
  end
  object sdsCheque: TSQLDataSet
    CommandText = 'select * from CHEQ_BOLETOS_DUPL'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 152
    Top = 464
    object sdsChequeCOD_CHEQ_BOL: TIntegerField
      FieldName = 'COD_CHEQ_BOL'
      Required = True
    end
    object sdsChequeCOD_ORIGEM: TIntegerField
      FieldName = 'COD_ORIGEM'
      Required = True
    end
    object sdsChequeTIPO_ORIGEM: TStringField
      FieldName = 'TIPO_ORIGEM'
      Required = True
      Size = 15
    end
    object sdsChequeNUMERO_DOC: TIntegerField
      FieldName = 'NUMERO_DOC'
      Required = True
    end
    object sdsChequeCODCLI_FORN: TIntegerField
      FieldName = 'CODCLI_FORN'
      Required = True
    end
    object sdsChequeCLI_OU_FORN: TStringField
      FieldName = 'CLI_OU_FORN'
      Required = True
      FixedChar = True
      Size = 1
    end
    object sdsChequeCONTACORRENTE: TStringField
      FieldName = 'CONTACORRENTE'
      Size = 18
    end
    object sdsChequeDATAEMISSAO: TDateField
      FieldName = 'DATAEMISSAO'
    end
    object sdsChequeDATALANCAMENTO: TDateField
      FieldName = 'DATALANCAMENTO'
    end
    object sdsChequeDATADEPOSITO: TDateField
      FieldName = 'DATADEPOSITO'
    end
    object sdsChequeVALORCHEQUE: TFloatField
      FieldName = 'VALORCHEQUE'
    end
    object sdsChequeDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object sdsChequeBANCO: TSmallintField
      FieldName = 'BANCO'
    end
    object sdsChequeAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 18
    end
    object sdsChequeTIPO_DOC: TSmallintField
      FieldName = 'TIPO_DOC'
    end
    object sdsChequeLANCADO: TSmallintField
      FieldName = 'LANCADO'
    end
  end
end
