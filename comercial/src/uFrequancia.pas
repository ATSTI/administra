unit uFrequancia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Mask, StdCtrls, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, Buttons, DB, DBClient, Provider,
  SqlExpr, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, ComCtrls, Menus;

type
  TfFrequencia = class(TForm)
    Panel1: TPanel;
    sFrequencia: TSQLDataSet;
    dFrequencia: TDataSetProvider;
    cFrequencia: TClientDataSet;
    DtSrc: TDataSource;
    ComboBox1: TComboBox;
    data1: TJvDatePickerEdit;
    horaentrada: TMaskEdit;
    sFuncionarios: TSQLDataSet;
    Timer1: TTimer;
    sdsFrequencia: TSQLDataSet;
    dspFrequencia: TDataSetProvider;
    cdsFrequencia: TClientDataSet;
    cdsFrequenciaCOD_FREQUENCIA: TIntegerField;
    cdsFrequenciaCOD_FUNCIONARIO: TIntegerField;
    cdsFrequenciaDATA: TDateField;
    cdsFrequenciaHORAINICIO: TSQLTimeStampField;
    cdsFrequenciaHORASAIDA: TSQLTimeStampField;
    sdsFrequenciaCOD_FREQUENCIA: TIntegerField;
    sdsFrequenciaCOD_FUNCIONARIO: TIntegerField;
    sdsFrequenciaDATA: TDateField;
    sdsFrequenciaHORAINICIO: TSQLTimeStampField;
    sdsFrequenciaHORASAIDA: TSQLTimeStampField;
    sAusentes: TSQLDataSet;
    dAusentes: TDataSetProvider;
    cAusentes: TClientDataSet;
    dtsrcAusentes: TDataSource;
    sAusentesCODIGO: TIntegerField;
    sAusentesNOME: TStringField;
    cAusentesCODIGO: TIntegerField;
    cAusentesNOME: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet2: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    sColaborador: TSQLDataSet;
    PopupMenu1: TPopupMenu;
    Entrada1: TMenuItem;
    Saida1: TMenuItem;
    Excluir1: TMenuItem;
    Consulta1: TMenuItem;
    sFrequenciaCOD_FREQUENCIA: TIntegerField;
    sFrequenciaCOD_FUNCIONARIO: TIntegerField;
    sFrequenciaDATA: TDateField;
    sFrequenciaHORAINICIO: TSQLTimeStampField;
    sFrequenciaHORASAIDA: TSQLTimeStampField;
    sFrequenciaNOMECLIENTE: TStringField;
    cFrequenciaCOD_FREQUENCIA: TIntegerField;
    cFrequenciaCOD_FUNCIONARIO: TIntegerField;
    cFrequenciaDATA: TDateField;
    cFrequenciaHORAINICIO: TSQLTimeStampField;
    cFrequenciaHORASAIDA: TSQLTimeStampField;
    cFrequenciaNOMECLIENTE: TStringField;
    sColaboradorCOD_FUNCIONARIO: TIntegerField;
    sColaboradorNOMECLIENTE: TStringField;
    sFuncionariosCODCLIENTE: TIntegerField;
    sFuncionariosNOMECLIENTE: TStringField;
    sFuncionariosRAZAOSOCIAL: TStringField;
    sFuncionariosCONTATO: TStringField;
    sFuncionariosTIPOFIRMA: TSmallintField;
    sFuncionariosCPF: TStringField;
    sFuncionariosCNPJ: TStringField;
    sFuncionariosINSCESTADUAL: TStringField;
    sFuncionariosRG: TStringField;
    sFuncionariosSEGMENTO: TSmallintField;
    sFuncionariosREGIAO: TSmallintField;
    sFuncionariosLIMITECREDITO: TFloatField;
    sFuncionariosDATACADASTRO: TDateField;
    sFuncionariosCODUSUARIO: TIntegerField;
    sFuncionariosSTATUS: TSmallintField;
    sFuncionariosHOMEPAGE: TStringField;
    sFuncionariosPRAZORECEBIMENTO: TSmallintField;
    sFuncionariosPRAZOENTREGA: TSmallintField;
    sFuncionariosCODBANCO: TSmallintField;
    sFuncionariosBASE_ICMS: TSmallintField;
    sFuncionariosDATANASC: TDateField;
    sFuncionariosCONTA_CLIENTE: TStringField;
    sFuncionariosOBS: TStringField;
    sFuncionariosTEM_IE: TStringField;
    sFuncionariosDATARESC: TDateField;
    sFuncionariosNOMEMAE: TStringField;
    sFuncionariosSEXO: TStringField;
    sFuncionariosFORMA_CORRESPOND: TStringField;
    sFuncionariosGRUPO_CLIENTE: TStringField;
    sFuncionariosCODINCLUCANC: TIntegerField;
    sFuncionariosEXIST_COBERT: TStringField;
    sFuncionariosEXISTCOPART: TStringField;
    sFuncionariosDATAREINC: TDateField;
    sFuncionariosGERAAVISO: TStringField;
    sFuncionariosGERAENV: TStringField;
    sFuncionariosGERABOL: TStringField;
    sFuncionariosEMVIAGEM: TStringField;
    sFuncionariosDTAALTERA: TDateField;
    sFuncionariosSERIELETRA: TStringField;
    sFuncionariosSERIE: TStringField;
    sFuncionariosRA: TStringField;
    sFuncionariosCURSO: TStringField;
    sFuncionariosIP: TStringField;
    sFuncionariosN_CONTRATO: TStringField;
    sFuncionariosMAC: TStringField;
    sFuncionariosMARCA: TStringField;
    sFuncionariosBANDA_UPLOAD: TStringField;
    sFuncionariosBANDA_DOWLOAD: TStringField;
    sFuncionariosTORRE_CONECCAO: TStringField;
    sFuncionariosCOD_FAIXA: TIntegerField;
    sFuncionariosDESCONTO: TFloatField;
    sFuncionariosMENSALIDADE: TFloatField;
    sFuncionariosANUIDADE: TFloatField;
    sFuncionariosPARCELA: TIntegerField;
    sFuncionariosPARCELAGERADAS: TIntegerField;
    sFuncionariosNUMERO: TIntegerField;
    sFuncionariosDATANASCIMENTO: TSQLTimeStampField;
    sFuncionariosANOLETIVO: TStringField;
    sFuncionariosSITUACAOESCOLAR: TStringField;
    sFuncionariosRGMAE: TStringField;
    sFuncionariosCPFMAE: TStringField;
    sFuncionariosPAI: TStringField;
    sFuncionariosRGPAI: TStringField;
    sFuncionariosCPFPAI: TStringField;
    sFuncionariosLANCADOCLASSE: TIntegerField;
    sFuncionariosTRANSPORTE: TStringField;
    sFuncionariosCIDADENASC: TStringField;
    sFuncionariosUFNASC: TStringField;
    sFuncionariosNACIONALIDADE: TStringField;
    sFuncionariosCERTIDAONASCNUM: TStringField;
    sFuncionariosLIVRONASC: TStringField;
    sFuncionariosFLLIVRONASC: TStringField;
    sFuncionariosLOCALTRABPAI: TStringField;
    sFuncionariosLOCALTRABMAE: TStringField;
    sFuncionariosTELTRABPAI: TStringField;
    sFuncionariosTELTRABMAE: TStringField;
    sFuncionariosINFONECESSARIAS: TStringField;
    sFuncionariosCARTEIRAVACINACAO: TStringField;
    sFuncionariosRAPRODESP: TStringField;
    sFuncionariosLOCALTRABALUNO: TStringField;
    sFuncionariosTELTRABALUNO: TStringField;
    sFuncionariosRAPROD: TStringField;
    sFuncionariosCERT_NAS_COMARCA: TStringField;
    sFuncionariosCERT_NAS_UF: TStringField;
    sFuncionariosCERT_NAS_MUNICIPIO: TStringField;
    sFuncionariosCERT_NAS_DISTRITO: TStringField;
    sFuncionariosCERT_NAS_SUBDISTRITO: TStringField;
    sFuncionariosDIVERSO1: TStringField;
    sFuncionariosDIVERSO2: TStringField;
    sFuncionariosDATAEMISSAORG: TDateField;
    sFuncionariosESTADORG: TStringField;
    sFuncionariosCOMUNICAALUNO: TStringField;
    sFuncionariosFONEMAE: TStringField;
    sFuncionariosCELULARMAE: TStringField;
    sFuncionariosCOMUNICAMAE: TStringField;
    sFuncionariosFONEPAI: TStringField;
    sFuncionariosCELULARPAI: TStringField;
    sFuncionariosCOMUNICAPAI: TStringField;
    sFuncionariosVALOR_MATRICULA: TFloatField;
    sFuncionariosDATATRANSF: TDateField;
    sFuncionariosCOR_RACA: TStringField;
    sFuncionariosPERIODO: TStringField;
    sFuncionariosFOTO: TStringField;
    sFuncionariosDATA_MATRICULA: TSQLTimeStampField;
    sFuncionariosCODRESPONSAVEL: TIntegerField;
    sFuncionariosID_COB: TIntegerField;
    sFuncionariosCOD_TRANPORTADORA: TIntegerField;
    sFuncionariosBLOQUEADO: TStringField;
    sFuncionariosBLOQUEIO: TStringField;
    sFuncionariosCFOP: TStringField;
    sFuncionariosCOD_CLI: TStringField;
    sFuncionariosCORTESIA: TStringField;
    sFuncionariosVALOR_CONSUMO: TFloatField;
    sFuncionariosVALOR_CORTESIA: TFloatField;
    sFuncionariosE_FORNECEDOR: TStringField;
    sFuncionariosCODFORNECEDOR: TIntegerField;
    sFuncionariosCARGOFUNCAO: TIntegerField;
    sFuncionariosCODFISCAL: TStringField;
    sFuncionariosCOD_CARGOSFUNCOES: TIntegerField;
    sFuncionariosDESCRICAO: TStringField;
    sAtivo: TSQLDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    horasaida: TMaskEdit;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    freq : Integer;
    procedure buscafrequencia;
  public
    { Public declarations }
  end;

var
  fFrequencia: TfFrequencia;

implementation

uses UDm;

{$R *.dfm}

procedure TfFrequencia.FormCreate(Sender: TObject);
begin
  if (dm.cds_parametro.Active) then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].asString := 'CARGO/FUNCAO';
  dm.cds_parametro.Open;
  sFuncionarios.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  if (not sFuncionarios.Active) then
    sFuncionarios.Open;
  sFuncionarios.First;
  while not sFuncionarios.Eof do
  begin
     ComboBox1.Items.Add(sFuncionariosNOMECLIENTE.AsString);
     sFuncionarios.Next;
  end;
  sFuncionarios.Close;
end;

procedure TfFrequencia.Timer1Timer(Sender: TObject);
begin
 data1.Text := TimetoStr(Time);
end;

procedure TfFrequencia.BitBtn1Click(Sender: TObject);
begin
   // verificar se Colaborador ja entrou
   if (sColaborador.Active) then
     sColaborador.Close;
   sColaborador.Params[0].AsString := ComboBox1.Text;
   sColaborador.Params[1].AsDate := data1.Date;
   sColaborador.Open;
   if (not sColaborador.IsEmpty) then
   begin
     MessageDlg('Funcionário/Colaborador ja Lançado nessa data.', mtWarning, [mbOK], 0);
     sColaborador.Close;
     ComboBox1.SetFocus;
     exit;
   end;
   if (horaentrada.Text = '  :  ') then
   begin
     MessageDlg('Preencha o campo Hora.', mtWarning, [mbOK], 0);
     horaentrada.SetFocus;
     exit;
   end;
   if ( not sFuncionarios.Active) then
     sFuncionarios.Open;
   sFuncionarios.Locate('NOMECLIENTE',ComboBox1.Text, [loCaseInsensitive]);
   if (sAtivo.Active) then
     sAtivo.Close;
   sAtivo.Params[0].AsInteger := sFuncionariosCODCLIENTE.AsInteger;
   sAtivo.Open;
   if(not sAtivo.IsEmpty) then
   begin
     MessageDlg('Colaborador com horario em Aberto, finalize o antes de criar um novo.', mtWarning, [mbOK], 0);
     Exit;
   end;


   if (not cdsFrequencia.Active) then
     cdsFrequencia.Open;
   cdsFrequencia.Append;
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
   dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_FREQUENCIA, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
   dm.c_6_genid.Open;
   cdsFrequenciaCOD_FREQUENCIA.AsInteger := dm.c_6_genidCODIGO.AsInteger;
   dm.c_6_genid.Close;
   if ( not sFuncionarios.Active) then
     sFuncionarios.Open;
   if (sFuncionarios.Locate('NOMECLIENTE',ComboBox1.Text, [loCaseInsensitive])) then
      cdsFrequenciaCOD_FUNCIONARIO.AsInteger := sFuncionariosCODCLIENTE.AsInteger
   else
   begin
      MessageDlg('Funcionario não cadastrado', mtWarning, [mbOK], 0);
      cdsFrequencia.Cancel;
      exit;
   end;
   cdsFrequenciaDATA.AsDateTime := StrToDateTime(data1.Text);
   cdsFrequenciaHORAINICIO.AsDateTime := StrToDateTime(data1.Text + ' ' + horaentrada.Text);
   cdsFrequencia.ApplyUpdates(0);
   // Atualiza o gride de Frequencia
   buscafrequencia;
end;

procedure TfFrequencia.BitBtn4Click(Sender: TObject);
begin
  buscafrequencia;
end;

procedure TfFrequencia.buscafrequencia;
var
  str : string;
begin
  str := '';
  str := 'select  f.*, u.NOMECLIENTE from FREQUENCIA f inner join  CLIENTES u ' +
          'on u.CODCLIENTE = f.COD_FUNCIONARIO ';
  str := str + ' where f.DATA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',StrToDateTime(data1.Text)));
  str := str + ' and BLOQUEADO <> ' + QuotedStr('S') + ' order by u.NOMECLIENTE';
  if (cFrequencia.Active) then
    cFrequencia.Close;
  cFrequencia.CommandText := str;
  cFrequencia.Open;

  if (cAusentes.Active) then
    cAusentes.Close;
  cAusentes.Params[0].AsDate := StrToDate(data1.Text);
  cAusentes.Open;
end;

procedure TfFrequencia.BitBtn3Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
  begin
     dm.sqlsisAdimin.ExecuteDirect('DELETE FROM FREQUENCIA WHERE COD_FREQUENCIA = ' + IntToStr(freq));
     buscafrequencia;
  end
  else
    Abort;

end;

procedure TfFrequencia.BitBtn2Click(Sender: TObject);
var sql : string;
begin
  sql := 'UPDATE FREQUENCIA set HORASAIDA = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', StrToDateTime(data1.Text)) + ' ' + horasaida.Text) + ' WHERE COD_FREQUENCIA = ' + IntToStr(freq);
  dm.sqlsisAdimin.ExecuteDirect(sql);
  // Atualiza o gride de Frequencia
  buscafrequencia;
end;

procedure TfFrequencia.JvDBGrid1CellClick(Column: TColumn);
begin
  ComboBox1.Text := cFrequenciaNOMECLIENTE.AsString;
  data1.Text := DateToStr(cFrequenciaDATA.AsDateTime);
  freq := cFrequenciaCOD_FREQUENCIA.AsInteger;
  horaentrada.Text := FormatDateTime('HH:MM', cFrequenciaHORAINICIO.AsDateTime);
  horasaida.Text := FormatDateTime('HH:MM', cFrequenciaHORASAIDA.AsDateTime);
end;

procedure TfFrequencia.FormShow(Sender: TObject);
begin
   buscafrequencia;
end;

end.
