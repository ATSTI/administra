inherited fTipoOperacao: TfTipoOperacao
  Left = 270
  Top = 139
  Width = 669
  Caption = 'Tipo de Opera'#231#227'o'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 33
    Top = 63
    Width = 35
    Height = 16
    Caption = 'Tipos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel [1]
    Left = 271
    Top = 63
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
  object Label3: TLabel [2]
    Left = 340
    Top = 63
    Width = 62
    Height = 16
    Caption = 'Descri'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Width = 661
    TabOrder = 3
  end
  inherited MMJPanel2: TMMJPanel
    Width = 661
    TabOrder = 4
    inherited btnGravar: TBitBtn
      Left = 158
    end
    inherited btnIncluir: TBitBtn
      Left = 158
    end
    inherited btnCancelar: TBitBtn
      Left = 273
    end
    inherited btnExcluir: TBitBtn
      Left = 273
    end
    inherited btnProcurar: TBitBtn
      Left = 4
    end
    inherited btnSair: TBitBtn
      Left = 396
    end
  end
  object DBGrid1: TDBGrid [5]
    Left = 32
    Top = 106
    Width = 602
    Height = 329
    TabStop = False
    DataSource = DtSrc
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'USO'
        Title.Caption = 'TIPO'
        Width = 192
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODDADOS'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end>
  end
  object DBEdit2: TDBEdit [6]
    Left = 271
    Top = 82
    Width = 64
    Height = 24
    DataField = 'CODDADOS'
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
  object ComboBox1: TComboBox [7]
    Left = 32
    Top = 81
    Width = 196
    Height = 24
    BevelKind = bkFlat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 0
    OnExit = ComboBox1Exit
    OnKeyPress = FormKeyPress
    Items.Strings = (
      'LOCAL DOS SERVI'#199'OS'
      'VE'#205'CULO'
      'TIPO'
      'OPERA'#199#195'O'
      'TIPO DE SERVI'#199'O'
      'MODO'
      'SETOR')
  end
  object DBEdit1: TDBEdit [8]
    Left = 336
    Top = 82
    Width = 297
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
    OnExit = DBEdit2Exit
    OnKeyPress = FormKeyPress
  end
  object BitBtn1: TBitBtn [9]
    Left = 228
    Top = 80
    Width = 42
    Height = 25
    Caption = 'Filtrar'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  inherited DtSrc: TDataSource
    DataSet = dmTransp.cdsTipoOper
    Left = 288
  end
  inherited XPMenu1: TXPMenu
    AutoDetect = True
    Active = True
    Left = 328
  end
  inherited PopupMenu1: TPopupMenu
    OwnerDraw = True
    Left = 376
  end
end
