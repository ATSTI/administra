inherited fComissaoColaborador: TfComissaoColaborador
  Left = 256
  Top = 160
  Width = 635
  Height = 446
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 8
    Top = 64
    Width = 57
    Height = 13
    Caption = 'Colaborador'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label4: TLabel [1]
    Left = 204
    Top = 64
    Width = 37
    Height = 13
    Caption = 'Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  object Label5: TLabel [2]
    Left = 552
    Top = 64
    Width = 65
    Height = 13
    Caption = 'Comiss'#227'o  R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    Transparent = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 358
    Width = 627
    inherited btnExcluir: TBitBtn [0]
      Left = 263
    end
    inherited btnGravar: TBitBtn [1]
      Left = 47
      Top = -65
      Visible = False
    end
    inherited btnIncluir: TBitBtn [2]
      Left = 159
      Caption = 'F2-Adiciona'
    end
    inherited btnCancelar: TBitBtn [3]
      Left = 32
      Top = -65
      Visible = False
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Top = -65
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 367
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 627
    inherited Label1: TLabel
      Left = 239
      Width = 149
      Caption = 'Comiss'#227'o'
    end
    inherited Label2: TLabel
      Left = 243
      Width = 149
      Caption = 'Comiss'#227'o'
    end
  end
  object cbColaborador: TComboBox [5]
    Left = 7
    Top = 79
    Width = 195
    Height = 24
    BevelKind = bkFlat
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 2
    OnKeyPress = cbColaboradorKeyPress
  end
  object cbProduto: TComboBox [6]
    Left = 203
    Top = 79
    Width = 346
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object JvDBGrid1: TJvDBGrid [7]
    Left = 8
    Top = 105
    Width = 617
    Height = 248
    BorderStyle = bsNone
    DataSource = DtSrc
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    BevelKind = bkFlat
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'PRODUTO'
        Title.Caption = 'Produto'
        Width = 496
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORCOMISSAO'
        Title.Caption = 'Comiss'#227'o'
        Width = 103
        Visible = True
      end>
  end
  object edComissao: TJvCalcEdit [8]
    Left = 553
    Top = 78
    Width = 71
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DisplayFormat = ',##0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ShowButton = False
    TabOrder = 5
    DecimalPlacesAlwaysShown = False
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = cComissao
    Left = 168
    Top = 200
  end
  object sComissao: TSQLDataSet
    CommandText = 
      'select cc.*, p.PRODUTO '#13#10'from COMISSAOCOLABORADOR cc '#13#10'inner joi' +
      'n PRODUTOS p on p.CODPRODUTO = cc.COD_PRODUTO '#13#10'where COD_COLABO' +
      'RADOR = :cb'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'cb'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 72
    Top = 200
    object sComissaoCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object sComissaoCOD_COLABORADOR: TIntegerField
      FieldName = 'COD_COLABORADOR'
      ProviderFlags = [pfInUpdate]
    end
    object sComissaoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
      ProviderFlags = [pfInUpdate]
    end
    object sComissaoVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sComissaoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      ProviderFlags = []
      Required = True
      Size = 300
    end
  end
  object dComissao: TDataSetProvider
    DataSet = sComissao
    Left = 103
    Top = 200
  end
  object cComissao: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'cb'
        ParamType = ptInput
      end>
    ProviderName = 'dComissao'
    Left = 135
    Top = 200
    object cComissaoCOD_COMISSAO: TIntegerField
      FieldName = 'COD_COMISSAO'
    end
    object cComissaoCOD_COLABORADOR: TIntegerField
      FieldName = 'COD_COLABORADOR'
    end
    object cComissaoCOD_PRODUTO: TIntegerField
      FieldName = 'COD_PRODUTO'
    end
    object cComissaoVALORCOMISSAO: TFloatField
      FieldName = 'VALORCOMISSAO'
      DisplayFormat = ',#0.00'
    end
    object cComissaoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
  end
  object sColaborador: TSQLDataSet
    CommandText = 
      'select COD_FUNCIONARIO, NOME_FUNCIONARIO from FUNCIONARIO '#13#10'wher' +
      'e FUNCAO_CARGO = '#39'Colaborador'#39' '#13#10'or FUNCAO_CARGO = '#39'Gar'#231'om'#39' '#13#10'an' +
      'd STATUS = '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 88
    Top = 144
    object sColaboradorCOD_FUNCIONARIO: TIntegerField
      FieldName = 'COD_FUNCIONARIO'
      Required = True
    end
    object sColaboradorNOME_FUNCIONARIO: TStringField
      FieldName = 'NOME_FUNCIONARIO'
      Size = 60
    end
  end
  object sProduto: TSQLDataSet
    CommandText = 'select CODPRODUTO, PRODUTO from PRODUTOS order by CODPRODUTO'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 128
    Top = 144
    object sProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Required = True
    end
    object sProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Required = True
      Size = 300
    end
  end
end
