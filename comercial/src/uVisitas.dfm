inherited fVisitas: TfVisitas
  Width = 527
  Height = 410
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 221
    Top = 72
    Width = 79
    Height = 16
    Caption = 'a cada (dias)'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 8
    Top = 72
    Width = 64
    Height = 16
    Caption = 'Tipo Vis'#237'ta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 315
    Top = 72
    Width = 74
    Height = 16
    Caption = 'Ultima Vis'#237'ta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel [3]
    Left = 411
    Top = 72
    Width = 85
    Height = 16
    Caption = 'Proxima Vis'#237'ta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 319
    Width = 511
    Height = 53
    inherited btnGravar: TBitBtn
      Left = 96
    end
    inherited btnIncluir: TBitBtn
      Left = 96
    end
    inherited btnCancelar: TBitBtn
      Left = 209
    end
    inherited btnExcluir: TBitBtn
      Left = 209
    end
    inherited btnProcurar: TBitBtn
      Left = 10
      Top = -57
      Visible = False
    end
    inherited btnSair: TBitBtn
      Left = 322
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 511
    inherited Label1: TLabel
      Left = 7
      Top = 5
      Width = 299
      Height = 34
      Caption = 'Cadastro de Visitas'
      Font.Height = -29
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 11
      Top = 6
      Width = 299
      Height = 34
      Caption = 'Cadastro de Visitas'
      Font.Height = -29
      Font.Name = 'Cooper Black'
    end
  end
  object DBComboBox1: TDBComboBox [6]
    Left = 8
    Top = 88
    Width = 213
    Height = 24
    CharCase = ecUpperCase
    DataField = 'VISITA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    ParentFont = False
    TabOrder = 2
  end
  object DBComboBox2: TDBComboBox [7]
    Left = 221
    Top = 88
    Width = 92
    Height = 24
    DataField = 'DIAS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 16
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15'
      '16'
      '17'
      '18'
      '19'
      '20'
      '21'
      '22'
      '23'
      '24'
      '25'
      '26'
      '27'
      '28'
      '29'
      '30'
      '45'
      '60'
      '90')
    ParentFont = False
    TabOrder = 3
  end
  object DBEdit1: TDBEdit [8]
    Left = 315
    Top = 88
    Width = 95
    Height = 24
    DataField = 'DATAULTIMA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object DBEdit2: TDBEdit [9]
    Left = 411
    Top = 88
    Width = 95
    Height = 24
    DataField = 'DATAPROXIMA'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DBGrid1: TDBGrid [10]
    Left = 8
    Top = 114
    Width = 497
    Height = 190
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
        FieldName = 'VISITA'
        Title.Caption = 'Tipo da Vis'#237'ta'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAULTIMA'
        Title.Caption = 'Ultima Vis'#237'ta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAPROXIMA'
        Title.Caption = 'Proxima Vis'#237'ta'
        Visible = True
      end>
  end
  inherited XPMenu1: TXPMenu
    Left = 320
    Top = 152
  end
  inherited PopupMenu1: TPopupMenu
    Left = 368
    Top = 152
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cdsVisita
    Left = 272
    Top = 152
  end
end
