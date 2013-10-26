unit uExporta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, Grids, DBGrids, DB, DBClient,
  Provider, SqlExpr, ExtCtrls, MMJPanel;

type
  TfExporta = class(TForm)
    MMJPanel1: TMMJPanel;
    s3: TSQLDataSet;
    s3RA: TStringField;
    s3NOME: TStringField;
    s3NUMERO: TSmallintField;
    s3SEXO: TStringField;
    s3ENDERECO: TStringField;
    s3BAIRRO: TStringField;
    s3CIDADE: TStringField;
    s3CEP: TStringField;
    s3FONE: TStringField;
    s3DATANASCIMENTO: TSQLTimeStampField;
    s3RG: TStringField;
    s3CPF: TStringField;
    s3ANOLETIVO: TStringField;
    s3SERIE: TStringField;
    s3SITUACAOESCOLAR: TStringField;
    s3MAE: TStringField;
    s3RGMAE: TStringField;
    s3CPFMAE: TStringField;
    s3PAI: TStringField;
    s3RGPAI: TStringField;
    s3CPFPAI: TStringField;
    s3EMAIL: TStringField;
    s3LANCADOCLASSE: TSmallintField;
    s3TRANSPORTE: TStringField;
    s3SERIELETRA: TStringField;
    s3CIDADENASC: TStringField;
    s3UFNASC: TStringField;
    s3NACIONALIDADE: TStringField;
    s3CERTIDAONASCNUM: TStringField;
    s3LIVRONASC: TStringField;
    s3FLLIVRONASC: TStringField;
    s3LOCALTRABPAI: TStringField;
    s3LOCALTRABMAE: TStringField;
    s3TELTRABPAI: TStringField;
    s3TELTRABMAE: TStringField;
    s3INFONECESSARIAS: TStringField;
    s3CARTEIRAVACINACAO: TStringField;
    s3RAPRODESP: TStringField;
    s3LOCALTRABALUNO: TStringField;
    s3TELTRABALUNO: TStringField;
    s3RAPROD: TStringField;
    s3TEL_CELULAR: TStringField;
    s3CERT_NAS_COMARCA: TStringField;
    s3CERT_NAS_UF: TStringField;
    s3CERT_NAS_MUNICIPIO: TStringField;
    s3CERT_NAS_DISTRITO: TStringField;
    s3CERT_NAS_SUBDISTRITO: TStringField;
    s3COMPLEMENTO: TStringField;
    s3DIVERSO1: TStringField;
    s3DIVERSO2: TStringField;
    d3: TDataSetProvider;
    c3: TClientDataSet;
    c3RA: TStringField;
    c3NOME: TStringField;
    c3NUMERO: TSmallintField;
    c3SEXO: TStringField;
    c3ENDERECO: TStringField;
    c3BAIRRO: TStringField;
    c3CIDADE: TStringField;
    c3CEP: TStringField;
    c3FONE: TStringField;
    c3DATANASCIMENTO: TSQLTimeStampField;
    c3RG: TStringField;
    c3CPF: TStringField;
    c3ANOLETIVO: TStringField;
    c3SERIE: TStringField;
    c3SITUACAOESCOLAR: TStringField;
    c3MAE: TStringField;
    c3RGMAE: TStringField;
    c3CPFMAE: TStringField;
    c3PAI: TStringField;
    c3RGPAI: TStringField;
    c3CPFPAI: TStringField;
    c3EMAIL: TStringField;
    c3LANCADOCLASSE: TSmallintField;
    c3TRANSPORTE: TStringField;
    c3SERIELETRA: TStringField;
    c3CIDADENASC: TStringField;
    c3UFNASC: TStringField;
    c3NACIONALIDADE: TStringField;
    c3CERTIDAONASCNUM: TStringField;
    c3LIVRONASC: TStringField;
    c3FLLIVRONASC: TStringField;
    c3LOCALTRABPAI: TStringField;
    c3LOCALTRABMAE: TStringField;
    c3TELTRABPAI: TStringField;
    c3TELTRABMAE: TStringField;
    c3INFONECESSARIAS: TStringField;
    c3CARTEIRAVACINACAO: TStringField;
    c3RAPRODESP: TStringField;
    c3LOCALTRABALUNO: TStringField;
    c3TELTRABALUNO: TStringField;
    c3RAPROD: TStringField;
    c3TEL_CELULAR: TStringField;
    c3CERT_NAS_COMARCA: TStringField;
    c3CERT_NAS_UF: TStringField;
    c3CERT_NAS_MUNICIPIO: TStringField;
    c3CERT_NAS_DISTRITO: TStringField;
    c3CERT_NAS_SUBDISTRITO: TStringField;
    c3COMPLEMENTO: TStringField;
    c3DIVERSO1: TStringField;
    c3DIVERSO2: TStringField;
    c2: TClientDataSet;
    c2COD_RESPONSAVEL: TIntegerField;
    c2RESPONSAVEL: TStringField;
    c2ENDERECO: TStringField;
    c2BAIRRO: TStringField;
    c2CEP: TStringField;
    c2CIDADE: TStringField;
    c2UF: TStringField;
    c2TIPO_RESPONSAVEL: TStringField;
    c2CPF: TStringField;
    c2RG: TStringField;
    c2TELEFONE: TStringField;
    c2TELEFONE1: TStringField;
    c2EMAIL: TStringField;
    c2LOCALTRABALHO: TStringField;
    c2CAIXAPOSTAL: TStringField;
    c2TELEFONE_COMERCIAL: TStringField;
    d2: TDataSetProvider;
    s2: TSQLDataSet;
    s2COD_RESPONSAVEL: TIntegerField;
    s2RESPONSAVEL: TStringField;
    s2ENDERECO: TStringField;
    s2BAIRRO: TStringField;
    s2CEP: TStringField;
    s2CIDADE: TStringField;
    s2UF: TStringField;
    s2TIPO_RESPONSAVEL: TStringField;
    s2CPF: TStringField;
    s2RG: TStringField;
    s2TELEFONE: TStringField;
    s2TELEFONE1: TStringField;
    s2EMAIL: TStringField;
    s2LOCALTRABALHO: TStringField;
    s2CAIXAPOSTAL: TStringField;
    s2TELEFONE_COMERCIAL: TStringField;
    s1: TSQLDataSet;
    s1COD_RESP_ALUNO: TIntegerField;
    s1COD_RESPONSAVEL: TIntegerField;
    s1RA: TStringField;
    s1TIPO_RESPONSAVEL: TStringField;
    d1: TDataSetProvider;
    c1: TClientDataSet;
    c1COD_RESP_ALUNO: TIntegerField;
    c1COD_RESPONSAVEL: TIntegerField;
    c1RA: TStringField;
    c1TIPO_RESPONSAVEL: TStringField;
    s6: TSQLDataSet;
    s6RA: TStringField;
    s6NOME: TStringField;
    s6NUMERO: TSmallintField;
    s6SEXO: TStringField;
    s6ENDERECO: TStringField;
    s6BAIRRO: TStringField;
    s6CIDADE: TStringField;
    s6CEP: TStringField;
    s6FONE: TStringField;
    s6DATANASCIMENTO: TSQLTimeStampField;
    s6RG: TStringField;
    s6CPF: TStringField;
    s6ANOLETIVO: TStringField;
    s6SERIE: TStringField;
    s6SITUACAOESCOLAR: TStringField;
    s6MAE: TStringField;
    s6RGMAE: TStringField;
    s6CPFMAE: TStringField;
    s6PAI: TStringField;
    s6RGPAI: TStringField;
    s6CPFPAI: TStringField;
    s6EMAIL: TStringField;
    s6LANCADOCLASSE: TSmallintField;
    s6TRANSPORTE: TStringField;
    s6SERIELETRA: TStringField;
    s6CIDADENASC: TStringField;
    s6UFNASC: TStringField;
    s6NACIONALIDADE: TStringField;
    s6CERTIDAONASCNUM: TStringField;
    s6LIVRONASC: TStringField;
    s6FLLIVRONASC: TStringField;
    s6LOCALTRABPAI: TStringField;
    s6LOCALTRABMAE: TStringField;
    s6TELTRABPAI: TStringField;
    s6TELTRABMAE: TStringField;
    s6INFONECESSARIAS: TStringField;
    s6CARTEIRAVACINACAO: TStringField;
    s6RAPRODESP: TStringField;
    s6LOCALTRABALUNO: TStringField;
    s6TELTRABALUNO: TStringField;
    s6RAPROD: TStringField;
    s6TEL_CELULAR: TStringField;
    s6CERT_NAS_COMARCA: TStringField;
    s6CERT_NAS_UF: TStringField;
    s6CERT_NAS_MUNICIPIO: TStringField;
    s6CERT_NAS_DISTRITO: TStringField;
    s6CERT_NAS_SUBDISTRITO: TStringField;
    s6COMPLEMENTO: TStringField;
    s6DIVERSO1: TStringField;
    s6DIVERSO2: TStringField;
    s6IMPORTA: TStringField;
    d6: TDataSetProvider;
    c6: TClientDataSet;
    c6RA: TStringField;
    c6NOME: TStringField;
    c6NUMERO: TSmallintField;
    c6SEXO: TStringField;
    c6ENDERECO: TStringField;
    c6BAIRRO: TStringField;
    c6CIDADE: TStringField;
    c6CEP: TStringField;
    c6FONE: TStringField;
    c6DATANASCIMENTO: TSQLTimeStampField;
    c6RG: TStringField;
    c6CPF: TStringField;
    c6ANOLETIVO: TStringField;
    c6SERIE: TStringField;
    c6SITUACAOESCOLAR: TStringField;
    c6MAE: TStringField;
    c6RGMAE: TStringField;
    c6CPFMAE: TStringField;
    c6PAI: TStringField;
    c6RGPAI: TStringField;
    c6CPFPAI: TStringField;
    c6EMAIL: TStringField;
    c6LANCADOCLASSE: TSmallintField;
    c6TRANSPORTE: TStringField;
    c6SERIELETRA: TStringField;
    c6CIDADENASC: TStringField;
    c6UFNASC: TStringField;
    c6NACIONALIDADE: TStringField;
    c6CERTIDAONASCNUM: TStringField;
    c6LIVRONASC: TStringField;
    c6FLLIVRONASC: TStringField;
    c6LOCALTRABPAI: TStringField;
    c6LOCALTRABMAE: TStringField;
    c6TELTRABPAI: TStringField;
    c6TELTRABMAE: TStringField;
    c6INFONECESSARIAS: TStringField;
    c6CARTEIRAVACINACAO: TStringField;
    c6RAPRODESP: TStringField;
    c6LOCALTRABALUNO: TStringField;
    c6TELTRABALUNO: TStringField;
    c6RAPROD: TStringField;
    c6TEL_CELULAR: TStringField;
    c6CERT_NAS_COMARCA: TStringField;
    c6CERT_NAS_UF: TStringField;
    c6CERT_NAS_MUNICIPIO: TStringField;
    c6CERT_NAS_DISTRITO: TStringField;
    c6CERT_NAS_SUBDISTRITO: TStringField;
    c6COMPLEMENTO: TStringField;
    c6DIVERSO1: TStringField;
    c6DIVERSO2: TStringField;
    c6IMPORTA: TStringField;
    c5: TClientDataSet;
    d5: TDataSetProvider;
    s5: TSQLDataSet;
    s4: TSQLDataSet;
    s4COD_RESP_ALUNO: TIntegerField;
    s4COD_RESPONSAVEL: TIntegerField;
    s4RA: TStringField;
    s4TIPO_RESPONSAVEL: TStringField;
    s4IMPORTA: TStringField;
    d4: TDataSetProvider;
    c4: TClientDataSet;
    c4COD_RESP_ALUNO: TIntegerField;
    c4COD_RESPONSAVEL: TIntegerField;
    c4RA: TStringField;
    c4TIPO_RESPONSAVEL: TStringField;
    c4IMPORTA: TStringField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid2: TDBGrid;
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExporta: TfExporta;

implementation

uses UDm;

{$R *.dfm}

procedure TfExporta.BitBtn4Click(Sender: TObject);
var
 str_sql :string;
begin
  str_sql := 'select * from TABALUNO where RA LIKE ';
  if Edit1.Text <> '' then
    str_sql := str_sql + '''' + Edit1.text + '%'''
  else
    str_sql := 'select * from TABALUNO';
  if c3.Active then
    c3.Close;
  c3.CommandText := str_sql;
  c3.Open;
  if not c3.IsEmpty then
  begin
    if c1.Active then
      c1.Close;
    c1.Params[0].AsString := c3RA.AsString;
    c1.Open;
    if c2.Active then
      c2.Close;
    c2.Params[0].AsInteger := c1COD_RESPONSAVEL.AsInteger;
    c2.Open;
  end;
end;

procedure TfExporta.BitBtn5Click(Sender: TObject);
var i: integer;
begin
  if not c3.IsEmpty then
  begin
    //Exporta o Aluno
    if not c6.Active then
      c6.Open;
    c3.First;
    while not c3.Eof do
    begin
      c6.Append;
      for i:=0 to (c3.FieldCount - 1) do
      begin
        c6.Fields[i].Value := c3.Fields[i].Value;
      end;
      c6IMPORTA.AsString := 'N';
      c6.Post;
      c3.Next;
    end;
    //Exporta Resp_Aluno
    if not c4.Active then
      c4.Open;

    c1.First;
    while not c1.Eof do
    begin
      c4.Append;
      for i:=0 to (c1.FieldCount - 1) do
      begin
        c4.Fields[i].Value := c1.Fields[i].Value;
      end;
      c4.Post;
      c1.Next;
    end;
    //Exporta Responsavel
    if not c5.Active then
      c5.Open;
    c2.First;
    while not c2.Eof do
    begin
      c5.Append;
      for i:=0 to (c2.FieldCount - 1) do
      begin
        c5.Fields[i].Value := c2.Fields[i].Value;
      end;
      c5.Post;
      c2.Next;
    end;
    c6.ApplyUpdates(0);
    c4.ApplyUpdates(0);
    c5.ApplyUpdates(0);
    if not c6.Active then
      c6.Open;
    MessageDlg('Registro Gravado', mtInformation, [mbOK], 0);
  end;
end;

procedure TfExporta.BitBtn6Click(Sender: TObject);
 var str_apaga: string;
begin
 { if  MessageDlg('Confirma a exclusão dos Registros',
    mtConfirmation, [mbYes, mbNo],0) = mrYes then
  begin
    str_apaga := 'DELETE FROM RESPONSAVEL';
    dmdados.sc2.ExecuteDirect(str_apaga);
    str_apaga := 'DELETE FROM RESP_ALUNO';
    dmdados.sc2.ExecuteDirect(str_apaga);
    str_apaga := 'DELETE FROM TABALUNO';
    dmdados.sc2.ExecuteDirect(str_apaga);
    if c6.Active then
      c6.Refresh;
  end; }
end;

procedure TfExporta.FormShow(Sender: TObject);
begin
  c6.Open;
end;

end.
