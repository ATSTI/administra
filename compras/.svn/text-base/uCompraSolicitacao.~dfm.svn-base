inherited fSolicitacaoCompra: TfSolicitacaoCompra
  Height = 278
  Caption = 'Solicitacao Compra'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 22
    Top = 63
    Width = 79
    Height = 13
    Caption = 'Produto/Material'
  end
  object Label2: TLabel [1]
    Left = 158
    Top = 63
    Width = 48
    Height = 13
    Caption = 'Descricao'
  end
  object Label3: TLabel [2]
    Left = 633
    Top = 64
    Width = 55
    Height = 13
    Caption = 'Quantidade'
  end
  object Label4: TLabel [3]
    Left = 24
    Top = 120
    Width = 83
    Height = 13
    Caption = 'Resp. Aprovacao'
  end
  inherited MMJPanel2: TMMJPanel
    Top = 200
    inherited btnProcurar: TBitBtn
      OnClick = btnProcurarClick
    end
  end
  object DBEdit1: TDBEdit [6]
    Left = 22
    Top = 79
    Width = 105
    Height = 21
    DataField = 'SOLIC_PRODUTO'
    DataSource = DtSrc
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [7]
    Left = 158
    Top = 79
    Width = 465
    Height = 21
    DataField = 'SOLIC_DESCRICAO'
    DataSource = DtSrc
    TabOrder = 3
  end
  object DBEdit3: TDBEdit [8]
    Left = 630
    Top = 78
    Width = 121
    Height = 21
    DataField = 'SOLIC_QUANTIDADE'
    DataSource = DtSrc
    TabOrder = 4
  end
  object DBEdit4: TDBEdit [9]
    Left = 22
    Top = 135
    Width = 121
    Height = 21
    DataField = 'SOLIC_APROVACAO'
    DataSource = DtSrc
    TabOrder = 5
    OnExit = DBEdit4Exit
  end
  object BitBtn1: TBitBtn [10]
    Left = 126
    Top = 79
    Width = 25
    Height = 25
    Caption = '...'
    TabOrder = 6
    OnClick = BitBtn1Click
  end
  object edRespAprovacao: TEdit [11]
    Left = 160
    Top = 134
    Width = 209
    Height = 21
    TabOrder = 7
  end
  inherited DtSrc: TDataSource
    DataSet = dmCompra.cdsSolic
  end
  object sq: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = DM.sqlsisAdimin
    Left = 432
    Top = 104
  end
end
