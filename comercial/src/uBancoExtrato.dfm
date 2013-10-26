inherited fBancoExtrato: TfBancoExtrato
  Width = 1045
  Caption = 'Concilia'#231#227'o Banc'#225'ria'
  OldCreateOrder = True
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 1037
    Height = 70
    object Label4: TLabel
      Left = 52
      Top = 12
      Width = 65
      Height = 13
      Caption = 'Caixa/Conta :'
      Transparent = True
    end
    object Label1: TLabel
      Left = 15
      Top = 43
      Width = 103
      Height = 13
      Caption = 'Centro de Resultado :'
      Transparent = True
    end
    object GroupBox1: TGroupBox
      Left = 614
      Top = 4
      Width = 419
      Height = 65
      Caption = 'Per'#237'odo'
      TabOrder = 0
      object Label3: TLabel
        Left = 8
        Top = 16
        Width = 20
        Height = 13
        Caption = 'M'#234's'
      end
      object Label7: TLabel
        Left = 294
        Top = 18
        Width = 6
        Height = 13
        Caption = 'a'
      end
      object cbMes: TComboBox
        Left = 32
        Top = 16
        Width = 137
        Height = 21
        ItemHeight = 13
        TabOrder = 0
        OnChange = cbMesChange
        Items.Strings = (
          'Janeiro'
          'Fevereiro'
          'Mar'#231'o'
          'Abril'
          'Maio'
          'Junho'
          'Julho'
          'Agosto'
          'Setembro'
          'Outubro'
          'Novembro'
          'Dezembro')
      end
      object MaskEdit1: TJvDatePickerEdit
        Left = 182
        Top = 16
        Width = 100
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 1
      end
      object MaskEdit2: TJvDatePickerEdit
        Left = 313
        Top = 16
        Width = 100
        Height = 21
        AllowNoDate = True
        Checked = True
        TabOrder = 2
      end
    end
    object cbConta: TComboBox
      Left = 120
      Top = 10
      Width = 481
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 1
      OnChange = cbContaChange
    end
    object ComboBox1: TComboBox
      Left = 121
      Top = 38
      Width = 480
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
      OnKeyPress = FormKeyPress
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 1037
    inherited btnExcluir: TBitBtn
      Caption = 'Contas'
      Enabled = True
    end
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid [2]
    Left = 0
    Top = 70
    Width = 616
    Height = 404
    Align = alClient
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBUltimGrid1CellClick
    OnColEnter = JvDBUltimGrid1ColEnter
    OnColExit = JvDBUltimGrid1ColExit
    OnDrawColumnCell = JvDBUltimGrid1DrawColumnCell
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'SEL'
        Title.Caption = 'Sel.'
        Width = 11
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONCILIADO'
        Title.Caption = 'Conc.'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATOCOD'
        Title.Caption = 'Lan'#231'am.'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATODATA'
        Title.Caption = 'Data'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATODOC'
        Title.Caption = 'Documento'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Conta Lanc.'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATOTIPO'
        Title.Caption = 'Tipo'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EXTRATOVALOR'
        Title.Caption = 'Valor'
        Width = 80
        Visible = True
      end>
  end
  object grid2: TJvDBUltimGrid [3]
    Left = 616
    Top = 70
    Width = 421
    Height = 404
    Align = alRight
    DataSource = dsLanc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = JvDBUltimGrid1CellClick
    OnColEnter = JvDBUltimGrid1ColEnter
    OnColExit = JvDBUltimGrid1ColExit
    OnDrawColumnCell = JvDBUltimGrid1DrawColumnCell
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'DTAPAGTO'
        Title.Caption = 'Data'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTACONTABIL'
        Title.Caption = 'Conta'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Lan'#231'am.'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORC'
        Title.Caption = 'Cr'#233'dito'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORD'
        Title.Caption = 'D'#233'bito'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Saldo'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'N_DOC'
        Title.Caption = 'Doc.'
        Width = 60
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = cdsExtrato
    Left = 549
  end
  object ds_conta: TDataSource
    DataSet = DM.cds_7_contas
    Left = 416
    Top = 8
  end
  object sdsExtrato: TSQLDataSet
    CommandText = 'SELECT * FROM EXTRATOBANCARIO(:CAIXA, :DTA1, :DTA2)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 400
    Top = 48
    object sdsExtratoEXTRATOCOD: TStringField
      FieldName = 'EXTRATOCOD'
      Required = True
    end
    object sdsExtratoEXTRATODATA: TDateField
      FieldName = 'EXTRATODATA'
      Required = True
    end
    object sdsExtratoCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Required = True
    end
    object sdsExtratoEXTRATODOC: TStringField
      FieldName = 'EXTRATODOC'
      Size = 100
    end
    object sdsExtratoEXTRATOTIPO: TStringField
      FieldName = 'EXTRATOTIPO'
    end
    object sdsExtratoEXTRATOVALOR: TFloatField
      FieldName = 'EXTRATOVALOR'
    end
    object sdsExtratoSEL: TStringField
      FieldName = 'SEL'
      FixedChar = True
      Size = 1
    end
    object sdsExtratoCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      FixedChar = True
      Size = 1
    end
    object sdsExtratoCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object sdsExtratoNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object dspExtrato: TDataSetProvider
    DataSet = sdsExtrato
    Left = 432
    Top = 48
  end
  object cdsExtrato: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end>
    ProviderName = 'dspExtrato'
    Left = 464
    Top = 48
    object cdsExtratoEXTRATODATA: TDateField
      FieldName = 'EXTRATODATA'
      Required = True
      DisplayFormat = 'dd/mm/yy'
      EditMask = '!99/99/00;1;_'
    end
    object cdsExtratoCAIXA: TIntegerField
      FieldName = 'CAIXA'
      Required = True
    end
    object cdsExtratoEXTRATODOC: TStringField
      FieldName = 'EXTRATODOC'
      Size = 100
    end
    object cdsExtratoEXTRATOTIPO: TStringField
      FieldName = 'EXTRATOTIPO'
    end
    object cdsExtratoEXTRATOVALOR: TFloatField
      FieldName = 'EXTRATOVALOR'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsExtratoEXTRATOCOD: TStringField
      FieldName = 'EXTRATOCOD'
      Required = True
    end
    object cdsExtratoSEL: TStringField
      FieldName = 'SEL'
      FixedChar = True
      Size = 1
    end
    object cdsExtratoCONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      FixedChar = True
      Size = 1
    end
    object cdsExtratoCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object cdsExtratoNOME: TStringField
      FieldName = 'NOME'
      Size = 200
    end
  end
  object ImageList1: TImageList
    Left = 458
    Top = 288
    Bitmap = {
      494C010102000400040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848284008482840000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008482
      84003CBA00003CBA000084828400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002C07
      AD00342176000000000000000000000000000000000000000000000000000000
      0000C2C2EC002104860000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003CBA
      00003CBA00003CBA00003CBA0000848284000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002400
      C3003204C800787B8F0000000000000000000000000000000000000000003A1F
      A0001E00A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000848284003CBA
      00003CBA00003CBA00003CBA00003CBA00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007565
      CB002400BE00271286009499A8000000000000000000000000008168DB002A08
      AD00A39ADE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000848284003CBA00003CBA
      000000F055003CBA00003CBA00003CBA00008482840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000002600B70038219900BDC3C40000000000370CAF002A06AD000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000003CBA00003CBA000000F0
      55000000000000F055003CBA00003CBA00008482840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000006349C7002500B2003C3387007257D6003107AE00B1A4E2000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F055003CBA00000000
      0000000000000000000000F055003CBA00003CBA000084828400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000002200DB002901D40099A2B200000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000F055000000
      000000000000000000000000000000F055003CBA00003CBA0000848284000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007E66DF002902D3002C00DF00352E7400909597000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003CBA00003CBA00003CBA00008482
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000002D0CAA002D04B10000000000000000003710AD00310F9E006162
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000F055003CBA00003CBA00003CBA
      0000848284000000000000000000000000000000000000000000000000000000
      00007C67DF002603B5007566C2000000000000000000000000005234B8002F14
      A100464A79000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000F055003CBA00003CBA
      00003CBA00000000000000000000000000000000000000000000000000002C0A
      AF002D04BF00C4C1F3000000000000000000000000000000000000000000B19C
      F7001B0097000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000F055003CBA
      00003CBA00008482840000000000000000000000000000000000846BE3002D00
      D1003D24AA000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000F0
      55003CBA000084828400000000000000000000000000000000003D21B900917F
      DE00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000F055003CBA000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFF00000000F3FFFFFF00000000
      E1FFE7F300000000E0FFE3E700000000C0FFE1C700000000807FF89F00000000
      887FF81F000000009C3FFE3F00000000DE1FFC1F00000000FF0FF98F00000000
      FF07F1C700000000FF87E3E700000000FFC3C7FF00000000FFE3CFFF00000000
      FFF3FFFF00000000FFFFFFFF0000000000000000000000000000000000000000
      000000000000}
  end
  object sdsLanc: TSQLDataSet
    CommandText = 'select * from SP_mov_caixa_ordem(:DTA1, :DTA2, :CAIXA)'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 632
    Top = 104
  end
  object dspLanc: TDataSetProvider
    DataSet = sdsLanc
    Left = 664
    Top = 104
  end
  object cdsLanc: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DTA1'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DTA2'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CAIXA'
        ParamType = ptInput
      end>
    ProviderName = 'dspLanc'
    Left = 696
    Top = 104
    object cdsLancDTAPAGTO: TDateField
      FieldName = 'DTAPAGTO'
      DisplayFormat = 'dd/mm/yy'
      EditMask = '!99/99/00;1;_'
    end
    object cdsLancORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object cdsLancDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 350
    end
    object cdsLancVALORC: TFloatField
      FieldName = 'VALORC'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsLancVALORD: TFloatField
      FieldName = 'VALORD'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsLancVALOR: TFloatField
      FieldName = 'VALOR'
      DisplayFormat = ',##0.00'
      EditFormat = ',##0.00'
    end
    object cdsLancCONTACONTABIL: TStringField
      FieldName = 'CONTACONTABIL'
      Size = 200
    end
    object cdsLancCAIXA: TStringField
      FieldName = 'CAIXA'
      Size = 60
    end
    object cdsLancCODCONTA: TStringField
      FieldName = 'CODCONTA'
    end
    object cdsLancFORMA: TStringField
      FieldName = 'FORMA'
    end
    object cdsLancN_DOC: TStringField
      FieldName = 'N_DOC'
    end
    object cdsLancORDENA: TIntegerField
      FieldName = 'ORDENA'
    end
    object cdsLancCOMPENSADO: TStringField
      FieldName = 'COMPENSADO'
      Size = 10
    end
  end
  object dsLanc: TDataSource
    DataSet = cdsLanc
    Left = 728
    Top = 104
  end
  object sqlFornecedor: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT CODFORNECEDOR '
      '   FROM FORNECEDOR '
      'WHERE CONTA_FORNECEDOR = :CONTA')
    SQLConnection = DM.sqlsisAdimin
    Left = 392
    Top = 160
  end
  object sdsTipoConta: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftUnknown
        Name = 'PCOD'
        ParamType = ptUnknown
      end>
    SQL.Strings = (
      'SELECT * FROM PLANO WHERE CODIGO = :PCOD')
    SQLConnection = DM.sqlsisAdimin
    Left = 336
    Top = 160
  end
  object OpenDialog1: TOpenDialog
    Left = 40
    Top = 64
  end
  object sdsE: TSQLDataSet
    CommandText = 
      'SELECT * FROM BANCOEXTRATO '#13#10'WHERE CAIXA = :pCaixa '#13#10'      AND E' +
      'XTRATODATA BETWEEN :dtaIni'#13#10'      AND :dtaFim '
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'pCaixa'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtaIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtaFim'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 400
    Top = 80
    object sdsEEXTRATOCOD: TStringField
      FieldName = 'EXTRATOCOD'
      Required = True
    end
    object sdsEEXTRATODATA: TDateField
      FieldName = 'EXTRATODATA'
      Required = True
    end
    object sdsECAIXA: TIntegerField
      FieldName = 'CAIXA'
      Required = True
    end
    object sdsEEXTRATODOC: TStringField
      FieldName = 'EXTRATODOC'
      Size = 100
    end
    object sdsEEXTRATOTIPO: TStringField
      FieldName = 'EXTRATOTIPO'
    end
    object sdsEEXTRATOVALOR: TFloatField
      FieldName = 'EXTRATOVALOR'
    end
    object sdsESEL: TStringField
      FieldName = 'SEL'
      FixedChar = True
      Size = 1
    end
    object sdsECONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      FixedChar = True
      Size = 1
    end
  end
  object dspE: TDataSetProvider
    DataSet = sdsE
    Left = 432
    Top = 80
  end
  object cdsE: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'pCaixa'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtaIni'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'dtaFim'
        ParamType = ptInput
      end>
    ProviderName = 'dspE'
    Left = 464
    Top = 80
    object cdsEEXTRATOCOD: TStringField
      FieldName = 'EXTRATOCOD'
      Required = True
    end
    object cdsEEXTRATODATA: TDateField
      FieldName = 'EXTRATODATA'
      Required = True
    end
    object cdsECAIXA: TIntegerField
      FieldName = 'CAIXA'
      Required = True
    end
    object cdsEEXTRATODOC: TStringField
      FieldName = 'EXTRATODOC'
      Size = 100
    end
    object cdsEEXTRATOTIPO: TStringField
      FieldName = 'EXTRATOTIPO'
    end
    object cdsEEXTRATOVALOR: TFloatField
      FieldName = 'EXTRATOVALOR'
    end
    object cdsESEL: TStringField
      FieldName = 'SEL'
      FixedChar = True
      Size = 1
    end
    object cdsECONCILIADO: TStringField
      FieldName = 'CONCILIADO'
      FixedChar = True
      Size = 1
    end
  end
end
