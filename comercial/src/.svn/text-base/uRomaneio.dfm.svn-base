object fRomaneio: TfRomaneio
  Left = 243
  Top = 118
  Width = 655
  Height = 486
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 2
    Top = 83
    Width = 46
    Height = 13
    Caption = 'Pedido n'#186
  end
  object Label4: TLabel
    Left = 20
    Top = 52
    Width = 27
    Height = 13
    Caption = 'Tipo :'
  end
  object dbeProduto: TDBEdit
    Left = 50
    Top = 81
    Width = 84
    Height = 24
    CharCase = ecUpperCase
    DataField = 'PEDIDO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    OnExit = dbeProdutoExit
    OnKeyPress = FormKeyPress
  end
  object DBComboBox1: TDBComboBox
    Left = 50
    Top = 50
    Width = 82
    Height = 24
    DataField = 'TIPO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      'Entrega'
      'Cobran'#231'a')
    ParentFont = False
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 109
    Width = 640
    Height = 300
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPO'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PEDIDO'
        Title.Caption = 'n'#176' Pedido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMECLIENTE'
        Title.Caption = 'Cliente'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'R$ Valor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE1'
        Title.Caption = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE2'
        Title.Caption = 'Telefone'
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 154
    Top = 81
    Width = 75
    Height = 25
    Caption = 'INCLUIR'
    TabOrder = 3
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 229
    Top = 81
    Width = 75
    Height = 25
    Caption = 'EXCLUIR'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 304
    Top = 81
    Width = 224
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 5
  end
  object MMJPanel2: TMMJPanel
    Left = 0
    Top = 0
    Width = 647
    Height = 43
    Align = alTop
    TabOrder = 6
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object DBText1: TDBText
      Left = 240
      Top = 6
      Width = 128
      Height = 29
      DataField = 'CODROMANEIO'
      DataSource = DtSrc1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object DBText2: TDBText
      Left = 242
      Top = 8
      Width = 128
      Height = 29
      DataField = 'CODROMANEIO'
      DataSource = DtSrc1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Cooper Black'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 194
      Height = 32
      Caption = 'ROMANEIO N '#186
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Cooper Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 11
      Top = 8
      Width = 194
      Height = 32
      Caption = 'ROMANEIO N '#186
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Cooper Black'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
  end
  object MMJPanel1: TMMJPanel
    Left = 0
    Top = 409
    Width = 647
    Height = 43
    Align = alBottom
    TabOrder = 7
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clTeal
    Background.EndColor = clSilver
    Background.FillType = GradUpDown
    object btnGravar: TBitBtn
      Left = 204
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 289
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnExcluir: TBitBtn
      Left = 289
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 0
      OnClick = btnExcluirClick
    end
    object btnIncluir: TBitBtn
      Left = 204
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Incluir'
      TabOrder = 1
      OnClick = btnIncluirClick
    end
    object btnProcurar: TBitBtn
      Left = 115
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Procurar'
      TabOrder = 4
      OnClick = btnProcurarClick
    end
    object BitBtn3: TBitBtn
      Left = 375
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = BitBtn3Click
    end
    object btnSair: TBitBtn
      Left = 458
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 6
      OnClick = btnSairClick
    end
  end
  object DtSrc: TDataSource
    DataSet = DM.cds_romaneio
    Left = 360
    Top = 256
  end
  object DtSrc1: TDataSource
    DataSet = DM.ClientDataSet1
    OnStateChange = DtSrc1StateChange
    Left = 392
    Top = 256
  end
  object proc_romaneio: TSQLClientDataSet
    CommandText = 'select * from ROMANEIO_PAI '#13#10'where CODROMANEIO like:pcod'
    Aggregates = <>
    Options = [poAllowCommandText]
    ObjectView = True
    Params = <
      item
        DataType = ftInteger
        Name = 'pcod'
        ParamType = ptInput
      end>
    DBConnection = DM.sqlsisAdimin
    Left = 330
    Top = 256
    object proc_romaneioCODROMANEIO: TIntegerField
      FieldName = 'CODROMANEIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object proc_romaneioDATA: TDateField
      FieldName = 'DATA'
    end
  end
  object VCLReport1: TVCLReport
    AsyncExecution = False
    Title = 'Untitled'
    Left = 424
    Top = 256
  end
end
