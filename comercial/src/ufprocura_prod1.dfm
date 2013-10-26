inherited fProcura_prod1: TfProcura_prod1
  Width = 725
  Height = 514
  Caption = ''
  Position = poDesktopCenter
  WindowState = wsNormal
  OnCreate = nil
  OnShow = nil
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel [1]
    Width = 717
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -37
    Font.Name = 'Cooper Blk BT'
    ParentFont = False
    object JvLabel1: TJvLabel [0]
      Left = 1
      Top = 1
      Width = 715
      Height = 55
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'Lista Produtos'
      ShadowColor = clNavy
      ShadowSize = 4
      Transparent = True
      AutoOpenURL = False
      HotTrackFont.Charset = ANSI_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -32
      HotTrackFont.Name = 'Cooper Blk BT'
      HotTrackFont.Style = []
    end
    inherited RadioButton1: TRadioButton
      Top = -133
      PopupMenu = PopupMenu1
    end
    inherited RadioButton2: TRadioButton
      Top = -115
      PopupMenu = PopupMenu1
    end
    inherited btnIncluir: TBitBtn
      Top = -139
      Visible = False
    end
    inherited BitBtn1: TBitBtn
      Left = 563
      Top = -71
    end
    inherited BitBtn2: TBitBtn
      Left = 640
      Top = -71
    end
    inherited SpeedButton3: TBitBtn
      Top = -139
      Visible = False
    end
    inherited SpeedButton2: TBitBtn
      Top = -139
      Visible = False
    end
    inherited SpeedButton1: TBitBtn
      Top = -139
      Visible = False
    end
    inherited SpeedButton4: TBitBtn
      Top = -139
      Visible = False
    end
    inherited Edit5: TEdit
      Top = -130
      Visible = False
    end
    inherited BitBtn6: TBitBtn
      Top = -71
    end
  end
  inherited DBGrid3: TDBGrid [2]
    Left = -8
    Top = 349
    Width = 719
    Align = alNone
    Visible = False
  end
  inherited Panel1: TPanel [3]
    Left = 480
    Top = -10
    Width = 90
    Height = 388
    Align = alNone
  end
  inherited Panel2: TPanel [4]
    Left = 0
    Top = 57
    Width = 717
    Height = 67
    Align = alTop
    Color = clMoneyGreen
    inherited Label12: TLabel
      Left = 586
      Top = -162
      Visible = False
    end
    inherited Label13: TLabel
      Top = -67
      Visible = False
    end
    inherited Label14: TLabel
      Left = 573
      Top = -66
      Visible = False
    end
    inherited EvDBFind1: TEvDBFind
      Width = 703
    end
    inherited BitBtn4: TBitBtn
      Top = -62
      Visible = False
    end
    inherited BitBtn5: TBitBtn
      Top = -62
      Visible = False
    end
    inherited Edit4: TJvCalcEdit
      Top = -52
      TabStop = False
      Visible = False
    end
    inherited Edit2: TJvCalcEdit
      Top = -52
      TabStop = False
      Visible = False
    end
    inherited Edit3: TJvCalcEdit
      Left = 581
      Top = -147
      Width = 89
      TabStop = False
      Visible = False
    end
  end
  inherited Panel3: TPanel [5]
  end
  inherited DBGrid1: TDBGrid [6]
    Top = 124
    Width = 717
    Height = 363
    Align = alClient
  end
  inherited DBGrid2: TDBGrid [7]
    Left = 510
    Top = 205
    Height = 228
    Visible = False
  end
  inherited sds_proc: TSQLDataSet
    CommandText = 
      'select CODPRODUTO'#13#10', CODPRO'#13#10', PRODUTO'#13#10', UNIDADEMEDIDA'#13#10', QTDE_' +
      'PCT'#13#10', ICMS'#13#10', CODALMOXARIFADO'#13#10', PRECO_COMPRAULTIMO as  VALORUN' +
      'ITARIOATUAL'#13#10', PRECO_VENDA AS VALOR_PRAZO'#13#10', TIPO  '#13#10', ESTOQUEAT' +
      'UAL '#13#10', LOCALIZACAO'#13#10', LOTES  , PRECO_COMPRAMEDIO AS PRECOMEDIO,' +
      ' PESO_QTDE, COD_COMISSAO, RATEIO, conta_despesa , IPI'#13#10'from LIST' +
      'APRODUTO(0, '#39'TODOSPRODUTOS'#39', '#39'TODOSGRUPOS'#39', '#39'TODOSSUBGRUPOS'#39','#39'TO' +
      'DASMARCAS'#39')'#13#10
  end
end
