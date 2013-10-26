inherited fCodigoTerceiros: TfCodigoTerceiros
  Width = 683
  Height = 482
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 64
    Top = 80
    Width = 39
    Height = 13
    Caption = 'C'#243'digo :'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 394
    Width = 675
    inherited btnGravar: TBitBtn
      Left = 180
    end
    inherited btnIncluir: TBitBtn
      Left = 180
    end
    inherited btnCancelar: TBitBtn
      Left = 293
    end
    inherited btnExcluir: TBitBtn
      Left = 293
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 406
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 675
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -29
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 140
      Top = -65
      Width = 382
      Height = 44
      Caption = 'Codigos de Terceiros'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 144
      Top = -64
      Width = 382
      Height = 44
      Caption = 'Codigos de Terceiros'
      Font.Name = 'Cooper Black'
    end
    object DBText2: TDBText
      Left = 12
      Top = 9
      Width = 661
      Height = 41
      DataField = 'PRODUTO'
      DataSource = fProdutoCadastro.DtSrc
      PopupMenu = PopupMenu1
      Transparent = True
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 120
    Top = 80
    Width = 153
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'CODIGO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [4]
    Left = 296
    Top = 80
    Width = 320
    Height = 305
    DataSource = DtSrc
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo de Terceiro'
        Width = 200
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cds_codigos
  end
  object sds_codigos: TSQLDataSet
    CommandText = 
      'select * from CODIGOS '#13#10'where COD_PRODUTO = :pcod '#13#10'order by NUM' +
      'ERO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 566
    Top = 58
    object sds_codigosCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sds_codigosCOD_CODIGO: TIntegerField
      FieldName = 'COD_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sds_codigosCODIGO: TStringField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object sds_codigosNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
  object dsp_codigos: TDataSetProvider
    DataSet = sds_codigos
    UpdateMode = upWhereKeyOnly
    Left = 606
    Top = 58
  end
  object cds_codigos: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    ProviderName = 'dsp_codigos'
    Left = 646
    Top = 58
    object cds_codigosCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object cds_codigosCOD_CODIGO: TIntegerField
      FieldName = 'COD_CODIGO'
    end
    object cds_codigosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object cds_codigosNUMERO: TStringField
      FieldName = 'NUMERO'
      ProviderFlags = [pfInUpdate]
      Size = 1
    end
  end
end
