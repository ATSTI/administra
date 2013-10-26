inherited fDIAdicao: TfDIAdicao
  Left = 229
  Top = 225
  Width = 890
  Height = 465
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 384
    Width = 882
    inherited btnGravar: TBitBtn
      Left = 539
    end
    inherited btnIncluir: TBitBtn
      Left = 539
    end
    inherited btnCancelar: TBitBtn
      Left = 652
    end
    inherited btnExcluir: TBitBtn
      Left = 652
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Width = 26
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 765
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 882
    inherited Label1: TLabel
      Left = 56
      Width = 266
      Caption = 'Cadastro Adi'#231#227'o'
    end
    inherited Label2: TLabel
      Left = 60
      Width = 266
      Caption = 'Cadastro Adi'#231#227'o'
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 54
    Width = 882
    Height = 43
    Align = alTop
    TabOrder = 2
    object Label3: TLabel
      Left = 185
      Top = 10
      Width = 48
      Height = 13
      Caption = 'N'#186' Adi'#231#227'o'
    end
    object Label4: TLabel
      Left = 331
      Top = 10
      Width = 66
      Height = 13
      Caption = 'N'#186' Sequ'#234'ncia'
    end
    object Label5: TLabel
      Left = 506
      Top = 10
      Width = 75
      Height = 13
      Caption = 'Cod. Fabricante'
    end
    object Label6: TLabel
      Left = 684
      Top = 10
      Width = 73
      Height = 13
      Caption = 'Valor Desconto'
    end
    object Label7: TLabel
      Left = 11
      Top = 10
      Width = 69
      Height = 13
      Caption = 'N'#186' DI/DSI/DA'
    end
    object DBEdit1: TDBEdit
      Left = 240
      Top = 10
      Width = 76
      Height = 21
      DataField = 'ADIC_NADICAO'
      DataSource = DtSrc
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 417
      Top = 10
      Width = 76
      Height = 21
      DataField = 'ADIC_NSEQUEN'
      DataSource = DtSrc
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 593
      Top = 10
      Width = 76
      Height = 21
      DataField = 'ADIC_CODFAB'
      DataSource = DtSrc
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 778
      Top = 10
      Width = 76
      Height = 21
      DataField = 'ADIC_VDESC'
      DataSource = DtSrc
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 104
      Top = 10
      Width = 76
      Height = 21
      DataField = 'DI_NUMDI'
      DataSource = fDadosImportacao.dtsrcDI
      ReadOnly = True
      TabOrder = 4
    end
  end
  object GroupBox1: TGroupBox [3]
    Left = 0
    Top = 97
    Width = 882
    Height = 287
    Align = alClient
    Caption = 'Produtos Notas Fiscais'
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 878
      Height = 270
      Align = alClient
      DataSource = dtsrcMov_Det
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'NOTAFISCAL'
          Title.Caption = 'Nota Fiscal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRO'
          Title.Caption = 'Codigo Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DESCPRODUTO'
          Title.Caption = 'Descri'#231#227'o'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALTOTAL'
          Title.Caption = 'Valor Total'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODFORNECEDOR'
          Title.Caption = 'Cod. Fornecedor'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RAZAOSOCIAL'
          Title.Caption = 'Raz'#227'o Fornecedor'
          Visible = True
        end>
    end
  end
  inherited XPMenu1: TXPMenu
    Left = 368
    Top = 0
  end
  inherited DtSrc: TDataSource
    DataSet = cdsAdic
    Left = 104
  end
  object cdsAdic: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codDi'
        ParamType = ptInput
      end>
    ProviderName = 'dspAdic'
    Left = 72
    Top = 8
    object cdsAdicADIC_CODDET: TIntegerField
      FieldName = 'ADIC_CODDET'
    end
    object cdsAdicADIC_CODDI: TIntegerField
      FieldName = 'ADIC_CODDI'
    end
    object cdsAdicADIC_NADICAO: TIntegerField
      FieldName = 'ADIC_NADICAO'
      Required = True
    end
    object cdsAdicADIC_NSEQUEN: TIntegerField
      FieldName = 'ADIC_NSEQUEN'
      Required = True
    end
    object cdsAdicADIC_CODFAB: TStringField
      FieldName = 'ADIC_CODFAB'
      Size = 60
    end
    object cdsAdicADIC_VDESC: TIntegerField
      FieldName = 'ADIC_VDESC'
    end
    object cdsAdicDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
  end
  object dspAdic: TDataSetProvider
    DataSet = sdsAdic
    Left = 40
    Top = 8
  end
  object sdsAdic: TSQLDataSet
    CommandText = 
      'SELECT di.ADIC_CODDET, di.ADIC_CODDI, di.ADIC_NADICAO, di.ADIC_N' +
      'SEQUEN, di.ADIC_CODFAB, di.ADIC_VDESC, md.DESCPRODUTO'#13#10'FROM DIAD' +
      'ICAO di , MOVIMENTODETALHE md'#13#10'where CODDETALHE      =  ADIC_COD' +
      'DET'#13#10'    and di.ADIC_CODDET    = :codDet'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codDet'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 8
    Top = 8
    object sdsAdicADIC_CODDET: TIntegerField
      FieldName = 'ADIC_CODDET'
    end
    object sdsAdicADIC_CODDI: TIntegerField
      FieldName = 'ADIC_CODDI'
    end
    object sdsAdicADIC_NADICAO: TIntegerField
      FieldName = 'ADIC_NADICAO'
      Required = True
    end
    object sdsAdicADIC_NSEQUEN: TIntegerField
      FieldName = 'ADIC_NSEQUEN'
      Required = True
    end
    object sdsAdicADIC_CODFAB: TStringField
      FieldName = 'ADIC_CODFAB'
      Size = 60
    end
    object sdsAdicADIC_VDESC: TIntegerField
      FieldName = 'ADIC_VDESC'
    end
    object sdsAdicDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
  end
  object cdsMov_Det: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'codmov'
        ParamType = ptInput
      end>
    ProviderName = 'dspMov_Det'
    Left = 376
    Top = 152
    object cdsMov_DetNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object cdsMov_DetCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object cdsMov_DetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object cdsMov_DetVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
      DisplayFormat = ',##0.00'
    end
    object cdsMov_DetCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object cdsMov_DetRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object cdsMov_DetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
  end
  object dspMov_Det: TDataSetProvider
    DataSet = sdsMov_Det
    Left = 344
    Top = 152
  end
  object dtsrcMov_Det: TDataSource
    DataSet = cdsMov_Det
    Left = 280
    Top = 152
  end
  object sdsMov_Det: TSQLDataSet
    CommandText = 
      'SELECT md.CODDETALHE, nf.NOTAFISCAL, p.CODPRO, md.DESCPRODUTO, m' +
      'd.VALTOTAL, f.CODFORNECEDOR, f.RAZAOSOCIAL '#13#10'From MOVIMENTODETAL' +
      'HE md, PRODUTOS p, COMPRA c, NOTAFISCAL nf, FORNECEDOR f'#13#10'where ' +
      'p.CODPRODUTO = md.CODPRODUTO '#13#10'and f.CODFORNECEDOR = c.CODFORNEC' +
      'EDOR'#13#10'and c.CODMOVIMENTO = md.CODMOVIMENTO '#13#10'and nf.CODVENDA = c' +
      '.CODCOMPRA'#13#10'and UDF_LEFT(md.CFOP, 1) = '#39'3'#39#13#10'and nf.PROTOCOLOENV ' +
      'is null'#13#10'and nf.natureza = 20'#13#10'and c.codmovimento = :codmov'#13#10
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'codmov'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 312
    Top = 152
    object sdsMov_DetNOTAFISCAL: TIntegerField
      FieldName = 'NOTAFISCAL'
    end
    object sdsMov_DetCODPRO: TStringField
      FieldName = 'CODPRO'
      Size = 15
    end
    object sdsMov_DetDESCPRODUTO: TStringField
      FieldName = 'DESCPRODUTO'
      Size = 300
    end
    object sdsMov_DetVALTOTAL: TFloatField
      FieldName = 'VALTOTAL'
    end
    object sdsMov_DetCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Required = True
    end
    object sdsMov_DetRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      Required = True
      Size = 50
    end
    object sdsMov_DetCODDETALHE: TIntegerField
      FieldName = 'CODDETALHE'
      Required = True
    end
  end
end
