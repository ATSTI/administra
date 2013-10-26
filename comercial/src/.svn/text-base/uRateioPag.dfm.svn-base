inherited fRateioPag: TfRateioPag
  Left = 22
  Top = 66
  Width = 703
  Height = 496
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 3
    Top = 61
    Width = 70
    Height = 13
    Caption = 'C'#243'd. Reduzido'
  end
  object Label4: TLabel [1]
    Left = 209
    Top = 61
    Width = 82
    Height = 13
    Caption = 'Centro de Custo :'
  end
  object Label5: TLabel [2]
    Left = 527
    Top = 61
    Width = 30
    Height = 13
    Caption = 'Valor :'
  end
  object Label6: TLabel [3]
    Left = 624
    Top = 61
    Width = 51
    Height = 13
    Caption = 'Percentual'
  end
  object Label7: TLabel [4]
    Left = 343
    Top = 358
    Width = 58
    Height = 13
    Caption = 'Total Rateio'
  end
  object Label8: TLabel [5]
    Left = 465
    Top = 358
    Width = 59
    Height = 13
    Caption = 'Total Quant.'
  end
  object Label9: TLabel [6]
    Left = 588
    Top = 358
    Width = 81
    Height = 13
    Caption = 'Total Percentual '
  end
  inherited MMJPanel1: TMMJPanel
    Top = 408
    Width = 695
    inherited btnGravar: TBitBtn
      Left = 181
    end
    inherited btnIncluir: TBitBtn
      Left = 181
    end
    inherited btnCancelar: TBitBtn
      Left = 294
    end
    inherited btnExcluir: TBitBtn
      Left = 294
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 407
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 695
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -32
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    inherited Label1: TLabel
      Left = 280
      Top = -85
      Width = 114
      Height = 44
      Caption = 'Rateio'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 284
      Top = -84
      Width = 114
      Height = 44
      Caption = 'Rateio'
      Font.Name = 'Cooper Black'
    end
    object JvLabel1: TJvLabel
      Left = 1
      Top = 1
      Width = 693
      Height = 52
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Rateio'
      ShadowColor = clNavy
      ShadowSize = 4
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -32
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
  end
  object Edit1: TEdit [9]
    Left = 1
    Top = 77
    Width = 109
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnExit = Edit1Exit
    OnKeyPress = FormKeyPress
  end
  object DBLookupComboBox1: TDBLookupComboBox [10]
    Left = 208
    Top = 77
    Width = 316
    Height = 24
    DataField = 'CODCCUSTO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'CODIGO'
    ListField = 'NOME'
    ListSource = ds_ccusto
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit1: TDBEdit [11]
    Left = 526
    Top = 77
    Width = 96
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'VALOR'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnExit = DBEdit1Exit
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [12]
    Left = 623
    Top = 77
    Width = 65
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'PERCENTUAL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnExit = DBEdit2Exit
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [13]
    Left = 1
    Top = 103
    Width = 687
    Height = 251
    DataSource = DtSrc
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCCUSTO'
        Title.Caption = 'Centro de Custo'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTADEBITO'
        Title.Caption = 'C'#243'd. Conta'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTA'
        Title.Caption = 'Conta'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Valor'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTDE'
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERCENTUAL'
        Title.Caption = 'Percentual'
        Visible = True
      end>
  end
  object DBEdit3: TDBEdit [14]
    Left = 343
    Top = 374
    Width = 121
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'TotalRateio'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnExit = DBEdit1Exit
  end
  object DBEdit4: TDBEdit [15]
    Left = 465
    Top = 374
    Width = 121
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'TotalQtde'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit5: TDBEdit [16]
    Left = 587
    Top = 374
    Width = 101
    Height = 24
    BevelKind = bkFlat
    BorderStyle = bsNone
    DataField = 'TOTALPERCENTUAL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnExit = DBEdit1Exit
  end
  object BitBtn1: TBitBtn [17]
    Left = 111
    Top = 77
    Width = 91
    Height = 25
    Caption = 'Plano de Contas'
    TabOrder = 10
    OnClick = BitBtn1Click
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_rateio
    Left = 568
    Top = 16
  end
  object ds_ccusto: TDataSource
    DataSet = DM.cds_ccusto
    Left = 614
    Top = 40
  end
end
