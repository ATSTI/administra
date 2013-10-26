unit uImporta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  Grids, DBGrids;

type
  TfImporta = class(TForm)
    DBGrid1: TDBGrid;
    btnMarcar: TBitBtn;
    btnimporta: TBitBtn;
    BitBtn1: TBitBtn;
    s1: TSQLDataSet;
    s1COD_RESP_ALUNO: TIntegerField;
    s1COD_RESPONSAVEL: TIntegerField;
    s1RA: TStringField;
    s1TIPO_RESPONSAVEL: TStringField;
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
    s4: TSQLDataSet;
    s4COD_RESP_ALUNO: TIntegerField;
    s4COD_RESPONSAVEL: TIntegerField;
    s4RA: TStringField;
    s4TIPO_RESPONSAVEL: TStringField;
    s4IMPORTA: TStringField;
    s5: TSQLDataSet;
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
    s6COD_RESPONSAVEL: TIntegerField;
    d1: TDataSetProvider;
    d2: TDataSetProvider;
    d3: TDataSetProvider;
    d4: TDataSetProvider;
    d5: TDataSetProvider;
    d6: TDataSetProvider;
    c1: TClientDataSet;
    c1COD_RESP_ALUNO: TIntegerField;
    c1COD_RESPONSAVEL: TIntegerField;
    c1RA: TStringField;
    c1TIPO_RESPONSAVEL: TStringField;
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
    c4: TClientDataSet;
    c4COD_RESP_ALUNO: TIntegerField;
    c4COD_RESPONSAVEL: TIntegerField;
    c4RA: TStringField;
    c4TIPO_RESPONSAVEL: TStringField;
    c4IMPORTA: TStringField;
    c5: TClientDataSet;
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
    c6COD_RESPONSAVEL: TIntegerField;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnMarcarClick(Sender: TObject);
    procedure btnimportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImporta: TfImporta;

implementation

uses UDm;

{$R *.dfm}

procedure TfImporta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  c1.Close;
  c2.Close;
  c3.Close;
  c4.Close;
  c5.Close;
  c6.Close;
end;

procedure TfImporta.FormShow(Sender: TObject);
begin
  c6.Params[0].AsString := 'T';
  c6.Open;
end;

procedure TfImporta.BitBtn1Click(Sender: TObject);
begin
  c6.Close;
  c6.Params[0].AsString := 'N';
  c6.Open;
end;

procedure TfImporta.btnMarcarClick(Sender: TObject);
begin
  if btnMarcar.Caption = 'Marcar Todos' then
  begin
    c6.First;
    while not c6.Eof do
    begin
      c6.Edit;
      c6IMPORTA.AsString := 'S';
      c6.Post;
      c6.Next;
    end;
    c6.ApplyUpdates(0);
  end;
end;

procedure TfImporta.btnimportaClick(Sender: TObject);
var i: integer;
begin
//  if c6.State in [dsEdit] then
  try
  c6.ApplyUpdates(0);
  if c6.Active then
    c6.Close;
  c6.Params[0].AsString := 'S';
  c6.Open;
  if not c6.IsEmpty then
  begin
    //Importa o Aluno
    if not c3.Active then
      c3.Open;
    c6.First;
    while not c6.Eof do
    begin
      c3.Append;
      for i:=0 to (c6.FieldCount - 3) do
      begin
        c3.Fields[i].Value := c6.Fields[i].Value;
      end;
      c3.Post;
      c6.Edit;
      c6IMPORTA.AsString := 'F';
      c6.Post;
      c6.Next;
    end;
    //Importa Resp_Aluno
    c6.First;
    if not c1.Active then
      c1.Open;
    while not c6.Eof do
    begin
      if c4.Active then
        c4.Close;
      c4.Params[0].AsString := c6RA.AsString;
      c4.Open;
      c4.First;
      while not c4.Eof do
      begin
        c1.Append;
        for i:=0 to (c4.FieldCount - 2) do
        begin
          c1.Fields[i].Value := c4.Fields[i].Value;
        end;
        c1.Post;
        c4.Next;
      end;
      c6.Next;
    end;
    //Importa Responsavel
    c6.First;
    if not c2.Active then
      c2.Open;
    while not c6.Eof do
    begin
      if c5.Active then
        c5.Close;
      c5.Params[0].asinteger := c6COD_RESPONSAVEL.AsInteger;
      c5.Open;
      c5.First;
      while not c5.Eof do
      begin
        c2.Append;
        for i:=0 to (c5.FieldCount - 2) do
        begin
          c2.Fields[i].Value := c5.Fields[i].Value;
        end;
        c2.Post;
        c5.Next;
      end;
      c6.next;
    end;
    c1.ApplyUpdates(0);
    c2.ApplyUpdates(0);
    c3.ApplyUpdates(0);
    c6.ApplyUpdates(0);
    if not c3.Active then
      c3.Open;
    MessageDlg('Registro Gravado', mtInformation, [mbOK], 0);
  end;
  except
    MessageDlg('Erro na gravação, registro não importado.', mtError, [mbOK], 0);
  end;
end;

end.
