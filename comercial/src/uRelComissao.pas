unit uRelComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, FMTBcd, DB, DBClient, Provider, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, SqlExpr, Mask, JvExMask, JvToolEdit;

type
  TfRelComissao = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnSuites: TBitBtn;
    cCaixa: TSQLDataSet;
    cCaixaIDCAIXACONTROLE: TIntegerField;
    cCaixaCODCAIXA: TIntegerField;
    cCaixaCODUSUARIO: TIntegerField;
    cCaixaDATAFECHAMENTO: TDateField;
    cCaixaSITUACAO: TStringField;
    cCaixaMAQUINA: TStringField;
    cCaixaDATAABERTURA: TDateField;
    cCaixaVALORABRE: TFloatField;
    cCaixaVALORFECHA: TFloatField;
    cCaixaNOMECAIXA: TStringField;
    Label6: TLabel;
    sSuite: TSQLDataSet;
    sSuiteDESCRICAO: TStringField;
    sSuiteSUITE: TStringField;
    sSuiteVARLORSUITE: TFloatField;
    sSuitePERIODOINI: TSQLTimeStampField;
    sSuitePERIODOFIM: TSQLTimeStampField;
    OpenDialog1: TOpenDialog;
    sVenda: TSQLDataSet;
    sVendaDESCRICAO: TStringField;
    sVendaQUTDE: TFloatField;
    sVendaVARLORUNIT: TFloatField;
    sVendaVARLORTOTAL: TFloatField;
    sVendaIDMOV: TIntegerField;
    btnVendas: TBitBtn;
    sPag: TSQLDataSet;
    sPagDESCRICAO: TStringField;
    sPagNOMEFUNCIONARIO: TStringField;
    sPagVARLORCOMISSAO: TFloatField;
    sPagTIPO: TStringField;
    sPagTOTALCOLABORADOR: TFloatField;
    sPagCODCOLABORADOR: TIntegerField;
    sPagTOTALGERAL: TFloatField;
    BitBtn3: TBitBtn;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    edData: TJvDateEdit;
    sPlano: TSQLDataSet;
    sPlanoCODIGO: TIntegerField;
    sPlanoCONTA: TStringField;
    sPlanoCONTAPAI: TStringField;
    sPlanoNOME: TStringField;
    sPlanoCONSOLIDA: TStringField;
    sPlanoDESCRICAO: TStringField;
    sPlanoRATEIO: TStringField;
    sPlanoCODREDUZIDO: TStringField;
    sPlanoREDUZRECEITA: TStringField;
    BitBtn4: TBitBtn;
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
    sCaixaCODORIGEM: TIntegerField;
    sCaixaCODRECEBIMENTO: TIntegerField;
    sPlano1: TSQLDataSet;
    sPlano1CODIGO: TIntegerField;
    sPlano1CONTA: TStringField;
    sPlano1CONTAPAI: TStringField;
    sPlano1NOME: TStringField;
    sPlano1CONSOLIDA: TStringField;
    sPlano1DESCRICAO: TStringField;
    sPlano1RATEIO: TStringField;
    sPlano1CODREDUZIDO: TStringField;
    sPlano1REDUZRECEITA: TStringField;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure btnSuitesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVendasClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  cJustif = #27#97#51;
  cEject = #12;
  { Tamanho da fonte }
  c10cpi = #18;
  c12cpi = #27#77;
  c17cpi = #15;
  cIExpandido = #14;
  cFExpandido = #20;
  { Formatação da fonte }
  cINegrito = #27#71;
  cFNegrito = #27#72;
  cIItalico = #27#52;
  cFItalico = #27#53;
var
  fRelComissao: TfRelComissao;
  SqlCr, sqlTexto, sqlTexto1, DataStr, sqlGrupoCR, impCR: String;
  IMPRESSORA:TextFile;
  Texto,Texto1,Texto2,Texto3,Texto4,texto5, texto6, texto7, logradouro,cep,fone : string;//Para recortar parte da descrição do produto,nome
  total, porc, totgeral : double;
  porta : string;
  vNomeCliente, vEnderecoCliente, vFonecli : string;
  idCaixa : integer;


implementation

uses UDm;

{$R *.dfm}

procedure TfRelComissao.btnSuitesClick(Sender: TObject);
var total : double;
begin
  if (edData.Text = '  /  /    ') then
  begin
     MessageDlg('Preencha o campo data', mtWarning, [mbOK], 0);
     edData.SetFocus;
     exit;
  end;
  if (ComboBox1.Text <> '') then
  begin
    if (cCaixa.Active) then
      cCaixa.Close;
    cCaixa.Params[0].AsString := ComboBox1.Text;
    cCaixa.Params[1].AsDate := edData.Date;
    cCaixa.Open;
    if (not cCaixa.IsEmpty) then
    begin
      idCaixa := cCaixaIDCAIXACONTROLE.AsInteger;
    end
    else
    begin
      MessageDlg('Caixa não encontrado', mtWarning, [mbOK], 0);
      exit;
    end;
  end
  else
    idCaixa  := 9999999;

  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  Texto  := '                NINFAS N. CLUB                ' ;
  Texto1 := '----------------------------------------------' ;
  Texto2 := '             RELATÓRIO DE LOCAÇÕES            ' ;
  Texto3 := 'Dia : ' + DateTimeToStr(Now);
  Texto4 := 'Descricao         Periodo          Varlo R$   ' ;
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  //OpenDialog1.Execute;
  //AssignFile(IMPRESSORA, OpenDialog1.FileName);
  AssignFile(IMPRESSORA,porta);
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto4);
  Writeln(Impressora, c10cpi, texto1);
  if (sSuite.Active) then
    sSuite.Close;
  sSuite.Params[0].AsInteger := idCaixa;
  sSuite.Params[1].AsDate := edData.Date;
  sSuite.Open;
  sSuite.First;
  total := 0;
  while not sSuite.Eof do
  begin
    texto6 := Copy(sSuiteSUITE.AsString, 0, 24);
    Write(Impressora, c17cpi + Format('%-24s',[texto6]));
    texto6 := FormatDateTime('hh:MM', sSuitePERIODOINI.AsDateTime) + '/' + FormatDateTime('hh:MM', sSuitePERIODOFIM.AsDateTime);
    Write(Impressora, c17cpi + Format('%-10s',[texto6]));
    Writeln(Impressora, c10cpi + Format(' %8.2n',[sSuiteVARLORSUITE.value]));
    total := total + sSuiteVARLORSUITE.value;
    sSuite.next;
  end;
  Writeln(Impressora, c10cpi, texto1);
  {-----------------------------------------------------------}
  {-------------------Imprimi final do Pedido-----------------}
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(IMPRESSORA);
  Texto5 := '               Total : R$   ';
  Write(Impressora, c10cpi, texto5 );
  Writeln(Impressora, c10cpi + Format('   %-6.2n',[total]));
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  CloseFile(IMPRESSORA);
  //*************************************************************

end;

procedure TfRelComissao.FormShow(Sender: TObject);
var
  codigoCaixa, caixabanco : string;
begin
  // Imprimir Comissões
  {------Pesquisando na tab Parametro Centro de Receita Padrão ---------}
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'PORTA IMPRESSORA';
  dm.cds_parametro.Open;
  if not dm.cds_parametro.IsEmpty then
  begin
    porta := dm.cds_parametroDADOS.AsString;
  end
  else
  begin
    dm.cds_parametro.Append;
    dm.cds_parametroDESCRICAO.AsString := 'Porta usada para impressoras de CUPOM';
    dm.cds_parametroPARAMETRO.AsString := 'PORTA IMPRESSORA';
    dm.cds_parametroDADOS.AsString := 'LPT1:';
    dm.cds_parametro.ApplyUpdates(0);
    porta := 'LPT1:';
  end;
  if Dm.cds_parametro.Active then
     dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'LISTARCAIXA';
  dm.cds_parametro.Open;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    codigoCaixa := dm.cds_parametroDADOS.AsString;
    sPlano.close;
    sPlano.Params[0].AsString := codigoCaixa;
    sPlano.Open;
    sPlano.First;
    ComboBox1.Items.Clear;
    while not sPlano.Eof do
    begin
       ComboBox1.Items.Add(sPlanoNOME.AsString);
       sPlano.Next;
    end;
    sPlano.Close;
  end;
end;

procedure TfRelComissao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cCaixa.Close;
end;

procedure TfRelComissao.btnVendasClick(Sender: TObject);
var Totalgeral : double;
begin
  if (edData.Text = '  /  /    ') then
  begin
     MessageDlg('Preencha o campo data', mtWarning, [mbOK], 0);
     edData.SetFocus;
     exit;
  end;
  if (ComboBox1.Text <> '') then
  begin
    if (cCaixa.Active) then
      cCaixa.Close;
    cCaixa.Params[0].AsString := ComboBox1.Text;
    cCaixa.Params[1].AsDate := edData.Date;
    cCaixa.Open;
    if (not cCaixa.IsEmpty) then
    begin
      idCaixa := cCaixaIDCAIXACONTROLE.AsInteger;
    end
    else
    begin
      MessageDlg('Caixa não encontrado', mtWarning, [mbOK], 0);
      exit;
    end;
  end
  else
    idCaixa  := 9999999;

  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  Texto  := '                NINFAS N. CLUB                ' ;
  Texto1 := '----------------------------------------------' ;
  Texto2 := '             RELATÓRIO DE VENDAS            ' ;
  Texto3 := 'Dia : ' + DateTimeToStr(Now);
  Texto4 := 'Descricao       Qutde    Unt.R$    Total R$   ' ;
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  //OpenDialog1.Execute;
  //AssignFile(IMPRESSORA, OpenDialog1.FileName);
  AssignFile(IMPRESSORA,porta);
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto3);
  Writeln(Impressora, c10cpi, texto4);
  Writeln(Impressora, c10cpi, texto1);
  if (sVenda.Active) then
    sVenda.Close;
  sVenda.Params[0].AsInteger := idCaixa;
  sVenda.Params[1].AsDate := edData.Date;
  sVenda.Open;
  sVenda.First;
  Totalgeral := 0;
  while not sVenda.Eof do
  begin
    texto6 := Copy(sVendaDESCRICAO.AsString, 0, 38);
    Writeln(Impressora, c10cpi, texto6);
    Write(Impressora, c10cpi + Format('%20.2n',[sVendaQUTDE.value]));
    Write(Impressora, c10cpi + Format('%10.2n',[sVendaVARLORUNIT.value]));
    Writeln(Impressora, c10cpi + Format('%14.2n',[sVendaVARLORTOTAL.value]));
    Totalgeral := Totalgeral + sVendaVARLORTOTAL.value;
    sVenda.next;
  end;
  {-----------------------------------------------------------}
  {-------------------Imprimi final do Pedido-----------------}
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(IMPRESSORA);
  Texto5 := '                     Total : R$   ';
  Write(Impressora, c10cpi, texto5 );
  Writeln(Impressora, c10cpi + Format('   %8.2n',[Totalgeral]));
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  CloseFile(IMPRESSORA);
  //*************************************************************

end;

procedure TfRelComissao.BitBtn1Click(Sender: TObject);
var NOMECOLAB,NOMECOLABE1 : string;
    vValor, vTotal :Double;
begin
  if (edData.Text = '  /  /    ') then
  begin
     MessageDlg('Preencha o campo data', mtWarning, [mbOK], 0);
     edData.SetFocus;
     exit;
  end;
  if (ComboBox1.Text <> '') then
  begin
    if (cCaixa.Active) then
      cCaixa.Close;
    cCaixa.Params[0].AsString := ComboBox1.Text;
    cCaixa.Params[1].AsDate := edData.Date;
    cCaixa.Open;
    if (not cCaixa.IsEmpty) then
    begin
      idCaixa := cCaixaIDCAIXACONTROLE.AsInteger;
    end
    else
    begin
      MessageDlg('Caixa não encontrado', mtWarning, [mbOK], 0);
      exit;
    end;
  end
  else
    idCaixa  := 9999999;


  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  Texto  := '                NINFAS N. CLUB                ' ;
  Texto1 := '----------------------------------------------' ;
  Texto2 := '      DESPESAS E RECEITAS COLABORADORES       ' ;
  Texto3 := 'Dia : ' + DateTimeToStr(Now);
  Texto4 := 'Descricao                Tipo      Varlo R$   ' ;
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  //OpenDialog1.Execute;
  //AssignFile(IMPRESSORA, OpenDialog1.FileName);
  AssignFile(IMPRESSORA,porta);
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(Impressora, c10cpi, texto1);
  if (sPag.Active) then
    sPag.Close;
  sPag.Params[0].AsString := 'Colaborador';
  sPag.Params[1].AsInteger := idCaixa;
  sPag.Params[2].AsDate := edData.Date;
  sPag.Open;
  sPag.First;
  NOMECOLAB := '';
  while not sPag.Eof do
  begin
    if ((not sPagNOMEFUNCIONARIO.IsNull) and (sPagNOMEFUNCIONARIO.AsString <> NOMECOLAB)
     and (NOMECOLAB <> '')) then
    begin
       // Imprimir total
      Writeln(Impressora, c10cpi, texto1);
      Texto5 := '                      Total : R$   ';
      Write(Impressora, c10cpi, texto5 );
      Writeln(Impressora, c10cpi + Format('   %6.2n',[vValor]));
      Writeln(Impressora, c10cpi, texto1);
    end;
    if (not sPagNOMEFUNCIONARIO.IsNull) then
    begin
      Texto6 := 'Colaborador .: ' + sPagNOMEFUNCIONARIO.AsString;
      Writeln(Impressora, c10cpi, texto6 );
      Writeln(Impressora, c10cpi, texto4);
      NOMECOLAB := sPagNOMEFUNCIONARIO.AsString;
      Writeln(Impressora, c10cpi, texto1);
    end;
    if (sPagTIPO.AsString = 'D') then
    begin
      texto6 := Copy(sPagDESCRICAO.AsString, 0, 24);
      Write(Impressora, c17cpi + Format('%-24s',[texto6]));
      texto6 := 'Comissão';
      Write(Impressora, c17cpi + Format('%-10s',[texto6]));
      Writeln(Impressora, c10cpi + Format(' %8.2n',[sPagVARLORCOMISSAO.value]));
    end;
    if (sPagTIPO.AsString = 'R') then
    begin
      texto6 := Copy(sPagDESCRICAO.AsString, 0, 24);
      Write(Impressora, c17cpi + Format('%-24s',[texto6]));
      texto6 := 'Gastos';
      Write(Impressora, c17cpi + Format('%-10s',[texto6]));
      Writeln(Impressora, c10cpi + Format(' %8.2n',[sPagVARLORCOMISSAO.value]));
    end;
    vValor := sPagTOTALCOLABORADOR.Value;
    vTotal := sPagTOTALGERAL.Value;
    sPag.next;
  end;
  // Ultimo Total
  Writeln(Impressora, c10cpi, texto1);
  Texto5 := '                      Total : R$   ';
  Write(Impressora, c10cpi, texto5 );
  Writeln(Impressora, c10cpi + Format('   %6.2n',[vValor]));
  // Ultimo Total
  Writeln(Impressora, c10cpi, texto1);
  Texto5 := '                Total Geral : R$   ';
  Write(Impressora, c10cpi, texto5 );
  Writeln(Impressora, c10cpi + Format('   %6.2n',[vTotal]));
  {-----------------------------------------------------------}
  {-------------------Imprimi final do Pedido-----------------}
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(IMPRESSORA);
  //Texto5 := '               Total : R$   ';
  //Write(Impressora, c10cpi, texto5 );
  //total := cCaixaControleVALORFECHA.Value;
  //Writeln(Impressora, c10cpi + Format('   %-6.2n',[total]));
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  CloseFile(IMPRESSORA);
  //*************************************************************

end;

procedure TfRelComissao.BitBtn2Click(Sender: TObject);
var NOMECOLAB,NOMECOLABE1 : string;
    vValor, vTotal :Double;
begin
  if (edData.Text = '  /  /    ') then
  begin
     MessageDlg('Preencha o campo data', mtWarning, [mbOK], 0);
     edData.SetFocus;
     exit;
  end;
  if (ComboBox1.Text <> '') then
  begin
    if (cCaixa.Active) then
      cCaixa.Close;
    cCaixa.Params[0].AsString := ComboBox1.Text;
    cCaixa.Params[1].AsDate := edData.Date;
    cCaixa.Open;
    if (not cCaixa.IsEmpty) then
    begin
      idCaixa := cCaixaIDCAIXACONTROLE.AsInteger;
    end
    else
    begin
      MessageDlg('Caixa não encontrado', mtWarning, [mbOK], 0);
      exit;
    end;
  end
  else
    idCaixa  := 9999999;

  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  Texto  := '                NINFAS N. CLUB                ' ;
  Texto1 := '----------------------------------------------' ;
  Texto2 := '            DESPESAS E RECEITAS BAR           ' ;
  Texto3 := 'Dia : ' + DateTimeToStr(Now);
  Texto4 := 'Descricao                Tipo      Varlo R$   ' ;
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  //OpenDialog1.Execute;
  //AssignFile(IMPRESSORA, OpenDialog1.FileName);
  AssignFile(IMPRESSORA,porta);
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(Impressora, c10cpi, texto1);
  if (sPag.Active) then
    sPag.Close;
  sPag.Params[0].AsString := 'Garçom';
  sPag.Params[1].AsInteger := idCaixa;
  sPag.Params[2].AsDate := edData.Date;
  sPag.Open;
  sPag.First;
  NOMECOLAB := '';
  while not sPag.Eof do
  begin
    if ((not sPagNOMEFUNCIONARIO.IsNull) and (sPagNOMEFUNCIONARIO.AsString <> NOMECOLAB)
     and (NOMECOLAB <> '')) then
    begin
       // Imprimir total
      Writeln(Impressora, c10cpi, texto1);
      Texto5 := '                      Total : R$   ';
      Write(Impressora, c10cpi, texto5 );
      Writeln(Impressora, c10cpi + Format('   %6.2n',[vValor]));
      Writeln(Impressora, c10cpi, texto1);
    end;
    if (not sPagNOMEFUNCIONARIO.IsNull) then
    begin
      Texto6 := 'Colaborador .: ' + sPagNOMEFUNCIONARIO.AsString;
      Writeln(Impressora, c10cpi, texto6 );
      Writeln(Impressora, c10cpi, texto4);
      NOMECOLAB := sPagNOMEFUNCIONARIO.AsString;
      Writeln(Impressora, c10cpi, texto1);
    end;
    if (sPagTIPO.AsString = 'D') then
    begin
      texto6 := Copy(sPagDESCRICAO.AsString, 0, 24);
      Write(Impressora, c17cpi + Format('%-24s',[texto6]));
      texto6 := 'Comissão';
      Write(Impressora, c17cpi + Format('%-10s',[texto6]));
      Writeln(Impressora, c10cpi + Format(' %8.2n',[sPagVARLORCOMISSAO.value]));
    end;
    if (sPagTIPO.AsString = 'R') then
    begin
      texto6 := Copy(sPagDESCRICAO.AsString, 0, 24);
      Write(Impressora, c17cpi + Format('%-24s',[texto6]));
      texto6 := 'Gastos';
      Write(Impressora, c17cpi + Format('%-10s',[texto6]));
      Writeln(Impressora, c10cpi + Format(' %8.2n',[sPagVARLORCOMISSAO.value]));
    end;
    vValor := sPagTOTALCOLABORADOR.Value;
    vTotal := sPagTOTALGERAL.Value;
    sPag.next;
  end;
  // Ultimo Total
  Writeln(Impressora, c10cpi, texto1);
  Texto5 := '                      Total : R$   ';
  Write(Impressora, c10cpi, texto5 );
  Writeln(Impressora, c10cpi + Format('   %6.2n',[vValor]));
  // Ultimo Total
  Writeln(Impressora, c10cpi, texto1);
  Texto5 := '                Total Geral : R$   ';
  Write(Impressora, c10cpi, texto5 );
  Writeln(Impressora, c10cpi + Format('   %6.2n',[vTotal]));
  {-----------------------------------------------------------}
  {-------------------Imprimi final do Pedido-----------------}
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(IMPRESSORA);
  //Texto5 := '               Total : R$   ';
  //Write(Impressora, c10cpi, texto5 );
  //total := cCaixaControleVALORFECHA.Value;
  //Writeln(Impressora, c10cpi + Format('   %-6.2n',[total]));
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  CloseFile(IMPRESSORA);
  //*************************************************************
end;

procedure TfRelComissao.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfRelComissao.BitBtn4Click(Sender: TObject);
var codigo : integer;
begin
  if (edData.Text = '  /  /    ') then
  begin
     MessageDlg('Preencha o campo data', mtWarning, [mbOK], 0);
     edData.SetFocus;
     exit;
  end;
  codigo := 0;
  if (ComboBox1.Text <> '') then
  begin
    if (not sPlano1.Active) then
      sPlano1.Open;
    sPlano1.Locate('NOME',ComboBox1.Text, [loCaseInsensitive]);
    codigo := sPlano1CODIGO.AsInteger;
    sPlano1.Close;
  end;


  if (ComboBox1.Text <> '') then
  begin
    if (cCaixa.Active) then
      cCaixa.Close;
    cCaixa.Params[0].AsString := ComboBox1.Text;
    cCaixa.Params[1].AsDate := edData.Date;
    cCaixa.Open;
    if (not cCaixa.IsEmpty) then
    begin
      idCaixa := cCaixaIDCAIXACONTROLE.AsInteger;
    end
    else
    begin
      MessageDlg('Caixa não encontrado', mtWarning, [mbOK], 0);
      exit;
    end;
  end
  else
    idCaixa  := 9999999;

  sCaixa.Params[0].AsDate := edData.Date;
  sCaixa.Params[1].AsDate := cCaixaDATAFECHAMENTO.AsDateTime;
  sCaixa.Params[2].AsInteger := codigo;
  sCaixa.Params[3].AsInteger := idCaixa;

  sCaixa.Open;

  // Imprimindo
  if (not dm.cds_empresa.Active) then
    dm.cds_empresa.Open;
  {----- aqui monto o endereço-----}
  Texto  := '                NINFAS N. CLUB                ' ;
  Texto1 := '----------------------------------------------' ;
  Texto2 := '              FECHAMENTO DE CAIXA             ' ;
  Texto7 := 'FECHAMENTO DO DIA : ' + sCaixaDTAPAGTO.AsString;
  Texto3 := 'Dia : ' + DateTimeToStr(Now);
  Texto4 := 'Desc.                 V.Deb.   V.Cred.   SALDO' ;
  Texto5 := '----------------------------------------------';
  {-----------------------------------------------------------}
  {-------------------Imprimi Cabeçalho-----------------------}
  // Para gravar em arquivo
  //OpenDialog1.Execute;
  //AssignFile(IMPRESSORA, OpenDialog1.FileName);
  AssignFile(IMPRESSORA,porta);
  Rewrite(IMPRESSORA);
  Writeln(Impressora, c10cpi, texto);
  Writeln(Impressora, c10cpi, texto1);
  Writeln(Impressora, c10cpi, texto2);
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(Impressora, c10cpi, texto7);  //CLIENTE
  //Writeln(Impressora, c10cpi, texto3);  //DATA
  Writeln(Impressora, c10cpi, texto5);
  Writeln(Impressora, c10cpi, texto4);
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  {-----------------------------------------------------------}
  {-------------------Imprimi itens do boleto-----------------}
  sCaixa.First;
  while not sCaixa.Eof do
  begin
    //sCaixa.RecordCount;
    texto6 := sCaixaDESCRICAO.AsString;
    Write(Impressora, c17cpi + Format('%-22s',[texto6]));
    Write(Impressora, c17cpi + Format('%6.2n',[sCaixaVALORD.AsFloat]));
    Write(Impressora, c17cpi + Format('%6.2n',[sCaixaVALORC.AsFloat]));
    Writeln(Impressora, c17cpi + Format('%8.2n',[sCaixaVALOR.value]));
    total := sCaixaVALOR.Value;
    sCaixa.next;
  end;
  {-----------------------------------------------------------}
  {-------------------Imprimi final do Pedido-----------------}
  Writeln(Impressora, c10cpi + Format('%-38s',['----------------------------------------------']));
  Writeln(IMPRESSORA);
  Texto5 := '               Total : R$   ';
  Write(Impressora, c10cpi, texto5 );
  Writeln(Impressora, c10cpi + Format('   %6.2n',[total]));
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  Writeln(IMPRESSORA);
  CloseFile(IMPRESSORA);
end;

end.
