inherited fMovimentoCont: TfMovimentoCont
  Left = 238
  Top = 146
  Width = 998
  Height = 677
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Top = 595
    Width = 990
    Height = 55
  end
  inherited MMJPanel2: TMMJPanel
    Width = 990
    inherited Label1: TLabel
      Left = 0
      Width = 985
      Alignment = taCenter
      Caption = 'Movimento Cont'#225'bil'
      Font.Name = 'Cooper Black'
    end
    inherited Label2: TLabel
      Left = 0
      Width = 977
      Alignment = taCenter
      Caption = 'Movimento Cont'#225'bil'
      Font.Name = 'Cooper Black'
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid [2]
    Left = 0
    Top = 54
    Width = 990
    Height = 541
    Align = alClient
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    AutoSizeColumns = True
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCONT'
        Title.Caption = 'C'#243'd.'
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODORIGEM'
        Title.Caption = 'N'#250'm. Origem'
        Width = 76
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPOORIGEM'
        Title.Caption = 'Documento'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATA'
        Title.Caption = 'Data'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODCCUSTO'
        Title.Caption = 'Centro Custo'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODREDUZIDO'
        Title.Caption = 'C'#243'd. Reduzido'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTA'
        Title.Caption = 'Conta'
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Desc. Conta'
        Width = 222
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORDEBITO'
        Title.Caption = 'D'#233'bito'
        Width = 84
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALORCREDITO'
        Title.Caption = 'Cr'#233'dito'
        Width = 88
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = DM.c3_contabil
  end
end
