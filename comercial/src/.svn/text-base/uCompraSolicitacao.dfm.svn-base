inherited fSolicitacaoCompra: TfSolicitacaoCompra
  Width = 863
  Height = 347
  Caption = 'Solicitacao Compra'
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 855
    TabOrder = 5
  end
  inherited MMJPanel2: TMMJPanel
    Top = 269
    Width = 855
    TabOrder = 6
    inherited btnGravar: TBitBtn
      Left = 183
    end
    inherited btnIncluir: TBitBtn
      Left = 183
    end
    inherited btnCancelar: TBitBtn
      Left = 298
    end
    inherited btnExcluir: TBitBtn
      Left = 298
    end
    inherited btnProcurar: TBitBtn
      Left = 68
      OnClick = btnProcurarClick
    end
    inherited btnSair: TBitBtn
      Left = 421
    end
  end
  object grp1: TGroupBox [2]
    Left = 8
    Top = 55
    Width = 721
    Height = 65
    Caption = 'Material'
    TabOrder = 0
    object dbEdit1: TDBEdit
      Left = 6
      Top = 20
      Width = 105
      Height = 21
      Color = clWhite
      DataField = 'SOLIC_PRODUTO'
      DataSource = DtSrc
      TabOrder = 0
      OnExit = dbEdit1Exit
    end
    object dbEdit2: TDBEdit
      Left = 134
      Top = 20
      Width = 539
      Height = 21
      Color = clSilver
      DataField = 'SOLIC_DESCRICAO'
      DataSource = DtSrc
      TabOrder = 1
    end
    object btn1: TBitBtn
      Left = 110
      Top = 16
      Width = 25
      Height = 25
      Caption = '...'
      TabOrder = 2
      TabStop = False
      OnClick = btn1Click
    end
    object edtUnidade: TEdit
      Left = 674
      Top = 20
      Width = 41
      Height = 21
      TabStop = False
      Color = clSilver
      ReadOnly = True
      TabOrder = 3
    end
  end
  object grp2: TGroupBox [3]
    Left = 159
    Top = 185
    Width = 682
    Height = 56
    Align = alCustom
    Caption = 'Aprova'#231#227'o'
    TabOrder = 4
    object dbEdit4: TDBEdit
      Left = 14
      Top = 20
      Width = 187
      Height = 21
      DataField = 'SOLIC_APROVACAO'
      DataSource = DtSrc
      TabOrder = 0
      OnExit = dbEdit4Exit
    end
    object dbEdit5: TEdit
      Left = 208
      Top = 20
      Width = 457
      Height = 21
      TabOrder = 1
    end
  end
  object grp3: TGroupBox [4]
    Left = 729
    Top = 55
    Width = 113
    Height = 65
    Caption = 'Quantidade'
    TabOrder = 1
    object dbEdit3: TDBEdit
      Left = 14
      Top = 20
      Width = 83
      Height = 21
      DataField = 'SOLIC_QUANTIDADE'
      DataSource = DtSrc
      TabOrder = 0
    end
  end
  object grp4: TGroupBox [5]
    Left = 8
    Top = 183
    Width = 145
    Height = 57
    Caption = 'Data Necessidade'
    TabOrder = 3
    object dbEdit6: TDBEdit
      Left = 8
      Top = 20
      Width = 121
      Height = 21
      DataField = 'SOLIC_DTNECESSIT'
      DataSource = dsSolic
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox [6]
    Left = 8
    Top = 124
    Width = 833
    Height = 57
    Caption = 'Observa'#231#227'o'
    TabOrder = 2
    object DBEdit7: TDBEdit
      Left = 8
      Top = 20
      Width = 809
      Height = 21
      DataField = 'SOLIC_OBSERVACAO'
      DataSource = dsSolic
      TabOrder = 0
    end
  end
  inherited DtSrc: TDataSource
    DataSet = cdsSolic
    Left = 392
  end
  inherited XPMenu1: TXPMenu
    Left = 432
  end
  inherited PopupMenu1: TPopupMenu
    Left = 464
  end
  object sq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 408
    Top = 40
  end
  object sdsSolic: TSQLDataSet
    CommandText = 'SELECT * FROM COMPRA_SOLIC'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 208
    Top = 32
  end
  object dspSolic: TDataSetProvider
    DataSet = sdsSolic
    Left = 240
    Top = 32
  end
  object cdsSolic: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspSolic'
    OnNewRecord = cdsSolicNewRecord
    Left = 280
    Top = 32
    object cdsSolicSOLIC_CODIGO: TIntegerField
      FieldName = 'SOLIC_CODIGO'
      Required = True
    end
    object cdsSolicSOLIC_DATA: TDateField
      FieldName = 'SOLIC_DATA'
    end
    object cdsSolicSOLIC_PRODUTO: TStringField
      FieldName = 'SOLIC_PRODUTO'
      Required = True
      Size = 15
    end
    object cdsSolicSOLIC_QUANTIDADE: TFloatField
      FieldName = 'SOLIC_QUANTIDADE'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object cdsSolicSOLIC_SOLICITANTE: TStringField
      FieldName = 'SOLIC_SOLICITANTE'
      Size = 30
    end
    object cdsSolicSOLIC_SITUACAO: TStringField
      FieldName = 'SOLIC_SITUACAO'
      FixedChar = True
      Size = 1
    end
    object cdsSolicSOLIC_APROVACAO: TStringField
      FieldName = 'SOLIC_APROVACAO'
      Required = True
      Size = 30
    end
    object cdsSolicSOLIC_DATAAPROV: TDateField
      FieldName = 'SOLIC_DATAAPROV'
    end
    object cdsSolicSOLIC_DESCRICAO: TStringField
      FieldName = 'SOLIC_DESCRICAO'
      Size = 300
    end
    object cdsSolicSOLIC_TIPO: TStringField
      FieldName = 'SOLIC_TIPO'
      FixedChar = True
      Size = 1
    end
    object cdsSolicSOLIC_DTNECESSIT: TDateField
      FieldName = 'SOLIC_DTNECESSIT'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object cdsSolicSOLIC_OBSERVACAO: TStringField
      FieldName = 'SOLIC_OBSERVACAO'
      Size = 300
    end
  end
  object dsSolic: TDataSource
    DataSet = cdsSolic
    OnStateChange = dsSolicStateChange
    Left = 312
    Top = 32
  end
  object sqBusca: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 368
    Top = 40
  end
  object sqlProc: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 320
    Top = 72
  end
end
