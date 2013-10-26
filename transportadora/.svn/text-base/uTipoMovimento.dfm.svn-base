inherited fTipoMovimento: TfTipoMovimento
  Width = 485
  Caption = 'Tipo Movimento (Carga , Descarga, Confer'#234'ncia)'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 75
    Top = 65
    Width = 76
    Height = 13
    Caption = 'Tipo Movimento'
  end
  inherited MMJPanel1: TMMJPanel
    Width = 477
  end
  inherited MMJPanel2: TMMJPanel
    Width = 477
    inherited btnGravar: TBitBtn
      Left = 127
    end
    inherited btnIncluir: TBitBtn
      Left = 127
    end
    inherited btnCancelar: TBitBtn
      Left = 242
    end
    inherited btnExcluir: TBitBtn
      Left = 242
    end
    inherited btnProcurar: TBitBtn
      Left = 12
    end
    inherited btnSair: TBitBtn
      Left = 357
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 8
    Top = 128
    Width = 449
    Height = 329
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEdit2: TDBEdit [4]
    Left = 72
    Top = 80
    Width = 337
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 3
    OnExit = DBEdit2Exit
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = dmTransp.cdsTipoMovimento
    Left = 336
  end
  inherited XPMenu1: TXPMenu
    Left = 368
  end
  inherited PopupMenu1: TPopupMenu
    Left = 408
  end
end
