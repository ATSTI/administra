inherited fPlanos: TfPlanos
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 81
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
    Left = 449
    Top = 64
    Width = 52
    Height = 16
    Caption = 'Valor R$'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 555
    Top = 64
    Width = 54
    Height = 16
    Caption = 'Parcelas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [3]
    Left = 10
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
  inherited MMJPanel1: TMMJPanel
    TabOrder = 4
    inherited btnGravar: TBitBtn
      Left = 151
    end
    inherited btnIncluir: TBitBtn
      Left = 151
    end
    inherited btnCancelar: TBitBtn
      Left = 264
    end
    inherited btnExcluir: TBitBtn
      Left = 264
    end
    inherited btnProcurar: TBitBtn
      Left = 26
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 377
    end
  end
  inherited MMJPanel2: TMMJPanel
    TabOrder = 5
    inherited Label1: TLabel
      Left = 160
      Width = 306
      Caption = 'Cadastro de Planos'
    end
    inherited Label2: TLabel
      Left = 162
      Width = 306
      Caption = 'Cadastro de Planos'
    end
  end
  object DBEdit1: TDBEdit [6]
    Left = 80
    Top = 80
    Width = 366
    Height = 24
    DataField = 'DESCRICAO'
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
  object DBEdit2: TDBEdit [7]
    Left = 447
    Top = 80
    Width = 106
    Height = 24
    DataField = 'VALOR_PLANO'
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
  object DBGrid1: TDBGrid [8]
    Left = 9
    Top = 104
    Width = 604
    Height = 226
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
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODFAIXA'
        Title.Caption = 'C'#243'digo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o do Plano'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PLANO'
        Title.Caption = 'R$ Plano'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PARCELA'
        Title.Caption = 'Tot. Parc.'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORPARCELA'
        Title.Caption = 'R$ Parcela'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator [9]
    Left = 203
    Top = 333
    Width = 224
    Height = 25
    DataSource = DtSrc
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 7
  end
  object DBEdit3: TDBEdit [10]
    Left = 553
    Top = 80
    Width = 60
    Height = 24
    DataField = 'PARCELA'
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
  object DBEdit4: TDBEdit [11]
    Left = 9
    Top = 80
    Width = 70
    Height = 24
    DataField = 'CODFAIXA'
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
  inherited DtSrc: TDataSource
    DataSet = DM.cdsFaixa
  end
end
