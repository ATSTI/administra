inherited fPrazo: TfPrazo
  Width = 784
  Height = 610
  Caption = 'Prazos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited MMJPanel1: TMMJPanel
    Width = 776
  end
  inherited MMJPanel2: TMMJPanel
    Top = 532
    Width = 776
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  object JvDBUltimGrid1: TJvDBUltimGrid [2]
    Left = 0
    Top = 51
    Width = 776
    Height = 481
    Align = alClient
    DataSource = DtSrc
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    SelectColumnsDialogStrings.Caption = 'Select columns'
    SelectColumnsDialogStrings.OK = '&OK'
    SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
    EditControls = <>
    RowsHeight = 17
    TitleRowHeight = 17
    Columns = <
      item
        Expanded = False
        FieldName = 'PARAMETRO'
        Title.Caption = 'Prazos'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D1'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D2'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D3'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D4'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D5'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D6'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D7'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D8'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'D9'
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR'
        Title.Caption = 'Num. Parcelas'
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cdsPrazo
  end
end
