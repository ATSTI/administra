unit uAtualizaSistema;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, FMTBcd, DB, SqlExpr, DBClient, Provider, DBXpress,
  Buttons, IniFiles, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP;

type
  TfAtualizaSistema = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    sqlVersao: TSQLQuery;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds: TClientDataSet;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    btnSair: TBitBtn;
    Label2: TLabel;
    ftpupdate: TIdFTP;
    SQLQuery1: TSQLQuery;
    procedure FormCreate(Sender: TObject);
    procedure VerSeTemAtualiza;
    procedure VerBoleto(Empresa : String);
  private
    //STime: TDateTime;
    //tempo_medio:  double;
    //bytes_transf: longword;
    tamanho_arquivo : longword;
    procedure atualizaSistema;
    function VersaoAtual: String;
    function GetVersion: string;
    procedure ExecutaScript(script : string);
    procedure ExecutaSql(sql : string);
    procedure ExecutaDDL(Tabela, Campo, Tipo : string);
    procedure ExecutaDDLDrop(Tabela, Campo : string);
    procedure MudaVersao(versaoNova: string);
    function NaoExisteTabela(Tabela : String): Boolean;
    procedure CriaGenerator(Generator: String);
    procedure CriaException(Exception_nome, exception_msg: String);
    procedure CriaCampoDescricao(TABELA, CAMPO, DESCRICAO : String);
    procedure DeletaTrigger(Trigger: String);
    procedure DeletaProc(Proc: String);
    function TamCampo(Tabela, Campo : String): Integer;

    { Private declarations }
  public
    TD: TTransactionDesc;
    versaoSistema, versao : string;
    { Public declarations }
  end;

var
  fAtualizaSistema: TfAtualizaSistema;

implementation

uses UDm, uAtsAdmin;

{$R *.dfm}

procedure TfAtualizaSistema.atualizaSistema;
var sql: string;
    IniAtualiza : TIniFile;
begin
  versao := GetVersion;
  versaoSistema := VersaoAtual;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  // Verificando o sistema
  //VerSeTemAtualiza;  // Ve se tem nova versao do aplicativo na web
  if (versaoSistema = '') then
  begin
    try
      dm.sqlsisAdimin.StartTransaction(TD);
      dm.sqlsisAdimin.ExecuteDirect('INSERT INTO ATUALIZA(CODATUALIZA, VERSAO) ' +
        ' VALUES(5000, ' + QuotedStr('1.0.0.11') + ')');
      dm.sqlsisAdimin.Commit(TD);
      versaoSistema := '1.0.0.11';
    except
      dm.sqlsisAdimin.Rollback(TD);
    end;
  end;
  if (versaoSistema <> versao) then
  begin
    if (versaoSistema = '1.0.0.11') then
    begin
      executaDDL('COMPRA','PRAZO','VARCHAR(40)');
      executaDDL('VENDA','PRAZO','VARCHAR(40)');
      executaDDL('MOVIMENTODETALHE','CST','DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE','VALOR_ICMS','DOUBLE PRECISION');
      executaDDL('PAGAMENTO','SITUACAOCHEQUE','VARCHAR(10)');
      executaScript('sp_mov_caixaConsolida.sql');
      executaScript('sp_mov_caixa_ordemConsolida.sql');
      executaScript('sp_estoque_entsai.sql');
      executaScript('gera_rec_duplicatas.sql');
      executaScript('gera_rec_nf.sql');
      mudaVersao('1.0.0.12');
    end; // Fim Ataulizacao Versao 1.0.0.11

    if (versaoSistema = '1.0.0.12') then
    begin
      executaDDL('PARAMETRO','VALOR','DOUBLE PRECISION');
      executaSql('Insert into parametro (PARAMETRO, DADOS, D1, VALOR, CONFIGURADO) ' +
        ' Values (' + QuotedStr('1-A Vista') + ' ,' + QuotedStr('PRAZO') + ' ,' +
        QuotedStr('0') + ' ,' + '1, ' +
        QuotedStr('N') + ')');
      executaSql('Insert into parametro (PARAMETRO, DADOS, D1, D2, D3, VALOR, CONFIGURADO) ' +
        ' Values (' + QuotedStr('2-30,60,90') + ' ,' + QuotedStr('PRAZO') + ' ,' +
        QuotedStr('30') + ' ,' + QuotedStr('60') + ' ,' + QuotedStr('90') + ' , 3,' +
        QuotedStr('N') + ')');
      mudaVersao('1.0.0.13');
    end; // Fim Ataulizacao Versao 1.0.0.12

    if (versaoSistema = '1.0.0.13') then
    begin
      if (cds.Active) then
        cds.Close;
      cds.CommandText := 'select CODNATUREZA from NATUREZAOPERACAO' +
        ' WHERE CODNATUREZA = 12';
      cds.Open;
      if (cds.IsEmpty) then
      begin
        executaSql('Insert into NATUREZAOPERACAO(CODNATUREZA, DESCNATUREZA, ' +
          ' GERATITULO, TIPOTITULO, TIPOMOVIMENTO) ' +
          ' Values (12, ' + QuotedStr('Nota Fiscal') + ' ,1,0,12)');
      end;
      cds.Close;
      mudaVersao('1.0.0.14');
    end; // Fim Ataulizacao Versao 1.0.0.13

    if (versaoSistema = '1.0.0.14') then
    begin
      //executaScript('inclui_rec.sql');
      mudaVersao('1.0.0.15');
    end; // Fim Ataulizacao Versao 1.0.0.14

    if (versaoSistema = '1.0.0.15') then
    begin
      executaDDL('MOVIMENTODETALHE','VLR_BASE','DOUBLE PRECISION');
      executaScript('sp_mov_caixafluxo.sql');
      executaScript('sp_mov_caixaordemfluxo.sql');
      executaScript('sp_mov_caixa_ordemfluxo.sql');
      executaScript('fluxoentradasaida.sql');
      executaScript('fluxoentradasaidasintetico.sql');
      executaScript('insere_estoque.sql');
      executaScript('insere_vlrBase.sql');
      {ExecutaSql('UPDATE MOVIMENTODETALHE SET LOTE = null where LOTE = ' +
        QuotedStr(''));}
      mudaVersao('1.0.0.16');
    end; // Fim Ataulizacao Versao 1.0.0.15

    if (versaoSistema = '1.0.0.16') then
    begin
      executaScript('altera_venda.sql');
      executaScript('altera_rec.sql');
      executaScript('boleto.sql');
      //executaScript('gera_nf.sql');
      mudaVersao('1.0.0.17');
    end; // Fim Ataulizacao Versao 1.0.0.16

    if (versaoSistema = '1.0.0.17') then
    begin
      //executaScript('gera_rec_duplicatas.sql');
      //executaScript('gera_nf.sql');
      executaScript('trg_nf_cr_altera.sql');
      mudaVersao('1.0.0.18');
    end; // Fim Ataulizacao Versao 1.0.0.17

    if (versaoSistema = '1.0.0.18') then
    begin
      executaScript('recibo_cp.sql');
      mudaVersao('1.0.0.19');
    end; // Fim Ataulizacao Versao 1.0.0.18

    if (versaoSistema = '1.0.0.19') then
    begin
      CriaException('NAO_PODE_EXCLUIR', 'Registro nao pode ser excluido,  existe venda/compra.');
      executaScript('apaga_rec.sql');
      executaScript('proibe_exclusao_pag.sql');
      executaScript('proibe_exclusao_rec.sql');
      mudaVersao('1.0.0.20');
    end; // Fim Atualizacao Versao 1.0.0.19

    if (versaoSistema = '1.0.0.20') then
    begin

      CriaException('ESTOQUEFECHADO', 'Estoque fechado nesta data.');
      executaSql('CREATE TABLE ESTOQUE_CONTROLE( ' +
        ' IDESTOQUECONTROLE Integer NOT NULL, ' +
        ' CODUSUARIO Integer NOT NULL, DATAFECHAMENTO Date NOT NULL, '+
        ' SITUACAO Char(1) NOT NULL, PRIMARY KEY (IDESTOQUECONTROLE))');

      executaSql('CREATE TABLE CAIXA_CONTROLE( ' +
        ' IDCAIXACONTROLE Integer NOT NULL, CODCAIXA INTEGER, ' +
        ' CODUSUARIO Integer NOT NULL, DATAFECHAMENTO Date NOT NULL, '+
        ' SITUACAO Char(1) NOT NULL, PRIMARY KEY (IDCAIXACONTROLE))');
      executaSql('CREATE GENERATOR IDESTOQUE_CONTROLE');
      executaSql('CREATE GENERATOR IDCAIXA_CONTROLE');

      executaSql('CREATE TRIGGER TRG_IDESTOQUE_CONTROLE FOR ESTOQUE_CONTROLE ACTIVE' +
                 ' BEFORE INSERT POSITION 0 ' +
                 ' AS  BEGIN ' +
                 ' IF(NEW.IDESTOQUECONTROLE IS NULL) THEN NEW.IDESTOQUECONTROLE =' +
                 ' GEN_ID(IDESTOQUE_CONTROLE ,1);  END ');
      executaSql('CREATE TRIGGER TRG_IDCAIXA_CONTROLE FOR CAIXA_CONTROLE ACTIVE' +
                 ' BEFORE INSERT POSITION 0 ' +
                 ' AS  BEGIN ' +
                 ' IF(NEW.IDCAIXACONTROLE IS NULL) THEN NEW.IDCAIXACONTROLE =' +
                 ' GEN_ID(IDCAIXA_CONTROLE,1);  END ');
      executaSql('create table cargosfuncoes (' +
                 ' cod_cargosfuncoes integer not null primary key, ' +
                 ' descricao varchar(100))');

      executaDDL('FUNCIONARIO', 'CODCLIENTE', 'integer');
      executaDDL('FUNCIONARIO', 'CODFORNECEDOR', 'integer');
      executaDDL('FUNCIONARIO', 'CLIFOR', 'char(1)');
      executaDDL('FUNCIONARIO', 'STATUS', 'CHAR(1)');
      executaDDL('VENDA', 'CODORIGEM', 'INTEGER');

      mudaVersao('1.0.0.21');
    end; // Fim Atualizacao Versao 1.0.0.20

    if (versaoSistema = '1.0.0.21') then
    begin
      executaScript('inclui_rec.sql');
      executaScript('estoqueFechado.sql');
      executaScript('caixaFechadoPag.sql');
      executaScript('caixaFechadoContabil.sql');
      executaScript('caixaFechadoRecebimento.sql');
      executaDDL('NOTAFISCAL','IMPRESSA','CHAR(1)');
      mudaVersao('1.0.0.22');
    end; // Fim Atualizacao Versao 1.0.0.21

    if (versaoSistema = '1.0.0.22') then
    begin
      executaScript('rel_vendaCompra.sql');
      executaScript('inclui_rec.sql');
      executaScript('resultadoporproduto.sql');
      mudaVersao('1.0.0.23');
    end; // Fim Atualizacao Versao 1.0.0.22

    if (versaoSistema = '1.0.0.23') then
    begin
      executaScript('spestoque.sql');
      executaSql('CREATE TABLE arquivo_retorno( ' +
        'idArquivo int not null primary key, ' +
        'arquivo varchar(60) not null, ' +
        'idCampo varchar(10) not null, ' +
        'tamCampo varchar(10) not null, ' +
        'tipoCampo varchar(60))');
      CriaGenerator('IDARQUIVO_RETORNO');
      mudaVersao('1.0.0.24');
    end; // Fim Atualizacao Versao 1.0.0.23

    if (versaoSistema = '1.0.0.24') then
    begin
      mudaVersao('1.0.0.25');
    end; // Fim Atualizacao Versao 1.0.0.24

    if (versaoSistema = '1.0.0.25') then
    begin
      executaDDL('CLIENTES','BLOQUEIO','CHAR(1)');
      executaDDL('CLIENTES','COD_TRANPORTADORA','INTEGER');
      executaDDL('TRANSPORTADORA','FONE','VARCHAR(15)');
      executaDDL('TRANSPORTADORA','FONE2','VARCHAR(15)');
      executaDDL('TRANSPORTADORA','FAX','VARCHAR(15)');
      executaDDL('TRANSPORTADORA','CONTATO','VARCHAR(40)');
      executaDDL('TRANSPORTADORA','BAIRRO','VARCHAR(40)');
      executaDDL('TRANSPORTADORA','CEP','VARCHAR(15)');
      executaDDL('MOVIMENTO', 'OBS', 'VARCHAR(100)');
      executaDDL('MOVIMENTODETALHE', 'PRECOULTIMACOMPRA', 'DOUBLE PRECISION');
      executaScript('produtoetiquetacompra.sql');
      executaScript('spEstoqueFiltro.sql');
      executaScript('retornaEstoqueCompra.sql');
      executaScript('CorrigeEstoque.sql');
      executaScript('apaga_estoque.sql');
      executaScript('retornaEstoqueVenda.sql');
      executaScript('mov_EstoqueCorrige.sql');
      mudaVersao('1.0.0.26');
    end; // Fim Atualizacao Versao 1.0.0.25

    if (versaoSistema = '1.0.0.26') then
    begin
      executaScript('exclui_pag.sql');
      executaScript('SP_MOV_CAIXAFLUXO.sql');
      executaScript('SP_MOV_CAIXAORDEMFLUXO.sql');
      executaScript('fluxoentradasaida.sql');
      mudaVersao('1.0.0.27');
    end; // Fim Atualizacao Versao 1.0.0.26

    if (versaoSistema = '1.0.0.27') then
    begin
      executaDDL('NOTAFISCAL','SERIE','VARCHAR(20)');
      mudaVersao('1.0.0.28');
    end; // Fim Atualizacao Versao 1.0.0.27

    if (versaoSistema = '1.0.0.28') then
    begin
      executaScript('sp_contas_pendentes.sql');
      executaDDL('PRODUTOS', 'TIPOPRECOVENDA','char(1)');
      mudaVersao('1.0.0.29');
    end; // Fim Atualizacao Versao 1.0.0.28

    if (versaoSistema = '1.0.0.29') then
    begin
      executaSql('INSERT INTO NATUREZAOPERACAO (CODNATUREZA, DESCNATUREZA, ' +
        ' GERATITULO, TIPOTITULO, TIPOMOVIMENTO, BAIXAMOVIMENTO)' +
        ' Values (15, ' + QuotedStr('NOTA FISCAL VENDA') + ' ,1 , 0, 15, null)');
      executaDDL('RECEBIMENTO', 'SITUACAOCHEQUE', 'Varchar(15)');
      executaDDL('RECEBIMENTO', 'BANCO', 'Varchar(60)');
      executaDDL('RECEBIMENTO', 'AGENCIA', 'Varchar(10)');
      executaDDL('RECEBIMENTO', 'CONTA', 'Varchar(10)');
      executaDDL('RECEBIMENTO', 'GERARQREM', 'INTEGER');
      executaDDL('RECEBIMENTO', 'DATAGERARQREM', 'DATE');
      executaDDL('RECEBIMENTO', 'SELECIONOU', 'char(1)');
      executaDDL('RECEBIMENTO', 'DESCONTADO', 'char(1)');
      executaScript('gera_parcelas_rec.sql');
      executaScript('spestoqueproduto.sql');
      executaScript('altera_contabil.sql');
      executaScript('gera_valor.sql');
      executaScript('rel_rcbo.sql');
      executaDDL('MOVIMENTODETALHE','DESCPRODUTO','VARCHAR(300)');
      mudaVersao('1.0.0.30');
    end; // Fim Atualizacao Versao 1.0.0.29

    if (versaoSistema = '1.0.0.30') then
    begin
     CriaException('TIPOENDERECOREPETIDO', 'Ja existe endereco cadastrado com este tipo');
     CriaException('CNPJ_REPETIDO', 'Ja existe Cliente com este CNPJ/CPF.');
      executaScript('tipoend_repetido.sql');
      executaScript('cnpj_repetido.sql');
      mudaVersao('1.0.0.31');
    end; // Fim Atualizacao Versao 1.0.0.30

    if (versaoSistema = '1.0.0.31') then
    begin
      mudaVersao('1.0.0.32');
    end; // Fim Atualizacao Versao 1.0.0.31

    if (versaoSistema = '1.0.0.32') then
    begin
      executaScript('gera_nf.sql');
      executaScript('relNotaFiscal.sql');
      mudaVersao('1.0.0.33');
    end; // Fim Atualizacao Versao 1.0.0.32

    if (versaoSistema = '1.0.0.33') then
    begin
      executaDDL('ESTADO_ICMS', 'ICMS_SUBSTRIB', 'DOUBLE PRECISION');
      executaDDL('ESTADO_ICMS', 'ICMS_SUBSTRIB_IC', 'DOUBLE PRECISION');
      executaDDL('ESTADO_ICMS', 'ICMS_SUBSTRIB_IND', 'DOUBLE PRECISION');
      executaDDL('SERIES', 'ICMS_DESTACADO', 'DOUBLE PRECISION');
      mudaVersao('1.0.0.34');
    end; // Fim Atualizacao Versao 1.0.0.33

    if (versaoSistema = '1.0.0.34') then
    begin
      executaScript('formata_doublePrecision.sql');
      mudaVersao('1.0.0.35');
    end; // Fim Atualizacao Versao 1.0.0.34

    if (versaoSistema = '1.0.0.35') then
    begin
      executaSql('insert into PARAMETRO( ' +
        'DESCRICAO, PARAMETRO, CONFIGURADO, DADOS) ' +
        ' Values (' + QuotedStr('Serie usada para Controle de Maquinas') +
        ', ' + QuotedStr('SERIEMAQUINA') + ', ' + QuotedStr('S') +
        ', ' + QuotedStr('M') + ')');

      executaSql('insert into SERIES( ' +
        'SERIE, ULTIMO_NUMERO) ' +
        ' Values (' + QuotedStr('M') + ', ' + IntToStr(0) + ')');
      executaDDL('MOVIMENTODETALHE', 'PERIODOINI', 'timestamp');
      executaDDL('MOVIMENTODETALHE', 'PERIODOFIM', 'timestamp');
      mudaVersao('1.0.0.36');
    end; // Fim Atualizacao Versao 1.0.0.35

    if (versaoSistema = '1.0.0.36') then
    begin
    executaDDL('CLASSIFICACAOFISCAL', 'Icms_subst', 'DOUBLE PRECISION');
    executaDDL('CLASSIFICACAOFISCAL', 'Icms_subst_ic', 'DOUBLE PRECISION');
    executaDDL('CLASSIFICACAOFISCAL', 'Icms_subst_ind', 'DOUBLE PRECISION');
     mudaVersao('1.0.0.37');
    end; // Fim Atualizacao Versao 1.0.0.36

    if (versaoSistema = '1.0.0.37') then
    begin
      mudaVersao('1.0.0.38');
    end; // Fim Atualizacao Versao 1.0.0.38

    if (versaoSistema = '1.0.0.38') then
    begin
      mudaVersao('1.0.0.39');
    end;  // Fim Atualizacao Versao 1.0.0.39

    if(versaoSistema = '1.0.0.39') then
    begin

    executaDDL('MOVIMENTODETALHE', 'ICMS_SUBST', 'DOUBLE PRECISION');
    executaDDL('MOVIMENTODETALHE', 'ICMS_SUBSTD', 'DOUBLE PRECISION');

    executaDDL('NOTAFISCAL', 'ID_GUIA', 'INTEGER');
    executaSql ('CREATE TABLE GUIATRANSPORTE(' +
      'ID_GUIA Integer NOT NULL, ' +
      'CONHECIMENTO Integer, ' +
      'NATOP Varchar(60), ' +
      'CODIGO Varchar(20), ' +
      'EMISSAOLOCAL Varchar(60), ' +
      'COD_CLIENTE Integer, ' +
      'COD_CONSIGNATARIO Integer, ' +
      'COD_REDESPACHO Integer, ' +
      'PAGO Char(1), ' +
      'APAGAR Char(1), ' +
      'ID_TRANSPORTADORA Integer, ' +
      'BASECALCULO Double precision, ' +
      'ALIQUOTA Double precision, ' +
      'ICMS Double precision, ' +
      'FRETEPESOVOLUME Varchar(20), ' +
      'FRETEVALOR Double precision, ' +
      'CADSCE Varchar(15), ' +
      'DESPACHO Varchar(15), ' +
      'PEDAGIO Double precision, ' +
      'OUTROES Double precision, ' +
      'TOTALPRESTACAO Double precision, ' +
      'COLETA Varchar(100), ' +
      'ENTREGA Varchar(100), ' +
      'OBS Varchar(300), ' +
      'DATA Date, NOTAFISCAL Integer, ' +
      'VALOR_PROD1 Double precision, ' +
      'QUANTIDADE1 Double precision, ' +
      'UN1 Char(3), ' +
      'DESCPRODUTO1 Varchar(100), ' +
      'NOTAFISCAL2 Integer, ' +
      'VALOR_PROD2 Double precision, ' +
      'QUANTIDADE2 Double precision, ' +
      'UN2 Char(3), ' +
      'DESCPRODUTO2 Varchar(100), ' +
      'PRIMARY KEY (ID_GUIA))');
      CriaGenerator('GEN_GUIA');
      mudaVersao('1.0.0.40');
    end;  // Fim Atualizacao Versao 1.0.0.40

    if(versaoSistema = '1.0.0.40') then
    begin
        executaDDL('CLASSIFICACAOFISCAL', 'UF', 'char(2)');
    mudaVersao('1.0.0.41');
    end;  // Fim Atualizacao Versao 1.0.0.41

        if(versaoSistema = '1.0.0.41') then
    begin
        executaSql ('CREATE TABLE CLASSIFICACAOFISCALPRODUTO( '+
        'COD_PROD Integer NOT NULL, ' +
        'CFOP Varchar(30) NOT NULL, ' +
        'UF Char(2) NOT NULL, ' +
        'ICMS_SUBST double precision, ' +
        'ICMS_SUBST_IC double precision, ' +
        'ICMS_SUBST_IND double precision, ' +
        'ICMS Double precision, ' +
        'ICMS_BASE Double precision, ' +
        'PRIMARY KEY (COD_PROD, CFOP, UF))');
    mudaVersao('1.0.0.42');
    end;  // Fim Atualizacao Versao 1.0.0.42

    if (versaoSistema = '1.0.0.42') then
    begin
      executaDDL('NOTAFISCAL', 'SELECIONOU', 'CHAR(1)');
      executaDDL('RECEBIMENTO', 'SELECIONOU', 'CHAR(1)');
      executaDDL('PAGAMENTO', 'SELECIONOU', 'CHAR(1)');
      mudaVersao('1.0.0.43');
    end; // Fim Atualizacao Versao 1.0.0.43

    if (versaoSistema = '1.0.0.43') then
    begin
      executaDDL('GUIATRANSPORTE', 'COD_REMETENTE', 'Integer');
      mudaVersao('1.0.0.44');
    end;  // Fim Atualizacao Versao 1.0.0.44

    if (versaoSistema = '1.0.0.44') then
    begin
      mudaVersao('1.0.0.45');
    end;  // Fim Atualizacao Versao 1.0.0.45

    if (versaoSistema = '1.0.0.45') then
    begin
      executaScript('fluxoentradasaidasintetico.sql');
      executaScript('novoitemvendafinalizada.sql');
      executaDDL('RECEBIMENTO', 'DESCONTADO', 'Char(1)');
      executaDDL('GUIATRANSPORTE', 'PLACA', 'VARCHAR(8)');
      executaScript('sp_mov_caixaSintetico.sql');
      executaScript('sp_mov_caixaSinteticoConsolida.sql');
      executaScript('sp_mov_caixa_ordemConsolida.sql');
      executaScript('caixa_ordem_sinteticoconsolida.sql');
      mudaVersao('1.0.0.46');
    end;  // Fim Atualizacao Versao 1.0.0.46

    if (versaoSistema = '1.0.0.46') then
    begin
      executaDDL('GUIATRANSPORTE', 'CIDADE_TRANSP', 'VarChar(60)');
      executaDDL('GUIATRANSPORTE', 'UF_TRANSP', 'Char(2)');
      executaDDL('GUIATRANSPORTE', 'Total double', 'precision');
      executaDDL('GUIATRANSPORTE', 'Total2 double', 'precision');
      mudaVersao('1.0.0.47');
    end;  // Fim Atualizacao Versao 1.0.0.47

    if (versaoSistema = '1.0.0.47') then
    begin
      executaDDL('ENDERECOCLIENTE', 'NUMERO', 'VarChar(5)');
      mudaVersao('1.0.0.48');
    end;  // Fim Atualizacao Versao 1.0.0.48

    if (versaoSistema = '1.0.0.48') then
    begin
      executaDDL('EMPRESA', 'CCUSTO', 'Integer');
      mudaVersao('1.0.0.49');
    end;  // Fim Atualizacao Versao 1.0.0.49

    if (versaoSistema = '1.0.0.49') then
    begin
      executaScript('sp_mov_caixafluxo.sql');
      executaScript('sp_mov_caixaordemfluxo.sql');
      executaDDL('LISTAPRECO', 'TIPOOPERACAO', 'char(1)');
      mudaVersao('1.0.0.50');
    end;  // Fim Atualizacao Versao 1.0.0.50

    if (versaoSistema = '1.0.0.50') then
    begin
      executaScript('sp_contas_pagar.sql');
      executaScript('sp_despesas_pagar.sql');
      mudaVersao('1.0.0.51');
    end;  // Fim Atualizacao Versao 1.0.0.51

    if (versaoSistema = '1.0.0.51') then
    begin

      executaScript('sp_divergencia.sql');
      mudaVersao('1.0.0.52');
    end;  // Fim Atualizacao Versao 1.0.0.52

    if (versaoSistema = '1.0.0.52') then
    begin
      executaScript('mapeamentoestoque.sql');
      executaDDL('movimento', 'conferido', 'char(1)');
      mudaVersao('1.0.0.53');
    end;  // Fim Atualizacao Versao 1.0.0.53

    if (versaoSistema = '1.0.0.53') then
    begin
      executaDDL('MOVIMENTO', 'nfcobranca', 'Integer');
      executaDDL('MOVIMENTO', 'ordematend', 'Integer');
      executaDDL('MOVIMENTO', 'nfrevenda', 'Integer');
      executaDDL('LOTES', 'serieini', 'Integer');
      executaDDL('LOTES', 'seriefim', 'Integer');
      mudaVersao('1.0.0.54');
    end;  // Fim Atualizacao Versao 1.0.0.54

    if (versaoSistema = '1.0.0.54') then
    begin
      executaDDL('PRODUTOS', 'VALORMINIMO', 'Double Precision');
      executaDDL('PRODUTOS', 'VALORCOMISSAO', 'Double Precision');
      executaDDL('PRODUTOS', 'GERADESCONTO', 'char(1)');
      executaDDL('PRODUTOS', 'IMPRIMIR', 'char(1)');
      mudaVersao('1.0.0.55');
    end;  // Fim Atualizacao Versao 1.0.0.55

    if (versaoSistema = '1.0.0.55') then
    begin
      //executaScript('CaixaFechadoRecebimento.sql');
      //executaScript('caixaFechadoPag.sql');
      mudaVersao('1.0.0.56');
    end;  // Fim Atualizacao Versao 1.0.0.56

    if (versaoSistema = '1.0.0.56') then
    begin
      executaDDL('VENDA', 'CODORIGEM', 'INTEGER');
      executaScript('bloqueiaclientesatrasados.sql');
      executaScript('balancete.sql');
      executaScript('inclui_rec.sql');
      executaScript('LIMITECREDITO.sql');
      mudaVersao('1.0.0.57');
    end;  // Fim Atualizacao Versao 1.0.0.57

    if (versaoSistema = '1.0.0.57') then
    begin
      executaScript('imprime_venda.sql');
      mudaVersao('1.0.0.58');
    end;  // Fim Atualizacao Versao 1.0.0.58

    if (versaoSistema = '1.0.0.58') then
    begin
      executaDDL('EMPRESA', 'NUMERO', 'VarChar(5)');
      mudaVersao('1.0.0.59');
    end;  // Fim Atualizacao Versao 1.0.0.59

    if (versaoSistema = '1.0.0.59') then
    begin
      executaDDL('PRODUTOS', 'ORIGEM', 'INTEGER');
      executaDDL('ENDERECOCLIENTE', 'CD_IBGE', 'Varchar(10)');
      executaDDL('EMPRESA', 'CD_IBGE', 'Varchar(10)');
      executaSql ('CREATE TABLE TB_IBGE( '+
        'NM_LOCALIDADE Varchar(40) NOT NULL   , ' +
        'CD_IBGE Varchar(10) NOT NULL, ' +
        'NM_MUNICIPIO Varchar(40), ' +
        'NM_TIPO_LOCALIDADE Varchar(20), ' +
        'SQ_IBGE Integer NOT NULL, ' +
        'CD_UF Char(2), ' +
        'PRIMARY KEY (SQ_IBGE))');
      mudaVersao('1.0.0.60');
    end;  // Fim Atualizacao Versao 1.0.0.60

    if (versaoSistema = '1.0.0.60') then
    begin
      executaDDL('NOTAFISCAL', 'PROTOCOLOENV', 'Varchar(20)');
      executaDDL('NOTAFISCAL', 'NUMRECIBO', 'Varchar(20)');
      executaDDL('NOTAFISCAL', 'PROTOCOLOCANC', 'Varchar(20)');
      mudaVersao('1.0.0.61');
    end;  // Fim Atualizacao Versao 1.0.0.61

    if (versaoSistema = '1.0.0.61') then
    begin
      executaDDL('PRODUTOS', 'NCM', 'Varchar(8)');
      mudaVersao('1.0.0.62');
    end;  // Fim Atualizacao Versao 1.0.0.61

    if (versaoSistema = '1.0.0.62') then
    begin
      executaDDL('NOTAFISCAL','SERIE','VARCHAR(20)');
      executaSql('create TABLE OF_OF (OFId Integer not null ' +
         ', OFID_IND Smallint NOT NULL ' +
         ', OFData date, OFStatus char(1), OFQtdeSolic double precision, ' +
         ' OFQtdeProduz Double Precision, OFQtdePerda double precision, ' +
         ' OFMotivo varchar(100), codproduto integer ' +
         ' ,PRIMARY KEY (OFID,OFID_IND))');

      CriaGenerator('GEN_OFID');

      executaSql('CREATE TRIGGER TRG_OFID FOR OF_OF ACTIVE' +
                 ' BEFORE INSERT POSITION 0 ' +
                 ' AS  BEGIN ' +
                 ' IF(NEW.OFID IS NULL) THEN NEW.OFID =' +
                 ' GEN_ID(GEN_OFID ,1);  END ');
      mudaVersao('1.0.0.63');
    end; // Fim Atualizacao Versao 1.0.0.62

    if (versaoSistema = '1.0.0.63') then
    begin
      executaDDL('VEICULO', 'CHASSIS', 'VarChar(30)');
      executaDDL('FORNECEDOR', 'CODTRANSP', 'INTEGER');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'CST', 'CHAR(03)');
      executaDDL('ESTADO_ICMS', 'CST', 'CHAR(03)');
      mudaVersao('1.0.0.64');
    end;  // Fim Atualizacao Versao 1.0.0.64

    if (versaoSistema = '1.0.0.64') then
    begin
      executaSql('ALTER TABLE ENDERECOCLIENTE ALTER E_MAIL TYPE VARCHAR(100)');
      mudaVersao('1.0.0.65');
    end;  // Fim Atualizacao Versao 1.0.0.65

    if (versaoSistema = '1.0.0.65') then
    begin
      executaScript('gera_nf_compra.sql');
      executaScript('desbloqueia_clientes.sql');
      mudaVersao('1.0.0.66');
    end;  // Fim Atualizacao Versao 1.0.0.66

    if (versaoSistema = '1.0.0.66') then
    begin
      executaDDL('ENDERECOFORNECEDOR', 'CD_IBGE', 'Varchar(10)');
      executaDDL('ENDERECOFORNECEDOR', 'NUMERO', 'VarChar(5)');
      mudaVersao('1.0.0.67');
    end;  // Fim Atualizacao Versao 1.0.0.67

    if (versaoSistema = '1.0.0.67') then
    begin
      executaDDL('ESTADO_ICMS', 'PESSOA', 'Varchar(8)');
      executaDDL('ESTADO_ICMS', 'PIS', 'Double Precision');
      executaDDL('ESTADO_ICMS', 'COFINS', 'Double Precision');
      executaDDL('ESTADO_ICMS', 'CSTIPI', 'Varchar(2)');
      executaDDL('ESTADO_ICMS', 'CSTPIS', 'Varchar(2)');
      executaDDL('ESTADO_ICMS', 'CSTCOFINS', 'Varchar(2)');
      executaDDL('ESTADO_ICMS', 'DADOSADC1', 'Varchar(200)');
      executaDDL('ESTADO_ICMS', 'DADOSADC2', 'Varchar(200)');
      executaDDL('ESTADO_ICMS', 'DADOSADC3', 'Varchar(200)');
      executaDDL('ESTADO_ICMS', 'DADOSADC4', 'Varchar(200)');
      mudaVersao('1.0.0.68');
    end;  // Fim Atualizacao Versao 1.0.0.68

    if (versaoSistema = '1.0.0.68') then
    begin
      executaDDL('RECEBIMENTO', 'SITUACAOCHEQUE', 'Varchar(15)');
      executaDDL('RECEBIMENTO', 'BANCO', 'Varchar(60)');
      executaDDL('RECEBIMENTO', 'AGENCIA', 'Varchar(10)');
      executaDDL('RECEBIMENTO', 'CONTA', 'Varchar(10)');
      executaDDL('RECEBIMENTO', 'GERARQREM', 'INTEGER');
      executaDDL('RECEBIMENTO', 'DATAGERARQREM', 'DATE');
      executaDDL('RECEBIMENTO', 'SELECIONOU', 'char(1)');
      executaDDL('RECEBIMENTO', 'DESCONTADO', 'char(1)');
      executaDDL('RECEBIMENTO', 'SITUACAO', 'INTEGER');
      executaScript('corrige_fatura.sql');
      executaScript('CorrigeEstoque.sql');
      executaScript('retornaEstoqueVenda.sql');
      executaScript('retornaEstoqueCompra.sql');
      executaScript('rel_vendaCompra.sql');
      mudaVersao('1.0.0.69');
    end;  // Fim Atualizacao Versao 1.0.0.69

    if (versaoSistema = '1.0.0.69') then
    begin
      executaDDL('NOTAFISCAL', 'PESOREMESSA','DECIMAL(9,2)');
      executaDDL('NOTAFISCAL', 'NOTAMAE','INTEGER');
      executaDDL('NOTAFISCAL', 'VALOR_PIS','DOUBLE PRECISION');
      executaDDL('NOTAFISCAL', 'VALOR_COFINS','DOUBLE PRECISION');
      executaDDL('ESTADO_ICMS', 'NAOENVFATURA','CHAR(1)');
      mudaVersao('1.0.0.70');
    end;  // Fim Atualizacao Versao 1.0.0.70

    if (versaoSistema = '1.0.0.70') then
    begin
      executaDDL('MOVIMENTODETALHE', 'VLR_BASEICMS','DOUBLE PRECISION');
      executaScript('listaSpEstoqueFiltro.sql');
      executaScript('spEstoqueFiltro.sql');
      mudaVersao('1.0.0.71');
    end;  // Fim Atualizacao Versao 1.0.0.71

    if (versaoSistema = '1.0.0.71') then
    begin
      executaDDL('MOVIMENTO', 'CODORIGEM','INTEGER');
      executaDDL('ESTADO_ICMS', 'DADOSADC5', 'Varchar(200)');
      executaDDL('ESTADO_ICMS', 'DADOSADC6', 'Varchar(200)');
      executaDDL('PAGAMENTO', 'USERID', 'Char(2)');
      mudaVersao('1.0.0.72');
    end;  // Fim Atualizacao Versao 1.0.0.72

    if (versaoSistema = '1.0.0.72') then
    begin
      executaScript('baixaTitulosPag.sql');
      executaScript('altera_compra.sql');
      executaScript('inclui_pag.sql');
      mudaVersao('1.0.0.73');
    end;  // Fim Atualizacao Versao 1.0.0.73

    if (versaoSistema = '1.0.0.73') then
    begin
      executaDDL('MOVIMENTODETALHE', 'pIPI', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'vIPI', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'CFOP', 'char(4)'); //alter table MOVIMENTODETALHE add CFOP char(4)'
      executaDDL('CLIENTES', 'CFOP', 'char(4)'); //alter table CLIENTES add CFOP char(4)'
      mudaVersao('1.0.0.74');
    end;  // Fim Atualizacao Versao 1.0.0.74

    if (versaoSistema = '1.0.0.74') then
    begin
      executaDDL('RECEBIMENTO', 'VALST', 'DOUBLE PRECISION'); //alter table RECEBIMENTO add VALST double precision
      executaDDL('RECEBIMENTO', 'VALOR_RESTO_SST', 'DOUBLE PRECISION'); //alter table RECEBIMENTO add VALOR_RESTO_SST double precision
      executaScript('CANCELA_ESTOQUE_VENDA.sql');
      executaScript('trg_cfop_produtos.sql');
      mudaVersao('1.0.0.75');
    end;  // Fim Atualizacao Versao 1.0.0.75

    if (versaoSistema = '1.0.0.75') then
    begin
      executaDDL('PRODUTOS', 'IMPRESSORA_1', 'varchar(10)');
      executaDDL('PRODUTOS', 'IMPRESSORA_2', 'varchar(10)');
      executaDDL('PRODUTOS', 'IMPRESSORA_3', 'varchar(10)');
      executaScript('relcontasreceber.sql');
      mudaVersao('1.0.0.76');
    end;  // Fim Atualizacao Versao 1.0.0.76

    if (versaoSistema = '1.0.0.76') then
    begin
      executaScript('nfe_fatura.sql');
      executaScript('corrige_valor_fatura.sql');
      executaDDL('MOVIMENTO', 'KM', 'varchar(30)');
      executaDDL('MOVIMENTO', 'TOTALMOVIMENTO', 'double precision');
      executaDDL('MOVIMENTO', 'CODMOVRATEIO', 'Integer');
      executaDDL('MOVIMENTO', 'VALORRATEIO', 'double precision');
      executaDDL('MOVIMENTO', 'RATEIO', 'double precision');
      executaDDL('MOVIMENTO', 'NFE', 'varchar(10)');
      mudaVersao('1.0.0.77');
    end;  // Fim Atualizacao Versao 1.0.0.77

    if (versaoSistema = '1.0.0.77') then
    begin
      if (NaoExisteTabela('INVENTARIO')) then
      begin
        executaSql('CREATE TABLE INVENTARIO (CODIVENTARIO Varchar(40) NOT NULL, ' +
       'DATAIVENTARIO Date, CODPRODUTO Integer NOT NULL, ' +
       'CODPRO Varchar(15), SITUACAO Char(1), ' +
       'DATAEXECUTADO Date, ESTOQUE_ATUAL VALOR DEFAULT 0, ' +
       'QTDE_INVENTARIO VALOR DEFAULT 0, UN TEXTO3, ' +
       'PRIMARY KEY (CODIVENTARIO, CODPRODUTO))');
      end;
      executaScript('inventario_lanca.sql');
      executaScript('invent_estoque.sql');
      mudaVersao('1.0.0.78');
    end;  // Fim Atualizacao Versao 1.0.0.78

    if (versaoSistema = '1.0.0.78') then
    begin
      DeletaTrigger('SAIDA_ESTOQUE');
      DeletaTrigger('ENTRADA_ESTOQUE');
      DeletaTrigger('ALTERA_ESTOQUE');
      DeletaTrigger('LOTE_EXCLUI');
      DeletaTrigger('MOV_ESTOQUECORRIGE');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'IPI', 'double precision');
      executaScript('baixa_estoque.sql');
      executaScript('gera_valor.sql');
      executaScript('lote_entrada.sql');
      executaScript('lote_saida.sql');
      executaScript('lanca_ent_saida.sql');
      executaScript('mov_estoque.sql');
      mudaVersao('1.0.0.79');
    end;  // Fim Atualizacao Versao 1.0.0.79

    if (versaoSistema = '1.0.0.79') then
    begin
      executaDDL('NOTAFISCAL', 'VALOR_DESCONTO', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'FRETE', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'BCFRETE', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'STFRETE', 'char(4)');
      executaDDL('ESTADO_ICMS', 'CSOSN', 'Varchar(3)');
      executaDDL('EMPRESA', 'CRT', 'INTEGER');
      executaScript('altera_vlrvenda.sql');
      executaScript('gera_nf_devolucaocompra.sql');
      executaScript('gera_nf_devolucaovenda.sql');
      executaScript('gera_nf_compra.sql');
      mudaVersao('1.0.0.80');
    end;  // Fim Atualizacao Versao 1.0.0.80

    if (versaoSistema = '1.0.0.80') then
    begin
      executaDDL('MOVIMENTO', 'PRAZO_ENT', 'Integer');
      executaDDL('MOVIMENTO', 'VAL_PROP', 'date');
      executaDDL('MOVIMENTO', 'FORMA_PAG', 'varchar(40)');
      executaDDL('MOVIMENTO', 'VALOR_FRETE', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'BCSTFRETE', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'ICMSFRETE', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'CSOSN', 'Varchar(3)');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'IPI', 'double precision');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'CSOSN', 'Varchar(3)');
  	  executaDDL('NOTAFISCAL', 'VALOR_DESCONTO', 'DOUBLE PRECISION');
	  mudaVersao('1.0.0.81');
    end;  // Fim Atualizacao Versao 1.0.0.81

    if (versaoSistema = '1.0.0.81') then
    begin
      if (NaoExisteTabela('COMPRA_SOLIC')) then
      begin
        Sql := 'CREATE TABLE COMPRA_SOLIC (SOLIC_CODIGO INTEGER NOT NULL primary key, ' +
        'SOLIC_DATA DATE DEFAULT current_date, SOLIC_PRODUTO VARCHAR (15) NOT NULL, ' +
        'SOLIC_QUANTIDADE DOUBLE precision, SOLIC_SOLICITANTE Varchar(30), ' +
        'SOLIC_SITUACAO CHAR(1), SOLIC_APROVACAO Varchar(30), ' +
        'SOLIC_TIPO CHAR(1), SOLIC_DTNECESSIT date)';
        ExecutaSql(sql);
      end;
      mudaVersao('1.0.0.82');
    end;  // Fim Atualizacao Versao 1.0.0.82

    if (versaoSistema = '1.0.0.82') then
    begin
      if (NaoExisteTabela('COMPRA_COTACAO')) then
      begin
        executaSql('CREATE TABLE COMPRA_COTACAO (COTACAO_CODIGO INTEGER NOT NULL, ' +
        'COTACAO_DATA   DATE DEFAULT current_date, COTACAO_FORNEC INTEGER NOT NULL, ' +
        'COTACAO_SOLICIT VARCHAR(20),  COTACAO_ITEM   VARCHAR(15) NOT NULL, ' +
        'COTACAO_ITEMDESCRICAO VARCHAR(300),  COTACAO_SITUACAO CHAR(1), ' +
        'COTACAO_QTDE  DOUBLE precision,  COTACAO_PRECO  DOUBLE precision, ' +
        'COTACAO_USER   VARCHAR(20),  COTACAO_TIPO CHAR(1), ' +
        'COTACAO_CODSOLIC integer,  COTACAO_DTENTREGA DATE, ' +
        'COTACAO_PRAZO VARCHAR(30), COTACAO_OBSERVACAO VARCHAR(200), ' +
        'PRIMARY KEY (COTACAO_CODIGO, COTACAO_FORNEC, COTACAO_ITEM))');
      end;
      mudaVersao('1.0.0.83');
    end;  // Fim Atualizacao Versao 1.0.0.83

    if (versaoSistema = '1.0.0.83') then
    begin
      if (NaoExisteTabela('APONTHORAS')) then
      begin
        executaSql('create table aponthoras ( id_aponthoras integer not null primary key, ' +
        'cod_cliente integer, cod_fornecedor integer, ' +
        'cod_usuario integer, data_movimento date, ' +
        'COD_PRODUTO Integer,  COD_CC Integer)');
      end;
      mudaVersao('1.0.0.84');
    end;  // Fim Atualizacao Versao 1.0.0.84

    if (versaoSistema = '1.0.0.84') then
    begin
      if (NaoExisteTabela('APONTHORASDET')) then
      begin
        executaSql('create table aponthorasdet (id_aponthorasdet integer not null primary key, ' +
        'id_aponthoras integer not null, data date, ' +
        'Tarefa_local varchar(150), inicio time, ' +
        'termino time, obs varchar(300), ' +
        'km double precision,  km_valor double precision, ' +
        'km_total double precision, despesa double precision, ' +
        'pedagio double precision, valor_hora double precision, ' +
        'total_hora double precision, total_geral double precision, ' +
        'n_relatorio integer) ');
      end;
      mudaVersao('1.0.0.85');
    end;  // Fim Atualizacao Versao 1.0.0.85

    if (versaoSistema = '1.0.0.85') then
    begin
      CriaGenerator('GEN_APONTHORASDET');
      CriaGenerator('GEN_APONTHORAS');
      executaDDL('MOVIMENTO', 'DATA_ENTREGA', 'DATE');
      executaDDL('MOVIMENTO', 'PRAZO_PAGAMENTO', 'VARCHAR(30)');
      mudaVersao('1.0.0.86');
    end;  // Fim Atualizacao Versao 1.0.0.86

    if (versaoSistema = '1.0.0.86') then
    begin
      executaDDL('MOVIMENTO', 'USER_APROVA', 'varchar(20)');
      executaDDL('MOVIMENTODETALHE', 'VALOR_DESCONTO', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'RECEBIDO', 'DOUBLE PRECISION DEFAULT 0');
      executaDDL('MOVIMENTODETALHE', 'VALOR_SEGURO', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'VALOR_OUTROS', 'DOUBLE PRECISION');
      executaDDL('COMPRA_COTACAO', 'COTACAO_IPI', 'double precision');
      executaDDL('COMPRA_COTACAO', 'COTACAO_DESCONTO', 'double precision');
      executaDDL('COMPRA_COTACAO', 'COTACAO_FRETE', 'double precision');
      executaDDL('CFOP', 'FRETEBC', 'char(1)');
      executaDDL('CFOP', 'IPIBC', 'char(1)');
      executaScript('baixa_estoque.sql');
      executaScript('insere_estoque.sql');
      executaScript('mov_estoque.sql');
      executaScript('proc_cotacao.sql');
      try
        executaSql('INSERT INTO NATUREZAOPERACAO (CODNATUREZA, DESCNATUREZA,  ' +
         ' GERATITULO, TIPOTITULO, TIPOMOVIMENTO, BAIXAMOVIMENTO) VALUES (' +
         '5, ' + QuotedStr('Cotacao') +  ', 1, 2, 0, 0)');
      except
      end;
      mudaVersao('1.0.0.87');
    end;   // Fim Atualizacao Versao 1.0.0.87

    if (versaoSistema = '1.0.0.87') then
    begin
      executaDDL('NOTAFISCAL', 'CCUSTO', 'INTEGER');
      executaDDL('COMPRA_COTACAO', 'COTACAO_IPI', 'DOUBLE PRECISION DEFAULT 0');
      executaDDL('COMPRA_COTACAO', 'COTACAO_FRETE', 'DOUBLE PRECISION DEFAULT 0');
      executaDDL('COMPRA_COTACAO', 'COTACAO_DESCONTO', 'DOUBLE PRECISION DEFAULT 0');
      mudaVersao('1.0.0.88');
    end; // Fim Atualizacao Versao 1.0.0.88

    if (versaoSistema = '1.0.0.88') then
    begin
      executaScript('baixaTitulosPagEdita.sql');
      try
        executaSql('ALTER TABLE PAGAMENTO ALTER USERID TYPE TEXTO3');
      except
      end;  
      executaScript('baixaTitulosPag.sql');
      mudaVersao('1.0.0.89');
    end; // Fim Atualizacao Versao 1.0.0.89

    if (versaoSistema = '1.0.0.89') then
    begin
      {SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add('select * from RDB$RELATION_CONSTRAINTS ' +
        ' where rdb$relation_name = ' + QuotedStr('COMPRA_COTACAO') +
        '   and RDB$CONSTRAINT_NAME = ' + QuotedStr('INTEG_402'));
      SQLQuery1.Open;

      if (not SQLQuery1.IsEmpty) then
      begin
        executaSql('ALTER TABLE COMPRA_COTACAO DROP CONSTRAINT INTEG_402');
      end;}

      //executaSql('ALTER TRIGGER GERA_PEDIDO INACTIVE;');

      {SQLQuery1.SQL.Clear;
      SQLQuery1.SQL.Add('select * from RDB$RELATION_CONSTRAINTS ' +
        ' where rdb$relation_name = ' + QuotedStr('COMPRA_COTACAO') +
        '   and RDB$CONSTRAINT_NAME = ' + QuotedStr('PK_COMPRA_COTACAO_1'));
      SQLQuery1.Open;

      if (SQLQuery1.IsEmpty) then
      begin
        executaSql('alter table COMPRA_COTACAO add constraint PK_COMPRA_COTACAO_1 ' +
          'primary key (COTACAO_CODIGO, COTACAO_FORNEC, COTACAO_ITEM)');
      end;}
      mudaVersao('1.0.0.90');
    end; // Fim Atualizacao Versao 1.0.0.90

    if (versaoSistema = '1.0.0.90') then
    begin
      executaDDL('MOVIMENTO', 'CODTRANSP', 'INTEGER');
      executaDDL('MOVIMENTO', 'TPFRETE', 'CHAR(1)');
      executaDDL('MOVIMENTO', 'CODPEDIDO', 'INTEGER');
      executaDDL('PRODUTOS', 'QTD', 'integer');
      executaDDL('OS', 'STATUS', 'char(1)');
      executaDDL('OS', 'DATA_INI', 'date');
      executaDDL('OS', 'DATA_FIM', 'date');
	    executaScript('codpedido_null.sql');
      executaScript('altera_status_cotacao.sql');
      executaScript('cotacao_negociacao.sql');
      executaScript('cotacao_estorna.sql');
      if (NaoExisteTabela('OS_DET')) then
      begin
        executaSql('create table OS_DET ( id_OS_DET integer not null, ' +
          'id_OS integer not null, descricao_serv varchar(1024), ' +
          'responsavel varchar(150), status char(1), ' +
          ' CODPRODUTO INTEGER NOT NULL, ' +
          ' TIPO CHAR(1),  ' +
          ' QTDE VALOR DEFAULT 0, '  +
          ' PRECO VALOR DEFAULT 0, ' +
          ' DESCONTO VALOR DEFAULT 0, ' +
          ' VALORTOTAL COMPUTED BY ((PRECO-DESCONTO)*QTDE) , ' +
          ' ID_OSDET_SERV INTEGER) ');
      end;
      mudaVersao('1.0.0.91');
    end; // Fim Atualizacao Versao 1.0.0.91

    if (versaoSistema = '1.0.0.91') then
    begin
      executaDDL('NOTAFISCAL', 'IDCOMPLEMENTAR', 'VARCHAR(44)');
      executaDDL('NOTAFISCAL', 'XMLNFE', 'BLOB');
      executaScript('inclui_rec.sql');
      executaScript('inclui_pag.sql');
      executaScript('frete_nf.sql');
      //executaSql('ALTER TABLE COMPRA DROP CONSTRAINT FK_COMPRA_BANCO');
      mudaVersao('1.0.0.92');
    end; // Fim Atualizacao Versao 1.0.0.92

    if (versaoSistema = '1.0.0.92') then
    begin
      executaDDL('FUNCIONARIO', 'SALARIO',  'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'STATUS', 'VARCHAR(30)');
      executaDDL('MOVIMENTODETALHE', 'OBS', 'VARCHAR(300)');
      executaDDL('MOVIMENTODETALHE', 'COD_FUNCIONARIO', 'INTEGER');
      executaScript('baixaTitulosPag.sql');
      executaScript('baixaTitulosRec.sql');
      //executaScript('expedicao_gera_pedido.sql');
      executaScript('insere_transp_fornec.sql');
      executaScript('inventario_lanca.sql');
      executaScript('sp_mov_caixa.sql');
      executaScript('listaSpEstoqueFiltro.sql');
      executaScript('spEstoqueFiltro.sql');
      executaScript('trg_data_altera_preco.sql');
      CriaGenerator('GEN_SIMILAR');
      if (NaoExisteTabela('ESTOQUEMES')) then
      begin
        executaSql('create table ESTOQUEMES ( CODPRODUTO Integer NOT NULL, LOTE Varchar(60) NOT NULL,' +
          'MESANO Date NOT NULL, QTDEENTRADA Double precision, ' +
          'QTDECOMPRA Double precision, QTDEDEVCOMPRA Double precision, ' +
          'QTDESAIDA Double precision, QTDEVENDA Double precision, ' +
          'QTDEPERDA Double precision, PRECOCUSTO Double precision, ' +
          'PRECOCOMPRA Double precision, PRECOCOMPRAULTIMA Double precision, ' +
          'PRECOVENDA Double precision, CENTROCUSTO Integer NOT NULL, ' +
          'QTDEDEVVENDA Double precision, QTDEINVENTARIO Double precision, ' +
          'SALDOMESANTERIOR Double precision, PRIMARY KEY (CODPRODUTO,LOTE,MESANO,CENTROCUSTO) )');
        executaSql('ALTER TABLE ESTOQUEMES ADD SALDOESTOQUE COMPUTED BY (SALDOMESANTERIOR + ' +
        'QTDEINVENTARIO + QTDEENTRADA + QTDECOMPRA + QTDEDEVCOMPRA - QTDEVENDA - QTDESAIDA - QTDEPERDA -  QTDEDEVVENDA) ');
      end;
      CriaGenerator('GEN_OS');
      executaScript('spEstoqueFiltro.sql');
      executaScript('estoqueccustoent.sql');
      mudaVersao('1.0.0.93');
      {executaSql('INSERT INTO NATUREZAOPERACAO (CODNATUREZA, DESCNATUREZA, GERATITULO, TIPOTITULO, TIPOMOVIMENTO) VALUES (' +
      '6, ' + QuotedStr('Expediaoo') + ', 1, 0, 6)'); }
	    DeletaTrigger('ESTOQUECCUSTOENT');
    end; // Fim Atualizacao Versao 1.0.0.93

    if (versaoSistema = '1.0.0.93') then
    begin
      CriaGenerator('CODPEDIDO');
      executaDDL('MOVIMENTO', 'CODCOTACAO',  'INTEGER');
      executaDDL('MOVIMENTODETALHE', 'CODSOLICITACAO',  'INTEGER');
      executaDDL('MOVIMENTODETALHE', 'CODIGO1',  'INTEGER');
      executaDDL('MOVIMENTODETALHE', 'CODIGO',  'INTEGER');
      executaDDL('INVENTARIO', 'CODCCUSTO',  'INTEGER');
      executaDDL('PLANO', 'CODEMPRESA',  'INTEGER');
      executaDDL('NATUREZAOPERACAO', 'CFOP_ESTADO',  'TEXTO30');
      executaDDL('NATUREZAOPERACAO', 'CFOP_FORA_ESTADO',  'TEXTO30');
      executaDDL('NATUREZAOPERACAO', 'CFOP_INTERNACIONAL',  'TEXTO30');
      executaDDL('OS', 'KM', 'Integer');
      executaDDL('OS', 'CODUSUARIO', 'Integer');
      executaDDL('OS', 'DATAOS', 'Date');
      executaScript('gera_pedido_proc.sql');
      executaScript('rel_compra_pedido.sql');
      executaScript('cotacao_gera_pedido.sql');
      mudaVersao('1.0.0.94');
    end; // Fim Atualizacao Versao 1.0.0.94

    if (versaoSistema = '1.0.0.94') then
    begin
      executaSql('ALTER TABLE OS DROP CODVEICULO');
      CriaException('ALTERA_CODPRO ', 'Produto em uso na Solicitaaoo, nao e possivel fazer alteraaoo');
      executaDDL('OS', 'CODVEICULO', 'VARCHAR(10)');
      executaDDL('OS_DET', 'CODUSUARIO', 'INTEGER');
      executaDDL('INVENTARIO', 'LOTE',  'VARCHAR(60)');
      executaDDL('INVENTARIO', 'CODCCUSTO', 'INTEGER');
      executaDDL('MOVIMENTO', 'USUARIOLOGADO', 'VARCHAR(30)');
      executaDDL('BANCO', 'ESPECIEDOC', 'Varchar(5)');
      executaDDL('BANCO', 'ACEITE', 'Varchar(2)');
      executaDDL('BANCO', 'CONVENIO', 'Varchar(10)');
      executaDDL('BANCO', 'LOCALPGTO', 'Varchar(100)');
      executaDDL('BANCO', 'N_BANCO', 'Varchar(10)');
      executaDDL('BANCO', 'DIGITOBANCO', 'Integer');
      executaDDL('PRODUTOS', 'TAM_LOTE', 'Integer');
      executaDDL('ENDERECOCLIENTE', 'PAIS', 'varchar(60)');
      executaDDL('MOVIMENTODETALHE', 'VALOR_PIS',  'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'VALOR_COFINS',  'DOUBLE PRECISION');
      executaScript('invent_estoque.sql');
      executaScript('sp_lote_estoquemes.sql');
      executaScript('trg_altera_codpro.sql');
      executaScript('extrato_pag.sql');
      if (NaoExisteTabela('PAIS')) then
      begin
        executaSql('create table PAIS ( CODPAIS char(4) NOT NULL, ' +
          'PAIS VARCHAR(60) NOT null, ' +
          'PRIMARY KEY(CODPAIS, PAIS) )');
        MessageDlg('Execute o Script "pais.sql".', mtWarning, [mbOK], 0);
      end;
      mudaVersao('1.0.0.95');
    end; //Fim Atualizacao Versao 1.0.0.95

    if (versaoSistema = '1.0.0.95') then
    begin
      executaDDL('CLIENTES', 'COD_CLI', 'varchar(10)');
      executaDDL('MOVIMENTO', 'TIPO_PEDIDO', 'char(1)');
      executaDDL('ENDERECOCLIENTE', 'PAIS', 'varchar(60)');
      executaDDL('ENDERECOFORNECEDOR', 'PAIS', 'varchar(60)');
      executaDDL('VENDA', 'TROCO', 'DOUBLE PRECISION');
      executaDDL('NOTAFISCAL', 'II', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'II', 'DOUBLE PRECISION');
      executaScript('lista_estoque.sql');
      executaScript('gera_parcelas_pag.sql');
      executaScript('pedido_x_venda.sql');
      CriaCampoDescricao('MOVIMENTO', 'TIPO_PEDIDO', 'V - Venda, C - Comanda, D - Delivery');
      executaSql('UPDATE ENDERECOCLIENTE set PAIS = ' + QuotedStr('Brasil'));
      executaSql('UPDATE ENDERECOFORNECEDOR set PAIS = ' + QuotedStr('Brasil'));
      mudaVersao('1.0.0.96');
    end;// Fim Atualizacao Versao 1.0.0.96

    if (versaoSistema = '1.0.0.96') then
    begin
      CriaGenerator('GEN_OSDET');
      executaDDL('TRANSPORTADORA', 'FANTASIA', 'varchar(50)');
      executaDDL('FUNCIONARIO', 'EMAIL', 'varchar(80)');
      executaDDL('TRANSPORTADORA', 'EMAIL', 'varchar(100)');
      executaDDL('NOTAFISCAL', 'BCII', 'DOUBLE PRECISION');
      executaDDL('MOVIMENTODETALHE', 'BCII', 'DOUBLE PRECISION');
      executaDDL('OS', 'VEICULO', 'VARCHAR(200)');
      executaScript('calcula_icms.sql');
      executaSql('ALTER TABLE FUNCIONARIO ALTER BAIRRO TYPE Varchar(60);');
      executaSql('ALTER TABLE FUNCIONARIO ALTER COMPLEMENTO TYPE Varchar(60);');
      executaSql('ALTER TABLE FUNCIONARIO ALTER RUA TYPE Varchar(60);');
      executaSql('ALTER TABLE FUNCIONARIO ALTER CIDADE TYPE Varchar(60);');
      executaSql('update TRANSPORTADORA set FANTASIA = NOMETRANSP');
      DeletaProc('GERA_NF_DEVOLUCAOCOMPRA');
      DeletaProc('GERA_NF_DEVOLUCAOVENDA');
      DeletaProc('GERA_NF_VENDA');
      DeletaProc('GERA_NF_COMPRA');
     // executaSql('ALTER TABLE NOTAFISCAL ALTER CORPONF1 TYPE Varchar(200)');
     // executaSql('ALTER TABLE NOTAFISCAL ALTER CORPONF2 TYPE Varchar(200)');
     // executaSql('ALTER TABLE NOTAFISCAL ALTER CORPONF3 TYPE Varchar(200)');
     // executaSql('ALTER TABLE NOTAFISCAL ALTER CORPONF4 TYPE Varchar(200)');
      executaScript('gera_nf_devolucaocompra.sql');
      executaScript('gera_nf_devolucaovenda.sql');
      CriaException('ALTERA_NFE ', 'Nao pode ser Excluida ou Alterada, Nota Eletronica Gerada');
      executaScript('proibe_alt_del_nf.sql');
      if (NaoExisteTabela('ESTADO')) then
      begin
        executaSql('create table ESTADO ( CODIGO Integer NOT NULL, ' +
          'SIGLA Char(2), NOME Varchar(60))');
        MessageDlg('Execute o Script "estado.sql".', mtWarning, [mbOK], 0);
      end;
      mudaVersao('1.0.0.97');
    end;// Fim Atualizacao Versao 1.0.0.97

    if (versaoSistema = '1.0.0.97') then
    begin
      executaDDL('NOTAFISCAL', 'NOMEXML', 'VARCHAR(60)');
      if (NaoExisteTabela('CCE')) then
      begin
        executaSql('create table CCE ( CHAVE varchar(44), ' +
          'ORGAO integer, CNPJ varchar(19), ' +
          'DHENVIO timestamp, SEQUENCIA integer, ' +
          'CORRECAO varchar(1000), ' +
          'PROTOCOLO Varchar(20), ' +
          'SELECIONOU TEXTO1, ' +
          'CONSTRAINT PK_CC PRIMARY KEY (CHAVE,SEQUENCIA))');
      end;
      if (NaoExisteTabela('FORMA_ENTRADA')) then
      begin
        executaSql('CREATE TABLE FORMA_ENTRADA ( COD_VENDA Integer NOT NULL, ' +
        'ID_ENTRADA Integer NOT NULL, FORMA_PGTO Char(1), ' +
        'CAIXA Smallint,  N_DOC Varchar(60),  VALOR_PAGO Double precision)');
      end;
      executaDDL('MOVIMENTODETALHE', 'IMPRESSO', 'CHAR(3)');
      executaDDL('RECEBIMENTO', 'USERID', 'INTEGER');
      executaDDL('PRODUTOS', 'ESTOQUEMAXIMO', 'DOUBLE PRECISION');
      executaScript('gera_nf_compra.sql');
      mudaVersao('1.0.0.98');
    end;// Fim Atualizacao Versao 1.0.0.98

    if (versaoSistema = '1.0.0.98') then
    begin
      try
        executaSql('UPDATE OS_DET set CODPRODUTO = 390 WHERE CODPRODUTO = 0');
        executaSql(UpperCase('alter table OS_DET ' +
          'add constraint FK_OS_DET_PROD ' +
          'foreign key (CODPRODUTO) ' +
          'references PRODUTOS (CODPRODUTO) ' +
          'on update NO ACTION ' +
          'on delete NO ACTION'));
      except

      end;
      mudaVersao('1.0.0.99');
    end;// Fim Atualizacao Versao 1.0.0.98

    if (versaoSistema = '1.0.0.99') then
    begin
      if (NaoExisteTabela('DECLARACAOIMPORTACAO')) then
      begin
        executaSql('CREATE TABLE DECLARACAOIMPORTACAO' +
        '( ' +
        ' DI_CODDI integer NOT NULL, ' +
        ' DI_NUMDI varchar(10) NOT NULL, ' +
        ' DI_DATA date, ' +
        ' DI_LOCALDESEMB varchar(60), ' +
        ' DI_UFDESEMB varchar(2), ' +
        ' DI_DATADESEMB date, ' +
        ' DI_CODEXPORTADOR varchar(60), ' +
        ' NOTASERIE varchar(10), ' +
        ' CODMOVIMENTO integer, ' +
        ' PRIMARY KEY (DI_CODDI))');
      end;
      executaDDL('DECLARACAOIMPORTACAO', 'NOTASERIE', 'VARCHAR(10)');
      executaDDL('DECLARACAOIMPORTACAO', 'CODMOVIMENTO', 'INTEGER');
      mudaVersao('1.0.0.100');
    end;

    if (versaoSistema = '1.0.0.100') then
    begin
      EXECUTADDLDROP('EMPRESA', 'INDICADORNATUREZAPJ');
      EXECUTADDLDROP('EMPRESA', 'INDICADORATIVIDADE');
      EXECUTADDLDROP('EMPRESA', 'CODINDINCTRIBUTARIA');
      EXECUTADDLDROP('EMPRESA', 'INDAPROCRED');
      EXECUTADDLDROP('EMPRESA', 'CODINDTIPOCON');
      EXECUTADDLDROP('EMPRESA', 'CODINDCRITESCRIT');
      EXECUTADDLDROP('EMPRESA', 'INDCODINCIDENCIA');
      EXECUTADDLDROP('EMPRESA', 'INDCTA');
      EXECUTADDLDROP('EMPRESA', 'BASECALCULOCREDITO');
      EXECUTADDLDROP('EMPRESA', 'INDESCRITURACAO');
      EXECUTADDLDROP('EMPRESA', 'INDREC');
      EXECUTADDLDROP('EMPRESA', 'INDDESCCRED');
      EXECUTADDLDROP('EMPRESA', 'INDNATRETFONTE');
      EXECUTADDLDROP('EMPRESA', 'INDNATDEDUCAO');
      EXECUTADDLDROP('EMPRESA', 'INDTPOPERACAORECEITA');
      EXECUTADDLDROP('EMPRESA', 'INDORIGEMDIVERSAS');
      EXECUTADDLDROP('EMPRESA', 'CODCONT');
      EXECUTADDLDROP('EMPRESA', 'INDCREDORI');
      EXECUTADDLDROP('EMPRESA', 'INDAJ');
      EXECUTADDLDROP('EMPRESA', 'CODAJ');
      EXECUTADDLDROP('EMPRESA', 'INDNATREC');
      EXECUTADDLDROP('EMPRESA', 'NATCREDDESC');
      EXECUTADDLDROP('EMPRESA', 'CODCRED');
      EXECUTADDLDROP('EMPRESA', 'INDTIPCOOP');
      executaDDL('EMPRESA', 'CONTADOR',        'VARCHAR(100)');
      executaDDL('EMPRESA', 'CONTADOR_CRC',    'CHAR(20)');
      executaDDL('EMPRESA', 'CONTADOR_CNPJ',   'CHAR(14)');
      executaDDL('EMPRESA', 'CONTADOR_CPF',    'CHAR(11)');
      executaDDL('EMPRESA', 'CONTADOR_CEP',    'CHAR(10)');
      executaDDL('EMPRESA', 'CONTADOR_END',    'VARCHAR(150)');
      executaDDL('EMPRESA', 'CONTADOR_NUMEND', 'CHAR(7)');
      executaDDL('EMPRESA', 'CONTADOR_COMPL',  'VARCHAR(80)');
      executaDDL('EMPRESA', 'CONTADOR_BAIRRO', 'VARCHAR(100)');
      executaDDL('EMPRESA', 'CONTADOR_FONE',   'VARCHAR(14)');
      executaDDL('EMPRESA', 'CONTADOR_FAX',    'VARCHAR(14)');
      executaDDL('EMPRESA', 'CONTADOR_EMAIL',  'VARCHAR(100)');
      executaDDL('EMPRESA', 'CONTADOR_COD_MUN', 'CHAR(10)');
      EXECUTADDL('EMPRESA', 'CODINDTIPOCON', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDAPROCRED', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'CODINDINCTRIBUTARIA', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDICADORATIVIDADE', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDICADORNATUREZAPJ', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDCODINCIDENCIA', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'CODINDCRITESCRIT', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDESCRITURACAO', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDCTA', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDTIPCOOP', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDAJ', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'BASECALCULOCREDITO', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'CODAJ', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDNATREC', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'CODCRED', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'NATCREDDESC', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDCREDORI', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDREC', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'CODCONT', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDDESCCRED', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDORIGEMDIVERSAS',   'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDNATRETFONTE',      'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDTPOPERACAORECEITA', 'SMALLINT');
      EXECUTADDL('EMPRESA', 'INDNATDEDUCAO',       'SMALLINT');
      EXECUTADDL('EMPRESA', 'IM', 'VARCHAR(15)');
      EXECUTADDL('EMPRESA', 'TREGIME', 'INTEGER');


      if (NaoExisteTabela('SPEDPISCOFINS') = False) then
      begin
        executaSql('DROP TABLE SPEDPISCOFINSDET');
        executaSql('DROP TABLE SPEDPISCOFINS');
      end;

      if (NaoExisteTabela('SPEDPISCOFINS')) then
      begin
        executaSql('CREATE TABLE SPEDPISCOFINS ( CODSPED Integer NOT NULL ' +
        'PRIMARY KEY, DATAINI DATE , DATAFIM DATE, DATAGERADO DATE, DATAENVIADO DATE, ' +
        'EMPRESA VARCHAR(100), EMPRESA_CNPJ CHAR(14), EMPRESA_CODIGO INTEGER)');
      end;
      EXECUTADDL('SPEDPISCOFINS', 'CODFINALIDADE',        'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDICADORMOVIMENTO',   'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'PERFIL',               'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'ATIVIDADE',            'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'VERSAOLEIAUTE',        'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'CODFINALIDADE',        'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'TIPOESCRITURACAO',    'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDICADORNATUREZAPJ', 'SMALLINT'); // INDICADOR DA NATUREZA DA PESSOA JURIDICA
      EXECUTADDL('SPEDPISCOFINS', 'INDICADORATIVIDADE',  'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'CODINDINCTRIBUTARIA', 'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDAPROCRED',         'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'CODINDTIPOCON',       'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'CODINDCRITESCRIT',    'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDCODINCIDENCIA',    'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDCTA',              'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDESCRITURACAO',     'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'BASECALCULOCREDITO',  'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDAJ',               'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'CODAJ',               'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDNATREC',           'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'NATCREDDESC',         'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'CODCRED',             'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDTIPCOOP',          'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDCREDORI',          'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDREC',              'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDDESCCRED',         'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'CODCONT',             'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDNATRETFONTE',      'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDORIGEMDIVERSAS',   'SMALLINT');
      EXECUTADDL('SPEDPISCOFINS', 'INDNATDEDUCAO',       'VARCHAR(50)');
      EXECUTADDL('SPEDPISCOFINS', 'INDTPOPERACAORECEITA','SMALLINT');
      executaDDL('SPEDPISCOFINS', 'CONTADOR',            'VARCHAR(100)');
      executaDDL('SPEDPISCOFINS', 'CONTADOR_CPF',        'CHAR(11)');
      executaDDL('SPEDPISCOFINS', 'CONTADOR_CNPJ',       'CHAR(14)');
      executaDDL('SPEDPISCOFINS', 'CONTADOR_CEP',        'CHAR(8)');
      executaDDL('SPEDPISCOFINS', 'CONTADOR_END',        'VARCHAR(100)');
      executaDDL('SPEDPISCOFINS', 'CONTADOR_NUM',        'CHAR(7)');
      executaDDL('SPEDPISCOFINS', 'CONTADOR_COMPL',      'VARCHAR(80)');
      executaDDL('SPEDPISCOFINS', 'CONTADOR_BAIRRO',     'VARCHAR(80)');
      executaDDL('SPEDPISCOFINS', 'CONTADOR_FONE',       'CHAR(14)');
      executaDDL('SPEDPISCOFINS', 'CONTADOR_FAX',        'CHAR(14)');
      executaDDL('SPEDPISCOFINS', 'CONTADOR_EMAIL',      'VARCHAR(100)');
      executaDDL('SPEDPISCOFINS', 'CONTADOR_CODMUN',     'CHAR(10)');

      if (NaoExisteTabela('SPEDPISCOFINSDET')) then
      begin
        executaSql('CREATE TABLE SPEDPISCOFINSDET ( CODSPEDDET INTEGER NOT NULL ' +
        'PRIMARY KEY, CODSPED Integer NOT NULL, ' +
        'DATAINI DATE , DATAFIM DATE, DATAGERADO DATE, DATAENVIADO DATE, ' +
        'EMPRESA VARCHAR(100), EMPRESA_CNPJ CHAR(14), EMPRESA_CODIGO INTEGER)');

        executaSql(UpperCase('alter table SPEDPISCOFINSDET  ' +
           ' add constraint FK_SPEDPISCOFINSDET_1 ' +
           ' foreign key (CODSPED) ' +
           ' references SPEDPISCOFINS (CODSPED)  ' +
           ' on delete NO ACTION '));
      end;

      EXECUTADDL('SPEDPISCOFINSDET', 'TIPOITEM',       'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'TIPOOPERACAO',   'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'EMITENTE',       'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'TIPOPAGAMENTO',  'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'TIPOFRETE',      'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'TIPOFRETEREDESPACHO', 'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'ORIGEMPROCESSO', 'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'DOCTOARRECADA',  'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'TIPOTRANSPORTE', 'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'DOCTOIMPORTA',   'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'TIPOTITULO',     'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'MOVIMENTACAOFISICA', 'VARCHAR(10)');
      EXECUTADDL('SPEDPISCOFINSDET', 'APURACAOIPI',    'VARCHAR(10)');
      EXECUTADDL('SPEDPISCOFINSDET', 'NATUREZAFRETE',  'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'NATUREZAFRTCONTRATADO', 'VARCHAR(30)');
      EXECUTADDL('SPEDPISCOFINSDET', 'MOVIMENTOST',    'VARCHAR(30)');

      mudaVersao('1.0.0.101');
    end;

    if (versaoSistema = '1.0.0.101') then
    begin
      if (NaoExisteTabela('BANCOEXTRATO')) then
      begin
        executaSql('CREATE TABLE BANCOEXTRATO ( EXTRATOCOD VARCHAR(20) NOT NULL, ' +
        ' EXTRATODATA DATE NOT NULL , ' +
        ' CAIXA INTEGER NOT NULL, ' +
        ' EXTRATODOC VARCHAR(100), ' +
        ' EXTRATOTIPO VARCHAR(20), ' +
        ' EXTRATOVALOR  DOUBLE PRECISION, ' +
        ' SEL CHAR(1), ' +
        ' CONCILIADO CHAR(1), ' +
        ' PRIMARY KEY(EXTRATOCOD, EXTRATODATA, CAIXA))');
      end;
      if (NaoExisteTabela('BANCODEPARA')) then
      begin
        executaSql('CREATE TABLE BANCODEPARA(' +
        ' CAIXA INTEGER NOT NULL, ' +
        ' CONTA INTEGER NOT NULL, ' +
        ' EXTRATODOC VARCHAR(100) NOT NULL, ' +
        ' EXTRATOTIPO VARCHAR(20) NOT NULL, ' +
        ' PRIMARY KEY (CAIXA, CONTA, EXTRATODOC, EXTRATOTIPO))');
      end;
      executaDDL('FORNECEDOR', 'CODFOR', 'varchar(10)');
      executaDDL('PAGAMENTO',     'CODCONCILIACAO', 'Varchar(50)');
      executaDDL('PLANO', 'TIPOLANC', 'varchar(10)');
      executaDDL('RECEBIMENTO', 'CODIGOBOLETO', 'varchar(20)');
      executaDDL('RECEBIMENTO', 'CODIGOBANCO', 'integer');
      executaDDL('RECEBIMENTO',   'CODCONCILIACAO', 'Varchar(50)');
      executaDDL('MOVIMENTOCONT', 'CODCONCILIACAO', 'Varchar(50)');
      executaDDL('PRODUTOS', 'OBS', 'VARCHAR(300)');
      executaDDL('PLANO', 'TIPOLANC',  'VARCHAR(10)');
      MessageDlg('Execute o Script "fk_uctabuser.sql".', mtWarning, [mbOK], 0);
      executaScript('SP_MOV_CAIXAC.sql');
      executaScript('SP_MOV_CAIXA_ORDEMC.sql');

      if (cds.Active) then
        cds.Close;
      cds.CommandText := 'select CODNATUREZA from NATUREZAOPERACAO' +
        ' WHERE CODNATUREZA = 14';
      cds.Open;
      if (cds.IsEmpty) then
      begin
        executaSql('Insert into NATUREZAOPERACAO(CODNATUREZA, DESCNATUREZA, ' +
          ' GERATITULO, TIPOTITULO, TIPOMOVIMENTO) ' +
          ' Values (14, ' + QuotedStr('Movimento Cancelado') + ' ,0,0,14)');
      end;
      executaDDL('BANCO', 'VARIACAO', 'VARCHAR(3)');
      executaDDL('BANCO', 'NCONVENIO', 'INTEGER');
      executaDDL('BANCO', 'CODIGOBOLETO', 'VARCHAR(20)');
      executaDDL('BANCO', 'LAYOUT_BL', 'VARCHAR(10)');
      executaDDL('BANCO', 'LAYOUT_RM', 'VARCHAR(10)');
      executaDDL('BANCO', 'RESP_EMISSAO', 'VARCHAR(20)');
      executaDDL('BANCO', 'IMP_COMPROVANTE', 'VARCHAR(3)');
      executaDDL('BANCO', 'PASTA_REMESSA', 'VARCHAR(100)');
      executaDDL('BANCO', 'PASTA_RETORNO', 'VARCHAR(100)');
      executaDDL('BANCO', 'NOME_ARQUIVO', 'VARCHAR(30)');
      executaDDL('BANCO', 'CC_BANCO', 'INTEGER');
      executaDDL('BANCO', 'MORAJUROS', 'VARCHAR(10)');
      executaDDL('BANCO', 'PERCMULTA', 'DOUBLE PRECISION');
      executaDDL('BANCO', 'PROTESTO', 'CHAR(2)');
      executaDDL('RECEBIMENTO', 'CODIGOBOLETO', 'VARCHAR(20)');
      executaDDL('BANCO', 'CODIGOBOLETO', 'VARCHAR(20)');
      executaDDL('RECEBIMENTO', 'CODIGOBANCO', 'VARCHAR(20)');
      executaDDL('BANCO', 'VARIACAO', 'VARCHAR(3)');
      executaDDL('PAGAMENTO', 'SITUACAO', 'INTEGER');
      executaDDL('RECEBIMENTO', 'SITUACAO', 'INTEGER');
      mudaVersao('1.0.0.102');
    end;

    if (versaoSistema = '1.0.0.102') then
    begin
      executaDDL('COMPRA', 'CODORIGEM', 'INTEGER');
      executaDDL('EMPRESA', 'CNPJPREFEITURA', 'VARCHAR(14)');
      executaDDL('EMPRESA', 'NOMEPREFEITURA', 'VARCHAR(50)');
      executaSql('ALTER TABLE EMPRESA ALTER SMTP TYPE Varchar(60)');
      executaSql('ALTER TABLE EMPRESA ALTER SENHA TYPE Varchar(30)');
      executaSql('ALTER TABLE EMPRESA ALTER E_MAIL TYPE Varchar(100)');
      if (NaoExisteTabela('CLASSIFICACAO_SERVICOS')) then
      begin
        executaSql('CREATE TABLE CLASSIFICACAO_SERVICOS(' +
        ' CODIGO varchar(5) NOT NULL, ' +
        ' ALIQUOTA double precision, ' +
        ' DESCRICAO_SERV varchar(500), ' +
        ' PRIMARY KEY (CODIGO))');
      end;
      executaSql('CREATE DOMAIN TEXTO500 AS VARCHAR(500)');
      executaSql('update RDB$RELATION_FIELDS set ' +
        ' RDB$FIELD_SOURCE = ' + QuotedStr('TEXTO500') +
        ' where (RDB$FIELD_NAME = ' + QuotedStr('OBS')  +
        ') and (RDB$RELATION_NAME = ' + QuotedStr('VENDA') + ')');
      executaDDL('CCE', 'PROTOCOLO', 'VARCHAR(20)');
      executaDDL('CCE', 'SELECIONOU', 'TEXTO1');
      EXECUTADDL('CLIENTES', 'CORTESIA', 'CHAR(1)');
      EXECUTADDL('CLIENTES', 'VALOR_CONSUMO', 'DOUBLE PRECISION');
      EXECUTADDL('CLIENTES', 'VALOR_CORTESIA', 'DOUBLE PRECISION');
      EXECUTADDL('CLIENTES', 'E_FORNECEDOR', 'CHAR(1)');
      EXECUTADDL('CLIENTES', 'CODFORNECEDOR', 'INTEGER');
      EXECUTADDL('CLIENTES', 'CARGOFUNCAO', 'VARCHAR(1)');
      executaScript('gera_parcelas_pag.sql');
      executaScript('relContaReceber.sql');
      executaScript('rel_rcbototal.sql');
      mudaVersao('1.0.0.103');
    end;// Fim Atualizacao Versao 1.0.0.103

    if (versaoSistema = '1.0.0.103') then
    begin
      DeletaTrigger('GERA_REC INACTIVE');
      executaScript('TIT_EMITIDOS_DESCONTADOS.sql');
      if (NaoExisteTabela('RECEBIMENTO_HIST')) then
      begin
        executaSql('CREATE TABLE RECEBIMENTO_HIST(' +
          'CODRECEBIMENTO INTEGER NOT NULL, ' +
          'ID_HIST INTEGER NOT NULL, ' +
          'TITULO VARCHAR(20) , ' +
          'CAIXA INTEGER, ' +
          'TIPO VARCHAR(30) NOT NULL, ' +
          'DATA_HIST DATE , '+
          'HISTORICO VARCHAR(200), ' +
          'USUARIO INTEGER, ' +
          'PRIMARY KEY(CODRECEBIMENTO, ID_HIST))')
      end;
      mudaVersao('1.0.0.104');
    end;// Fim Atualizacao Versao 1.0.0.104

    if (versaoSistema = '1.0.0.104') then
    begin
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'CSTIPI', 'VARCHAR(2)');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'CSTPIS', 'VARCHAR(2)');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'CSTCOFINS', 'VARCHAR(2)');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'PIS', 'double precision');
      executaDDL('CLASSIFICACAOFISCALPRODUTO', 'COFINS', 'double precision');
      executaDDL('MOVIMENTO', 'ENTREGA', 'varchar(60)');
      executaDDL('CLIENTES', 'CORTESIA', 'char(1)');
      executaDDL('CLIENTES', 'VALOR_CONSUMO', 'double precision');
      executaDDL('CLIENTES', 'VALOR_CORTESIA', 'double precision');
      executaDDL('CLIENTES', 'E_FORNECEDOR', 'char(1)');
      executaDDL('CLIENTES', 'CODFORNECEDOR', 'integer');
      executaDDL('CLIENTES', 'CARGOFUNCAO', 'varchar(1)');
      executaDDL('FORNECEDOR', 'CAMPOADICIONAL', 'varchar(60)');
      executaDDL('FORNECEDOR', 'CAMPOADICIONAL1', 'varchar(60)');
      if (NaoExisteTabela('NF_INUTILIZADO')) then
      begin
        executaSql('CREATE TABLE NF_INUTILIZADO(' +
          'NUM INTEGER NOT NULL, ' +
          'DATA_INUTILIZADO DATE NOT NULL, ' +
          'CCUSTO INTEGER, ' +
          'SERIE VARCHAR(10) NOT NULL, ' +
          'USUARIO INTEGER, ' +
          'PRIMARY KEY(NUM))')
      end;
      executaScript('listaProduto.sql');
      executaScript('LISTAPRODUTOCLI.sql');
      MessageDlg('Execute o Script "Tipo_fiscal.sql".', mtWarning, [mbOK], 0);
      mudaVersao('1.0.0.105');
    end;// Fim Atualizacao Versao 1.0.0.105

    if (versaoSistema = '1.0.0.105') then
    begin
      executaDDLdrop('CLIENTES', 'CARGOFUNCAO');
      executaDDL('CLIENTES', 'CARGOFUNCAO', 'integer');
      executaDDL('MOVIMENTODETALHE', 'CSTIPI', 'VARCHAR(2)');
      executaDDL('MOVIMENTODETALHE', 'CSTPIS', 'VARCHAR(2)');
      executaDDL('MOVIMENTODETALHE', 'CSTCOFINS', 'VARCHAR(2)');
      executaDDL('MOVIMENTODETALHE', 'PPIS', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'PCOFINS', 'double precision');
      MessageDlg('Execute o Script "trg_calcula_icms_st.sql".', mtWarning, [mbOK], 0);
      executaScript('spEstoqueFiltro.sql');
      mudaVersao('1.0.0.106');
    end;// Fim Atualizacao Versao 1.0.0.106

    if (versaoSistema = '1.0.0.106') then
    begin
      executaDDL('CAIXA_CONTROLE', 'NOMECAIXA',  'varchar(60)');
      executaDDL('CAIXA_CONTROLE', 'MAQUINA', 'varchar(60)');
      executaDDL('CAIXA_CONTROLE', 'DATAABERTURA', 'date');
      executaDDL('CAIXA_CONTROLE', 'VALORABRE', 'double precision');
      executaDDL('CAIXA_CONTROLE', 'VALORFECHA', 'double precision');
      executaDDL('CCE', 'CONDICAO', 'varchar(700)');
      executaDDL('COMPRA', 'CHAVENF', 'varchar(44)');
      executaDDL('COMPRA', 'DIGITOVALIDACAO', 'varchar(100)');
      executaDDL('COMPRA', 'INDPAG', 'integer');
      executaDDL('COMPRA', 'ICMS_ST', 'double precision');
      executaDDL('COMPRA', 'ICMS_BASE_ST', 'double precision');
      executaDDL('MOVIMENTO', 'QTD', 'INTEGER');
      executaDDL('MOVIMENTODETALHE', 'VALORRATEIO', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'CODAUTORIZACAO', 'integer');
      executaDDL('MOVIMENTODETALHE', 'CODMOVRATEIO', 'integer');
      executaDDL('MOVIMENTODETALHE', 'STATUS', 'char(1)');
      executaDDL('MOVIMENTODETALHE', 'PAGOUCOMISSAO', 'char(1)');
      executaDDL('MOVIMENTODETALHE', 'RATEIO', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'PORCENTAGENDESC', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'PAGO', 'char(3)');
      executaDDL('MOVIMENTODETALHE', 'PEDIDO', 'varchar(20)');
      executaDDL('MOVIMENTODETALHE', 'NITEMPED', 'integer');
      executaDDL('MOVIMENTODETALHE', 'ACRESCIMO', 'double precision');
      executaDDL('MOVIMENTODETALHE', 'CORTESIA', 'char(1)');
      executaDDL('MOVIMENTODETALHE', 'ATENDENTE', 'integer');
      executaDDL('MOVIMENTODETALHE', 'COLABORADOR', 'integer');
      executaDDL('MOVIMENTODETALHE', 'SUITE', 'varchar(40)');
      executaDDL('MOVIMENTODETALHE', 'FORMARECEBIMENTO', 'char(1)');
      executaDDL('MOVIMENTODETALHE', 'PAGOU', 'char(1)');
      executaDDL('NOTAFISCAL', 'INDPAG', 'integer');
      executaDDL('VENDA', 'PORCENTAGENDESC', 'double precision');
      executaDDL('VENDA', 'TROCO', 'double precision');
      executaDDL('VENDA', 'COMISSAO', 'double precision');
      executaDDL('VENDA', 'CAIXINHA', 'double precision');
      executaDDL('VENDA', 'RATEIO', 'double precision');
      //executaScript('gera_nf_venda.sql');
      executaScript('trg_calcula_icms_st_107.sql');
      executaScript('resultadoporproduto_107.sql');
      executaScript('filtroproduto_107.sql');
      executaScript('listaProduto107.sql');
      executaDDL('FORMA_ENTRADA', 'CAIXINHA', 'double precision');
      mudaVersao('1.0.0.107');
    end;

    if (versaoSistema = '1.0.0.107') then
    begin
      executaDDL('MOVIMENTOCONT', 'FORMA',  'TEXTO1');
      if (NaoExisteTabela('LISTAPRECO_VENDA')) then
      begin
        executaSql('CREATE TABLE LISTAPRECO_VENDA( ' +
          'CODLISTA Integer NOT NULL, ' +
          'CODCLIENTE Integer, ' +
          'NOMELISTA Varchar(60), ' +
          'VALIDADE Date, ' +
          'DATAINICIAL Date, ' +
          'DATAFINAL Date, ' +
          'CONSTRAINT PK_LISTAPRECO_VENDA PRIMARY KEY (CODLISTA))');
        executaSql('ALTER TABLE LISTAPRECO_VENDA ADD CONSTRAINT FK_LISTAPRECO_VENDA ' +
          'FOREIGN KEY (CODCLIENTE) REFERENCES CLIENTES (CODCLIENTE) ON UPDATE CASCADE ON DELETE CASCADE');
      end;
      try
        DeletaTrigger('INCLUI_REC');
        DeletaTrigger('GERA_VALOR');
        DeletaTrigger('CARREGA_IPI_VENDA');
        DeletaTrigger('CORRIGE_IPI_VENDA');
        DeletaTrigger('TRG_NF_CR_INSERE');
        DeletaTrigger('TRG_NF_CR_ALTERA');
        DeletaTrigger('MOV_ESTOQUE');		
      except
      end;
      if (NaoExisteTabela('LISTAPRECO_VENDADET')) then
      begin
        executaSql('CREATE TABLE LISTAPRECO_VENDADET( ' +
          'CODLISTADET Integer NOT NULL, ' +
          'CODLISTA Integer, ' +
          'CODPRODUTO Integer, ' +
          'PRODUTO varchar(300), ' +
          'ALTPRECO Char(1), ' +
          'DESCONTO Char(1), ' +
          'DESCONTOMAX Double precision, ' +
          'DESCONTOMIN Double precision, ' +
          'MARGEM Char(1), ' +
          'MARGEMMAX Double precision, ' +
          'MARGEMMIN Double precision, ' +
          'ESTOQUE Double precision, ' +
          'PRECOCOMPRA Double precision, ' +
          'PRECOVENDA Double precision, ' +
          'CONSTRAINT PK_LISTAPRECO_VENDADET PRIMARY KEY (CODLISTADET))');

        executaSql('ALTER TABLE LISTAPRECO_VENDADET ADD CONSTRAINT FK_LISTAPRECO_VENDADET ' +
          'FOREIGN KEY (CODLISTA) REFERENCES LISTAPRECO_VENDA (CODLISTA) ON UPDATE CASCADE ON DELETE CASCADE');
        executaSql('ALTER TABLE LISTAPRECO_VENDADET ADD CONSTRAINT FK_LISTAPRECO_VENDADET2 ' +
          'FOREIGN KEY (CODPRODUTO) REFERENCES PRODUTOS (CODPRODUTO) ON UPDATE CASCADE ON DELETE CASCADE');
      end;
      CriaGenerator('GENLISTVEN');
      CriaGenerator('GENLISTVEN_DET');
      executaSql('ALTER TABLE CCE ALTER CNPJ TYPE Varchar(19)');
      executaSql('ALTER TABLE CCE ALTER DHENVIO TYPE Timestamp');
      executaSql('ALTER TABLE CCE ALTER CONDICAO TYPE Varchar(700)');
      executaDDL('VENDA', 'VALOR_ST', 'double precision');
      executaScript('gera_nf_venda108.sql');
      executaScript('nfe_fatura108.sql');
      executaScript('trg_calcula_icms_st_108.sql');
      executaScript('calcula_icms108.sql');
      mudaVersao('1.0.0.108');
    end;// Fim Ataulização Versao 1.0.0.108

    if (versaoSistema = '1.0.0.108') then
    begin
      executaDDL('FORNECEDOR', 'CFOP', 'VARCHAR(30)');
      executaDDL('MOVIMENTOCONT', 'FORMA',  'TEXTO1');
      executaDDL('PRODUTOS', 'OBS', 'VARCHAR(300)');
      executaDDL('VENDA', 'VALOR_ST', 'double precision');
      executaScript('sp_mov_caixac109.sql');
      executaScript('sp_mov_caixa_ordemc109.sql');
      executaScript('gera_nf_venda109.sql');
      executaScript('nfe_fatura109.sql');
      executaScript('trg_calcula_icms_st_109.sql');
      mudaVersao('1.0.0.109');
    end;// Fim Atualizacao Versao 1.0.0.109

    if (versaoSistema = '1.0.0.109') then
    begin
      executaDDL('OS', 'CFOP', 'VARCHAR(30)');
      executaScript('lista_lote110.sql');
      executaScript('gera_nf_venda110.sql');
      mudaVersao('1.0.0.110');
    end;// Fim Atualizacao Versao 1.0.0.110

    if (versaoSistema = '1.0.0.110') then
    begin
      executaDDL('INVENTARIO', 'DATAFABRICACAO', 'DATE');
      executaDDL('INVENTARIO', 'DATAVENCIMENTO', 'DATE');
      executaDDL('ESTOQUEMES', 'DATAVENCIMENTO', 'DATE');
      executaDDL('ESTOQUEMES', 'DATAFABRICACAO', 'DATE');
      executaScript('sp_lote_estoquemes111.sql');
      executaScript('sp_mov_caixac111.sql');
      mudaVersao('1.0.0.111');
    end;// Fim Atualizacao Versao 1.0.0.111

    if (versaoSistema = '1.0.0.111') then
    begin
      executaDDL('MOVIMENTO', 'DESCONTO', 'DOUBLE PRECISION');
      executaScript('gera_nf_venda112.sql');
      executaScript('rel_vendaCompra112.sql');
      executaScript('calcula_icms112.sql');
      mudaVersao('1.0.0.112');
    end;// Fim Atualizacao Versao 1.0.0.112

    if (versaoSistema = '1.0.0.112') then
    begin
      executaScript('view_venda.sql');
      executaScript('rel_vendaCompra113.sql');
      executaScript('inclui_pag113.sql');
      executaScript('frete_nf113.sql');
      EXECUTADDL('EMPRESA', 'CHAVELIC', 'VARCHAR(50)');
      EXECUTADDL('EMPRESA', 'CHAVECONT', 'VARCHAR(50)');
      executaDDL('CLIENTES', 'SUFRAMA', 'varchar(9)');
      if (TamCampo('CLIENTES', 'NOMECLIENTE') < 60) then
        executaSql('ALTER TABLE CLIENTES ALTER NOMECLIENTE TYPE Varchar(60)');
      if (TamCampo('CLIENTES', 'RAZAOSOCIAL') < 60) then
        executaSql('ALTER TABLE CLIENTES ALTER RAZAOSOCIAL TYPE Varchar(60)');
      if (TamCampo('FORNECEDOR', 'NOMEFORNECEDOR') < 60) then
        executaSql('ALTER TABLE FORNECEDOR ALTER NOMEFORNECEDOR TYPE Varchar(60)');
      if (TamCampo('FORNECEDOR', 'RAZAOSOCIAL') < 60) then
        executaSql('ALTER TABLE FORNECEDOR ALTER RAZAOSOCIAL TYPE Varchar(60)');
      mudaVersao('1.0.0.113');
    end;// Fim Atualizacao Versao 1.0.0.113

    if (versaoSistema = '1.0.0.113') then
    begin
      EXECUTADDL('MOVIMENTODETALHE', 'FRETE_BC', 'VARCHAR(5)');
      executaScript('rel_vendaCompra114.sql');
      //executaScript('relDre114.sql');
      executaScript('view_estoque.sql');
      CriaGenerator('GEN_EMAIL');
      executaSql('SET GENERATOR GEN_EMAIL TO 1200');
      //executaSql('ALTER TABLE EMAIL_ENVIAR ALTER EMAIL TYPE Varchar(100)');
      mudaVersao('1.0.0.114');
    end;// Fim Atualizacao Versao 1.0.0.114


    if (versaoSistema = '1.0.0.114') then
    begin
      if (NaoExisteTabela('UNIDADEMEDIDA')) then
      begin
        executaSql('CREATE TABLE UNIDADEMEDIDA( ' +
          'CODUN CHAR(3) NOT NULL, ' +
          'DESCRICAO varchar(50), PRIMARY KEY (CODUN))');

        executaSql('INSERT INTO UNIDADEMEDIDA (CODUN, DESCRICAO) '  +
          ' select distinct TRIM(UDF_LOWER(md.UN)), TRIM(UDF_LOWER(md.UN))' +
          '   from MOVIMENTODETALHE md ' +
          '  where trim(md.un) is not null and md.un <> ' + QuotedStr(''));
      end;
      mudaVersao('1.0.0.115');
    end;// Fim Atualizacao Versao 1.0.0.115

    if (versaoSistema = '1.0.0.115') then
    begin
      if (NaoExisteTabela('RETORNO_BANCO')) then
      begin
        executaSql('CREATE TABLE RETORNO_BANCO ' +
         '( ' +
         ' CODRETORNO INTEGER NOT NULL PRIMARY KEY, ' +
         ' ARQUIVO    VARCHAR(100) NOT NULL, ' +
         ' DATAARQUIVO DATE, ' +
         ' NOSSONUMERO VARCHAR(50) NOT NULL, ' +
         ' VALORRECEBIDO DOUBLE precision,   ' +
         ' VALORJUROS    DOUBLE precision,   ' +
         ' VALORDESCONTO DOUBLE precision,   ' +
         ' TITULOBAIXADO VARCHAR(30),        ' +
         ' SITUACAO      VARCHAR(30),        ' +
         ' CODRECEBIMENTO INTEGER '            +
         ')');
      end;
      mudaVersao('1.0.0.116');
    end;// Fim Atualizacao Versao 1.0.0.116

    if (versaoSistema = '1.0.0.116') then
    begin
      EXECUTADDL('MOVIMENTODETALHE', 'DESCONTO_BC', 'VARCHAR(5)');
      ExecutaSql('ALTER TRIGGER PROIBE_ALT_DEL_NF INACTIVE');

      dm.sqlsisAdimin.ExecuteDirect('UPDATE NOTAFISCAL SET STATUS = '
        + QuotedStr('C') + ' WHERE (STATUS IS NULL) AND (PROTOCOLOCANC IS NOT NULL)');

      dm.sqlsisAdimin.ExecuteDirect('UPDATE NOTAFISCAL SET STATUS = '
        + QuotedStr('E') + ' WHERE (STATUS IS NULL) AND (PROTOCOLOENV IS NOT NULL)');

      executaScript('trg_calcula_icms_st_116.sql');
      executaScript('listaSpEstoqueFiltro116.sql');
      executaScript('spEstoqueFiltro116.sql');

      ExecutaSql('ALTER TRIGGER PROIBE_ALT_DEL_NF ACTIVE');

      mudaVersao('1.0.0.117');
    end;// Fim Atualizacao Versao 1.0.0.117

    if (versaoSistema = '1.0.0.117') then
    begin
      executaScript('listaSpEstoqueFiltro118.sql');
      executaScript('spEstoqueFiltro118.sql');      
      executaScript('estoque_view118.sql');
      mudaVersao('1.0.0.118');
    end;// Fim Atualizacao Versao 1.0.0.118

    if (versaoSistema = '1.0.0.118') then
    begin
      EXECUTADDL('COMPRA', 'MODELO', 'VARCHAR(2)');
      EXECUTADDL('SERIES', 'MODELO', 'VARCHAR(2)');
      EXECUTADDL('EMPRESA', 'MODELOCUPOM', 'VARCHAR(2)');
      EXECUTADDL('EMPRESA', 'ECFMOD', 'VARCHAR(20)');
      EXECUTADDL('EMPRESA', 'ECFFAB', 'VARCHAR(20)');
      EXECUTADDL('EMPRESA', 'ECFCX', 'VARCHAR(3)');
      executaScript('estoque_view_custo119.sql');
      executaScript('listaProdutocli118.sql');
      executaScript('listaProduto118.sql');
      executaScript('rel_vendaCompra119.sql');
      executaScript('spestoque119.sql');
      ExecutaSql('ALTER TRIGGER PROIBE_ALT_DEL_NF ACTIVE');
      ExecutaSql('ALTER TRIGGER INSERE_ESTOQUE ACTIVE');
      ExecutaSql('ALTER TRIGGER BAIXA_ESTOQUE ACTIVE');
      mudaVersao('1.0.0.119');
    end;// Fim Atualizacao Versao 1.0.0.119

    if (versaoSistema = '1.0.0.119') then
    begin
      EXECUTADDL('MOVIMENTODETALHE', 'VLRBC_IPI', 'double precision');
      EXECUTADDL('MOVIMENTODETALHE', 'VLRBC_PIS', 'double precision');
      EXECUTADDL('MOVIMENTODETALHE', 'VLRBC_COFINS', 'double precision');
      EXECUTADDL('MOVIMENTODETALHE', 'VLRTOT_TRIB', 'double precision');
      EXECUTADDL('NOTAFISCAL', 'BASE_IPI', 'double precision');
      EXECUTADDL('NOTAFISCAL', 'BASE_PIS', 'double precision');
      EXECUTADDL('NOTAFISCAL', 'BASE_COFINS', 'double precision');
      EXECUTADDL('NOTAFISCAL', 'VLRTOT_TRIB', 'double precision');
      EXECUTADDL('CFOP', 'TOTTRIB', 'char(1)');
      EXECUTADDL('PRODUTOS', 'PESO_LIQ', 'double precision');

      if (NaoExisteTabela('NCM')) then
      begin
        executaSql('CREATE TABLE NCM ' +
         '( ' +
         ' NCM varchar(8) NOT NULL primary key, ' +
         ' ALIQNAC double precision, ' +
         ' ALIQIMP double precision ' +
         ')');
      end;

      if (NaoExisteTabela('CLASSIFICACAOFISCALNCM')) then
      begin
        executaSql('CREATE TABLE CLASSIFICACAOFISCALNCM ' +
         '( ' +
         ' NCM varchar(8) NOT NULL, ' +
         ' CFOP varchar(30) NOT NULL, ' +
         ' UF char(2) NOT NULL, ' +
         ' CODFISCAL T_FISCAL NOT NULL, ' +
         ' ICMS_SUBST double precision, ' +
         ' ICMS_SUBST_IC double precision, ' +
         ' ICMS_SUBST_IND double precision, ' +
         ' ICMS double precision, ' +
         ' ICMS_BASE double precision, ' +
         ' CST char(3), ' +
         ' IPI double precision, ' +
         ' CSOSN varchar(3), ' +
         ' CSTIPI varchar(2), ' +
         ' CSTPIS varchar(2), ' +
         ' CSTCOFINS varchar(2), ' +
         ' PIS double precision, ' +
         ' COFINS double precision, ' +
         ' ORIGEM integer NOT NULL' +
         ')');
        executaSql('alter table CLASSIFICACAOFISCALNCM add constraint PK_CLASS_NCM primary key (NCM, CFOP, UF, CODFISCAL, ORIGEM)');
      end;

      if (NaoExisteTabela('IBPT')) then
      begin
        executaSql('CREATE TABLE IBPT ' +
         '( ' +
         ' NCM varchar(8) NOT NULL, ' +
         ' ALIQNAC double precision, ' +
         ' ALIQIMP double precision ' +
         ')');
      end;

      executaScript('trg_ncm_carregaaliq.sql');
      try
        ExecutaSql('INSERT INTO NCM (NCM) select distinct TRIM(p.NCM) ' +
          ' from PRODUTOS p  where trim(p.NCM) is not null and p.NCM <>  ' + QuotedStr(''));
      except
      end;
      executaScript('relContaReceber120.sql');

      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect('alter table VENDA add constraint UNQ_MOV_VENDA unique (CODMOVIMENTO)');
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Há Pedido(s) com multiplas Vendas', mtWarning, [mbOK], 0);
      end;

      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect('alter table COMPRA add constraint UNQ_MOV_COMPRA unique (CODMOVIMENTO)');
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
        MessageDlg('Há Pedido(s) com multiplas Compras', mtWarning, [mbOK], 0);
      end;

      MessageDlg('Execute o script TB_IBPT.sql', mtInformation, [mbOK], 0);

      mudaVersao('1.0.0.120');
    end;// Fim Atualizacao Versao 1.0.0.120

    if (versaoSistema = '1.0.0.120') then
    begin
      EXECUTADDL('PRODUTOS', 'PESO_LIQ', 'double precision');
      executaScript('estoque_fechado_compra.sql');
      executaScript('estoque_fechado_venda.sql');
      executaScript('listaProduto120.sql');
      executaScript('listaProdutocli120.sql');
      executaScript('estoque_precomedio121.sql');
      executaScript('rel_vendaCompra121.sql');
      executaScript('spestoque121.sql');
      executaScript('estoque_view_custo121.sql');
      mudaVersao('1.0.0.121');
    end;// Fim Atualizacao Versao 1.0.0.121

    if (versaoSistema = '1.0.0.121') then
    begin
      //executaScript('estoque_atualiza122.sql');
      executaScript('invent_estoque122.sql');
      executaScript('view_estoque122.sql');
      //executaScript('estoque_customedio122.sql');
      executaScript('rel_vendaCompra122.sql');
      executaScript('spestoque122.sql');
      executaScript('gera_cupom.sql');
      //executaScript('listaProduto122.sql');
      //executaScript('listaProdutocli122.sql');
      //executaScript('spEstoqueFiltro122.sql');
      //executaScript('estoque_view_custo122.sql');
      executaScript('imprimevendadata122.sql');
      //executaScript('reldre122.sql');
      executaScript('proibe_alt_del_nf122.sql');
      EXECUTADDL('CLIENTES', 'BLOQUEADO', 'CHAR(1)');
      mudaVersao('1.0.0.122');
    end;// Fim Atualizacao Versao 1.0.0.122

    if (versaoSistema = '1.0.0.122') then
    begin
      dm.sqlsisAdimin.ExecuteDirect('ALTER TABLE ENDERECOCLIENTE ALTER TELEFONE TYPE Varchar(12)');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TABLE ENDERECOCLIENTE ALTER TELEFONE1 TYPE Varchar(12)');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TABLE ENDERECOCLIENTE ALTER TELEFONE2 TYPE Varchar(12)');
      dm.sqlsisAdimin.ExecuteDirect('ALTER TRIGGER INVENT_ESTOQUE INACTIVE');
      executaScript('proibe_alt_del_nf122.sql');
      EXECUTADDL('NOTAFISCAL', 'CCUSTO', 'INTEGER');
      mudaVersao('1.0.0.123');
    end;// Fim Atualizacao Versao 1.0.0.123

    if (versaoSistema = '1.0.0.123') then
    begin
      EXECUTADDL('CFOP', 'TOTTRIB', 'CHAR(1)');
      EXECUTADDL('CFOP', 'FRETEBC', 'CHAR(1)');
      EXECUTADDL('CFOP', 'IPIBC', 'CHAR(1)');
      executaScript('spEstoqueFiltro123.sql');
      executaScript('estoque_customedio123.sql');
      executaScript('view_estoquelote123.sql');
      executaScript('listaProdutocli123.sql');
      executaScript('listaProduto123.sql');
      executaScript('estoque_atualiza123.sql');
      executaScript('sp_contas_recebidas123.sql');
      executaScript('materiaprima_custo123.sql');
      executaScript('spestoqueproduto123.sql');
      executaScript('cfop_produtos123.sql');
      executaScript('estoque_view_custo123.sql');
      mudaVersao('1.1.0.0');
    end;// Fim Atualizacao Versao 1.0.0.123

    if (versaoSistema = '1.1.0.0') then
    begin
      dm.sqlsisAdimin.StartTransaction(TD);
      try
        dm.sqlsisAdimin.ExecuteDirect('delete from MATERIA_PRIMA mp ' +
           ' where not exists (select p.codpro from produtos p where mp.CODPRODUTO = p.CODPRODUTO)');
        dm.sqlsisAdimin.ExecuteDirect('delete from MATERIA_PRIMA mp ' +
           ' where not exists (select p.codpro from produtos p where mp.codprodmp = p.CODPRODUTO)');
        dm.sqlsisAdimin.Commit(TD);
      except
        dm.sqlsisAdimin.Rollback(TD);
      end;
      try
        dm.sqlsisAdimin.ExecuteDirect('alter table MATERIA_PRIMA add constraint FK_MATERIA_PRIMA_PROD' +
           ' foreign key (CODPRODMP) references PRODUTOS (CODPRODUTO) on update cascade ' +
           ' on delete NO ACTION');
        dm.sqlsisAdimin.ExecuteDirect('alter table MATERIA_PRIMA add constraint FK_MATERIA_PRIMA_PRODUTO' +
           ' foreign key (CODPRODUTO) references PRODUTOS (CODPRODUTO) on update cascade ' +
           ' on delete NO ACTION');
      except
      end;
      //mudaVersao('1.2.0.0');
    end;// Fim Atualizacao Versao 1.1.0.0



    try
      IniAtualiza := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'atualiza.ini');
      IniAtualiza.WriteString('Atualizador','data',FormatDateTime('dd/mm/yyyy',now));
    finally
      IniAtualiza.Free;
    end;
  end; // Fim Atualizacao
end;

function TfAtualizaSistema.VersaoAtual: String;
begin
  try
    { Atualizando o Sistema }
    if (not sqlVersao.Active) then
      sqlVersao.Open;
    result := sqlVersao.Fields[0].AsString;
  except
    result := '0';
  end;
end;

function TfAtualizaSistema.GetVersion: string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
begin
  Result := '';
  VerInfoSize := GetFileVersionInfoSize(PChar(ParamStr(0)), Dummy);
  if VerInfoSize = 0 then Exit;
  GetMem(VerInfo, VerInfoSize);
  GetFileVersionInfo(PChar(ParamStr(0)), 0, VerInfoSize, VerInfo);
  VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);
  with VerValue^ do
  begin
    Result := IntToStr(dwFileVersionMS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionMS and $FFFF);
    Result := Result + '.' + IntToStr(dwFileVersionLS shr 16);
    Result := Result + '.' + IntToStr(dwFileVersionLS and $FFFF);
  end;
  FreeMem(VerInfo, VerInfoSize);
end;

procedure TfAtualizaSistema.ExecutaScript(script : string);
var caminho,sp, sqlA :string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  caminho := ExtractFilePath(Application.ExeName);
  caminho := caminho + 'script\';
  sp := caminho + script;
  if (not FileExists(sp)) then
  begin
    MessageDlg('Erro 001. Informe o responsavel pelo sistema ! (' + SP + ')', mtWarning, [mbOK], 0);
    abort;
  end;
  memo1.Lines.LoadFromFile(sp);
  sqlA := PChar(memo1.Lines.GetText);
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    if (dm.sqlsisAdimin.ExecuteDirect(sqlA) = 0) then
    begin
      dm.sqlsisAdimin.Commit(TD);
    end;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro 002. Informe o responsavel pelo programa ! (' + SP + ')', mtWarning, [mbOK], 0);
    abort;
  end;
  { Fim execuaoo Script }
end;

procedure TfAtualizaSistema.ExecutaDDL(Tabela, Campo, Tipo: string);
var sql: string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ' + QuotedStr(Tabela) +
    ' and RDB$FIELD_NAME = ' + QuotedStr(Campo);
  cds.Open;
  if (cds.IsEmpty) then
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      sql := 'ALTER TABLE ' + Tabela + ' ADD ' + Campo + ' '  + Tipo;
      dm.sqlsisAdimin.ExecuteDirect(sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        abort;
      end;
    end;
  end;
end;

procedure  TfAtualizaSistema.MudaVersao(versaoNova: string);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect('UPDATE ATUALIZA SET VERSAO = ' +
      QuotedStr(versaoNova) + ' WHERE CODATUALIZA = 5000');
    dm.sqlsisAdimin.Commit(TD);
    versaoSistema := versaoNova;
    close;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro na atualizaaoo da Versao ' + versaoSistema + '!', mtWarning, [mbOK], 0);
    exit;
  end;
end;
procedure TfAtualizaSistema.FormCreate(Sender: TObject);
begin
  atualizaSistema;
  memo1.Lines.Add('Sistema atualizado com sucesso !!');
end;

procedure TfAtualizaSistema.ExecutaSql(sql : string);
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  try
    if (dm.sqlsisAdimin.ExecuteDirect(sql) = 0) then
    begin
      dm.sqlsisAdimin.Commit(TD);
    end;
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro 005. Informe o responsavel pelo programa ! (' + sql + ')', mtWarning, [mbOK], 0);
    abort;
  end;
  { Fim execuaoo Script }
end;

procedure TfAtualizaSistema.VerSeTemAtualiza;
begin
  begin
    ftpupdate.Host:='ftp.atsti.com.br';
    ftpupdate.Username:='atsti';
    ftpupdate.Password:='ats0333';
    ftpupdate.Passive:=true;
    ftpupdate.Connect(true);
    ftpupdate.changedir('httpdocs/aplicativos/');
    ftpupdate.list(nil);
    tamanho_arquivo := ftpupdate.Size('PrjFinanceiro.exe');
    if FileExists((ExtractFilePath(Application.ExeName))+'\'
    +('PrjFinanceiro.exe')) then
    begin
     if FormatDateTime('dd/mm/yyyy HH:mm',
     FileDateToDateTime(FileAge((ExtractFilePath(Application.ExeName))
     +'\'+('PrjFinanceiro.exe')))) <>
     FormatDateTime('dd/mm/yyyy HH:mm',
     ftpupdate.DirectoryListing.Items[0].ModifiedDate)  then
     begin
      if MessageDlg('Existe uma nova versao dessa aplicacao disponivel na internet!'
      +#13+'Deseja atualizar?', mtconfirmation,[mbyes,mbno],0) = mryes then
       begin
        {ftpupdate.get(('PrjFinanceiro.exe'),('C:\ftp')
        +'\'+('PrjFinanceiro.exe'),true);
        FileSetDate(('C:\ftp')
        +'\'+('PrjFinanceiro.exe'),
        DateTimeToFileDate(ftpupdate.DirectoryListing.Items[0].ModifiedDate));}
       end;
      end;
    end
    else
    begin
     ftpupdate.get(('PrjFinanceiro.exe'),(ExtractFilePath(Application.ExeName))
     +'\'+('PrjFinanceiro.exe'),true);
     FileSetDate((ExtractFilePath(Application.ExeName))+'\'+('PrjFinanceiro.exe'),
     DateTimeToFileDate(ftpupdate.DirectoryListing.Items[0].ModifiedDate));
    end;
    ftpupdate.Disconnect;
   end;
end;

function TfAtualizaSistema.NaoExisteTabela(Tabela: String): Boolean;
begin
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'select rdb$relation_name ' +
     ' from rdb$relations ' +
     'where rdb$view_blr is null' +
     '  and (rdb$system_flag is null or rdb$system_flag = 0)' +
     '  and rdb$relation_name = ' + QuotedStr(tabela);
  cds.Open;
  if (cds.IsEmpty) then
  begin
    result := True;
  end
  else begin
    result := False;
  end;

end;

procedure TfAtualizaSistema.CriaGenerator(Generator: String);
begin
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'SELECT RDB$GENERATOR_NAME ' +
     '  FROM RDB$GENERATORS ' +
     ' WHERE RDB$GENERATOR_NAME = ' + QuotedStr(Generator);
  cds.Open;
  if (cds.IsEmpty) then
  begin
    executaSql('create generator ' + Generator);
  end;
end;

procedure TfAtualizaSistema.CriaException(Exception_nome, Exception_msg : String);
var sql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'SELECT RDB$EXCEPTION_NAME ' +
     '  FROM RDB$EXCEPTIONS ' +
     ' WHERE RDB$EXCEPTION_NAME = ' + QuotedStr(Exception_nome);
  cds.Open;
  if (cds.IsEmpty) then
  begin
  dm.sqlsisAdimin.StartTransaction(TD);
    try
      sql := 'CREATE EXCEPTION ' + Exception_nome + ' ' + QuotedStr(Exception_msg);
      dm.sqlsisAdimin.ExecuteDirect(sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro 003. (' + sql + ')', mtWarning, [mbOK], 0);
      abort;
    end;
  end
end;

procedure TfAtualizaSistema.CriaCampoDescricao(TABELA, CAMPO, DESCRICAO : String);
var sql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
    try
      sql := 'UPDATE RDB$RELATION_FIELDS set RDB$DESCRIPTION = ' + QuotedStr(DESCRICAO) + '  where RDB$FIELD_NAME = ' + QuotedStr(CAMPO) + ' and RDB$RELATION_NAME = ' + QuotedStr(TABELA);
      dm.sqlsisAdimin.ExecuteDirect(sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro 003. (' + sql + ')', mtWarning, [mbOK], 0);
      abort;
    end;
end;

procedure TfAtualizaSistema.DeletaTrigger(Trigger: String);
var sql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'select RDB$TRIGGER_NAME ' +
     '  FROM RDB$TRIGGERS ' +
     ' WHERE RDB$TRIGGER_NAME = ' + QuotedStr(Trigger);
  cds.Open;
  if (not cds.IsEmpty) then
  begin
    try
      sql := 'DROP TRIGGER ' + Trigger;
      dm.sqlsisAdimin.ExecuteDirect(sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro 003. (' + sql + ')', mtWarning, [mbOK], 0);
      abort;
    end;
  end;
end;

procedure TfAtualizaSistema.DeletaProc(Proc: String);
var sql : string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  dm.sqlsisAdimin.StartTransaction(TD);
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'select RDB$PROCEDURE_NAME ' +
     '  FROM RDB$PROCEDURES ' +
     ' WHERE RDB$PROCEDURE_NAME = ' + QuotedStr(Proc);
  cds.Open;
  if (not cds.IsEmpty) then
  begin
    try
      sql := 'DROP PROCEDURE ' + Proc;
      dm.sqlsisAdimin.ExecuteDirect(sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      dm.sqlsisAdimin.Rollback(TD);
      MessageDlg('Erro 003. (' + sql + ')', mtWarning, [mbOK], 0);
      abort;
    end;
  end;
end;

procedure TfAtualizaSistema.VerBoleto(Empresa : String);
begin
  {if (dm.VISTO_FTP <> FormatDateTime('dd', now)) then
  begin
    try
      IdFTP1.Disconnect();
      IdFTP1.Host       := 'ftp.atsti.com.br';
      IdFTP1.Username   := 'atsti';
      IdFTP1.Password   := 'ats0333';
      IdFTP1.Port := 21;
      IdFTP1.Passive := false; // usa modo ativo
      IdFTP1.RecvBufferSize := 8192;
      try
        // Espera ate 10 segundos pela conexao
        IdFTP1.Connect(true, 10000);
      except
        on E: Exception do
          MessageDlg(E.Message, mtWarning, [mbOK], 0);
      end;

    begin
      // Atualiza o sistema para nao fazer conexao, toda a vez que abre o sistema;
      dm.sqlsisAdimin.ExecuteDirect('UPDATE PARAMETRO SET D9 = ' + FormatDateTime('dd', now) +
        ' WHERE PARAMETRO = ' + QuotedStr('EMPRESA'));
      IdFTP1.changedir('httpdocs/boletos/');
      IdFTP1.list(nil);
      if (FileExists((ExtractFilePath(Application.ExeName)) + '\' + Empresa + '.ftp')) then
      begin
        fAtsAdmin.lblBoleto.Visible := true;
        fAtsAdmin.lblBoleto.Caption := 'Existe Boleto.';
      end;

    end;
    finally
      IdFTP1.Disconnect;
    end;
  end;    }
end;

procedure TfAtualizaSistema.ExecutaDDLDrop(Tabela, Campo: string);
var sql: string;
begin
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'select RDB$FIELD_NAME AS CAMPO from rdb$relation_fields' +
    ' WHERE RDB$RELATION_NAME = ' + QuotedStr(Tabela) +
    ' and RDB$FIELD_NAME = ' + QuotedStr(Campo);
  cds.Open;
  if (not cds.IsEmpty) then
  begin
    dm.sqlsisAdimin.StartTransaction(TD);
    try
      sql := 'ALTER TABLE ' + Tabela + ' DROP ' + Campo;
      dm.sqlsisAdimin.ExecuteDirect(sql);
      dm.sqlsisAdimin.Commit(TD);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
        abort;
      end;
    end;
  end;

end;

function TfAtualizaSistema.TamCampo(Tabela, Campo: string) : Integer;
begin

  if (cds.Active) then
    cds.Close;
  cds.CommandText := 'select f.rdb$field_length from rdb$relation_fields rf join '
  + ' rdb$fields f join rdb$types t on t.rdb$field_name = ' + QuotedStr('RDB$FIELD_TYPE')
  + ' and f.rdb$field_type = t.rdb$type on rf.rdb$field_source = f.rdb$field_name where '
  + ' (rf.rdb$field_name = ' + QuotedStr(Campo) + ' and rf.rdb$relation_name = '
  +  QuotedStr(Tabela) + ')';
  cds.Open;
  Result := cds.FieldValues['rdb$field_length'];

end;

end.
