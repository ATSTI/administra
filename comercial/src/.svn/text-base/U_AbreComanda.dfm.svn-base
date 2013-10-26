object f_AbreComanda: Tf_AbreComanda
  Left = 565
  Top = 319
  Width = 341
  Height = 161
  BorderIcons = [biSystemMenu]
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object MMJPanel7: TMMJPanel
    Left = 0
    Top = 0
    Width = 325
    Height = 123
    Align = alClient
    TabOrder = 0
    Silhuette.Shape.ShapeText = 'Shape text'
    Silhuette.PictureShape.Picture.Data = {07544269746D617000000000}
    Silhuette.PictureShape.DisplayPicture = True
    Background.StartColor = clSilver
    Background.EndColor = clSkyBlue
    Background.FillType = GradUpDown
    object JvLabel6: TJvLabel
      Left = 54
      Top = 6
      Width = 230
      Height = 26
      Caption = 'Digite o n'#250'mero do Pedido'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ShadowSize = 2
      Transparent = True
      HintColor = clBlack
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -19
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object edtPedido: TJvCalcEdit
      Left = 112
      Top = 51
      Width = 93
      Height = 41
      BevelKind = bkFlat
      BorderStyle = bsNone
      DecimalPlaces = 0
      DisplayFormat = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -29
      Font.Name = 'Cooper Blk BT'
      Font.Style = []
      ParentFont = False
      ShowButton = False
      TabOrder = 0
      DecimalPlacesAlwaysShown = False
      OnKeyPress = edtPedidoKeyPress
    end
  end
  object s_movimento: TSQLDataSet
    CommandText = 'select CODMOVIMENTO '#13#10'   from MOVIMENTO '#13#10'where CODPEDIDO = :id'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'id'
        ParamType = ptInput
      end>
    SQLConnection = DM.sqlsisAdimin
    Left = 40
    Top = 40
    object s_movimentoCODMOVIMENTO: TIntegerField
      FieldName = 'CODMOVIMENTO'
      Required = True
    end
  end
end
