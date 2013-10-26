inherited fUsuarioCadastro: TfUsuarioCadastro
  Left = 192
  Width = 696
  Height = 505
  OldCreateOrder = True
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel [0]
    Left = 2
    Top = 64
    Width = 44
    Height = 16
    Caption = 'C'#243'digo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel [1]
    Left = 63
    Top = 64
    Width = 37
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel [2]
    Left = 319
    Top = 64
    Width = 30
    Height = 16
    Caption = 'Perfil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  inherited MMJPanel1: TMMJPanel
    Top = 424
    Width = 688
    inherited btnCancelar: TBitBtn [0]
    end
    inherited btnExcluir: TBitBtn [1]
    end
    inherited btnGravar: TBitBtn [2]
    end
    inherited btnIncluir: TBitBtn [3]
    end
    inherited btnProcurar: TBitBtn
      Enabled = False
    end
  end
  inherited MMJPanel2: TMMJPanel
    Width = 688
    inherited Label1: TLabel
      Left = 172
      Width = 340
      Caption = 'Cadastro de Usu'#225'rios'
    end
    inherited Label2: TLabel
      Left = 176
      Width = 340
      Caption = 'Cadastro de Usu'#225'rios'
    end
  end
  object DBEdit1: TDBEdit [5]
    Left = 2
    Top = 80
    Width = 57
    Height = 24
    Color = clInfoBk
    DataField = 'CODUSUARIO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object DBEdit2: TDBEdit [6]
    Left = 61
    Top = 80
    Width = 256
    Height = 24
    DataField = 'NOMEUSUARIO'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object DBEdit3: TDBEdit [7]
    Left = 319
    Top = 80
    Width = 91
    Height = 24
    DataField = 'PERFIL'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnKeyPress = FormKeyPress
  end
  object DBRadioGroup1: TDBRadioGroup [8]
    Left = 412
    Top = 64
    Width = 275
    Height = 41
    Caption = 'Tipo'
    Columns = 3
    DataField = 'STATUS'
    DataSource = DtSrc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'VENDEDOR'
      'COMPRADOR'
      'AMBOS')
    ParentFont = False
    TabOrder = 5
    Values.Strings = (
      '0'
      '1'
      '2')
  end
  object DBGrid1: TDBGrid [9]
    Left = 1
    Top = 107
    Width = 664
    Height = 290
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
        FieldName = 'CODUSUARIO'
        Title.Caption = 'C'#243'digo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOMEUSUARIO'
        Title.Caption = 'Nome'
        Width = 470
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PERFIL'
        Title.Caption = 'Perfil'
        Width = 120
        Visible = True
      end>
  end
  inherited DtSrc: TDataSource
    DataSet = DM.cds_usuario_cadastro
  end
end
