unit uMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvBaseEdits, Mask, JvExMask, JvToolEdit, Buttons,
  ExtCtrls, MMJPanel, FMTBcd, DB, SqlExpr, DBClient, Provider, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, DBxPress, Menus, ACBrBase, ACBrFala, uFiscalCls,
  JvExStdCtrls, JvEdit, JvValidateEdit;

type
  TfMovCaixa = class(TForm)
    MMJPanel2: TMMJPanel;
    Label5: TLabel;
    Label4: TLabel;
    btnFechar: TBitBtn;
    btnSair: TBitBtn;
    Consulta: TBitBtn;
    eddata3: TJvDateEdit;
    eddata2: TJvDateEdit;
    fmo: TJvDBGrid;
    sCaixa: TSQLDataSet;
    sCaixaDTAPAGTO: TDateField;
    sCaixaORDEM: TSmallintField;
    sCaixaDESCRICAO: TStringField;
    sCaixaVALORC: TFloatField;
    sCaixaVALORD: TFloatField;
    sCaixaVALOR: TFloatField;
    sCaixaCONTACONTABIL: TStringField;
    sCaixaCAIXA: TStringField;
    sCaixaCODCONTA: TStringField;
    sCaixaFORMA: TStringField;
    dCaixa: TDataSetProvider;
    cCaixa: TClientDataSet;
    cCaixaDTAPAGTO: TDateField;
    cCaixaORDEM: TSmallintField;
    cCaixaDESCRICAO: TStringField;
    cCaixaVALORC: TFloatField;
    cCaixaVALORD: TFloatField;
    cCaixaVALOR: TFloatField;
    cCaixaCONTACONTABIL: TStringField;
    cCaixaCAIXA: TStringField;
    cCaixaCODCONTA: TStringField;
    cCaixaFORMA: TStringField;
    dsrcaixa: TDataSource;
    sdsCaixa1: TSQLDataSet;
    sdsCaixa1IDCAIXACONTROLE: TIntegerField;
    sdsCaixa1CODCAIXA: TIntegerField;
    sdsCaixa1CODUSUARIO: TIntegerField;
    sdsCaixa1DATAFECHAMENTO: TDateField;
    sdsCaixa1SITUACAO: TStringField;
    sdsCaixa1MAQUINA: TStringField;
    sdsCaixa1DATAABERTURA: TDateField;
    sdsCaixa1VALORABRE: TFloatField;
    sdsCaixa1VALORFECHA: TFloatField;
    sdsCaixa1NOMECAIXA: TStringField;
    OpenDialog1: TOpenDialog;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    AbrirCaixa1: TMenuItem;
    Sangria1: TMenuItem;
    Entrada1: TMenuItem;
    FecharCaixa1: TMenuItem;
    Sair1: TMenuItem;
    sCaixa1: TClientDataSet;
    dspCaixa1: TDataSetProvider;
    sCaixa1IDCAIXACONTROLE: TIntegerField;
    sCaixa1CODCAIXA: TIntegerField;
    sCaixa1CODUSUARIO: TIntegerField;
    sCaixa1DATAFECHAMENTO: TDateField;
    sCaixa1SITUACAO: TStringField;
    sCaixa1MAQUINA: TStringField;
    sCaixa1DATAABERTURA: TDateField;
    sCaixa1VALORABRE: TFloatField;
    sCaixa1VALORFECHA: TFloatField;
    sCaixa1NOMECAIXA: TStringField;
    cbb1: TComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    JvValor: TJvValidateEdit;
    procedure FormShow(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure ConsultaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
  private
    var_nomecaixa, var_cDebito, var_cCredito, var_sql : string;
    var_idCaixa, var_codCusto, var_codCaixa, var_codCCustoCD, var_codCCustoCC : Integer;
    TD: TTransactionDesc;
    { Private declarations }
    procedure imprimicaixa;
  public
    caixaMovCaixa: Integer;
    caixaDtaMovCaixa : Tdate;
    caixaIdMovCaixa: Integer;
    { Public declarations }
  end;

var
  fMovCaixa: TfMovCaixa;
  //varCodColab, CODIGODEORIGEM : integer;
  //varValor : Double;

  //DATAFECHAMENTO : TDate;

implementation

uses UDm, UDM_MOV;

{$R *.dfm}

procedure TfMovCaixa.FormShow(Sender: TObject);
var
  codigoCaixa, caixabanco, ccusto : string;
begin
  //Verifica se caixa está aberto na MAQUINA
  if (sCaixa1.Active) then
    sCaixa1.Close;
  sCaixa1.Params[0].AsString := MICRO;
  sCaixa1.Params[1].AsString := 'A'; //Caixa Aberto
  sCaixa1.Open;
  if (not sCaixa1.IsEmpty) then
  begin
     cbb1.Text := sCaixa1NOMECAIXA.AsString;
     cbb1.Enabled := False;
     eddata2.Date := sCaixa1DATAABERTURA.AsDateTime;
     eddata3.Date := Now;
     Consulta.Click;
  end
  else
  begin
    btnFechar.Enabled := False;
   // btnSair.Enabled := False;
  end;
  if (eddata2.Text = '  /  /    ') then
    eddata2.Date := Now;
  if (eddata3.Text = '  /  /    ') then
    eddata3.Date := Now;
  sCaixa1.Close;
end;

procedure TfMovCaixa.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfMovCaixa.ConsultaClick(Sender: TObject);
var
   contaCaixaInterno : string;
   id_contaCX : Integer;
begin
  // Pego o numero da conta do caixa interno
  if (DM_MOV.s_parametro.Active) then
     DM_MOV.s_parametro.Close;
  DM_MOV.s_parametro.Params[0].AsString := 'CONTACAIXAINTERNA';
  DM_MOV.s_parametro.Open;
  contaCaixaInterno := DM_MOV.s_parametroD1.AsString;
  DM_MOV.s_parametro.Close;

  if (not DM_MOV.sPlano1.Active) then
    DM_MOV.sPlano1.Open;
  DM_MOV.sPlano1.Locate('CONTA',contaCaixaInterno, [loCaseInsensitive]);
  id_contaCX := DM_MOV.sPlano1CODIGO.AsInteger; //CODCUSTO
  DM_MOV.sPlano1.Close;

  if (cCaixa.Active) then
    cCaixa.Close;
  cCaixa.Params[0].AsDate := StrToDate(eddata2.Text);
  cCaixa.Params[1].AsDate := StrToDate(eddata3.Text);
  cCaixa.Params[2].AsInteger := id_contaCX; //Codigo do caixa na tabela PLANO;
  cCaixa.Params[3].AsInteger := caixaMovCaixa; //sdsCaixaIDCAIXACONTROLE.AsInteger;
  cCaixa.Params[4].AsString  := 'T'; // Todas as Formas de Pagamento
  cCaixa.Open;
end;


procedure TfMovCaixa.imprimicaixa;
begin

end;

procedure TfMovCaixa.BitBtn1Click(Sender: TObject);
begin
  if MessageDlg('Imprimir Caixa ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    imprimicaixa;
end;

procedure TfMovCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (cCaixa.Active) then
    cCaixa.Close;
end;

procedure TfMovCaixa.btnFecharClick(Sender: TObject);
var
  FFecharCaixa : TFiscalCls;
  hist : string;
  fechamento : Double;
begin
  hist := 'FECHAMENTO DE CAIXA';

  if (JvValor.AsFloat = 0) then
  begin
    ShowMessage('Informe o Valor da Sangria !');
    Exit;
  end;

  fechamento := JvValor.Value;

  Try
    FFecharCaixa := TFiscalCls.Create;

    if (DM_MOV.s_parametro.Active) then
       DM_MOV.s_parametro.Close;
    DM_MOV.s_parametro.Params[0].AsString := 'CONTACAIXASANGRIA';
    DM_MOV.s_parametro.Open;
    var_cCredito := DM_MOV.s_parametroD1.AsString;
    //var_codCCustoCC := FFecharCaixa.v_Cod_Caixa;

    DM_MOV.s_parametro.Close;
    DM_MOV.s_parametro.Params[0].AsString := 'CONTACAIXAINTERNA';
    DM_MOV.s_parametro.Open;
    var_cDebito := DM_MOV.s_parametroD1.AsString;
    DM_MOV.s_parametro.Close;

    FFecharCaixa.v_DataCaixa := caixaDtaMovCaixa;

    if (FFecharCaixa.SangriadeCaixa(0,usulog, caixaMovCaixa, caixaMovCaixa,
      var_cDebito,var_cCredito,fechamento,hist) = 0) then
    begin
      MessageDlg('Erro para executar o fechamento.', mtWarning, [mbOK], 0);
      exit;
    end;
  Finally
    //Screen.Cursor := Save_Cursor;
    FFecharCaixa.Free;
  end;

  // Fachar o CAIXA na Tabela CAIXA_CONTROLE

  var_sql := 'UPDATE CAIXA_CONTROLE SET DATAFECHAMENTO = ' +
    QuotedStr(FormatDateTime('mm/dd/yyyy', eddata3.Date));
  var_sql := var_sql + ' , SITUACAO = ' + QuotedStr('F');
  var_sql := var_sql + ' where IDCAIXACONTROLE = ' + IntToStr(caixaIdMovCaixa);

  Try
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(var_sql);
    dm.sqlsisAdimin.Commit(TD);
    MessageDlg('Alterações executadas com sucesso!', mtInformation, [mbOK], 0);
  except
    dm.sqlsisAdimin.Rollback(TD);
    MessageDlg('Erro para Gerar o Inventário', mtError, [mbOK], 0);
    Exit;
  end;



end;

end.
