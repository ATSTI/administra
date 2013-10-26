unit uCheques_bol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, EExtenso, Grids, DBGrids, DBCtrls,
  Mask, rpcompobase, rpvclreport, rplabelitem, DBXpress;

type
  TfCheques_bol = class(TfPai)
    BitBtn4: TBitBtn;
    btnDuplicata: TBitBtn;
    Panel2: TPanel;
    Panel1: TPanel;
    sds_cr: TSQLDataSet;
    sds_crCODRECEBIMENTO: TIntegerField;
    sds_crTITULO: TStringField;
    sds_crEMISSAO: TDateField;
    sds_crCODCLIENTE: TIntegerField;
    sds_crDATAVENCIMENTO: TDateField;
    sds_crVALORRECEBIDO: TFloatField;
    sds_crDATARECEBIMENTO: TDateField;
    sds_crCAIXA: TSmallintField;
    sds_crCONTADEBITO: TIntegerField;
    sds_crCONTACREDITO: TIntegerField;
    sds_crSTATUS: TStringField;
    sds_crVIA: TStringField;
    sds_crFORMARECEBIMENTO: TStringField;
    sds_crDATABAIXA: TDateField;
    sds_crHISTORICO: TStringField;
    sds_crCODVENDA: TIntegerField;
    sds_crCODVENDEDOR: TSmallintField;
    sds_crCODUSUARIO: TSmallintField;
    sds_crDATASISTEMA: TSQLTimeStampField;
    sds_crN_DOCUMENTO: TStringField;
    sds_crALMOXARIFADO: TStringField;
    sds_crNOMEUSUARIO: TStringField;
    sds_crVENDEDOR: TStringField;
    sds_crNOMECLIENTE: TStringField;
    sds_crJUROS: TFloatField;
    sds_crDESCONTO: TFloatField;
    sds_crPERDA: TFloatField;
    sds_crTROCA: TFloatField;
    sds_crFUNRURAL: TFloatField;
    sds_crVALOR_PRIM_VIA: TFloatField;
    sds_crVALOR_RESTO: TFloatField;
    sds_crVALORTITULO: TFloatField;
    sds_crCODALMOXARIFADO: TIntegerField;
    sds_crOUTRO_CREDITO: TFloatField;
    sds_crOUTRO_DEBITO: TFloatField;
    sds_crPARCELAS: TSmallintField;
    sds_crDUP_REC_NF: TStringField;
    sds_crNF: TIntegerField;
    sds_crDP: TIntegerField;
    sds_crBL: TIntegerField;
    dsp_cr: TDataSetProvider;
    cds_cr: TClientDataSet;
    cds_crCODRECEBIMENTO: TIntegerField;
    cds_crTITULO: TStringField;
    cds_crEMISSAO: TDateField;
    cds_crCODCLIENTE: TIntegerField;
    cds_crDATAVENCIMENTO: TDateField;
    cds_crSTATUS: TStringField;
    cds_crVIA: TStringField;
    cds_crCODVENDA: TIntegerField;
    cds_crCODALMOXARIFADO: TIntegerField;
    cds_crCODVENDEDOR: TSmallintField;
    cds_crFORMARECEBIMENTO: TStringField;
    cds_crVALOR_PRIM_VIA: TFloatField;
    cds_crVALOR_RESTO: TFloatField;
    cds_crVALORTITULO: TFloatField;
    cds_crCONTACREDITO: TIntegerField;
    cds_crVALORRECEBIDO: TFloatField;
    cds_crDATARECEBIMENTO: TDateField;
    cds_crCONTADEBITO: TIntegerField;
    cds_crCAIXA: TSmallintField;
    cds_crDATABAIXA: TDateField;
    cds_crHISTORICO: TStringField;
    cds_crCODUSUARIO: TSmallintField;
    cds_crN_DOCUMENTO: TStringField;
    cds_crDATASISTEMA: TSQLTimeStampField;
    cds_crALMOXARIFADO: TStringField;
    cds_crNOMECLIENTE: TStringField;
    cds_crNOMEUSUARIO: TStringField;
    cds_crVENDEDOR: TStringField;
    cds_crJUROS: TFloatField;
    cds_crDESCONTO: TFloatField;
    cds_crPERDA: TFloatField;
    cds_crTROCA: TFloatField;
    cds_crFUNRURAL: TFloatField;
    cds_crOUTRO_CREDITO: TFloatField;
    cds_crOUTRO_DEBITO: TFloatField;
    cds_crPARCELAS: TSmallintField;
    cds_crDUP_REC_NF: TStringField;
    cds_crNF: TIntegerField;
    cds_crDP: TIntegerField;
    cds_crBL: TIntegerField;
    EvExtenso1: TEvExtenso;
    DataSource1: TDataSource;
    s_1_banco: TSQLDataSet;
    s_1_bancoCODBANCO: TSmallintField;
    s_1_bancoBANCO: TStringField;
    s_1_bancoNOMEBANCO: TStringField;
    s_1_bancoNOMEAGENCIA: TStringField;
    s_1_bancoCODAGENCIA: TStringField;
    d_1_banco: TDataSetProvider;
    c_1_banco: TClientDataSet;
    c_1_bancoCODBANCO: TSmallintField;
    c_1_bancoBANCO: TStringField;
    c_1_bancoNOMEBANCO: TStringField;
    c_1_bancoNOMEAGENCIA: TStringField;
    c_1_bancoCODAGENCIA: TStringField;
    ds_1: TDataSource;
    OpenDialog1: TOpenDialog;
    s_5: TSQLDataSet;
    s_5COD_CHEQ_BOL: TIntegerField;
    s_5COD_ORIGEM: TIntegerField;
    s_5TIPO_ORIGEM: TStringField;
    s_5NUMERO_DOC: TIntegerField;
    s_5CODCLI_FORN: TIntegerField;
    s_5CLI_OU_FORN: TStringField;
    s_5BANCO: TSmallintField;
    s_5AGENCIA: TStringField;
    s_5CONTACORRENTE: TStringField;
    s_5DATAEMISSAO: TDateField;
    s_5DATALANCAMENTO: TDateField;
    s_5DATADEPOSITO: TDateField;
    s_5VALORCHEQUE: TFloatField;
    s_5DESCRICAO: TStringField;
    s_5TIPO_DOC: TSmallintField;
    d_5: TDataSetProvider;
    cds_5_cheques: TClientDataSet;
    cds_5_chequesCOD_CHEQ_BOL: TIntegerField;
    cds_5_chequesCOD_ORIGEM: TIntegerField;
    cds_5_chequesTIPO_ORIGEM: TStringField;
    cds_5_chequesNUMERO_DOC: TIntegerField;
    cds_5_chequesCODCLI_FORN: TIntegerField;
    cds_5_chequesCLI_OU_FORN: TStringField;
    cds_5_chequesBANCO: TSmallintField;
    cds_5_chequesAGENCIA: TStringField;
    cds_5_chequesCONTACORRENTE: TStringField;
    cds_5_chequesDATAEMISSAO: TDateField;
    cds_5_chequesDATALANCAMENTO: TDateField;
    cds_5_chequesDATADEPOSITO: TDateField;
    cds_5_chequesVALORCHEQUE: TFloatField;
    cds_5_chequesDESCRICAO: TStringField;
    cds_5_chequesTIPO_DOC: TSmallintField;
    cds_5_chequestotal_chq: TAggregateField;
    Edit4: TEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    VCLReport1: TVCLReport;
    VCLReport2: TVCLReport;
    btnBaixarTitulo: TBitBtn;
    s_5LANCADO: TSmallintField;
    cds_5_chequesLANCADO: TSmallintField;
    sq: TSQLDataSet;
    DBGrid1: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnDuplicataClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnBaixarTituloClick(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
     titulo : string;
    { Public declarations }
  end;

var
  fCheques_bol: TfCheques_bol;
  Cod_cli_forn, cod_Orig, caixa, codrec: Integer;
  Tipo_origem, C_F, data_lancado : String;
  valortitulo : double;

implementation

uses UDm, uVendaFinalizar, uDuplicata, sCtrlResize;

{$R *.dfm}

procedure TfCheques_bol.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if btnDuplicata.Enabled = true then
    btnDuplicata.Enabled := false;

  if c_1_banco.Active then
    c_1_banco.Close;
  cds_5_cheques.Close;
end;

procedure TfCheques_bol.FormShow(Sender: TObject);
begin
  inherited;
  if Tipo_origem = 'VENDA' then
     if fVendaFinalizar.cdsFORMARECEBIMENTO.AsString = '4' then
        btnDuplicata.Enabled := true;

  if not c_1_banco.Active then
    c_1_banco.Open;
  if cds_5_cheques.Active then
    cds_5_cheques.Close;
  cds_5_cheques.Params[0].AsInteger := Cod_orig;
  cds_5_cheques.Params[1].AsString := Tipo_origem;
  cds_5_cheques.Open;
  if cds_5_cheques.IsEmpty then
  begin
    cds_5_cheques.Close;
    cds_5_cheques.Params[0].AsInteger := (Cod_orig + 1);
    cds_5_cheques.Params[1].AsString := Tipo_origem;
    cds_5_cheques.Open;
  end;
  if cds_5_cheques.IsEmpty then
    if (Tipo_origem = 'T_RECEBER') then
    begin
      cds_5_cheques.Params[0].Clear;
      cds_5_cheques.Params[1].Clear;
      cds_5_cheques.Params[0].AsInteger := Cod_orig;
      cds_5_cheques.Params[1].AsString := Tipo_origem;
      cds_5_cheques.Open;
      if not cds_5_cheques.IsEmpty then
        btnIncluir.SetFocus;
    end;
    if (Tipo_origem = 'VENDA') then
    begin
      cds_5_cheques.Params[0].Clear;
      cds_5_cheques.Params[1].Clear;
      cds_5_cheques.Params[0].AsInteger := Cod_orig;
      cds_5_cheques.Params[1].AsString := Tipo_origem;
      cds_5_cheques.Open;
      if not cds_5_cheques.IsEmpty then
        btnIncluir.SetFocus;
    end;
    if (Tipo_origem = 'CONTABIL') then
    begin
      cds_5_cheques.Params[0].Clear;
      cds_5_cheques.Params[1].Clear;
      cds_5_cheques.Params[0].AsInteger := Cod_orig;
      cds_5_cheques.Params[1].AsString := Tipo_origem;
      cds_5_cheques.Open;
      if not cds_5_cheques.IsEmpty then
        btnIncluir.SetFocus;
    end;

    if (Tipo_origem = 'DUPLICATA') then
    begin
      cds_5_cheques.Params[0].Clear;
      cds_5_cheques.Params[1].Clear;
      cds_5_cheques.Params[0].AsInteger := Cod_orig;
      cds_5_cheques.Params[1].AsString := Tipo_origem;
      cds_5_cheques.Open;
      cds_5_cheques.Edit;
      DBEdit1.SetFocus;
      btnDuplicata.Enabled := true;
    end;
    btnBaixarTitulo.Enabled := True;
end;

procedure TfCheques_bol.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  btnDuplicata.Enabled:=DtSrc.State in [dsBrowse];
end;

procedure TfCheques_bol.btnIncluirClick(Sender: TObject);
begin
if (Tipo_origem = 'DUPLICATA') then
  exit  ;
  inherited;
  cds_5_chequesCOD_ORIGEM.AsInteger := Cod_orig;
  cds_5_chequesTIPO_ORIGEM.AsString := Tipo_origem;
  cds_5_chequesCODCLI_FORN.AsInteger := Cod_cli_forn;
  cds_5_chequesCLI_OU_FORN.AsString := C_F;
  cds_5_chequesBANCO.AsInteger := 1;
  cds_5_chequesAGENCIA.AsInteger := 1;
  if data_lancado <> '' then
  begin
    cds_5_chequesDATAEMISSAO.AsDateTime := StrToDateTime(data_lancado);
    cds_5_chequesDATADEPOSITO.AsDateTime := StrToDateTime(data_lancado);
  end;
  DBEdit1.SetFocus;

end;

procedure TfCheques_bol.btnGravarClick(Sender: TObject);
begin
  if (Tipo_origem = 'DUPLICATA') then
  begin
    if cds_cr.Active then
      cds_cr.Close;
    cds_cr.Params[0].AsInteger := 0;
    cds_cr.Open;
    cds_cr.First;
    while not cds_cr.Eof do
    begin
      cds_cr.Edit;
      if cds_crDUP_REC_NF.AsString <> '' then
        cds_crDUP_REC_NF.AsString := '';
      cds_crDP.AsInteger := cds_5_chequesNUMERO_DOC.AsInteger;
      cds_cr.Post;
      cds_cr.Next;
    end;
    cds_cr.ApplyUpdates(0);
    cds_cr.Close;
  end;
  if (cds_5_cheques.State in [dsInsert, dsEdit]) then
  begin
    cds_5_chequesLANCADO.AsInteger := 0;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CHEQ_BOL_DUPL, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_5_chequesCOD_CHEQ_BOL.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;  
  inherited;
  btnIncluir.SetFocus;
end;

procedure TfCheques_bol.btnDuplicataClick(Sender: TObject);
var
  text17:TRpLabel;
  diasemana: array[1..7] of String;
  meses: array[1..12] of String;
  dia, mes, ano: Word;
  valor: Double;
begin
  inherited;
    diasemana[1]:= 'Domingo';
    diasemana[2]:= 'Segunda-feira';
    diasemana[3]:= 'Terça-feira';
    diasemana[4]:= 'Quarta-feira';
    diasemana[5]:= 'Quinta-feira';
    diasemana[6]:= 'Sexta-feira';
    diasemana[7]:= 'Sábado';
    meses[1]:= 'Janeiro';
    meses[2]:= 'Fevereiro';
    meses[3]:= 'Março';
    meses[4]:= 'Abril';
    meses[5]:= 'Maio';
    meses[6]:= 'Junho';
    meses[7]:= 'Julho';
    meses[8]:= 'Agosto';
    meses[9]:= 'Setembro';
    meses[10]:= 'Outubro';
    meses[11]:= 'Novembro';
    meses[12]:= 'Dezembro';
    DecodeDate(DATE,ano,mes,dia);
    Edit4.Text := '';
    if DBEdit6.Text <> ''then
    begin
      valor := cds_5_chequesVALORCHEQUE.AsFloat;
      Edit4.Text:= EvExtenso1.GetExtenso(Valor);
    end;

  if (Tipo_origem = 'DUPLICATA') then
  begin
    VCLReport2.FileName := str_relatorio + 'DUPLICATA_RC.rep';
    VCLReport2.Report.Params.ParamByName('PCOD').Value
    := cds_5_chequesCOD_ORIGEM.AsInteger;
    VCLReport2.Report.Params.ParamByName('PTIPO').Value
    := 'DUPLICATA';
    text17:=TRpLabel(VCLReport2.Report.FindComponent('TRpLabel18'));
    if Assigned(text17) then
      text17.Text := Edit4.Text;
   VCLReport2.Execute;
  end
  else
  begin
    VCLReport1.FileName := str_relatorio + 'DUPLICATA.rep';
    VCLReport1.Report.Params.ParamByName('PCOD').Value
    := cds_5_chequesCOD_ORIGEM.AsInteger;
    VCLReport1.Report.Params.ParamByName('PTIPO').Value
    := 'VENDA';
    text17:=TRpLabel(VCLReport1.Report.FindComponent('TRpLabel18'));
    if Assigned(text17) then
      text17.Text := Edit4.Text;
   VCLReport1.Execute;
  end;

end;

procedure TfCheques_bol.btnSairClick(Sender: TObject);
begin
  inherited;
  if (Tipo_origem = 'DUPLICATA') then
     fDuplicata.Close;
end;

procedure TfCheques_bol.btnBaixarTituloClick(Sender: TObject);
var
   str_sql, strsql, forma, data, tabela, clifor, sp: string;
   TD: TTransactionDesc;
   valortotaltit : double;
begin
  valortotaltit := valortitulo;
  TD.TransactionID := 1;
  TD.IsolationLevel := xilREADCOMMITTED;
  inherited;
  if (cds_5_cheques.State in [dsInsert, dsEdit]) then
    btnGravar.Click;
  DecimalSeparator := '.';
  cds_5_cheques.DisableControls;
  cds_5_cheques.First;
  while not cds_5_cheques.Eof do
  begin
    if ((cds_5_chequesLANCADO.AsInteger = 0) OR (cds_5_chequesLANCADO.IsNull)) then
    begin
      if (cds_5_chequesVALORCHEQUE.AsFloat > (valortotaltit + 0.009)) then
      begin
        MessageDlg('Valor do cheque maior do que o do Título?', mtWarning,
          [mbOk], 0);
        DecimalSeparator := ',';
        exit;
      end;
      if ((Tipo_origem = 'VENDA') OR (Tipo_origem = 'T_RECEBER')) then
      begin
        tabela := 'RECEBIMENTO';
        forma := 'FORMARECEBIMENTO';
        data := 'DATARECEBIMENTO';
        clifor := 'CODCLIENTE';
        sp := 'BAIXATITULOSREC';
      end;
      if (Tipo_origem = 'COMPRA') then
      begin
        tabela := 'PAGAMENTO';
        forma := 'FORMAPAGAMENTO';
        data := 'DATAPAGAMENTO';
        clifor := 'CODFORNECEDOR';
        sp := 'BAIXATITULOSPAG';
      end;
      IF ((Tipo_origem = 'VENDA') OR (Tipo_origem = 'COMPRA') OR (Tipo_origem = 'T_RECEBER')) then
      begin
        {strsql := 'UPDATE ' + tabela + ' SET VALORRECEBIDO = ';
        strsql := strsql + FloatToStr(cds_5_chequesVALORCHEQUE.AsFloat);
        strsql := strsql + ', DATABAIXA = ';
        strsql := strsql + '''' + formatdatetime('mm/dd/yy', cds_5_chequesDATAEMISSAO.AsDateTime) + '''';
        strsql := strsql + ', ' + data + ' = ';
        strsql := strsql + '''' + formatdatetime('mm/dd/yy', cds_5_chequesDATADEPOSITO.AsDateTime) + '''';
        strsql := strsql + ', STATUS = ';
        strsql := strsql + '''' + '7-' + '''';
        strsql := strsql + ', N_DOCUMENTO = ''' + cds_5_chequesNUMERO_DOC.AsString + '''';
        strsql := strsql + ', CAIXA = ' + IntToStr(caixa);
        strsql := strsql + ', ' + forma + ' = 3';
        strsql := strsql + ' WHERE TITULO = ';
        strsql := strsql + '''' + titulo + '''';
        strsql := strsql + ' and ' + clifor + ' = ';
        strsql := strsql + ' and ' + clifor + ' = ';
        strsql := strsql + IntToStr(cds_5_chequesCODCLI_FORN.AsInteger);
        strsql := strsql + ' and STATUS = ''' + '5-' + '''';}

        //Faco a baixa pela SP
        DecimalSeparator := '.';
        strsql := 'EXECUTE PROCEDURE ' + sp + '(';
        strsql := strsql + FloatToStr(cds_5_chequesVALORCHEQUE.AsFloat);
        strsql := strsql + ', 0';
        strsql := strsql + ', 0';
        strsql := strsql + ', 0';
        strsql := strsql + ', 0';
        strsql := strsql + ',''' + formatdatetime('mm/dd/yyyy', cds_5_chequesDATAEMISSAO.AsDateTime) + '''';
        strsql := strsql + ',''' + formatdatetime('mm/dd/yyyy', cds_5_chequesDATAEMISSAO.AsDateTime) + '''';
        strsql := strsql + ',''' + formatdatetime('mm/dd/yyyy', cds_5_chequesDATADEPOSITO.AsDateTime) + '''';
        strsql := strsql + ',''' + '3' + '''';
        strsql := strsql + ',''' + cds_5_chequesNUMERO_DOC.AsString + '''';
        strsql := strsql + ',' + FloatToStr(caixa);
        strsql := strsql + ',' + IntToStr(cds_5_chequesCODCLI_FORN.AsInteger);
        strsql := strsql + ',''' + '7-' + '''';
        strsql := strsql + ')';
        DecimalSeparator := ',';

        dm.sqlsisAdimin.StartTransaction(TD);
        dm.sqlsisAdimin.ExecuteDirect(strsql);

        Try
          dm.sqlsisAdimin.Commit(TD);
        except
          dm.sqlsisAdimin.Rollback(TD); {on failure, undo the changes};
          MessageDlg('Erro no sistema, cheque não baixado?', mtError,
            [mbOk], 0);
          DecimalSeparator := ',';
          exit;
        end;
      end;
      cds_5_cheques.Edit;
      cds_5_chequesLANCADO.AsInteger := 1;
      cds_5_cheques.ApplyUpdates(0);
    end;
    valortotaltit := valortotaltit - cds_5_chequesVALORCHEQUE.AsFloat;
    cds_5_cheques.Next;
  end;
  cds_5_cheques.EnableControls;
  DecimalSeparator := ',';
  MessageDlg('Títulos baixados com sucesso.', mtInformation,
          [mbOk], 0);
end;

procedure TfCheques_bol.DBEdit7Exit(Sender: TObject);
begin
  inherited;
  if (btnGravar.Enabled = True) then
    btnGravar.SetFocus;
end;

procedure TfCheques_bol.FormCreate(Sender: TObject);
begin
//  inherited;
  sCtrlResize.CtrlResize(TForm(fCheques_bol));
end;

end.
