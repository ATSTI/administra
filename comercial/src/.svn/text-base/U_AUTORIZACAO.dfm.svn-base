object F_AUTORIZACAO: TF_AUTORIZACAO
  Left = 462
  Top = 245
  Width = 349
  Height = 252
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 333
    Height = 153
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMoneyGreen
    TabOrder = 0
    object MMJPanel1: TMMJPanel
      Left = 2
      Top = 2
      Width = 329
      Height = 149
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 0
      TabStop = True
      Silhuette.Shape.ShapeText = 'Shape text'
      Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
      Silhuette.PictureShape.DisplayPicture = True
      Background.StartColor = clAqua
      Background.EndColor = clTeal
      Background.FillType = GradUpDown
      object Label2: TLabel
        Left = 77
        Top = 85
        Width = 45
        Height = 16
        Caption = 'Senha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 80
        Top = 45
        Width = 39
        Height = 16
        Caption = 'Login'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object EdtLogin: TEdit
        Left = 125
        Top = 37
        Width = 121
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 20
        ParentFont = False
        TabOrder = 0
        OnKeyPress = EdtLoginKeyPress
      end
      object EdtSenha: TEdit
        Left = 125
        Top = 77
        Width = 121
        Height = 24
        BevelKind = bkFlat
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 1
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 153
    Width = 333
    Height = 61
    Align = alBottom
    BevelInner = bvLowered
    BevelOuter = bvNone
    BevelWidth = 2
    Color = clMoneyGreen
    TabOrder = 1
    object MMJPanel2: TMMJPanel
      Left = 2
      Top = 2
      Width = 329
      Height = 57
      Align = alClient
      TabOrder = 0
      Silhuette.Shape.ShapeText = 'Shape text'
      Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
      Silhuette.PictureShape.DisplayPicture = True
      Background.StartColor = clAqua
      Background.EndColor = clTeal
      Background.FillType = GradUpDown
      object BitBtnCancelar: TBitBtn
        Left = 173
        Top = 13
        Width = 83
        Height = 32
        Caption = 'Cancelar'
        TabOrder = 1
        Kind = bkCancel
      end
      object BitBtnOK: TBitBtn
        Left = 69
        Top = 12
        Width = 83
        Height = 33
        Caption = 'OK'
        TabOrder = 0
        OnClick = BitBtnOKClick
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
    end
  end
  object s_parametro: TSQLDataSet
    CommandText = 
      'select DADOS, D1, D2, D3, D4 from PARAMETRO '#13#10'where PARAMETRO = ' +
      ':id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 26
    Top = 18
    object s_parametroDADOS: TStringField
      FieldName = 'DADOS'
      Size = 40
    end
    object s_parametroD1: TStringField
      FieldName = 'D1'
      Size = 30
    end
    object s_parametroD2: TStringField
      FieldName = 'D2'
      Size = 30
    end
    object s_parametroD3: TStringField
      FieldName = 'D3'
      Size = 30
    end
    object s_parametroD4: TStringField
      FieldName = 'D4'
      Size = 30
    end
  end
  object S_PERFIL: TSQLDataSet
    CommandText = 
      'SELECT a.UCIDUSER  '#13#10'FROM UCTABUSERS a '#13#10'where a.UCUSERNAME = :i' +
      'd'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 27
    Top = 59
    object S_PERFILUCIDUSER: TIntegerField
      FieldName = 'UCIDUSER'
    end
  end
  object S_USER: TSQLDataSet
    CommandText = 'SELECT UCPROFILE '#13#10'FROM UCTABUSERS '#13#10'where UCLOGIN= :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 26
    Top = 98
    object S_USERUCPROFILE: TIntegerField
      FieldName = 'UCPROFILE'
    end
  end
end
