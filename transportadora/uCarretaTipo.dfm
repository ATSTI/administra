inherited fCarretaTipo: TfCarretaTipo
  Left = 418
  Width = 521
  Caption = 'Cadastro de Tipos de Carreta'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 75
    Top = 65
    Width = 58
    Height = 13
    Caption = 'Tipo Carreta'
  end
  inherited MMJPanel1: TMMJPanel
    Width = 513
  end
  inherited MMJPanel2: TMMJPanel
    Width = 513
    inherited btnGravar: TBitBtn
      Left = 143
    end
    inherited btnIncluir: TBitBtn
      Left = 143
    end
    inherited btnCancelar: TBitBtn
      Left = 258
    end
    inherited btnExcluir: TBitBtn
      Left = 258
    end
    inherited btnProcurar: TBitBtn
      Left = 28
    end
    inherited btnSair: TBitBtn
      Left = 373
    end
  end
  object DBGrid1: TDBGrid [3]
    Left = 32
    Top = 120
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
    DataSet = dmTransp.cdsCarretaTipo
    Left = 240
    Top = 16
  end
  inherited XPMenu1: TXPMenu
    Left = 272
    Top = 16
  end
  inherited PopupMenu1: TPopupMenu
    Left = 304
    Top = 16
  end
end
