unit uFiltroGuia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, StdCtrls, Buttons, DBClient, DB,
  SqlExpr, Provider, Mask, rpcompobase, rpvclreport, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox, JvExDBGrids, JvDBGrid, Menus, JvExMask,
  JvToolEdit;

type
  TfiltroGuia = class(TForm)
    dsp: TDataSetProvider;
    scds: TSQLDataSet;
    cds: TClientDataSet;
    ds: TDataSource;
    cdsID_GUIAS: TIntegerField;
    cdsREGISTRO_ANS: TStringField;
    cdsNUMERO_GUIA: TStringField;
    cdsDATA_EMISSAO: TDateField;
    cdsNUMERO_CARTAO_BENEFICIARIO: TStringField;
    cdsNOME_PLANO: TStringField;
    cdsVALIDADE_CARTEIRA: TDateField;
    cdsNOME_BENEFICIARIO: TStringField;
    cdsNUMERO_CARTAO_NACIONAL: TStringField;
    cdsCODIGO_OPERADORA: TStringField;
    cdsNOME_CONTRATADO: TStringField;
    cdsCODIGO_CNES: TStringField;
    cdsLOGRADOURO: TStringField;
    cdsNOME_LOGRADOURO: TStringField;
    cdsNUMERO: TStringField;
    cdsCOMPLEMENTO: TStringField;
    cdsMUNICIPIO: TStringField;
    cdsSIGLA: TStringField;
    cdsCODIGO_MUNICIPIO: TStringField;
    cdsCEP: TStringField;
    cdsNOME_EXECUTANTE: TStringField;
    cdsSIGLA_CONSELHO: TStringField;
    cdsNUMERO_PROFISSIONAL: TStringField;
    cdsSIGLA_UNIDADE: TStringField;
    cdsCODIGO_ESPECIALIDADE: TStringField;
    cdsCODIGO_DOENCA: TStringField;
    cdsTEMPO_DOENCA: TStringField;
    cdsACIDENTE_TRABALHO: TIntegerField;
    cdsCODIGO_CID10_1: TStringField;
    cdsCODIGO_CID10_2: TStringField;
    cdsCODIGO_CID10_3: TStringField;
    cdsCODIGO_CID10_4: TStringField;
    cdsDATA_ATENDIMENTO: TDateField;
    cdsCODIGO_PROCEDIMENTOS: TStringField;
    cdsCODIGO_PROCEDIMENTOS_REALIZADO: TStringField;
    cdsTIPO_CONSULTA: TStringField;
    cdsTIPO_SAIDA: TIntegerField;
    cdsOBSERVACAO: TStringField;
    cdsCODIGO_PRESTADORA: TStringField;
    cdsCARATER_SOLICITACAO: TStringField;
    cdsNUMERO_CARTEIRA: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    vcl_guiaconsulta: TVCLReport;
    cdsTIPO_GUIA: TStringField;
    cdsDATA_AUT: TDateField;
    cdsSENHA: TStringField;
    cdsDATA_VAL_SENHA: TDateField;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Label3: TLabel;
    JvDBGrid1: TJvDBGrid;
    Edit1: TJvDBSearchComboBox;
    DataSource1: TDataSource;
    BitBtn11: TBitBtn;
    BitBtn5: TBitBtn;
    btnSair: TBitBtn;
    bitbtn1z: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    medta1: TJvDateEdit;
    medta2: TJvDateEdit;
    procedure BitBtn1zClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  filtroGuia: TfiltroGuia;

implementation

uses UDmSaude, uQguia, uEditar, UDm;

{$R *.dfm}

procedure TfiltroGuia.BitBtn1zClick(Sender: TObject);
var sqltexto ,datastr ,sqltexto1 : string ;
begin
  BitBtn3.Enabled := True;
  BitBtn2.Enabled := True;
  if (cds.Active)then
    cds.Close;
  sqltexto := '';
  sqltexto1 := '';
  cds.CommandText :='';
  sqltexto := 'select * from GUIAS ';
    //==============================================================================
  datastr:='  /  /    ';
  //------------------------------------------------------------------------------
  //Verifica se a data de emissão foi preenchido
  //------------------------------------------------------------------------------
  try
  if (medta1.Text<>datastr) then
  StrToDate(medta1.Text);
  if (medta2.Text<>datastr) then
  StrToDate(medta2.Text);
  if (medta1.Text<>datastr) then
  if (medta2.Text<>datastr) then
  begin
  sqlTexto1 := ' WHERE DATA_EMISSAO BETWEEN ' +
  '''' + formatdatetime('mm/dd/yy', StrToDate(medta1.Text)) + '''' +
  ' AND ' +
  '''' + formatdatetime('mm/dd/yy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;
  //------------------------------------------------------------------------------
  //------------------------------------------------------------------------------
  if Edit1.Text<>'' then
  begin
    if sqlTexto1='' then
      sqlTexto1 := sqlTexto1 + ' WHERE CODCLIENTE = '
    else
      sqlTexto1 := sqlTexto1 + ' AND CODCLIENTE = ';
      sqlTexto1 := sqlTexto1 + IntToStr( DMSaude.cdsClienteBuscaPCODCLIENTE.AsInteger);
  end;
  case ComboBox1.ItemIndex of
    0 : begin
          if sqlTexto1='' then
            sqlTexto1 := sqlTexto1 + ' WHERE TIPO_GUIA = '
          else
            sqlTexto1 := sqlTexto1 + ' AND TIPO_GUIA = ';
          sqlTexto1 := sqlTexto1 + QuotedStr('Consulta');
        end;
    1 : begin
          if sqlTexto1='' then
            sqlTexto1 := sqlTexto1 + ' WHERE TIPO_GUIA = '
          else
            sqlTexto1 := sqlTexto1 + ' AND TIPO_GUIA = ';
          sqlTexto1 := sqlTexto1 + QuotedStr('Internação');
        end;
    2 : begin
          if sqlTexto1='' then
            sqlTexto1 := sqlTexto1 + ' WHERE TIPO_GUIA = '
          else
            sqlTexto1 := sqlTexto1 + ' AND TIPO_GUIA = ';
          sqlTexto1 := sqlTexto1 + QuotedStr('Serviço');
        end;
  end;
  cds.CommandText := sqltexto + sqlTexto1;
  cds.Open;
end;

procedure TfiltroGuia.BitBtn2Click(Sender: TObject);
begin
  if(cds.State in [dsinactive]) then
    exit;
  if(cdsTIPO_GUIA.AsString = 'Consulta') then
    vcl_guiaconsulta.Filename := str_relatorio + 'guia_consulta.rep';
  if(cdsTIPO_GUIA.AsString = 'Internação') then
    vcl_guiaconsulta.Filename := str_relatorio + 'guia_internacao.rep';
  if(cdsTIPO_GUIA.AsString = 'Serviço') then
    vcl_guiaconsulta.Filename := str_relatorio + 'guia_servico.rep';

  vcl_guiaconsulta.Report.DatabaseInfo.Items[0].SQLConnection := DM.sqlsisAdimin;
  vcl_guiaconsulta.Report.Params.ParamByName('NOME').AsString := cdsNOME_BENEFICIARIO.AsString;
  vcl_guiaconsulta.Report.Params.ParamByName('CODGUIA').AsString := cdsNUMERO_GUIA.AsString;
  vcl_guiaconsulta.Execute;
end;

procedure TfiltroGuia.BitBtn3Click(Sender: TObject);
begin
  if(cds.State in [dsinactive]) then
  exit;
  n_guia := cdsID_GUIAS.AsInteger; //cdsNUMERO_GUIA.AsString;
  fEditar.ShowModal;
  cds.Close;
  cds.Open;
end;

procedure TfiltroGuia.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
  if(DMSaude.cdsClienteBuscaP.Active) then
   DMSaude.cdsClienteBuscaP.Close;
  DMSaude.cdsClienteBuscaP.Params[0].AsString := 'ASH';
  DMSaude.cdsClienteBuscaP.Open;
  Edit1.Text := '';
end;

procedure TfiltroGuia.BitBtn11Click(Sender: TObject);
begin
  medta1.Clear;
  medta2.Clear;
end;

procedure TfiltroGuia.BitBtn5Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfiltroGuia.btnSairClick(Sender: TObject);
begin
  DMSaude.cdsCliente.Close;
  Close;
end;

procedure TfiltroGuia.dsDataChange(Sender: TObject; Field: TField);
begin
  cdsID_GUIAS.AsInteger;
end;

end.
