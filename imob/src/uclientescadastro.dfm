inherited fClientesCadastro: TfClientesCadastro
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    object DBText1: TDBText
      Left = 8
      Top = 8
      Width = 515
      Height = 41
      DataField = 'NOMECLIENTE'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
    end
    object DBText2: TDBText
      Left = 11
      Top = 9
      Width = 518
      Height = 34
      DataField = 'NOMECLIENTE'
      DataSource = DtSrc
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -27
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      Transparent = True
    end
    object DBRadioGroup3: TDBRadioGroup
      Left = 610
      Top = 4
      Width = 157
      Height = 43
      Caption = 'SITUA'#199#195'O'
      Color = clTeal
      Columns = 2
      Ctl3D = True
      DataField = 'STATUS'
      DataSource = DtSrc
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Items.Strings = (
        'ATIVO'
        'INATIVO')
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      Values.Strings = (
        '1'
        '2')
    end
  end
  object pgclientes: TPageControl [2]
    Left = 0
    Top = 51
    Width = 772
    Height = 423
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'DADOS PESSOAIS'
      object Label3: TLabel
        Left = 1
        Top = 2
        Width = 50
        Height = 16
        Caption = 'C'#243'digo :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 2
        Top = 45
        Width = 43
        Height = 16
        Caption = 'Nome :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 382
        Top = 45
        Width = 46
        Height = 16
        Caption = 'Raz'#227'o :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 1
        Top = 89
        Width = 59
        Height = 16
        Caption = 'Endere'#231'o'
        FocusControl = DBEdit10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 439
        Top = 89
        Width = 36
        Height = 16
        Caption = 'Bairro'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 1
        Top = 133
        Width = 84
        Height = 16
        Caption = 'Complemento'
        FocusControl = DBEdit12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 255
        Top = 135
        Width = 44
        Height = 16
        Caption = 'Cidade'
        FocusControl = DBEdit15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 604
        Top = 135
        Width = 27
        Height = 16
        Caption = 'CEP'
        FocusControl = DBEdit16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 719
        Top = 135
        Width = 18
        Height = 16
        Caption = 'UF'
        FocusControl = DBEdit16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 1
        Top = 18
        Width = 61
        Height = 24
        DataField = 'CODCLIENTE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = FormKeyPress
      end
      object DBEdit2: TDBEdit
        Left = 2
        Top = 61
        Width = 380
        Height = 24
        DataField = 'NOMECLIENTE'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        OnKeyPress = FormKeyPress
      end
      object DBEdit3: TDBEdit
        Left = 382
        Top = 61
        Width = 380
        Height = 24
        DataField = 'RAZAOSOCIAL'
        DataSource = DtSrc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 2
        OnKeyPress = FormKeyPress
      end
      object DBEdit10: TDBEdit
        Left = 0
        Top = 106
        Width = 409
        Height = 24
        DataField = 'LOGRADOURO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = FormKeyPress
      end
      object DBEdit11: TDBEdit
        Left = 439
        Top = 106
        Width = 298
        Height = 24
        DataField = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = FormKeyPress
      end
      object DBEdit12: TDBEdit
        Left = 1
        Top = 150
        Width = 254
        Height = 24
        DataField = 'COMPLEMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = FormKeyPress
      end
      object DBEdit15: TDBEdit
        Left = 255
        Top = 150
        Width = 316
        Height = 24
        DataField = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnKeyPress = FormKeyPress
      end
      object DBEdit16: TDBEdit
        Left = 604
        Top = 150
        Width = 114
        Height = 24
        DataField = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnKeyPress = FormKeyPress
      end
      object DBComboBox1: TDBComboBox
        Left = 718
        Top = 150
        Width = 45
        Height = 24
        Hint = 'Para Cadastrar Novos Estados  Clique no Bot'#227'o ao Lado'
        CharCase = ecUpperCase
        DataField = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnKeyPress = FormKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'REPRESENTANTES'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'FIADORES'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'BENS'
      ImageIndex = 3
    end
    object TabSheet5: TTabSheet
      Caption = 'REFER'#202'NCIAS'
      ImageIndex = 4
    end
    object TabSheet6: TTabSheet
      Caption = 'ADMINISTRATIVO'
      ImageIndex = 5
    end
  end
  inherited DtSrc: TDataSource
    DataSet = dmimob.cClientes
    Left = 496
  end
  inherited XPMenu1: TXPMenu
    Left = 528
  end
  inherited PopupMenu1: TPopupMenu
    Left = 560
  end
end
