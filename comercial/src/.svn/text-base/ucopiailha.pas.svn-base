unit ucopiailha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DBClient, Provider, SqlExpr, StdCtrls, Buttons, DB,
  Grids, DBGrids, DBTables;

type
  TfCopiaIlha = class(TForm)
    Table1: TTable;
    Table1ITEM: TStringField;
    Table1DESC: TStringField;
    Table1PRUN: TFloatField;
    Table1PRPROM: TFloatField;
    Table1PRCUSTO: TFloatField;
    Table1PRCOMIS: TFloatField;
    Table1SETOR: TStringField;
    Table1GRUPO: TStringField;
    Table1DGRUPO: TStringField;
    Table1MENU: TStringField;
    Table1COMP: TStringField;
    Table1COMP1: TStringField;
    Table1COMP2: TStringField;
    Table1FRACAO: TStringField;
    Table1CMIN: TStringField;
    Table1DURACAO: TSmallintField;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    Table2: TTable;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    ClientDataSet2: TClientDataSet;
    DataSetProvider2: TDataSetProvider;
    SQLDataSet2: TSQLDataSet;
    ClientDataSet2DESCFAMILIA: TStringField;
    ClientDataSet2COD_FAMILIA: TIntegerField;
    ClientDataSet2MARCA: TStringField;
    SQLDataSet2DESCFAMILIA: TStringField;
    SQLDataSet2COD_FAMILIA: TIntegerField;
    SQLDataSet2MARCA: TStringField;
    Table2GRUPO: TStringField;
    Table2SETOR: TStringField;
    Table2DESC: TStringField;
    Table2FUNCAO: TStringField;
    Table2TECLA: TStringField;
    Table2PORTA: TStringField;
    SQLDataSet1CODPRODUTO: TIntegerField;
    SQLDataSet1FAMILIA: TStringField;
    SQLDataSet1CATEGORIA: TStringField;
    SQLDataSet1MARCA: TStringField;
    SQLDataSet1UNIDADEMEDIDA: TStringField;
    SQLDataSet1DATAULTIMACOMPRA: TDateField;
    SQLDataSet1ESTOQUEMAXIMO: TFloatField;
    SQLDataSet1ESTOQUEATUAL: TFloatField;
    SQLDataSet1ESTOQUEREPOSICAO: TFloatField;
    SQLDataSet1ESTOQUEMINIMO: TFloatField;
    SQLDataSet1VALORUNITARIOATUAL: TFloatField;
    SQLDataSet1VALORUNITARIOANTERIOR: TFloatField;
    SQLDataSet1ICMS: TFloatField;
    SQLDataSet1CODALMOXARIFADO: TIntegerField;
    SQLDataSet1IPI: TFloatField;
    SQLDataSet1CLASSIFIC_FISCAL: TStringField;
    SQLDataSet1CST: TStringField;
    SQLDataSet1BASE_ICMS: TFloatField;
    SQLDataSet1PRODUTO: TStringField;
    SQLDataSet1PRECOMEDIO: TBCDField;
    SQLDataSet1COD_COMISSAO: TIntegerField;
    SQLDataSet1MARGEM_LUCRO: TFloatField;
    SQLDataSet1COD_BARRA: TStringField;
    SQLDataSet1VALOR_PRAZO: TFloatField;
    SQLDataSet1TIPO: TStringField;
    SQLDataSet1CONTA_DESPESA: TStringField;
    SQLDataSet1CONTA_RECEITA: TStringField;
    SQLDataSet1CONTA_ESTOQUE: TStringField;
    SQLDataSet1RATEIO: TStringField;
    SQLDataSet1CODPRO: TStringField;
    SQLDataSet1QTDE_PCT: TFloatField;
    SQLDataSet1PESO_QTDE: TFloatField;
    SQLDataSet1DATACADASTRO: TSQLTimeStampField;
    SQLDataSet1MARGEM: TFloatField;
    SQLDataSet1PRO_COD: TStringField;
    SQLDataSet1DATAGRAV: TDateField;
    SQLDataSet1CODFORN: TStringField;
    SQLDataSet1FOTOPRODUTO: TStringField;
    SQLDataSet1USA: TStringField;
    SQLDataSet1LOTES: TStringField;
    SQLDataSet1LOCALIZACAO: TStringField;
    SQLDataSet1TIPOPRECOVENDA: TStringField;
    SQLDataSet1VALORMINIMO: TFloatField;
    SQLDataSet1VALORCOMISSAO: TFloatField;
    SQLDataSet1GERADESCONTO: TStringField;
    SQLDataSet1IMPRIMIR: TStringField;
    ClientDataSet1CODPRODUTO: TIntegerField;
    ClientDataSet1FAMILIA: TStringField;
    ClientDataSet1CATEGORIA: TStringField;
    ClientDataSet1MARCA: TStringField;
    ClientDataSet1UNIDADEMEDIDA: TStringField;
    ClientDataSet1DATAULTIMACOMPRA: TDateField;
    ClientDataSet1ESTOQUEMAXIMO: TFloatField;
    ClientDataSet1ESTOQUEATUAL: TFloatField;
    ClientDataSet1ESTOQUEREPOSICAO: TFloatField;
    ClientDataSet1ESTOQUEMINIMO: TFloatField;
    ClientDataSet1VALORUNITARIOATUAL: TFloatField;
    ClientDataSet1VALORUNITARIOANTERIOR: TFloatField;
    ClientDataSet1ICMS: TFloatField;
    ClientDataSet1CODALMOXARIFADO: TIntegerField;
    ClientDataSet1IPI: TFloatField;
    ClientDataSet1CLASSIFIC_FISCAL: TStringField;
    ClientDataSet1CST: TStringField;
    ClientDataSet1BASE_ICMS: TFloatField;
    ClientDataSet1PRODUTO: TStringField;
    ClientDataSet1PRECOMEDIO: TBCDField;
    ClientDataSet1COD_COMISSAO: TIntegerField;
    ClientDataSet1MARGEM_LUCRO: TFloatField;
    ClientDataSet1COD_BARRA: TStringField;
    ClientDataSet1VALOR_PRAZO: TFloatField;
    ClientDataSet1TIPO: TStringField;
    ClientDataSet1CONTA_DESPESA: TStringField;
    ClientDataSet1CONTA_RECEITA: TStringField;
    ClientDataSet1CONTA_ESTOQUE: TStringField;
    ClientDataSet1RATEIO: TStringField;
    ClientDataSet1CODPRO: TStringField;
    ClientDataSet1QTDE_PCT: TFloatField;
    ClientDataSet1PESO_QTDE: TFloatField;
    ClientDataSet1DATACADASTRO: TSQLTimeStampField;
    ClientDataSet1MARGEM: TFloatField;
    ClientDataSet1PRO_COD: TStringField;
    ClientDataSet1DATAGRAV: TDateField;
    ClientDataSet1CODFORN: TStringField;
    ClientDataSet1FOTOPRODUTO: TStringField;
    ClientDataSet1USA: TStringField;
    ClientDataSet1LOTES: TStringField;
    ClientDataSet1LOCALIZACAO: TStringField;
    ClientDataSet1TIPOPRECOVENDA: TStringField;
    ClientDataSet1VALORMINIMO: TFloatField;
    ClientDataSet1VALORCOMISSAO: TFloatField;
    ClientDataSet1GERADESCONTO: TStringField;
    ClientDataSet1IMPRIMIR: TStringField;
    SQLDataSet3: TSQLDataSet;
    DBGrid3: TDBGrid;
    Table3: TTable;
    DataSource3: TDataSource;
    Table3COD: TStringField;
    Table3NOME: TStringField;
    Table3FUNCAO: TStringField;
    Table3CAIXA: TStringField;
    Table3TIPO: TStringField;
    Table3DATADM: TDateField;
    Table3SALARIO: TFloatField;
    Table3BASE: TStringField;
    Table3OPVALE: TStringField;
    Table3END: TStringField;
    Table3CID: TStringField;
    Table3BAI: TStringField;
    Table3EST: TStringField;
    Table3CEP: TStringField;
    Table3FONERES: TStringField;
    Table3FONECNT: TStringField;
    Table3RG: TStringField;
    Table3CIC: TStringField;
    Table3COMFIM: TSmallintField;
    Table3BAR: TStringField;
    Table3COZ: TStringField;
    Table3IBAR: TStringField;
    Table3ICOZ: TStringField;
    Table3DATA: TDateField;
    Table3PRESENCA: TStringField;
    Table3PORCTG: TFloatField;
    Table3SALDO: TFloatField;
    DataSetProvider3: TDataSetProvider;
    ClientDataSet3: TClientDataSet;
    SQLDataSet4: TSQLDataSet;
    SQLDataSet4COD_FUNCIONARIO: TIntegerField;
    SQLDataSet4SEXO: TStringField;
    SQLDataSet4ESTADO_CIVIL: TStringField;
    SQLDataSet4DATA_NASC: TDateField;
    SQLDataSet4RUA: TStringField;
    SQLDataSet4N: TStringField;
    SQLDataSet4COMPLEMENTO: TStringField;
    SQLDataSet4BAIRRO: TStringField;
    SQLDataSet4CIDADE: TStringField;
    SQLDataSet4UF: TStringField;
    SQLDataSet4CEP: TStringField;
    SQLDataSet4RG: TStringField;
    SQLDataSet4TELEFONE: TStringField;
    SQLDataSet4CELULAR: TStringField;
    SQLDataSet4RECEBE_COMISSAO: TStringField;
    SQLDataSet4VALOR_COMISSAO: TFloatField;
    SQLDataSet4ESPOSA: TStringField;
    SQLDataSet4PAI: TStringField;
    SQLDataSet4MAE: TStringField;
    SQLDataSet4NOME_FUNCIONARIO: TStringField;
    SQLDataSet4FUNCAO_CARGO: TStringField;
    SQLDataSet4DATA_ADMISSAO: TDateField;
    SQLDataSet4DATA_DESLIGAMENTO: TDateField;
    SQLDataSet4REGIAO_VENDA: TStringField;
    SQLDataSet4CPF: TStringField;
    SQLDataSet4DDD: TStringField;
    SQLDataSet4CODUSUARIO: TIntegerField;
    SQLDataSet4ESPECIALIDADE: TStringField;
    SQLDataSet4CONTACORRENTE: TStringField;
    SQLDataSet4BANCO: TStringField;
    SQLDataSet4AGENCIA: TStringField;
    SQLDataSet4CODCLIENTE: TIntegerField;
    SQLDataSet4CODFORNECEDOR: TIntegerField;
    SQLDataSet4CLIFOR: TStringField;
    SQLDataSet4STATUS: TStringField;
    ClientDataSet3COD_FUNCIONARIO: TIntegerField;
    ClientDataSet3SEXO: TStringField;
    ClientDataSet3ESTADO_CIVIL: TStringField;
    ClientDataSet3DATA_NASC: TDateField;
    ClientDataSet3RUA: TStringField;
    ClientDataSet3N: TStringField;
    ClientDataSet3COMPLEMENTO: TStringField;
    ClientDataSet3BAIRRO: TStringField;
    ClientDataSet3CIDADE: TStringField;
    ClientDataSet3UF: TStringField;
    ClientDataSet3CEP: TStringField;
    ClientDataSet3RG: TStringField;
    ClientDataSet3TELEFONE: TStringField;
    ClientDataSet3CELULAR: TStringField;
    ClientDataSet3RECEBE_COMISSAO: TStringField;
    ClientDataSet3VALOR_COMISSAO: TFloatField;
    ClientDataSet3ESPOSA: TStringField;
    ClientDataSet3PAI: TStringField;
    ClientDataSet3MAE: TStringField;
    ClientDataSet3NOME_FUNCIONARIO: TStringField;
    ClientDataSet3FUNCAO_CARGO: TStringField;
    ClientDataSet3DATA_ADMISSAO: TDateField;
    ClientDataSet3DATA_DESLIGAMENTO: TDateField;
    ClientDataSet3REGIAO_VENDA: TStringField;
    ClientDataSet3CPF: TStringField;
    ClientDataSet3DDD: TStringField;
    ClientDataSet3CODUSUARIO: TIntegerField;
    ClientDataSet3ESPECIALIDADE: TStringField;
    ClientDataSet3CONTACORRENTE: TStringField;
    ClientDataSet3BANCO: TStringField;
    ClientDataSet3AGENCIA: TStringField;
    ClientDataSet3CODCLIENTE: TIntegerField;
    ClientDataSet3CODFORNECEDOR: TIntegerField;
    ClientDataSet3CLIFOR: TStringField;
    ClientDataSet3STATUS: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCopiaIlha: TfCopiaIlha;

implementation

uses UDm;

{$R *.dfm}

procedure TfCopiaIlha.BitBtn1Click(Sender: TObject);
begin
  Table2.First;
  while not Table2.Eof do
  begin
    if (not ClientDataSet2.Active) then
        ClientDataSet2.Open;
    ClientDataSet2.Append;
    ClientDataSet2DESCFAMILIA.AsString := Table2DESC.AsString;
    ClientDataSet2MARCA.AsString := 'ILHA';
    ClientDataSet2.ApplyUpdates(0);
    Table2.Next;
  end;
end;

procedure TfCopiaIlha.BitBtn2Click(Sender: TObject);
begin
  Table1.First;
  while not Table1.Eof do
  begin
    if (SQLDataSet3.Active) then
       SQLDataSet3.Close;
    SQLDataSet3.Params[0].AsString := Table1ITEM.AsString;
    SQLDataSet3.Open;
    if (SQLDataSet3.IsEmpty) then
    begin
      if (not ClientDataSet1.Active) then
          ClientDataSet1.Open;
      ClientDataSet1.Append;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PROD, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      ClientDataSet1CODPRODUTO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      //if (Table1ITEM.AsString = '5043') then
      //  ShowMessage('chegou');
      if (Table1DGRUPO.AsString = 'ESPUMANTE NACIO') then
        ClientDataSet1FAMILIA.AsString := 'ESPUMANTE NACIONAL';
      if (Table1DGRUPO.AsString = 'ESPUMANTE IMPOR') then
        ClientDataSet1FAMILIA.AsString := 'ESPUMANTE IMPORTADO';
      if (Table1DGRUPO.AsString = 'PRATOS ESPECIAI') then
        ClientDataSet1FAMILIA.AsString := 'PRATOS ESPECIAIS';
      if (Table1DGRUPO.AsString = '') then
        ClientDataSet1FAMILIA.AsString := 'DIVERSOS';
      if ((Table1DGRUPO.AsString <> 'ESPUMANTE IMPOR') and (Table1DGRUPO.AsString <> 'ESPUMANTE NACIO')
          and (Table1DGRUPO.AsString <> 'PRATOS ESPECIAI') and (Table1DGRUPO.AsString <> '')) then
        ClientDataSet1FAMILIA.AsString := Table1DGRUPO.AsString;
      ClientDataSet1MARCA.AsString := 'ILHA';
      ClientDataSet1UNIDADEMEDIDA.AsString := '';
      ClientDataSet1ESTOQUEMAXIMO.Value := 0;
      ClientDataSet1ESTOQUEATUAL.Value := 0;
      ClientDataSet1ESTOQUEREPOSICAO.Value := 0;
      ClientDataSet1ESTOQUEMINIMO.Value := 0;
      ClientDataSet1VALORUNITARIOATUAL.Value := Table1PRUN.Value;
      ClientDataSet1VALORUNITARIOANTERIOR.Value := 0;
      ClientDataSet1ICMS.Value := 0;
      ClientDataSet1IPI.Value := 0;
      ClientDataSet1BASE_ICMS.Value := 100;
      ClientDataSet1PRODUTO.AsString := Table1DESC.AsString;
      ClientDataSet1PRECOMEDIO.Value := 0;
      ClientDataSet1VALOR_PRAZO.Value := Table1PRUN.Value;
      ClientDataSet1TIPO.Value := 'PROD';
      ClientDataSet1RATEIO.AsString := 'N';
      ClientDataSet1CODPRO.AsString := Table1ITEM.AsString;
      ClientDataSet1QTDE_PCT.Value := 1;
      ClientDataSet1LOTES.AsString := 'N';
      ClientDataSet1TIPOPRECOVENDA.AsString := 'F';
      ClientDataSet1LOTES.AsString := 'N';
      ClientDataSet1VALORMINIMO.Value := Table1PRUN.Value;
      ClientDataSet1VALORCOMISSAO.Value := Table1PRCOMIS.Value;
      ClientDataSet1GERADESCONTO.AsString := 'S';
      ClientDataSet1.ApplyUpdates(0);
      Table1.Next;
    end
    else
    begin
      Table1.Next;
    end;
  end;
end;

procedure TfCopiaIlha.BitBtn3Click(Sender: TObject);
begin
  Table3.First;
  while not Table3.Eof do
  begin
    if (not ClientDataSet3.Active) then
        ClientDataSet3.Open;
    ClientDataSet3.Append;
   { if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_COD_FUNC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
   }
    ClientDataSet3COD_FUNCIONARIO.AsInteger := StrToInt(Table3COD.AsString);
    ClientDataSet3NOME_FUNCIONARIO.AsString := Table3COD.AsString + '-' + Table3NOME.AsString;
    ClientDataSet3DATA_ADMISSAO.Value := Table3DATADM.Value;
    ClientDataSet3FUNCAO_CARGO.AsString := 'Colaborador';
    ClientDataSet3STATUS.AsString := 'S';
    ClientDataSet3.ApplyUpdates(0);
    Table3.Next;
  end;
end;

end.
