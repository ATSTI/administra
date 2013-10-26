inherited fPeriodos: TfPeriodos
  Caption = 'Cadastro de Per'#237'odos'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel [0]
    Left = 161
    Top = 56
    Width = 282
    Height = 13
    Caption = '**** Obs. : '#201' poss'#237'vel cadastrar 12 per'#237'odos (C'#243'digo 1 '#224' 12)'
    Visible = False
  end
  object Label3: TLabel [1]
    Left = 330
    Top = 129
    Width = 112
    Height = 16
    Caption = 'Lista dos Periodos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel [2]
    Left = 161
    Top = 78
    Width = 50
    Height = 16
    Caption = 'C'#243'digo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel [3]
    Left = 251
    Top = 79
    Width = 48
    Height = 16
    Caption = 'Periodo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 517
    Top = 79
    Width = 61
    Height = 16
    Caption = 'Nota Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    object Label7: TLabel
      Left = 245
      Top = 14
      Width = 277
      Height = 27
      Caption = 'Cadastro de Per'#237'odos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Cooper Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label6: TLabel
      Left = 249
      Top = 16
      Width = 277
      Height = 27
      Caption = 'Cadastro de Per'#237'odos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Cooper Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  inherited MMJPanel2: TMMJPanel
    inherited btnGravar: TBitBtn
      Left = 210
    end
    inherited btnIncluir: TBitBtn
      Left = 210
    end
    inherited btnCancelar: TBitBtn
      Left = 333
    end
    inherited btnExcluir: TBitBtn
      Left = 333
    end
    inherited btnProcurar: TBitBtn
      Left = 20
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 456
    end
  end
  object DBEdit1: TDBEdit [7]
    Left = 161
    Top = 95
    Width = 89
    Height = 24
    TabStop = False
    Color = cl3DLight
    DataField = 'IDPERIODO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 2
  end
  object DBEditPeriodo: TDBEdit [8]
    Left = 249
    Top = 95
    Width = 265
    Height = 24
    DataField = 'PERIODO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object dbNotaFinal: TDBComboBox [9]
    Left = 516
    Top = 95
    Width = 94
    Height = 24
    DataField = 'NOTAFINAL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'SIM'
      'N'#195'O')
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [10]
    Left = 154
    Top = 153
    Width = 465
    Height = 278
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clGreen
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDPERIODO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PERIODO'
        Title.Alignment = taCenter
        Title.Caption = 'Per'#237'odo'
        Width = 267
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'NOTAFINAL'
        Title.Alignment = taCenter
        Title.Caption = 'Nota final ?'
        Width = 80
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [11]
    Left = 262
    Top = 435
    Width = 248
    Height = 28
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    PopupMenu = PopupMenu1
    TabOrder = 6
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cdsPeriodo
  end
  object scds_periodo_proc: TSQLDataSet
    CommandText = 
      'select NOTAFINAL, IDPERIODO from TABPERIODO where NOTAFINAL='#39'SIM' +
      #39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 672
    Top = 64
  end
end
