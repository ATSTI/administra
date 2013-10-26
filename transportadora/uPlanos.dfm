inherited fPlanos: TfPlanos
  Left = 225
  Top = 68
  Width = 675
  Height = 567
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 181
    Top = 64
    Width = 65
    Height = 16
    Caption = 'Descri'#231#227'o '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 391
    Top = 64
    Width = 62
    Height = 16
    Caption = 'Pre'#231'o I R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 103
    Top = 64
    Width = 44
    Height = 16
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [3]
    Left = 23
    Top = 64
    Width = 44
    Height = 16
    Caption = 'Tabela'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel [4]
    Left = 477
    Top = 64
    Width = 65
    Height = 16
    Caption = 'Pre'#231'o II R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel [5]
    Left = 563
    Top = 64
    Width = 74
    Height = 16
    Caption = 'Ap'#243's as 18h'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 479
    Width = 667
    TabOrder = 6
    inherited btnGravar: TBitBtn
      Left = 169
    end
    inherited btnIncluir: TBitBtn
      Left = 169
    end
    inherited btnCancelar: TBitBtn
      Left = 282
    end
    inherited btnExcluir: TBitBtn
      Left = 282
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 395
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 667
    TabOrder = 7
    inherited Label1: TLabel
      Left = 160
      Width = 306
      Caption = 'Cadastro de Planos'
    end
    inherited Label2: TLabel
      Left = 164
      Width = 306
      Caption = 'Cadastro de Planos'
    end
  end
  object DBEdit2: TDBEdit [8]
    Left = 390
    Top = 80
    Width = 85
    Height = 24
    DataField = 'VALOR_PLANO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBGrid1: TDBGrid [9]
    Left = 21
    Top = 105
    Width = 626
    Height = 332
    TabStop = False
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGOS'
        Title.Caption = 'Tabela'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODFAIXA'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o do Plano'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PLANO'
        Title.Caption = 'Pre'#231'o 1 R$'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Title.Caption = 'Pre'#231'o Tab. 2 R$'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORPARCELA'
        Title.Caption = 'Ap'#243's as 18h'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [10]
    Left = 221
    Top = 445
    Width = 224
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 9
  end
  object DBEdit3: TDBEdit [11]
    Left = 102
    Top = 80
    Width = 79
    Height = 24
    DataField = 'CODFAIXA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object DBEdit1: TDBEdit [12]
    Left = 182
    Top = 80
    Width = 207
    Height = 24
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [13]
    Left = 22
    Top = 80
    Width = 79
    Height = 24
    DataField = 'CODIGOS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [14]
    Left = 476
    Top = 80
    Width = 85
    Height = 24
    DataField = 'DESCONTO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [15]
    Left = 562
    Top = 80
    Width = 85
    Height = 24
    DataField = 'VALORPARCELA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cdsFaixa
    Left = 518
  end
end
