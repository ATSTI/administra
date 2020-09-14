unit uRelatorioCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, Buttons, ExtCtrls, MMJPanel, rpcompobase,
  rpvclreport, DB, DBClient, JvFormPlacement, JvComponentBase,
  JvAppStorage, JvAppXMLStorage, JvExMask, JvToolEdit, JvMaskEdit,
  JvCheckedMaskEdit, JvDatePickerEdit, uUtils;

type
  TfRelatorioCaixa = class(TForm)
    MMJPanel3: TMMJPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    VCLReport1: TVCLReport;
    JvAppXMLFileStorage1: TJvAppXMLFileStorage;
    JvFormStorage1: TJvFormStorage;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    cbMes: TComboBox;
    MaskEdit1: TJvDatePickerEdit;
    MaskEdit2: TJvDatePickerEdit;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox3: TGroupBox;
    ComboBox2: TComboBox;
    GroupBox4: TGroupBox;
    edCodCCusto: TComboBox;
    BitBtn6: TBitBtn;
    SaveDialog1: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure cbMesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    util: TUtils;
    function LPad(S: String; CH: String; Len: Integer): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelatorioCaixa: TfRelatorioCaixa;

implementation

uses UDm;

{$R *.dfm}

procedure TfRelatorioCaixa.FormShow(Sender: TObject);
var conta_local: String;
begin
  if (dm.moduloUsado <> 'SAUDE') then
  begin
    BitBtn3.Enabled := False;
    BitBtn4.Enabled := False;
    //ComboBox2.Enabled := True;
    //edCodCCusto.Enabled := False;
    //Label2.Visible := False;
    //Label11.Visible := False;
  end;

    //Vejo quais são as contas de Receitas para listar no lookupcombobox.
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;

   // populo a combobox Centro de Custo
    if dm.cds_ccusto.Active then
      dm.cds_ccusto.Close;
    dm.cds_ccusto.Params[0].AsString := conta_local;
    dm.cds_ccusto.Open;
    DM.cds_ccusto.First;
    while not DM.cds_ccusto.Eof do
    begin
      edCodCCusto.Items.Add(dm.cds_ccustoNOME.AsString);
      DM.cds_ccusto.Next;
    end;
    dm.cds_ccusto.Close;

  // populo a combobox Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if dm.cds_7_contas.Active then
    dm.cds_7_contas.Close;
  dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
  dm.cds_7_contas.Open;
  dm.cds_7_contas.First;
  while not dm.cds_7_contas.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_7_contasNOME.AsString);
    dm.cds_7_contas.Next;
  end;
  dm.cds_7_contas.Close;

end;

procedure TfRelatorioCaixa.BitBtn3Click(Sender: TObject);
var   varRelCaixa : TUtils;
begin
  varRelCaixa := TUtils.Create;
  VCLReport1.Filename := str_relatorio + 'caixaResumo.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;

  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  // Caixa
  if ComboBox1.Text <> '' then
  begin
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
    VCLReport1.Report.Params.ParamByName('PCAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCAIXA').Value := 0;

  // Forma Recebimento
  if ComboBox2.Text <> '' then
  begin
    VCLReport1.Report.Params.ParamByName('PFORMA').Value := varRelCaixa.pegaForma(ComboBox2.Text);
  end
  else
    VCLReport1.Report.Params.ParamByName('PFORMA').Value := '0';

  // Ccusto
  if (edCodCCusto.Text <> '') then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := '0';

  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;
end;

procedure TfRelatorioCaixa.BitBtn1Click(Sender: TObject);
var   varForma : TUtils;
begin
  try
  varForma := TUtils.Create;

  if ((edCodCCusto.ItemIndex = -1)  and (ComboBox2.ItemIndex = -1) and (ComboBox1.ItemIndex > -1)) then
  begin
    if (RadioGroup1.ItemIndex = 0) then
      VCLReport1.Filename := str_relatorio + 'caixa_movimento.rep'
    else
      VCLReport1.Filename := str_relatorio + 'caixa_movimentoConsolida.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    vclreport1.Title := vclreport1.Filename;

    VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    if ComboBox1.Text <> '' then
    begin
      if (not dm.cds_7_contas.Active) then
         dm.cds_7_contas.Open;
      dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);
      VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := 0;
  end
  else begin
    if (RadioGroup1.ItemIndex = 0) then
      VCLReport1.Filename := str_relatorio + 'caixa_movimentoC.rep'
    else
      VCLReport1.Filename := str_relatorio + 'caixa_movimentoConsolida.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    vclreport1.Title := vclreport1.Filename;

    VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
    VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
    if ComboBox1.Text <> '' then
    begin
      if (not dm.cds_7_contas.Active) then
         dm.cds_7_contas.Open;
      dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loPartialKey]);
      VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := 0;

    if (edCodCCusto.Text <> '') then
    begin
      if(not dm.cds_ccusto.Active) then
        dm.cds_ccusto.Open;
      dm.cds_ccusto.Locate('NOME', edCodCCusto.Text, [loCaseInsensitive]);
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;;
    end
    else
      VCLReport1.Report.Params.ParamByName('COD_CCUSTO').Value := 0;
    VCLReport1.Report.Params.ParamByName('PFORMA').Value := 'T';
    if (ComboBox2.ItemIndex > -1) then
    begin
      VCLReport1.Report.Params.ParamByName('PFORMA').Value := varForma.pegaForma(ComboBox2.Text);
    end;

  end;
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;
  finally
    varForma.Free;
  end;
end;

procedure TfRelatorioCaixa.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfRelatorioCaixa.MaskEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;

end;

procedure TfRelatorioCaixa.BitBtn4Click(Sender: TObject);
begin
  VCLReport1.Filename := str_relatorio + 'caixaDetalhado.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  vclreport1.Title := vclreport1.Filename;

  VCLReport1.Report.Params.ParamByName('DATAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DATAFIN').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  // Ccusto
  if (edCodCCusto.Text <> '') then
  begin
    if (not dm.cds_ccusto.Active) then
       dm.cds_ccusto.Open;
    dm.cds_ccusto.Locate('NOME', edCodCCusto.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('PCCUSTO').Value := '0';


  if ComboBox1.Text <> '' then
  begin
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := 0;
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;

end;

procedure TfRelatorioCaixa.FormCreate(Sender: TObject);
var
  i, j : integer;
begin
  JvAppXMLFileStorage1.FileName := 'fCaixa_' + dm.empresa + '.xml';
  util := TUtils.Create;
  // Popula Status
  j := util.Forma.Count;
  for i := 0 to j - 1 do
  begin
    ComboBox2.Items.Add(util.Forma.Strings[i]);
  end;
end;

procedure TfRelatorioCaixa.BitBtn5Click(Sender: TObject);
begin
  if (RadioGroup1.ItemIndex = 0) then
      VCLReport1.Filename := str_relatorio + 'caixa_movimentoSintetico.rep'
  else
    VCLReport1.Filename := str_relatorio + 'caixa_movimentoSinteticoConsolida.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  vclreport1.Title := vclreport1.Filename;


  VCLReport1.Report.Params.ParamByName('DTAINI').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit1.Text));
  VCLReport1.Report.Params.ParamByName('DTAFIM').Value := formatdatetime('dd/mm/yy', StrToDate(maskedit2.Text));
  if ComboBox1.Text <> '' then
  begin
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loPartialKey]);
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := dm.cds_7_contasCODIGO.asInteger;
  end
  else
    VCLReport1.Report.Params.ParamByName('COD_CAIXA').Value := 0;
  VCLReport1.Execute;
  VCLReport1.Report.DatabaseInfo.Items[0].DisConnect;


end;

procedure TfRelatorioCaixa.cbMesChange(Sender: TObject);
begin
  util.criaIni(cbMes.text);
  util.criaFim(cbMes.text);
  MaskEdit1.Text := util.PeriodoIni;
  MaskEdit2.Text := util.PeriodoFim;
end;

procedure TfRelatorioCaixa.FormDestroy(Sender: TObject);
begin
  util.Destroy;
end;

procedure TfRelatorioCaixa.BitBtn6Click(Sender: TObject);
var arquivo:TextFile;
  sql_r : String;
  cod: String;
  nPos: Integer;
  linha: String;
  valor : Double;
  contadeb: String;
  contacred: String;
begin
  // criar arquivo integracao
  sql_r := 'select * from SP_mov_caixa_ordem(' +
    QuotedStr(formatdatetime('mm/dd/yy', StrToDate(maskedit1.Text))) + ' ,' +
    QuotedStr(formatdatetime('mm/dd/yy', StrToDate(maskedit2.Text)));
  if ComboBox1.Text <> '' then
  begin
    if (not dm.cds_7_contas.Active) then
       dm.cds_7_contas.Open;
    dm.cds_7_contas.Locate('NOME', ComboBox1.Text,[loPartialKey]);
    sql_r := sql_r + ', ' + IntToStr(dm.cds_7_contasCODIGO.asInteger) + ')';
  end
  else begin
    sql_r := sql_r + ', 0)';
  end;
  if dm.sqlBusca.Active then
    dm.sqlBusca.Close;
  dm.sqlBusca.SQL.Clear;
  dm.sqlBusca.SQL.Add(sql_r);
  dm.sqlBusca.Open;
  if (dm.sqlBusca.IsEmpty) then
  begin
    ShowMessage('Sem dados no periodo informado.');
    exit;
  end;
  SaveDialog1.Execute;
  AssignFile(arquivo, SaveDialog1.FileName);
  try
    Rewrite(arquivo);
    while not dm.sqlBusca.Eof do
    begin
      linha := '';
      valor := 0;
      contadeb := '1.1.01.0001';
      if dm.cdsProc.Active then
        dm.cdsProc.Close;
      dm.cdsProc.CommandText := 'SELECT CONTA, DESCRICAO FROM PLANO ' +
        ' WHERE CODREDUZIDO = ' +
        QuotedStr(dm.sqlBusca.FieldByName('CODCONTA').AsString);
      dm.cdsProc.Open;
      if (dm.sqlBusca.FieldByName('VALORC').AsFloat > 0) then
      begin
        valor := dm.sqlBusca.FieldByName('VALORC').AsFloat;
        contadeb := '229.999-2';
        //contacred := '2.1.01.0001';
        contacred := dm.cdsProc.FieldByName('DESCRICAO').AsString;
        // Fornecedor
        cod := Copy(dm.sqlBusca.FieldByName('DESCRICAO').AsString,0,6);
        nPos := Pos('-',cod);
        if (nPos > 0) then
        begin
          // codigo do fornecedor
          cod := Copy(cod, 0, nPos -1);
        end
        else begin
          cod := dm.cds_7_contasCODREDUZIDO.AsString;
        end;

          //busca cnpj
          //if dm.cdsProc.Active then
          //   dm.cdsProc.Close;
          //dm.cdsProc.CommandText := 'SELECT CNPJ FROM FORNECEDOR ' +
          //  ' WHERE CODFORNECEDOR = ' + cod;
          //dm.cdsProc.Open;
          //if (dm.cdsProc.fieldByName('CNPJ').AsString = '') then
            linha := '10.263.670/0001-54';
          //else
          //  linha := dm.cdsProc.fieldByName('CNPJ').AsString;
          cod := '';
          linha := linha + LPad(cod,'',5);
      end;
      if (dm.sqlBusca.FieldByName('VALORD').AsFloat > 0) then
      begin
        valor := dm.sqlBusca.FieldByName('VALORD').AsFloat;
        contacred := '104.005-7';
        contadeb := dm.cdsProc.FieldByName('DESCRICAO').AsString;
        // Cliente
        cod := Copy(dm.sqlBusca.FieldByName('DESCRICAO').AsString,0,6);
        nPos := Pos('-',cod);
        if (nPos > 0) then
        begin
          cod := Copy(cod, 0, nPos -1);
        end
        else begin
          cod := dm.cds_7_contasCODREDUZIDO.AsString;
        end;

          {if (dm.cdsProc.Active) then
          begin
             dm.cdsProc.Close;
          end;
          dm.cdsProc.CommandText := 'SELECT CNPJ FROM CLIENTES ' +
            ' WHERE CODCLIENTE = ' + cod;
          dm.cdsProc.Open;
          if (dm.cdsProc.fieldByName('CNPJ').AsString = '') then
            linha := '00.000.000/0000-00'
          else
            linha := dm.cdsProc.fieldByName('CNPJ').AsString;}
          linha := '10.263.670/0001-54';
          cod := '';
          linha := linha + LPad(cod,'',5);
      end;
      if (linha = '') then
        linha := '00.000.000/0000-00' + ',' + '000';

      linha := linha + LPad(contadeb,'',14);// conta devedora
      linha := linha + LPad(contacred,'',14);// conta credora
      linha := linha + '000'; // codigo do historico padrao
      linha := linha + LPad('','',20); //LPad(Copy(dm.sqlBusca.FieldByName('DESCRICAO').AsString,0,20),'',20); // descricao do historico
      linha := linha + dm.sqlBusca.FieldByName('DTAPAGTO').AsString; // data lancamento
      DecimalSeparator := '.';
      linha := linha + LPad(FormatFloat('#.00',valor),'x',12);
      DecimalSeparator := ',';
      linha := linha + LPad(dm.sqlBusca.FieldByName('DESCRICAO').AsString,'',250);
      Writeln(arquivo, linha);
      dm.sqlBusca.Next;
    end;
  finally
    CloseFile(arquivo);
  end;
end;

function TfRelatorioCaixa.LPad(S: String; CH: String; Len: Integer): string;
var RestLen, i: Integer;
begin
  RestLen := Len - Length(s);
  //Result := S + Chr(RestLen);
  //if RestLen < 1 then Exit;
  //Result := S + StringOfChar(Ch, RestLen);
  //texto := trim(S);
  //for RestLen to (Len-(length(texto)) do begin
  if (CH = '') then
  begin
    for i := 1 to RestLen do
      S := S + ' ';
    //s := s;
    result := S;
  end;
  if (CH = 'x') then
  begin
    for i := 1 to RestLen do
      S := ' ' + S;
    result := S;
  end;

end;

end.
