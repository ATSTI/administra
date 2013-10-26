inherited fTipoCarga: TfTipoCarga
  Width = 516
  Caption = 'Tipo Carga (Batida, Carrinho, Paletizada)'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 75
    Top = 65
    Width = 55
    Height = 13
    Caption = 'Tipo  Carga'
  end
  inherited MMJPanel1: TMMJPanel
    Width = 508
  end
  inherited MMJPanel2: TMMJPanel
    Width = 508
    inherited btnCancelar: TBitBtn [0]
      Left = 258
    end
    inherited btnExcluir: TBitBtn [1]
      Left = 258
    end
    inherited btnGravar: TBitBtn [2]
      Left = 135
    end
    inherited btnIncluir: TBitBtn [3]
      Left = 135
    end
    inherited btnProcurar: TBitBtn
      Left = 12
    end
    inherited btnSair: TBitBtn
      Left = 381
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 8
    Top = 128
    Width = 481
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
    DataSet = dmTransp.cdsTipoCarga
    Left = 336
  end
  inherited XPMenu1: TXPMenu
    Left = 368
  end
  inherited PopupMenu1: TPopupMenu
    Left = 400
  end
end
