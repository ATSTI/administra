inherited fTipoSerie: TfTipoSerie
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 16
    Top = 74
    Width = 60
    Height = 16
    Caption = 'Cod.S'#233'rie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel [1]
    Left = 89
    Top = 74
    Width = 91
    Height = 16
    Caption = 'Tipo de Ensino'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel [2]
    Left = 213
    Top = 74
    Width = 35
    Height = 16
    Caption = 'Curso'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [3]
    Left = 368
    Top = 74
    Width = 47
    Height = 16
    Caption = 'Mensal.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [4]
    Left = 444
    Top = 74
    Width = 58
    Height = 16
    Caption = 'Anuidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [5]
    Left = 512
    Top = 74
    Width = 35
    Height = 16
    Caption = 'S'#233'rie '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    object Label7: TLabel
      Left = 101
      Top = 14
      Width = 566
      Height = 27
      Caption = 'CADASTRO DE  S'#201'RIES E TIPO DE ENSINO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -24
      Font.Name = 'Cooper Black'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
    end
    object Label6: TLabel
      Left = 105
      Top = 16
      Width = 566
      Height = 27
      Caption = 'CADASTRO DE  S'#201'RIES E TIPO DE ENSINO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Cooper Black'
      Font.Style = [fsBold]
      ParentFont = False
      PopupMenu = PopupMenu1
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
      Left = 12
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 456
    end
  end
  object DBGrid1: TDBGrid [8]
    Left = 14
    Top = 118
    Width = 744
    Height = 291
    TabStop = False
    DataSource = DtSrc
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPOSERIE'
        Title.Caption = 'Cod.S'#233'rie'
        Width = 58
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOENSINO'
        Title.Caption = 'Ensino'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CURSO'
        Title.Caption = 'Curso'
        Width = 170
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MENSALIDADE'
        Title.Caption = 'Mensalidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ANUIDADE'
        Title.Caption = 'Anuidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SERIE'
        Title.Caption = 'S'#233'rie '
        Width = 239
        Visible = True
      end>
  end
  object DBEditTipoSerie: TDBEdit [9]
    Left = 14
    Top = 92
    Width = 73
    Height = 24
    TabStop = False
    DataField = 'TIPOSERIE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ReadOnly = True
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit1: TDBEdit [10]
    Left = 88
    Top = 92
    Width = 121
    Height = 24
    DataField = 'TIPOENSINO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [11]
    Left = 210
    Top = 92
    Width = 157
    Height = 24
    DataField = 'CURSO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [12]
    Left = 368
    Top = 92
    Width = 74
    Height = 24
    DataField = 'MENSALIDADE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [13]
    Left = 443
    Top = 92
    Width = 67
    Height = 24
    DataField = 'ANUIDADE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 7
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [14]
    Left = 511
    Top = 92
    Width = 248
    Height = 24
    DataField = 'SERIE'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    TabOrder = 8
    OnKeyPress = FormKeyPress
  end
  object DBNavigator1: TDBNavigator [15]
    Left = 238
    Top = 416
    Width = 296
    Height = 41
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    PopupMenu = PopupMenu1
    TabOrder = 9
  end
  inherited DtSrc: TDataSource
    DataSet = DM.TableTipoSerie
    Left = 624
    Top = 56
  end
  inherited XPMenu1: TXPMenu
    Left = 656
    Top = 56
  end
  inherited PopupMenu1: TPopupMenu
    Left = 688
    Top = 56
  end
end
