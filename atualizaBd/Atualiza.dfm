object Form1: TForm1
  Left = 12
  Top = 5
  Width = 792
  Height = 612
  Caption = 'Form1'
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
  object Label5: TLabel
    Left = 32
    Top = 276
    Width = 487
    Height = 13
    Caption = 
      'Em caso de erro execute o comando abaixo com  o script q est'#225' da' +
      'ndo erro no msdos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 68
    Top = 308
    Width = 413
    Height = 13
    Caption = 
      'Na pasta que estiver os scripts tem q ter:  FSQL.EXE e o EXECUTA' +
      '.BAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 317
    Width = 518
    Height = 13
    Caption = 
      'fsql.exe C:\home\sisadmin\bd\sisadmin.fdb -u SYSDBA -p xl04pq -i' +
      ' script_que_euquero.sql'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 784
    Height = 585
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object Label2: TLabel
        Left = 574
        Top = 30
        Width = 96
        Height = 13
        Caption = 'Caminho dos Scripts'
      end
      object Label1: TLabel
        Left = 304
        Top = 538
        Width = 32
        Height = 13
        Caption = 'Label1'
      end
      object BitBtn1: TBitBtn
        Left = 3
        Top = 0
        Width = 70
        Height = 43
        Caption = '1'#186' - Campos'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object Memo1: TMemo
        Left = 0
        Top = 44
        Width = 521
        Height = 169
        TabOrder = 1
      end
      object Edit1: TEdit
        Left = 529
        Top = 44
        Width = 236
        Height = 21
        TabOrder = 2
      end
      object BitBtn3: TBitBtn
        Left = 676
        Top = 15
        Width = 88
        Height = 27
        Caption = '2'#186' - ...'
        TabOrder = 3
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 573
        Top = 67
        Width = 193
        Height = 41
        Caption = '3'#186' - Insere Scripts na Tabela'
        Enabled = False
        TabOrder = 4
        OnClick = BitBtn4Click
      end
      object BitBtn2: TBitBtn
        Left = 573
        Top = 108
        Width = 193
        Height = 41
        Caption = '4'#186' - Executa SP e Triggers'
        TabOrder = 5
        OnClick = BitBtn2Click
      end
      object BitBtn8: TBitBtn
        Left = 566
        Top = 153
        Width = 75
        Height = 25
        Caption = 'Deleta Prod.'
        TabOrder = 6
        OnClick = BitBtn8Click
      end
      object BitBtn7: TBitBtn
        Left = 692
        Top = 153
        Width = 75
        Height = 25
        Caption = 'Ver Erro'
        TabOrder = 7
        OnClick = BitBtn7Click
      end
      object BitBtn5: TBitBtn
        Left = 542
        Top = 181
        Width = 67
        Height = 40
        Caption = 'Abrir Script.'
        TabOrder = 8
        OnClick = BitBtn5Click
      end
      object BitBtn6: TBitBtn
        Left = 634
        Top = 180
        Width = 133
        Height = 41
        Caption = 'Gravar Altera'#231#245'es'
        TabOrder = 9
        OnClick = BitBtn6Click
      end
      object Memo3: TMemo
        Left = 0
        Top = 224
        Width = 329
        Height = 281
        Lines.Strings = (
          'baixaTitulosRec092006.sql'
          'gera_cheq_boletos_dup092006.sql'
          'inclui_rec001.sql'
          'cancelaBaixaRec092006c.sql'
          'gera_parcelas_rec092006c.sql'
          'gera_rec092006c.sql'
          'sp_mov_caixa092006.sql'
          'tr_inserecontacontabil092006.sql'
          'tr_lanca_contabilvenda102006.sql'
          'tr_altera_contabilvenda102006.sql'
          'tr_apaga_contabilvenda102006.sql'
          'tr_inserecontacontabilforn102006.sql'
          'tr_lanca_contabilcompra102006.sql'
          'tr_altera_contabilcompra102006.sql'
          'tr_apaga_contabilcompra102006.sql'
          'sp_contas_pagas102006.sql'
          'sp_contas_pagas_periodo102006.sql'
          'sp_mov_caixa102006.sql'
          'inclui_pag102006.sql'
          'baixaTitulosRec102006.sql'
          'gera_pag102006.sql'
          'altera_estoque102006.sql'
          'entrada_estoque102006.sql'
          'gera_parcelas_pag102006.sql'
          'sp_mov_caixa_ordem102006.sql'
          'sp_mov_caixa102006a.sql'
          'atualiza_chg102006.sql'
          'atualiza_chg112006.sql'
          'trg_codbarra112006.sql'
          'trg_usaproduto112006.sql'
          'trg_produtos_margem112006.sql'
          'atualiza_chg122006.sql'
          '01_2007_usaproduto.sql'
          '01_2007atualiza_chg.sql'
          '01_2007SP_REL_RCBO.sql'
          '01_2007_trg_atualizachg.sql'
          '01_2007_trg_listapreco.sql'
          '02_2007_totalizacao_rec.sql'
          '02_2007rel_dre.sql'
          '02_2007_calcula_icms.sql'
          '02_2007_atualiza_chg.sql'
          '02_2007_rel_rcbo.sql'
          '03_2007lote_exclui.sql'
          '03_2007lote_saida.sql'
          '03_2007lote_entrada.sql'
          '03_2007spestoquefiltro.sql'
          '03_2007rel_rcbo.sql'
          '04_2007lote_entrada.sql'
          '04_2007usaproduto.sql'
          '04_2007_rel_rcbo.sql'
          '04_2007_trgalterachg.sql'
          '04_2007apaga_estoque.sql'
          '04_2007entrada_estoque.sql'
          '04_2007altera_estoque.sql'
          '04_2007spestoquefiltro.sql'
          '04_2007bspestoquefiltro.sql'
          '04_2007lote_saida.sql'
          '05_2007EstoqueFiltro_corrige.sql'
          '05_2007baixaTitulosRec.sql'
          '05_2007usaproduto.sql'
          '05_2007atualiza_chg.sql'
          '06_2007sp_cobranca.sql'
          '06_2007trg_nf_cr_insere.sql'
          '06_2007trg_nf_cr_altera.sql'
          '06_2007corrigeEstoque.sql'
          '07_2007bol_4.sql'
          '07_2007rel_dre.sql'
          '07_2007calcula_icms.sql'
          '07_2007lanca_ent_saida.sql'
          '07_2007sp_estoque_entSai.sql'
          '07_2007rel_rcbo.sql'
          '07_2007sp_gera_cobranca.sql'
          '07_2007rel_rcbo1.sql'
          '07_2007sp_gera_cobranca2.sql'
          '07_2007lanca_ent_saida2.sql'
          '07_2007sp_estoque_entSai2.sql'
          '07_2007estoqueCCustoEnt.sql'
          '07_2007estoqueCCustoDel.sql'
          '07_2007lanca_ent_saida3.sql'
          '07_2007spGeraCobCliente.sql'
          '07_2007sp_estoque_entSai3.sql'
          '07_2007estoqueCCustoDel2.sql'
          '07_2007spGeraCobCliente2.sql'
          '07_2007fluxo_caixa.sql'
          '07072007spnotas.sql'
          'atualiza_lista_de_precos.sql'
          '07_2007lancaProcSaude.sql'
          '07_2007lancaProcSaudeProc.sql'
          '07_2007web_empresa.sql'
          '08_2007relCrPorEmissao.sql'
          '09_2007labExame.sql'
          '09_2007spGeraCobranca.sql'
          '10_2007estoqueCCustoEnt.sql'
          '10_2007lancaProcSaudeProc.sql'
          '10_2007lancaReceitaSaude.sql'
          '10_2007spGeraMensalidade.sql'
          '10_2007inclui_Pag.sql'
          '10_2007alteraFaixa.sql'
          '11_2007_rel_rcbo.sql'
          '11_2007gera_parcelas_pag.sql'
          '11_2007gera_parcelas_rec.sql'
          '11_2007lancaProcSaudeProc.sql'
          '11_2007produtoEtiqueta.sql'
          '11_2007spEstoqueFiltro.sql'
          '11_2007spGeraMensalidade.sql'
          '11_2007produtoEtiquetaCompra.sql'
          '11_2007inclui_rec.sql'
          '11_2007spEstoqueProduto.sql'
          '11_2007alteraFaixa.sql'
          '11_20071spGeraMensalidade.sql'
          '11_2007relDreCheckupCar.sql'
          '12_2007cancelaBaixaRec.sql'
          '12_2007relDreDetalhada.sql'
          '12_2007inclui_Pag.sql'
          '12_2007relDreCheckupCar.sql'
          '12_2007relDre_ATS.sql'
          '12_2007recTotais.sql'
          '12_2007pagTotais.sql'
          '01_2008Altera_Rec.sql'
          '01_2008baixaTitulosRec.sql'
          '01_2008inclui_rec.sql'
          '01_2008inclui_pag.sql'
          '01_2008geraparcelasrec.sql'
          '01_2008geraparcelaspag.sql'
          '01_2008baixaTitulosRec1.sql'
          '01_2008caixaItens.sql'
          '01_2008LancaProcSaudeProc.sql'
          '01_2008lancaReceitaSaude.sql'
          '01_2008lancaReceitaSaudeA.sql'
          '01_2008pagTotais.sql'
          '01_2008recTotais.sql'
          '01_2008rel_dre.sql'
          '01_2008sp_gera_cobranca.sql'
          '01_2008sp_mov_caixa.sql'
          '01_2008sp_mov_caixa_ash.sql'
          '01_2008sp_mov_caixa_ashA.sql'
          '01_2008sp_mov_caixa_ordem.sql'
          '01_2008spEstoqueFiltro.sql'
          '01_2008caixaItensB.sql'
          '01_2008rel_vendaCompra.sql'
          '01_2008inclui_recA.sql'
          '01_2008Apaga_rec.sql'
          '01_2008inclui_pagA.sql'
          '01_2008spGeraMensalidade.sql'
          '01_2008sp_mov_caixa_ordemA.sql'
          '01_2008sp_mov_caixaA.sql'
          '01_2008gera_rec.sql'
          '02_2008baixaTitulosPag.sql'
          '02_2008inclui_rec.sql'
          '02_2008lancaProcSaudeProc.sql'
          '02_2008Lancamentos.sql'
          '02_2008pagTotais.sql'
          '02_2008recTotais.sql'
          '02_2008rel_rcbo.sql'
          '02_2008relDre.sql'
          '02_2008baixaTitulosPag1.sql'
          '02_2008inclui_pag.sql'
          '02_2008rel_vendaCompra.sql'
          '02_2008corrigeEstoque.sql'
          '02_2008spEstoqueFiltro.sql'
          '02_2008entrada_estoque.sql'
          '02_2008saida_estoque.sql'
          '02_2008altera_estoque.sql'
          '02_2008spEstoqueProduto.sql'
          '02_2008rel_vendaCompra1.sql'
          '02_2008corrigeEstoque1.sql'
          '02_2008sp_mov_caixa.sql'
          '02_2008geraparcelasrec.sql'
          '1000spEstoqueFiltro.sql'
          '1001spEstoqueProduto.sql'
          '1002spEstoqueGrupo.sql'
          '1003rel_vendaCompra.sql'
          '1004sp_mov_caixa_ash.sql'
          '1005ResultadoPorProduto.sql'
          '1006alteraFaixa.sql'
          '1007saida_estoque.sql'
          '1008apaga_estoque.sql'
          '1009altera_estoque.sql'
          '1010altera_compra.sql'
          '1011altera_pag.sql'
          '1012altera_Venda.sql'
          '1013altera_rec.sql'
          '1014pag_totais.sql'
          '1015recTotais.sql'
          'altera_estoque.sql'
          'altera_compra.sql'
          'altera_venda.sql'
          'baixaTitulosPag.sql'
          'baixaTitulosRec.sql'
          'CancelaBaixaPag.sql'
          'CorrigeEstoque.sql'
          'entrada_estoque.sql'
          'fluxoCaixaLinha.sql'
          'fluxoCaixa.sql'
          'fluxoCaixaVer.sql'
          'gera_pag.sql'
          'gera_parcelas_rec.sql'
          'gera_parcelas_pag.sql'
          'gera_rec.sql'
          'relDre.sql'
          'RelSemanaPorProduto.sql'
          'RelVendaProdutoMes.sql'
          'rel_vendaCompra.sql'
          'SpEstoque.sql'
          'spEstoqueFiltro.sql'
          'sp_gera_cobranca.sql'
          'sp_mov_caixa.sql'
          'movimentonf.sql')
        ScrollBars = ssVertical
        TabOrder = 10
      end
      object Memo2: TMemo
        Left = 352
        Top = 224
        Width = 417
        Height = 281
        TabOrder = 11
      end
      object BitBtn11: TBitBtn
        Left = 75
        Top = 0
        Width = 86
        Height = 43
        Caption = '1'#186' - SEMP'
        TabOrder = 12
        OnClick = BitBtn11Click
      end
      object BitBtn12: TBitBtn
        Left = 163
        Top = 0
        Width = 78
        Height = 43
        Caption = '1'#186' - ASH'
        TabOrder = 13
        OnClick = BitBtn12Click
      end
      object BitBtn13: TBitBtn
        Left = 243
        Top = 0
        Width = 78
        Height = 43
        Caption = '1'#186' - Transp'
        TabOrder = 14
        OnClick = BitBtn13Click
      end
      object BitBtn14: TBitBtn
        Left = 323
        Top = 0
        Width = 74
        Height = 43
        Caption = '1'#186' - Academia'
        TabOrder = 15
        OnClick = BitBtn14Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      object Label3: TLabel
        Left = 7
        Top = 32
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object Label7: TLabel
        Left = 132
        Top = 32
        Width = 33
        Height = 13
        Caption = 'Tabela'
      end
      object Label8: TLabel
        Left = 256
        Top = 32
        Width = 33
        Height = 13
        Caption = 'Campo'
      end
      object Label9: TLabel
        Left = 381
        Top = 34
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object Edit3: TEdit
        Left = 132
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 0
      end
      object Edit4: TEdit
        Left = 256
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 1
      end
      object Edit5: TEdit
        Left = 378
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object ComboBox1: TComboBox
        Left = 6
        Top = 48
        Width = 124
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        Text = 'Fields'
        OnChange = ComboBox1Change
        Items.Strings = (
          'Fields'
          'Generators')
      end
      object DBGrid1: TDBGrid
        Left = 6
        Top = 72
        Width = 492
        Height = 256
        DataSource = DataSource1
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODCAMPOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAMPOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAINCLUSAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPOCAMPO'
            Visible = True
          end>
      end
      object BitBtn9: TBitBtn
        Left = 504
        Top = 46
        Width = 145
        Height = 33
        Caption = 'ADICIONA CAMPO'
        TabOrder = 5
        OnClick = BitBtn9Click
      end
      object BitBtn10: TBitBtn
        Left = 504
        Top = 79
        Width = 145
        Height = 33
        Caption = 'EXECUTAR'
        TabOrder = 6
        OnClick = BitBtn10Click
      end
    end
  end
  object sc: TSQLConnection
    ConnectionName = 'sisadmin'
    DriverName = 'UIB FireBird15'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbexpUIBfire15.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=UIB FireBird15'
      'BlobSize=-1'
      'CommitRetain=False'
      'Database=192.168.1.100:sge_jc'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Password=xl04pq'
      'RoleName=RoleName'
      'ServerCharSet=win1252'
      'SQLDialect=3'
      'Interbase TransIsolation=ReadCommited'
      'User_Name=SYSDBA'
      'WaitOnLocks=True')
    VendorLib = 'fbclient.dll'
    Left = 296
    Top = 208
  end
  object ver_campo: TSQLDataSet
    CommandText = 
      'select RDB$FIELD_NAME from rdb$relation_fields WHERE RDB$RELATIO' +
      'N_NAME = :PTABELA and RDB$FIELD_NAME = :PCAMPO'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftFixedChar
        Name = 'PTABELA'
        ParamType = ptInput
      end
      item
        DataType = ftFixedChar
        Name = 'PCAMPO'
        ParamType = ptInput
      end>
    SQLConnection = sc
    Left = 176
    Top = 192
  end
  object dsp: TDataSetProvider
    DataSet = ver_campo
    Options = [poAllowCommandText]
    Left = 216
    Top = 192
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp'
    Left = 256
    Top = 194
  end
  object sds_sp: TSQLDataSet
    CommandText = 'select * from ATUALIZA where INSERIDO <> '#39'S'#39
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 176
    Top = 248
    object sds_spCODATUALIZA: TIntegerField
      FieldName = 'CODATUALIZA'
      Required = True
    end
    object sds_spSCRIPT: TStringField
      FieldName = 'SCRIPT'
      Size = 200
    end
    object sds_spDATASCRIPT: TDateField
      FieldName = 'DATASCRIPT'
    end
    object sds_spPARAQSERVE: TStringField
      FieldName = 'PARAQSERVE'
      Size = 200
    end
    object sds_spVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 50
    end
    object sds_spINSERIDO: TStringField
      FieldName = 'INSERIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsp_sp: TDataSetProvider
    DataSet = sds_sp
    Left = 208
    Top = 248
  end
  object cds_sp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp_sp'
    Left = 240
    Top = 248
    object cds_spCODATUALIZA: TIntegerField
      FieldName = 'CODATUALIZA'
      Required = True
    end
    object cds_spSCRIPT: TStringField
      FieldName = 'SCRIPT'
      Size = 200
    end
    object cds_spDATASCRIPT: TDateField
      FieldName = 'DATASCRIPT'
    end
    object cds_spPARAQSERVE: TStringField
      FieldName = 'PARAQSERVE'
      Size = 200
    end
    object cds_spVERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 50
    end
    object cds_spINSERIDO: TStringField
      FieldName = 'INSERIDO'
      FixedChar = True
      Size = 1
    end
  end
  object OpenDialog1: TOpenDialog
    InitialDir = 'C:\home\sisadmin\Script'
    Left = 80
    Top = 256
  end
  object sds1: TSQLDataSet
    CommandText = 'select * from ATUALIZA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 320
    Top = 248
  end
  object cds1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsp1'
    Left = 400
    Top = 248
    object cds1CODATUALIZA: TIntegerField
      FieldName = 'CODATUALIZA'
      Required = True
    end
    object cds1SCRIPT: TStringField
      FieldName = 'SCRIPT'
      Size = 200
    end
    object cds1DATASCRIPT: TDateField
      FieldName = 'DATASCRIPT'
    end
    object cds1PARAQSERVE: TStringField
      FieldName = 'PARAQSERVE'
      Size = 200
    end
    object cds1VERSAO: TStringField
      FieldName = 'VERSAO'
      Size = 50
    end
    object cds1INSERIDO: TStringField
      FieldName = 'INSERIDO'
      FixedChar = True
      Size = 1
    end
  end
  object dsp1: TDataSetProvider
    DataSet = sds1
    Left = 368
    Top = 248
  end
  object sdsNcampos: TSQLDataSet
    CommandText = 
      'select * from NOVOS_CAMPOS '#13#10'where ((CAMPO = :cp) or (:cp = '#39'tod' +
      'os'#39'))'
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftString
        Name = 'cp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cp'
        ParamType = ptInput
      end>
    SQLConnection = sc
    Left = 525
    Top = 173
    object sdsNcamposCODCAMPOS: TIntegerField
      FieldName = 'CODCAMPOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object sdsNcamposCAMPO: TStringField
      FieldName = 'CAMPO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsNcamposTABELA: TStringField
      FieldName = 'TABELA'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsNcamposDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
      ProviderFlags = [pfInUpdate]
    end
    object sdsNcamposTIPO: TStringField
      FieldName = 'TIPO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
    object sdsNcamposOBS: TStringField
      FieldName = 'OBS'
      ProviderFlags = [pfInUpdate]
      Size = 160
    end
    object sdsNcamposTIPOCAMPO: TStringField
      FieldName = 'TIPOCAMPO'
      ProviderFlags = [pfInUpdate]
      Size = 60
    end
  end
  object dspNcampo: TDataSetProvider
    DataSet = sdsNcampos
    Left = 557
    Top = 173
  end
  object cdsNcampo: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'cp'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'cp'
        ParamType = ptInput
      end>
    ProviderName = 'dspNcampo'
    Left = 589
    Top = 173
    object cdsNcampoCODCAMPOS: TIntegerField
      FieldName = 'CODCAMPOS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsNcampoCAMPO: TStringField
      FieldName = 'CAMPO'
      Size = 60
    end
    object cdsNcampoTABELA: TStringField
      FieldName = 'TABELA'
      Size = 60
    end
    object cdsNcampoDATAINCLUSAO: TDateField
      FieldName = 'DATAINCLUSAO'
    end
    object cdsNcampoTIPO: TStringField
      FieldName = 'TIPO'
      Size = 60
    end
    object cdsNcampoOBS: TStringField
      FieldName = 'OBS'
      Size = 160
    end
    object cdsNcampoTIPOCAMPO: TStringField
      FieldName = 'TIPOCAMPO'
      Size = 60
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsNcampo
    Left = 623
    Top = 173
  end
  object c_6_genid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'd_6'
    Left = 603
    Top = 222
    object c_6_genidCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
  object d_6: TDataSetProvider
    DataSet = s_6
    Options = [poAllowCommandText]
    Left = 555
    Top = 222
  end
  object s_6: TSQLDataSet
    CommandText = 
      'SELECT CAST(GEN_ID(GEN_COD_PAGAMENTO, 1) AS INTEGER) AS CODIGO F' +
      'ROM RDB$DATABASE;'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = sc
    Left = 523
    Top = 222
    object s_6CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Required = True
    end
  end
end
