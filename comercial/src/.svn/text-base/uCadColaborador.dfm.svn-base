object fCadColaborador: TfCadColaborador
  Left = 383
  Top = 206
  Width = 556
  Height = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 0
    Width = 540
    Height = 56
    Align = alTop
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clTeal
    Background.FillType = GradUpDown
    object lbl1: TLabel
      Left = 7
      Top = 6
      Width = 116
      Height = 16
      Caption = 'Nome Colaborador'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl2: TLabel
      Left = 208
      Top = 6
      Width = 28
      Height = 16
      Caption = 'Tipo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object edt1: TEdit
      Left = 7
      Top = 23
      Width = 200
      Height = 24
      BevelKind = bkFlat
      BorderStyle = bsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object rg1: TRadioGroup
      Left = 381
      Top = 13
      Width = 137
      Height = 33
      Columns = 2
      Items.Strings = (
        'ATIVO'
        'INATIVO')
      TabOrder = 1
      OnClick = rg1Click
    end
    object cbb1: TComboBox
      Left = 210
      Top = 23
      Width = 167
      Height = 24
      BevelKind = bkFlat
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        'MOTOBOY'
        'GAR'#199'ON'
        'BARMEN'
        'SEGURAN'#199'A')
    end
  end
  object JvDBGrid1: TJvDBGrid
    Left = 0
    Top = 56
    Width = 427
    Height = 402
    Align = alClient
    BorderStyle = bsNone
    TabOrder = 1
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
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Descri'#231#227'o'
        Width = 224
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STATUS'
        Title.Caption = 'Situa'#231#227'o'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLOQUEADO'
        Title.Caption = 'Bloqueada ?'
        Width = 70
        Visible = True
      end>
  end
  object pnl1: TPanel
    Left = 427
    Top = 56
    Width = 113
    Height = 402
    Align = alRight
    TabOrder = 2
    object btn1: TBitBtn
      Left = 14
      Top = 7
      Width = 90
      Height = 31
      Caption = 'INCLUIR'
      TabOrder = 0
      OnClick = btn1Click
    end
    object btn2: TBitBtn
      Left = 14
      Top = 47
      Width = 90
      Height = 31
      Caption = 'EXCLUIR'
      TabOrder = 1
      OnClick = btn2Click
    end
    object btn3: TBitBtn
      Left = 15
      Top = 87
      Width = 90
      Height = 31
      Caption = 'ALTERAR'
      TabOrder = 2
      OnClick = btn3Click
    end
  end
  object s_Colab: TSQLDataSet
    CommandText = 'select * from FORNECEDOR'#13#10' where SEGMENTO = 2'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 112
    Top = 224
    object s_ColabCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object s_ColabNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s_ColabRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object s_ColabCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object s_ColabTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
    end
    object s_ColabCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object s_ColabCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object s_ColabINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object s_ColabRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object s_ColabSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_ColabREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
    end
    object s_ColabLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object s_ColabDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object s_ColabCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object s_ColabSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object s_ColabHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object s_ColabPRAZOPAGAMENTO: TSmallintField
      FieldName = 'PRAZOPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object s_ColabPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object s_ColabCONTA_FORNECEDOR: TStringField
      FieldName = 'CONTA_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object s_ColabCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object s_ColabCODFOR: TStringField
      FieldName = 'CODFOR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object s_ColabCAMPOADICIONAL: TStringField
      FieldName = 'CAMPOADICIONAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object s_ColabCAMPOADICIONAL1: TStringField
      FieldName = 'CAMPOADICIONAL1'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object p_Coab: TDataSetProvider
    DataSet = s_Colab
    UpdateMode = upWhereKeyOnly
    Left = 152
    Top = 224
  end
  object c_Colab: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'p_Coab'
    Left = 192
    Top = 224
    object c_ColabCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object c_ColabNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object c_ColabRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      ProviderFlags = [pfInUpdate]
      Size = 50
    end
    object c_ColabCONTATO: TStringField
      FieldName = 'CONTATO'
      ProviderFlags = [pfInUpdate]
      Size = 30
    end
    object c_ColabTIPOFIRMA: TSmallintField
      FieldName = 'TIPOFIRMA'
      ProviderFlags = [pfInUpdate]
    end
    object c_ColabCPF: TStringField
      FieldName = 'CPF'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object c_ColabCNPJ: TStringField
      FieldName = 'CNPJ'
      ProviderFlags = [pfInUpdate]
      Size = 18
    end
    object c_ColabINSCESTADUAL: TStringField
      FieldName = 'INSCESTADUAL'
      ProviderFlags = [pfInUpdate]
      Size = 24
    end
    object c_ColabRG: TStringField
      FieldName = 'RG'
      ProviderFlags = [pfInUpdate]
      Size = 14
    end
    object c_ColabSEGMENTO: TSmallintField
      FieldName = 'SEGMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_ColabREGIAO: TSmallintField
      FieldName = 'REGIAO'
      ProviderFlags = [pfInUpdate]
    end
    object c_ColabLIMITECREDITO: TFloatField
      FieldName = 'LIMITECREDITO'
      ProviderFlags = [pfInUpdate]
    end
    object c_ColabDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      ProviderFlags = [pfInUpdate]
    end
    object c_ColabCODUSUARIO: TIntegerField
      FieldName = 'CODUSUARIO'
      ProviderFlags = [pfInUpdate]
    end
    object c_ColabSTATUS: TSmallintField
      FieldName = 'STATUS'
      ProviderFlags = [pfInUpdate]
    end
    object c_ColabHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      ProviderFlags = [pfInUpdate]
      Size = 40
    end
    object c_ColabPRAZOPAGAMENTO: TSmallintField
      FieldName = 'PRAZOPAGAMENTO'
      ProviderFlags = [pfInUpdate]
    end
    object c_ColabPRAZOENTREGA: TSmallintField
      FieldName = 'PRAZOENTREGA'
      ProviderFlags = [pfInUpdate]
    end
    object c_ColabCONTA_FORNECEDOR: TStringField
      FieldName = 'CONTA_FORNECEDOR'
      ProviderFlags = [pfInUpdate]
      Size = 15
    end
    object c_ColabCODTRANSP: TIntegerField
      FieldName = 'CODTRANSP'
      ProviderFlags = [pfInUpdate]
    end
    object c_ColabCODFOR: TStringField
      FieldName = 'CODFOR'
      ProviderFlags = [pfInUpdate]
      Size = 10
    end
    object c_ColabCAMPOADICIONAL: TStringField
      FieldName = 'CAMPOADICIONAL'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object c_ColabCAMPOADICIONAL1: TStringField
      FieldName = 'CAMPOADICIONAL1'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object ds_mesas: TDataSource
    DataSet = c_Colab
    Left = 232
    Top = 224
  end
end
