inherited fPlanoFaixa: TfPlanoFaixa
  Left = 202
  Top = 128
  Width = 683
  Height = 531
  Caption = 'Plano'
  OnCreate = nil
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 82
    Top = 68
    Width = 62
    Height = 13
    Caption = 'DESCRI'#199#195'O'
  end
  object Label4: TLabel [1]
    Left = 384
    Top = 68
    Width = 53
    Height = 13
    Caption = 'QTDE MIN'
  end
  object Label5: TLabel [2]
    Left = 451
    Top = 68
    Width = 56
    Height = 13
    Caption = 'QTDE MAX'
  end
  object Label6: TLabel [3]
    Left = 517
    Top = 67
    Width = 53
    Height = 13
    Caption = 'VALOR R$'
  end
  object Label7: TLabel [4]
    Left = 582
    Top = 67
    Width = 60
    Height = 13
    Caption = 'DESCONTO'
  end
  object Label8: TLabel [5]
    Left = 16
    Top = 67
    Width = 30
    Height = 13
    Caption = 'FAIXA'
  end
  inherited MMJPanel1: TMMJPanel
    Top = 450
    Width = 675
    inherited btnProcurar: TBitBtn
      Visible = False
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 675
    TabOrder = 7
    inherited Label1: TLabel
      Left = 144
    end
    inherited Label2: TLabel
      Left = 145
      Top = 5
    end
  end
  object DBGrid1: TDBGrid [8]
    Left = 16
    Top = 128
    Width = 641
    Height = 249
    DataSource = DtSrc
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGOS'
        Title.Caption = 'FAIXA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'DESCRI'#199#195'O'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDADE_MIN'
        Title.Caption = 'QTDE MIN'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'IDADE_MAX'
        Title.Caption = 'QTDE MAX'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALOR_PLANO'
        Title.Alignment = taCenter
        Title.Caption = 'VALOR '
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCONTO'
        Width = 70
        Visible = True
      end>
  end
  object DBEdit1: TDBEdit [9]
    Left = 81
    Top = 83
    Width = 299
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DtSrc
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object DBEdit2: TDBEdit [10]
    Left = 383
    Top = 83
    Width = 62
    Height = 21
    DataField = 'IDADE_MIN'
    DataSource = DtSrc
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [11]
    Left = 450
    Top = 83
    Width = 63
    Height = 21
    DataField = 'IDADE_MAX'
    DataSource = DtSrc
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBEdit4: TDBEdit [12]
    Left = 516
    Top = 83
    Width = 61
    Height = 21
    DataField = 'VALOR_PLANO'
    DataSource = DtSrc
    TabOrder = 5
    OnKeyPress = FormKeyPress
  end
  object DBEdit5: TDBEdit [13]
    Left = 581
    Top = 83
    Width = 61
    Height = 21
    DataField = 'DESCONTO'
    DataSource = DtSrc
    TabOrder = 6
    OnKeyPress = FormKeyPress
  end
  object DBEdit6: TDBEdit [14]
    Left = 16
    Top = 83
    Width = 57
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CODIGOS'
    DataSource = DtSrc
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  inherited DtSrc: TDataSource
    DataSet = DMSaude.cdsFaixa
  end
end
