unit uLabEntregaResultado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  StdCtrls, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, Menus, XPMenu,
  DB, Buttons, MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, Mask,
  JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  rpcompobase, rpvclreport;

type
  TfLabEntregaResultado = class(TfPai_new)
    GroupBox1: TGroupBox;
    edtCliente: TJvDBSearchComboBox;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Label3: TLabel;
    sdsClienteBusca: TSQLDataSet;
    dspBuscaCliente: TDataSetProvider;
    cdsClienteBusca: TClientDataSet;
    cdsClienteBuscaCODCLIENTE: TIntegerField;
    cdsClienteBuscaNOMECLIENTE: TStringField;
    cdsClienteBuscaRA: TStringField;
    cdsClienteBuscaGRUPO_CLIENTE: TStringField;
    dsClienteBusca: TDataSource;
    DtSrc_exame: TDataSource;
    cds: TClientDataSet;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    JvDBGrid1: TJvDBGrid;
    sdsCODEXAME: TIntegerField;
    sdsDATASOLICITACAO: TDateField;
    sdsDATAENTREGAMATERIAL: TDateField;
    sdsDATAPREVISTAENTREGA: TDateField;
    sdsDATALAUDOEXAME: TDateField;
    sdsDATARETIRADA: TDateField;
    sdsCODCLIENTE: TIntegerField;
    sdsTIPOEXAME: TStringField;
    sdsMEDICOSOLICITANTE: TIntegerField;
    sdsCONVENIO: TStringField;
    sdsVALOR: TFloatField;
    sdsSITUACAO: TStringField;
    sdsMATERIALRECEBIDO: TStringField;
    sdsNOMECLIENTE: TStringField;
    cdsCODEXAME: TIntegerField;
    cdsDATASOLICITACAO: TDateField;
    cdsDATAENTREGAMATERIAL: TDateField;
    cdsDATAPREVISTAENTREGA: TDateField;
    cdsDATALAUDOEXAME: TDateField;
    cdsDATARETIRADA: TDateField;
    cdsCODCLIENTE: TIntegerField;
    cdsTIPOEXAME: TStringField;
    cdsMEDICOSOLICITANTE: TIntegerField;
    cdsCONVENIO: TStringField;
    cdsVALOR: TFloatField;
    cdsSITUACAO: TStringField;
    cdsMATERIALRECEBIDO: TStringField;
    cdsNOMECLIENTE: TStringField;
    dt1: TJvDatePickerEdit;
    Label4: TLabel;
    BitBtn2: TBitBtn;
    VCLReport1: TVCLReport;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label5: TLabel;
    dataentrega: TJvDatePickerEdit;
    Label6: TLabel;
    BitBtn5: TBitBtn;
    BuscaDetalhada1: TMenuItem;
    ImprimirNovos1: TMenuItem;
    BitBtn6: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sqltexto: string;
  end;

var
  fLabEntregaResultado: TfLabEntregaResultado;

implementation

uses UDm, uLabExameLocaliza, UDmSaude;

{$R *.dfm}

procedure TfLabEntregaResultado.FormShow(Sender: TObject);
begin
  inherited;
  if (not cdsClienteBusca.Active) then
     cdsClienteBusca.Open;
  edtCliente.Text := '';
end;

procedure TfLabEntregaResultado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if (cdsClienteBusca.Active) then
     cdsClienteBusca.Close;

end;

procedure TfLabEntregaResultado.BitBtn1Click(Sender: TObject);
//var sqltexto : string;
begin
  inherited;
  {
  cds.close;
  sqltexto := '';
  cds.CommandText := '';
  sqltexto := 'select lab.* ,cli.NOMECLIENTE  from LABEXAME lab left outer join CLIENTES cli on cli.CODCLIENTE = lab.CODCLIENTE ';
  if (RadioGroup1.ItemIndex = 1) then
      sqltexto := sqltexto + 'where lab.SITUACAO <> ' + QuotedStr('FINALIZADO') +
      ' and lab.SITUACAO <> ' + QuotedStr('COLETADO') +
 //     ' and lab.DATAENTREGAMATERIAL = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt1.Date)) +
      ' and cli.STATUS = 0 and lab.SITUACAO <> ' + QuotedStr('NÃO COLETADO')
  else
      sqltexto := sqltexto + 'where lab.SITUACAO = ' + QuotedStr('FINALIZADO');
  //   ' and lab.DATAENTREGAMATERIAL = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt1.Date));
  if (edtCliente.Text <> '') then
    sqltexto := sqltexto + ' and cli.NOMECLIENTE = ' + QuotedStr(edtCliente.Text)
  else
  begin
    MessageDlg('É preciso selecionar um cliente', mtWarning, [mbOK], 0);
    edtCliente.SetFocus;
    exit;
  end;



  cds.CommandText := sqltexto;
  cds.Open;
  }
    cds.close;
  sqltexto := '';
  cds.CommandText := '';
  sqltexto := 'select lab.* ,cli.NOMECLIENTE  from LABEXAME lab left outer join CLIENTES cli on cli.CODCLIENTE = lab.CODCLIENTE ';
  if (RadioGroup1.ItemIndex = 1) then
      sqltexto := sqltexto + 'where lab.SITUACAO <> ' + QuotedStr('FINALIZADO') +
      ' and lab.SITUACAO <> ' + QuotedStr('COLETADO') +
      ' and lab.DATAENTREGAMATERIAL = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt1.Date)) +
      ' and cli.STATUS = 0 and lab.SITUACAO <> ' + QuotedStr('NÃO COLETADO')
  else
      sqltexto := sqltexto + 'where lab.SITUACAO = ' + QuotedStr('FINALIZADO')+
     ' and lab.DATAENTREGAMATERIAL = ' + QuotedStr(FormatDateTime('mm/dd/yyyy',dt1.Date));
  if (edtCliente.Text <> '') then
    sqltexto := sqltexto + ' and cli.NOMECLIENTE = ' + QuotedStr(edtCliente.Text)
  else
  begin
    MessageDlg('É preciso selecionar um cliente', mtWarning, [mbOK], 0);
    edtCliente.SetFocus;
    exit;
  end;
  cds.CommandText := sqltexto;
  cds.Open;

end;

procedure TfLabEntregaResultado.btnGravarClick(Sender: TObject);
begin
  if (cdsSITUACAO.AsString = 'LAUDADO') then
  begin
    cds.Edit;
    cdsSituacao.AsString := 'FINALIZADO';
    cdsDATARETIRADA.AsDateTime := dataentrega.Date;
    RadioGroup1.ItemIndex := 0;
    cds.ApplyUpdates(0);
  end;
  //inherited;

end;

procedure TfLabEntregaResultado.BitBtn2Click(Sender: TObject);
begin
  inherited;
  cds.First;
  cds.DisableControls;
  while not cds.Eof do
  begin
   { if (JvDBGrid1.SelectedRows.CurrentRowSelected = true) then
    begin
    }
        VCLReport1.FileName := str_relatorio + 'ash_exames.rep';
        VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
        if (cdsTIPOEXAME.AsString = 'HEMOGRAMA')THEN
            VCLReport1.Report.Params.ParamByName('HEMOGRAMA').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'PROTO')THEN
            VCLReport1.Report.Params.ParamByName('PROTO').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'GLICEMIA')THEN
            VCLReport1.Report.Params.ParamByName('GLICEMIA').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'BETA HCG')THEN
            VCLReport1.Report.Params.ParamByName('TESTE').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'URINA I')THEN
            VCLReport1.Report.Params.ParamByName('URINA').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'TIPAGEM SANGUINEA')THEN
            VCLReport1.Report.Params.ParamByName('TIPAGEM').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'VELOC. HOMOSSED.')THEN
            VCLReport1.Report.Params.ParamByName('VELOC').Value := cdsCODEXAME.AsInteger;
   // end;
    cds.Next;
  end;
   VCLReport1.Execute;
   VCLReport1.Report.Params.ParamByName('HEMOGRAMA').Value := 0;
   VCLReport1.Report.Params.ParamByName('PROTO').Value := 0;
   VCLReport1.Report.Params.ParamByName('GLICEMIA').Value := 0;
   VCLReport1.Report.Params.ParamByName('TESTE').Value := 0;
   VCLReport1.Report.Params.ParamByName('URINA').Value := 0;
   VCLReport1.Report.Params.ParamByName('TIPAGEM').Value := 0;
   VCLReport1.Report.Params.ParamByName('VELOC').Value := 0;

  cds.First;
  cds.EnableControls;

end;

procedure TfLabEntregaResultado.BitBtn3Click(Sender: TObject);
var str_sql2 : string ;
begin
  inherited;
  cds.First;                                                                                 
  cds.DisableControls;
  str_sql2 := 'select  LAB.DATALAUDOEXAME ' +
           ',LAB.TIPOEXAME '+
           ',LAB.SITUACAO ' +
           ',CLI.NOMECLIENTE '+
           ',REP.NOME_REPRFOR ' +
           ',RESU.RESULTADO1 ' +
           ',RESU.RESULTADO2 ' +
           ',RESU.RESULTADO10 ' +
           ',RESU.OBS ' +
           ',RESU.OBS1 ' +
           'from LABEXAME LAB ' +
           'LEFT OUTER JOIN  LABEXAMERESULTADO RESU ' +
           'ON LAB.CODEXAME = RESU.CODEXAME ' +
           'INNER JOIN CLIENTES CLI ON CLI.CODCLIENTE = LAB.CODCLIENTE ' +
           'INNER JOIN REPR_FORNECEDOR REP ON REP.COD_REPRFOR  = LAB.MEDICOSOLICITANTE' +
           ' where LAB.SITUACAO = ' + '''' + 'FINALIZADO' + ''''  ;
  while not cds.Eof do
  begin
    if (JvDBGrid1.SelectedRows.CurrentRowSelected = true) then
    begin
      str_sql2 := str_sql2 + ' and lab.codexame = ';
      str_sql2 := str_sql2 + IntToStr(cdsCODEXAME.AsInteger);
    end;
    cds.Next;
  end;
     VCLReport1.FileName := str_relatorio + 'ash_novos_exames.rep';
        VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
        VCLReport1.Report.DataInfo.Items[0].SQL:= str_sql2;
   VCLReport1.Execute;
  cds.First;
  cds.EnableControls;

end;

procedure TfLabEntregaResultado.BitBtn4Click(Sender: TObject);
begin
  inherited;
  sqltexto := '';
  VCLReport1.Filename := str_relatorio + 'lab_exames.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
//  sqltexto := 'SELECT * ' + 'FROM LAB_EXAMES(';
//  VCLReport1.Report.DataInfo.Items[0].SQL:= sqltexto ;

  VCLReport1.Report.Params.ParamByName('DTEXAME').Value := cdsDATAENTREGAMATERIAL.Value;
  VCLReport1.Report.Params.ParamByName('CODCLI').Value := cdsCODCLIENTE.AsInteger;

  VCLReport1.Execute;

{  cds.First;
  cds.DisableControls;
  while not cds.Eof do
  begin
    if (JvDBGrid1.SelectedRows.CurrentRowSelected = true) then
    begin
        VCLReport1.FileName := str_relatorio + 'ash_novos_exames1.rep';
        VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
        if (cdsTIPOEXAME.AsString = 'ACIDO URICO')THEN
            VCLReport1.Report.Params.ParamByName('URICO').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'COLESTEROL TOTAL')THEN
            VCLReport1.Report.Params.ParamByName('TOTAL').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'HDL - COLESTEROL')THEN
            VCLReport1.Report.Params.ParamByName('HDL').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'LDL - COLESTEROL')THEN
            VCLReport1.Report.Params.ParamByName('LDL').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'VLDL - COLESTEROL')THEN
            VCLReport1.Report.Params.ParamByName('VLDL').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'TRIGLICERIDES')THEN
            VCLReport1.Report.Params.ParamByName('TRI').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'CREATINA')THEN
            VCLReport1.Report.Params.ParamByName('CRE').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'UREIA')THEN
            VCLReport1.Report.Params.ParamByName('URE').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'AST/TGO')THEN
            VCLReport1.Report.Params.ParamByName('AST').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'ALT/TGP')THEN
            VCLReport1.Report.Params.ParamByName('ALT').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'GAMA-GLUTAMIL TRANSFERASE')THEN
            VCLReport1.Report.Params.ParamByName('GAMA').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'FOSFATASE ALCALINA')THEN
            VCLReport1.Report.Params.ParamByName('FOS').Value := cdsCODEXAME.AsInteger;

    end;
    cds.Next;
  end;
   VCLReport1.Execute;
  cds.First;
  cds.EnableControls;
 }
end;

procedure TfLabEntregaResultado.BitBtn5Click(Sender: TObject);
begin
  inherited;
  fLabExameLocaliza := TfLabExameLocaliza.Create(Application);
  try
    fLabExameLocaliza.ShowModal;
    if (dmSaude.cdsExame.Active) then
      dmSaude.cdsExame.Close;
    dmSaude.cdsExame.Params[0].AsInteger := fLabExameLocaliza.codExame;
    dmSaude.cdsExame.open;
    if ( not DMSaude.cdsExame.IsEmpty) then
    BEGIN
      DMSaude.cdsExame.Edit;
      cdsClienteBusca.Locate('CODCLIENTE',DMSaude.cdsExameCODCLIENTE.AsInteger,[loPartialKey]);
      dt1.Text := DMSaude.cdsExameDATAENTREGAMATERIAL.AsString;
      if(DMSaude.cdsExameSITUACAO.AsString = 'FINALIZADO') then
      RadioGroup1.ItemIndex := 0 ;
      BitBtn1.Click;
    END;

  finally
    fLabExameLocaliza.Free;
  end;
end;

procedure TfLabEntregaResultado.BitBtn6Click(Sender: TObject);
begin
  inherited;
  cds.First;
  cds.DisableControls;
  while not cds.Eof do
  begin
   { if (JvDBGrid1.SelectedRows.CurrentRowSelected = true) then
    begin
    }
        VCLReport1.FileName := str_relatorio + 'ash_exames_crianca.rep';
        VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
        if (cdsTIPOEXAME.AsString = 'HEMOGRAMA')THEN
            VCLReport1.Report.Params.ParamByName('HEMOGRAMA').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'PROTO')THEN
            VCLReport1.Report.Params.ParamByName('PROTO').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'GLICEMIA')THEN
            VCLReport1.Report.Params.ParamByName('GLICEMIA').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'BETA HCG')THEN
            VCLReport1.Report.Params.ParamByName('TESTE').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'URINA I')THEN
            VCLReport1.Report.Params.ParamByName('URINA').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'TIPAGEM SANGUINEA')THEN
            VCLReport1.Report.Params.ParamByName('TIPAGEM').Value := cdsCODEXAME.AsInteger;
        if (cdsTIPOEXAME.AsString = 'VELOC. HOMOSSED.')THEN
            VCLReport1.Report.Params.ParamByName('VELOC').Value := cdsCODEXAME.AsInteger;
   // end;
    cds.Next;
  end;
   VCLReport1.Execute;
   VCLReport1.Report.Params.ParamByName('HEMOGRAMA').Value := 0;
   VCLReport1.Report.Params.ParamByName('PROTO').Value := 0;
   VCLReport1.Report.Params.ParamByName('GLICEMIA').Value := 0;
   VCLReport1.Report.Params.ParamByName('TESTE').Value := 0;
   VCLReport1.Report.Params.ParamByName('URINA').Value := 0;
   VCLReport1.Report.Params.ParamByName('TIPAGEM').Value := 0;
   VCLReport1.Report.Params.ParamByName('VELOC').Value := 0;

  cds.First;
  cds.EnableControls;
end;

end.
