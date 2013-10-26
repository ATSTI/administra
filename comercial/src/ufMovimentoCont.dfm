inherited fMovimentoCont: TfMovimentoCont
  Width = 781
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 773
  end
  inherited MMJPanel2: TMMJPanel
    Width = 773
    inherited Label1: TLabel
      Left = 187
      Width = 356
      Height = 44
      Caption = 'Movimento Cont'#225'bil'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 191
      Width = 356
      Height = 44
      Caption = 'Movimento Cont'#225'bil'
      Font.Name = 'Cooper Black'
    end
  end
  object DBGrid1: TDBGrid [2]
    Left = 0
    Top = 54
    Width = 773
    Height = 313
    Align = alClient
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCONT'
        Title.Caption = 'C'#243'digo'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODORIGEM'
        Title.Caption = 'Num. Doc.'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOORIGEM'
        Title.Caption = 'Tipo Lanc.'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCCUSTO'
        Title.Caption = 'C. Custo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTA'
        Title.Caption = 'Conta'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Desc. Conta'
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORCREDITO'
        Title.Caption = 'Cr'#233'dito'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORDEBITO'
        Title.Caption = 'D'#233'bito'
        Width = 70
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = DM.c3_contabil
  end
end
