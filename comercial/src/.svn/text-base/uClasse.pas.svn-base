unit uClasse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, MMJPanel,
  DBClient, Provider, DB, SqlExpr, XPMenu, Menus;

type
  TfClasse = class(TForm)
    DtSrc: TDataSource;
    sds_turma: TSQLDataSet;
    sds_turmaNUMERO: TSmallintField;
    sds_turmaRA: TStringField;
    sds_turmaSERIELETRA: TStringField;
    sds_turmaIDCLASSEALUNO: TIntegerField;
    sds_turmaNOME: TStringField;
    dsp_turma: TDataSetProvider;
    scds_grid: TClientDataSet;
    scds_gridNUMERO: TSmallintField;
    scds_gridRA: TStringField;
    scds_gridSERIELETRA: TStringField;
    scds_gridIDCLASSEALUNO: TIntegerField;
    scds_gridNOME: TStringField;
    dsGrid: TDataSource;
    scds_proc_numero: TSQLDataSet;
    MMJPanel1: TMMJPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    btnNovosNum: TBitBtn;
    BitBtn3: TBitBtn;
    btnExcluir: TBitBtn;
    btnIncluir: TBitBtn;
    MMJPanel2: TMMJPanel;
    TableNomeEscola: TSQLDataSet;
    TableNomeEscolaEMPRESA: TStringField;
    TableNomeEscolaRAZAO: TStringField;
    TableNomeEscolaCNPJ_CPF: TStringField;
    TableNomeEscolaENDERECO: TStringField;
    TableNomeEscolaLOGRADOURO: TStringField;
    TableNomeEscolaBAIRRO: TStringField;
    TableNomeEscolaCIDADE: TStringField;
    TableNomeEscolaUF: TStringField;
    TableNomeEscolaCEP: TStringField;
    TableNomeEscolaDDD: TStringField;
    TableNomeEscolaFONE: TStringField;
    TableNomeEscolaFONE_1: TStringField;
    TableNomeEscolaFONE_2: TStringField;
    TableNomeEscolaFAX: TStringField;
    TableNomeEscolaE_MAIL: TStringField;
    TableNomeEscolaWEB: TStringField;
    TableNomeEscolaLOGOTIPO: TGraphicField;
    TableNomeEscolaSLOGAN: TStringField;
    TableNomeEscolaOUTRAS_INFO: TStringField;
    TableNomeEscolaCODIGO: TIntegerField;
    TableNomeEscolaTIPO: TStringField;
    TableNomeEscolaIE_RG: TStringField;
    TableNomeEscolaCODIGO_CONTA: TIntegerField;
    TableNomeEscolaDIVERSOS1: TStringField;
    TableNomeEscolaDIVERSOS2: TStringField;
    TableNomeEscolaDIVERSOS3: TStringField;
    TableNomeEscolaANOLETIVO: TIntegerField;
    TableNomeEscolaMEDIA_ESCOLA: TFloatField;
    TableNomeEscolaPORTA: TIntegerField;
    TableNomeEscolaSMTP: TStringField;
    TableNomeEscolaSENHA: TStringField;
    scds_Aluno_proc: TSQLDataSet;
    scds_Aluno_procNOME: TStringField;
    scds_Aluno_procRA: TStringField;
    scds_Aluno_procSERIE: TStringField;
    scds_Aluno_procSERIELETRA: TStringField;
    sdsAlunoClasse: TSQLDataSet;
    sdsAlunoClasseRA: TStringField;
    sdsAlunoClasseNOME: TStringField;
    sdsAlunoClasseNUMERO: TSmallintField;
    sdsAlunoClasseSERIE: TStringField;
    sdsAlunoClasseSITUACAOESCOLAR: TStringField;
    sdsAlunoClasseDATANASCIMENTO: TSQLTimeStampField;
    sdsAlunoClasseLANCADOCLASSE: TSmallintField;
    dspAlunoClasse: TDataSetProvider;
    cdsAlunoClasse: TClientDataSet;
    cdsAlunoClasseRA: TStringField;
    cdsAlunoClasseNOME: TStringField;
    cdsAlunoClasseNUMERO: TSmallintField;
    cdsAlunoClasseSERIE: TStringField;
    cdsAlunoClasseSITUACAOESCOLAR: TStringField;
    cdsAlunoClasseDATANASCIMENTO: TSQLTimeStampField;
    cdsAlunoClasseLANCADOCLASSE: TSmallintField;
    sdsAluno: TSQLDataSet;
    dspA: TDataSetProvider;
    TableAluno: TClientDataSet;
    TableAlunoCODCLIENTE: TIntegerField;
    TableAlunoNOMECLIENTE: TStringField;
    TableAlunoRAZAOSOCIAL: TStringField;
    TableAlunoCONTATO: TStringField;
    TableAlunoTIPOFIRMA: TSmallintField;
    TableAlunoCPF: TStringField;
    TableAlunoCNPJ: TStringField;
    TableAlunoINSCESTADUAL: TStringField;
    TableAlunoRG: TStringField;
    TableAlunoSEGMENTO: TSmallintField;
    TableAlunoREGIAO: TSmallintField;
    TableAlunoLIMITECREDITO: TFloatField;
    TableAlunoDATACADASTRO: TDateField;
    TableAlunoCODUSUARIO: TIntegerField;
    TableAlunoSTATUS: TSmallintField;
    TableAlunoHOMEPAGE: TStringField;
    TableAlunoPRAZORECEBIMENTO: TSmallintField;
    TableAlunoPRAZOENTREGA: TSmallintField;
    TableAlunoCODBANCO: TSmallintField;
    TableAlunoBASE_ICMS: TSmallintField;
    TableAlunoDATANASC: TDateField;
    TableAlunoCONTA_CLIENTE: TStringField;
    TableAlunoOBS: TStringField;
    TableAlunoTEM_IE: TStringField;
    TableAlunoDATARESC: TDateField;
    TableAlunoNOMEMAE: TStringField;
    TableAlunoSEXO: TStringField;
    TableAlunoFORMA_CORRESPOND: TStringField;
    TableAlunoGRUPO_CLIENTE: TStringField;
    TableAlunoCODINCLUCANC: TIntegerField;
    TableAlunoEXIST_COBERT: TStringField;
    TableAlunoEXISTCOPART: TStringField;
    TableAlunoDATAREINC: TDateField;
    TableAlunoGERAAVISO: TStringField;
    TableAlunoGERAENV: TStringField;
    TableAlunoGERABOL: TStringField;
    TableAlunoEMVIAGEM: TStringField;
    TableAlunoDTAALTERA: TDateField;
    TableAlunoSERIELETRA: TStringField;
    TableAlunoSERIE: TStringField;
    TableAlunoRA: TStringField;
    TableAlunoCURSO: TStringField;
    TableAlunoIP: TStringField;
    TableAlunoN_CONTRATO: TStringField;
    TableAlunoMAC: TStringField;
    TableAlunoMARCA: TStringField;
    TableAlunoBANDA_UPLOAD: TStringField;
    TableAlunoBANDA_DOWLOAD: TStringField;
    TableAlunoTORRE_CONECCAO: TStringField;
    TableAlunoCOD_FAIXA: TIntegerField;
    TableAlunoDESCONTO: TFloatField;
    TableAlunoMICRO: TStringField;
    TableAlunoP1: TStringField;
    TableAlunoP2: TStringField;
    TableAlunoMENSALIDADE: TFloatField;
    TableAlunoANUIDADE: TFloatField;
    TableAlunoPARCELA: TIntegerField;
    TableAlunoPARCELAGERADAS: TIntegerField;
    TableAlunoNUMERO: TIntegerField;
    TableAlunoDATANASCIMENTO: TSQLTimeStampField;
    TableAlunoANOLETIVO: TStringField;
    TableAlunoSITUACAOESCOLAR: TStringField;
    TableAlunoRGMAE: TStringField;
    TableAlunoCPFMAE: TStringField;
    TableAlunoPAI: TStringField;
    TableAlunoRGPAI: TStringField;
    TableAlunoCPFPAI: TStringField;
    TableAlunoLANCADOCLASSE: TIntegerField;
    TableAlunoTRANSPORTE: TStringField;
    TableAlunoCIDADENASC: TStringField;
    TableAlunoUFNASC: TStringField;
    TableAlunoNACIONALIDADE: TStringField;
    TableAlunoCERTIDAONASCNUM: TStringField;
    TableAlunoLIVRONASC: TStringField;
    TableAlunoFLLIVRONASC: TStringField;
    TableAlunoLOCALTRABPAI: TStringField;
    TableAlunoLOCALTRABMAE: TStringField;
    TableAlunoTELTRABPAI: TStringField;
    TableAlunoTELTRABMAE: TStringField;
    TableAlunoINFONECESSARIAS: TStringField;
    TableAlunoCARTEIRAVACINACAO: TStringField;
    TableAlunoRAPRODESP: TStringField;
    TableAlunoLOCALTRABALUNO: TStringField;
    TableAlunoTELTRABALUNO: TStringField;
    TableAlunoRAPROD: TStringField;
    TableAlunoCERT_NAS_COMARCA: TStringField;
    TableAlunoCERT_NAS_UF: TStringField;
    TableAlunoCERT_NAS_MUNICIPIO: TStringField;
    TableAlunoCERT_NAS_DISTRITO: TStringField;
    TableAlunoCERT_NAS_SUBDISTRITO: TStringField;
    TableAlunoDIVERSO1: TStringField;
    TableAlunoDIVERSO2: TStringField;
    TableAlunoDATAEMISSAORG: TDateField;
    TableAlunoESTADORG: TStringField;
    TableAlunoCOMUNICAALUNO: TStringField;
    TableAlunoFONEMAE: TStringField;
    TableAlunoCELULARMAE: TStringField;
    TableAlunoCOMUNICAMAE: TStringField;
    TableAlunoFONEPAI: TStringField;
    TableAlunoCELULARPAI: TStringField;
    TableAlunoCOMUNICAPAI: TStringField;
    TableAlunoVALOR_MATRICULA: TFloatField;
    TableAlunoDATATRANSF: TDateField;
    TableAlunoCOR_RACA: TStringField;
    TableAlunoPERIODO: TStringField;
    TableAlunoFOTO: TStringField;
    TableAlunoDATA_MATRICULA: TSQLTimeStampField;
    TableAlunoCODRESPONSAVEL: TIntegerField;
    sdsAlunoCODCLIENTE: TIntegerField;
    sdsAlunoNOMECLIENTE: TStringField;
    sdsAlunoRAZAOSOCIAL: TStringField;
    sdsAlunoCONTATO: TStringField;
    sdsAlunoTIPOFIRMA: TSmallintField;
    sdsAlunoCPF: TStringField;
    sdsAlunoCNPJ: TStringField;
    sdsAlunoINSCESTADUAL: TStringField;
    sdsAlunoRG: TStringField;
    sdsAlunoSEGMENTO: TSmallintField;
    sdsAlunoREGIAO: TSmallintField;
    sdsAlunoLIMITECREDITO: TFloatField;
    sdsAlunoDATACADASTRO: TDateField;
    sdsAlunoCODUSUARIO: TIntegerField;
    sdsAlunoSTATUS: TSmallintField;
    sdsAlunoHOMEPAGE: TStringField;
    sdsAlunoPRAZORECEBIMENTO: TSmallintField;
    sdsAlunoPRAZOENTREGA: TSmallintField;
    sdsAlunoCODBANCO: TSmallintField;
    sdsAlunoBASE_ICMS: TSmallintField;
    sdsAlunoDATANASC: TDateField;
    sdsAlunoCONTA_CLIENTE: TStringField;
    sdsAlunoOBS: TStringField;
    sdsAlunoTEM_IE: TStringField;
    sdsAlunoDATARESC: TDateField;
    sdsAlunoNOMEMAE: TStringField;
    sdsAlunoSEXO: TStringField;
    sdsAlunoFORMA_CORRESPOND: TStringField;
    sdsAlunoGRUPO_CLIENTE: TStringField;
    sdsAlunoCODINCLUCANC: TIntegerField;
    sdsAlunoEXIST_COBERT: TStringField;
    sdsAlunoEXISTCOPART: TStringField;
    sdsAlunoDATAREINC: TDateField;
    sdsAlunoGERAAVISO: TStringField;
    sdsAlunoGERAENV: TStringField;
    sdsAlunoGERABOL: TStringField;
    sdsAlunoEMVIAGEM: TStringField;
    sdsAlunoDTAALTERA: TDateField;
    sdsAlunoSERIELETRA: TStringField;
    sdsAlunoSERIE: TStringField;
    sdsAlunoRA: TStringField;
    sdsAlunoCURSO: TStringField;
    sdsAlunoIP: TStringField;
    sdsAlunoN_CONTRATO: TStringField;
    sdsAlunoMAC: TStringField;
    sdsAlunoMARCA: TStringField;
    sdsAlunoBANDA_UPLOAD: TStringField;
    sdsAlunoBANDA_DOWLOAD: TStringField;
    sdsAlunoTORRE_CONECCAO: TStringField;
    sdsAlunoCOD_FAIXA: TIntegerField;
    sdsAlunoDESCONTO: TFloatField;
    sdsAlunoMICRO: TStringField;
    sdsAlunoP1: TStringField;
    sdsAlunoP2: TStringField;
    sdsAlunoMENSALIDADE: TFloatField;
    sdsAlunoANUIDADE: TFloatField;
    sdsAlunoPARCELA: TIntegerField;
    sdsAlunoPARCELAGERADAS: TIntegerField;
    sdsAlunoNUMERO: TIntegerField;
    sdsAlunoDATANASCIMENTO: TSQLTimeStampField;
    sdsAlunoANOLETIVO: TStringField;
    sdsAlunoSITUACAOESCOLAR: TStringField;
    sdsAlunoRGMAE: TStringField;
    sdsAlunoCPFMAE: TStringField;
    sdsAlunoPAI: TStringField;
    sdsAlunoRGPAI: TStringField;
    sdsAlunoCPFPAI: TStringField;
    sdsAlunoLANCADOCLASSE: TIntegerField;
    sdsAlunoTRANSPORTE: TStringField;
    sdsAlunoCIDADENASC: TStringField;
    sdsAlunoUFNASC: TStringField;
    sdsAlunoNACIONALIDADE: TStringField;
    sdsAlunoCERTIDAONASCNUM: TStringField;
    sdsAlunoLIVRONASC: TStringField;
    sdsAlunoFLLIVRONASC: TStringField;
    sdsAlunoLOCALTRABPAI: TStringField;
    sdsAlunoLOCALTRABMAE: TStringField;
    sdsAlunoTELTRABPAI: TStringField;
    sdsAlunoTELTRABMAE: TStringField;
    sdsAlunoINFONECESSARIAS: TStringField;
    sdsAlunoCARTEIRAVACINACAO: TStringField;
    sdsAlunoRAPRODESP: TStringField;
    sdsAlunoLOCALTRABALUNO: TStringField;
    sdsAlunoTELTRABALUNO: TStringField;
    sdsAlunoRAPROD: TStringField;
    sdsAlunoCERT_NAS_COMARCA: TStringField;
    sdsAlunoCERT_NAS_UF: TStringField;
    sdsAlunoCERT_NAS_MUNICIPIO: TStringField;
    sdsAlunoCERT_NAS_DISTRITO: TStringField;
    sdsAlunoCERT_NAS_SUBDISTRITO: TStringField;
    sdsAlunoDIVERSO1: TStringField;
    sdsAlunoDIVERSO2: TStringField;
    sdsAlunoDATAEMISSAORG: TDateField;
    sdsAlunoESTADORG: TStringField;
    sdsAlunoCOMUNICAALUNO: TStringField;
    sdsAlunoFONEMAE: TStringField;
    sdsAlunoCELULARMAE: TStringField;
    sdsAlunoCOMUNICAMAE: TStringField;
    sdsAlunoFONEPAI: TStringField;
    sdsAlunoCELULARPAI: TStringField;
    sdsAlunoCOMUNICAPAI: TStringField;
    sdsAlunoVALOR_MATRICULA: TFloatField;
    sdsAlunoDATATRANSF: TDateField;
    sdsAlunoCOR_RACA: TStringField;
    sdsAlunoPERIODO: TStringField;
    sdsAlunoFOTO: TStringField;
    sdsAlunoDATA_MATRICULA: TSQLTimeStampField;
    sdsAlunoCODRESPONSAVEL: TIntegerField;
    scds_notas_freq: TSQLDataSet;
    scds_notas_freqIDNOTAFREQUENCIA: TIntegerField;
    scds_notas_freqSERIELETRA: TStringField;
    scds_notas_freqIDMATERIAS: TIntegerField;
    scds_notas_freqTURNO: TStringField;
    scds_notas_freqRA: TStringField;
    scds_notas_freqNOTA: TStringField;
    scds_notas_freqFREQUENCIA: TSmallintField;
    scds_notas_freqANOLETIVO: TIntegerField;
    scds_notas_freqSERIE: TStringField;
    scds_notas_freqIDPERIODO: TIntegerField;
    scds_notas_freqAULASDADAS: TSmallintField;
    SpeedButton1: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Sair1: TMenuItem;
    XPMenu1: TXPMenu;
    Label7: TLabel;
    Label1: TLabel;
    scds_proc_numeroSERIELETRA: TStringField;
    scds_proc_numeroNUMERO: TSmallintField;
    procedure FormShow(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNovosNumClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClasse: TfClasse;
  varSerie, varClasse: String;
  varAno: Integer;

implementation

uses UDm, uListaAlunos;

{$R *.dfm}

procedure TfClasse.FormShow(Sender: TObject);
begin

  if not TableNomeEscola.Active then
         TableNomeEscola.Open;
  varAno := TableNomeEscolaANOLETIVO.AsInteger;
  TableNomeEscola.Close;

  if scds_grid.Active then
     scds_grid.Close;
  scds_grid.Params[0].AsString := varClasse;
  scds_grid.Open;
  
end;

procedure TfClasse.Edit1Exit(Sender: TObject);
begin
  if Edit1.Text = '' then exit;
  if scds_Aluno_proc.Active then
    scds_Aluno_proc.Close;
  scds_Aluno_proc.Params[0].Clear;
  scds_Aluno_proc.Params[1].AsString := Edit1.Text;
  scds_Aluno_proc.Open;
  if scds_Aluno_proc.IsEmpty then
  begin
    MessageDlg('Favor informar um valor válido !', mtError, [mbOK], 0);
    edit1.SetFocus;
  end else
  Edit2.Text := scds_Aluno_procNOME.AsString;
  //Mostra o numero
   if scds_proc_numero.Active then
      scds_proc_numero.Close;
   scds_proc_numero.Params[0].AsString := varClasse;
   scds_proc_numero.Open;
   edit3.Text := IntToStr(scds_proc_numeroNUMERO.Value);
   scds_proc_numero.Close;
end;

procedure TfClasse.Edit2Exit(Sender: TObject);
begin
  if Edit2.Text = '' then exit;
  if cdsAlunoClasse.Active then
     cdsAlunoClasse.Close;
  cdsAlunoClasse.Params[0].AsString := dm.TableSeriesSERIE.AsString;
  cdsAlunoClasse.Open;
  cdsAlunoClasse.Locate('NOME', Edit2.Text, [loCaseInsensitive]);
  if cdsAlunoClasseNOME.AsString <> '' then
  Edit1.Text := cdsAlunoClasseRA.AsString
  else begin
    MessageDlg('Favor informar um nome válido !', mtError, [mbOK], 0);
    edit2.SetFocus;
  end;
  //Mostra o número
     if scds_proc_numero.Active then
      scds_proc_numero.Close;
   scds_proc_numero.Params[0].AsString := varClasse;
   scds_proc_numero.Open;
   edit3.Text := IntToStr(scds_proc_numeroNUMERO.Value);
   scds_proc_numero.Close;
end;

procedure TfClasse.DBGrid1CellClick(Column: TColumn);
begin
  if dm.cdsClasse.Active then
     dm.cdsClasse.Close;
  dm.cdsClasse.Params[0].AsInteger := scds_gridIDCLASSEALUNO.AsInteger;
  dm.cdsClasse.Open;
end;

procedure TfClasse.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dm.cdsClasse.Active then
     dm.cdsClasse.Close;
  dm.cdsClasse.Params[0].AsInteger := scds_gridIDCLASSEALUNO.AsInteger;
  dm.cdsClasse.Open;
end;

procedure TfClasse.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dm.cdsClasse.Active then
     dm.cdsClasse.Close;
  dm.cdsClasse.Params[0].AsInteger := scds_gridIDCLASSEALUNO.AsInteger;
  dm.cdsClasse.Open;
end;

procedure TfClasse.DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if dm.cdsClasse.Active then
     dm.cdsClasse.Close;
  dm.cdsClasse.Params[0].AsInteger := scds_gridIDCLASSEALUNO.AsInteger;
  dm.cdsClasse.Open;
end;

procedure TfClasse.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if dm.cdsClasse.Active then
     dm.cdsClasse.Close;
  dm.cdsClasse.Params[0].AsInteger := scds_gridIDCLASSEALUNO.AsInteger;
  dm.cdsClasse.Open;
end;

procedure TfClasse.DBGrid1TitleClick(Column: TColumn);
begin
  scds_grid.IndexFieldNames := column.FieldName;
end;

procedure TfClasse.BitBtn3Click(Sender: TObject);
begin
 fListaAlunos:=TfListaAlunos.Create(Application);
 try
   if cdsAlunoClasse.Active then
      cdsAlunoClasse.Close;
   cdsAlunoClasse.Params[0].AsString := varSerie;
   cdsAlunoClasse.Open;
   fListaAlunos.ShowModal;
   //fListaAlunos.lblSerie.Caption := varSerie + 'Série';
   Edit1.Text := cdsAlunoClasseRA.AsString;
   Edit2.Text := cdsAlunoClasseNOME.AsString;
   if scds_proc_numero.Active then
      scds_proc_numero.Close;
   scds_proc_numero.Params[0].AsString := varClasse;
   scds_proc_numero.Open;
   edit3.Text := IntToStr(scds_proc_numeroNUMERO.Value + 1);
   scds_proc_numero.Close;
 finally
   fListaAlunos.Free;
   BitBtn1.SetFocus;
 end;
end;

procedure TfClasse.btnIncluirClick(Sender: TObject);
begin
  if Edit1.Text = '' then
  begin
    MessageDlg('Preencha todos os campos.', mtError, [mbOK], 0);
    exit;
  end;
  if Edit2.Text = '' then
  begin
    MessageDlg('Preencha todos os campos.', mtError, [mbOK], 0);
    exit;
  end;
  if Edit3.Text = '' then
  begin
    MessageDlg('Preencha todos os campos.', mtError, [mbOK], 0);
    exit;
  end;
  if scds_grid.Active then
     scds_grid.Close;
  scds_grid.Params[0].AsString := varClasse;
  scds_grid.Open;
  if scds_grid.Locate('RA',edit1.Text,[loCaseInsensitive]) then
  begin
    MessageDlg('Inclusão já efetuada. ', mtWarning, [mbOK], 0);
    exit;
  end;
  btnIncluir.Click;
   if scds_proc_numero.Active then
      scds_proc_numero.Close;
   scds_proc_numero.Params[0].AsString := varClasse;
   scds_proc_numero.Open;
   if scds_proc_numero.Locate('NUMERO', edit3.Text, [loCaseInsensitive]) then
   begin
      MessageDlg('Este número pertence a outro aluno. ', mtWarning, [mbOK], 0);
      edit3.SetFocus;
      DtSrc.DataSet.Cancel;
      exit;
   end else begin
      //Inclui o aluno na Classe
      dm.cdsClasseRA.AsString := Edit1.Text;
      dm.cdsClasseSERIELETRA.AsString := varClasse;
      dm.cdsClasseNUMERO.Value := StrToInt(Edit3.Text);
      dm.cdsClasseSERIE.AsString := varSerie;
      dm.cdsClasse.Post;
      //Atualiza o Cadastro do Aluno
      if TableAluno.Active then
         TableAluno.Close;
      TableAluno.Params[0].AsString := Edit1.Text;
      TableAluno.Open;
      if TableAluno.IsEmpty then
      begin
        MessageDlg('Erro ao gravar, tente novamente. ', mtError, [mbOK], 0);
        edit1.SetFocus;
        DtSrc.DataSet.Cancel;
        exit;
      end;
      TableAluno.Edit;
      TableAlunoNUMERO.AsInteger := StrToInt(Edit3.Text);
      TableAlunoSERIELETRA.AsString := varClasse;
      TableAlunoLANCADOCLASSE.AsInteger := 1;
      TableAluno.ApplyUpdates(0);
      TableAluno.Close;
      dm.cdsClasse.ApplyUpdates(0);
   end;
  //Atualiza o dbGrid
  if scds_grid.Active then
     scds_grid.Close;
  scds_grid.Params[0].AsString := varClasse;
  scds_grid.Open;
  scds_proc_numero.Close;
  Edit1.Text := '';
  Edit2.Text := '';
  Edit3.Text := '';
end;

procedure TfClasse.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir esse aluno da Classe?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     if (TableAluno.Active) then
       TableAluno.Close;
     TableAluno.Params[0].AsString := scds_gridRA.AsString;
     TableAluno.Open;
     TableAluno.Edit;
     TableAlunoNUMERO.Clear;
     TableAlunoSERIELETRA.Clear;
     TableAlunoLANCADOCLASSE.AsInteger := 0;
     TableAluno.ApplyUpdates(0);
     TableAluno.Close;
     dsGrid.DataSet.Delete;
    (dsGrid.DataSet as TClientDataSet).ApplyUpdates(0);
    //Atualiza o dbGrid
    if scds_grid.Active then
       scds_grid.Close;
    scds_grid.Params[0].AsString := varClasse;
    scds_grid.Open;
    scds_proc_numero.Close;
    Edit1.Text := '';
    Edit2.Text := '';
    Edit3.Text := '';
  end;
end;

procedure TfClasse.BitBtn1Click(Sender: TObject);
  var i : integer;
begin
  if (not dm.cdsClasse.Active) then
    dm.cdsClasse.Open;
  i := 1;
  cdsAlunoClasse.First;
  while (not cdsAlunoClasse.Eof) do
  begin
      dm.cdsClasse.Append;
      //Inclui o aluno na Classe
      dm.cdsClasseRA.AsString := cdsAlunoClasseRA.AsString;
      dm.cdsClasseSERIELETRA.AsString := varClasse;
      dm.cdsClasseNUMERO.Value := i;
      dm.cdsClasseSERIE.AsString := varSerie;
      dm.cdsClasse.Post;
      //Atualiza o Cadastro do Aluno
      if TableAluno.Active then
         TableAluno.Close;
      TableAluno.Params[0].AsString := cdsAlunoClasseRA.AsString;
      TableAluno.Open;
      TableAluno.Edit;
      TableAlunoNUMERO.AsInteger := i;
      TableAlunoSERIELETRA.AsString := varClasse;
      TableAlunoLANCADOCLASSE.AsInteger := 1;
      TableAluno.ApplyUpdates(0);
      TableAluno.Close;
      dm.cdsClasse.ApplyUpdates(0);
      i := i + 1;
      cdsAlunoClasse.Next;
   end;
  //Atualiza o dbGrid
  if scds_grid.Active then
     scds_grid.Close;
  scds_grid.Params[0].AsString := varClasse;
  scds_grid.Open;
end;

procedure TfClasse.btnNovosNumClick(Sender: TObject);
var i: integer;
begin

  if  MessageDlg('Confirma alteração na numeração dos alunos', mtConfirmation, [mbYes, mbNo],0) = mrYes then
    if scds_notas_freq.Active then
       scds_notas_freq.Close;
    scds_notas_freq.Params[0].AsString := scds_gridRA.AsString;
    scds_notas_freq.Params[1].AsInteger := varAno;
    scds_notas_freq.Open;
    if scds_notas_freq.IsEmpty then
    begin
      if scds_grid.Active then
         scds_grid.Close;
      scds_grid.Params[0].AsString := varClasse;
      scds_grid.Open;
      i := 1;
      while not scds_grid.Eof do
      begin
        //Inclui o aluno na Classe
        scds_grid.Edit;
        scds_gridNUMERO.Value := i;
        scds_grid.Post;
        //Atualiza o Cadastro do Aluno
        if TableAluno.Active then
           TableAluno.Close;
        TableAluno.Params[0].AsString := scds_gridRA.AsString;
        TableAluno.Open;
        TableAluno.Edit;
        TableAlunoNUMERO.AsInteger := i;
        TableAluno.ApplyUpdates(0);
        TableAluno.Close;
        scds_grid.Next;
        i := i + 1;
      end;
        scds_grid.ApplyUpdates(0);
    end
    else begin
    MessageDlg('Não é possível trocar a numeração por aqui (já existe '+#13+#10+'nota digitada). Faça a alteração usando transferência.', mtError, [mbOK], 0);
    end;

end;

procedure TfClasse.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

end.
