unit uBancoExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, DBCtrls, FMTBcd, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, ImgList, Mask, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, uUtils, uPagarCls, DbxPress;

type
  TfBancoExtrato = class(TfPai_new)
    Label4: TLabel;
    ds_conta: TDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
    sdsExtrato: TSQLDataSet;
    dspExtrato: TDataSetProvider;
    cdsExtrato: TClientDataSet;
    cdsExtratoEXTRATODATA: TDateField;
    cdsExtratoCAIXA: TIntegerField;
    cdsExtratoEXTRATODOC: TStringField;
    cdsExtratoEXTRATOTIPO: TStringField;
    cdsExtratoEXTRATOVALOR: TFloatField;
    cdsExtratoEXTRATOCOD: TStringField;
    cdsExtratoSEL: TStringField;
    cdsExtratoCONCILIADO: TStringField;
    ImageList1: TImageList;
    grid2: TJvDBUltimGrid;
    sdsLanc: TSQLDataSet;
    dspLanc: TDataSetProvider;
    cdsLanc: TClientDataSet;
    dsLanc: TDataSource;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label7: TLabel;
    cbMes: TComboBox;
    MaskEdit1: TJvDatePickerEdit;
    MaskEdit2: TJvDatePickerEdit;
    cdsLancDTAPAGTO: TDateField;
    cdsLancORDEM: TIntegerField;
    cdsLancDESCRICAO: TStringField;
    cdsLancVALORC: TFloatField;
    cdsLancVALORD: TFloatField;
    cdsLancVALOR: TFloatField;
    cdsLancCONTACONTABIL: TStringField;
    cdsLancCAIXA: TStringField;
    cdsLancCODCONTA: TStringField;
    cdsLancFORMA: TStringField;
    cdsLancN_DOC: TStringField;
    cdsLancORDENA: TIntegerField;
    cdsLancCOMPENSADO: TStringField;
    cbConta: TComboBox;
    cdsExtratoCONTA: TIntegerField;
    sdsExtratoEXTRATOCOD: TStringField;
    sdsExtratoEXTRATODATA: TDateField;
    sdsExtratoCAIXA: TIntegerField;
    sdsExtratoEXTRATODOC: TStringField;
    sdsExtratoEXTRATOTIPO: TStringField;
    sdsExtratoEXTRATOVALOR: TFloatField;
    sdsExtratoSEL: TStringField;
    sdsExtratoCONCILIADO: TStringField;
    sdsExtratoCONTA: TIntegerField;
    sqlFornecedor: TSQLQuery;
    Label1: TLabel;
    ComboBox1: TComboBox;
    sdsTipoConta: TSQLQuery;
    OpenDialog1: TOpenDialog;
    sdsExtratoNOME: TStringField;
    cdsExtratoNOME: TStringField;
    sdsE: TSQLDataSet;
    dspE: TDataSetProvider;
    cdsE: TClientDataSet;
    sdsEEXTRATOCOD: TStringField;
    sdsEEXTRATODATA: TDateField;
    sdsECAIXA: TIntegerField;
    sdsEEXTRATODOC: TStringField;
    sdsEEXTRATOTIPO: TStringField;
    sdsEEXTRATOVALOR: TFloatField;
    sdsESEL: TStringField;
    sdsECONCILIADO: TStringField;
    cdsEEXTRATOCOD: TStringField;
    cdsEEXTRATODATA: TDateField;
    cdsECAIXA: TIntegerField;
    cdsEEXTRATODOC: TStringField;
    cdsEEXTRATOTIPO: TStringField;
    cdsEEXTRATOVALOR: TFloatField;
    cdsESEL: TStringField;
    cdsECONCILIADO: TStringField;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbContaClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure JvDBUltimGrid1CellClick(Column: TColumn);
    procedure JvDBUltimGrid1ColEnter(Sender: TObject);
    procedure JvDBUltimGrid1ColExit(Sender: TObject);
    procedure JvDBUltimGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure cbMesChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure cbContaChange(Sender: TObject);
  private
    contaCaixa, cCusto : Integer;
    contaLanc, caixaBanco, contaDespesa, contaReceita  : String;
    util: TUtils;
    TD : TTransactionDesc;
    function jaFoiLancado(tipo: String; id: String): Boolean;
    function tipoConta(conta: Integer): String;
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    procedure abrirExtrato;
    procedure abrirCaixa;
    procedure LancamentoNaoLancadoComConta;
    procedure LancaContabil;
    procedure LimpaMarcacao;
    { Private declarations }
  public
    beUsuarioLogado: Integer;
    { Public declarations }
  end;

var
  fBancoExtrato: TfBancoExtrato;

implementation

uses uBancoOFX, UDm, uBancoDePara, uAtsAdmin;

{$R *.dfm}

procedure TfBancoExtrato.btnProcurarClick(Sender: TObject);
var
  BancoOFX1: TBancoOFX;
  i:integer;
  caminho: String;
begin
  if (cdsE.Active) then
    cdsE.Close;
  cdsE.Params.ParamByName('pCAIXA').AsInteger := contaCaixa;
  cdsE.Params.ParamByName('DTAINI').AsDate     := MaskEdit1.Date;
  cdsE.Params.ParamByName('DTAFIM').AsDate     := MaskEdit2.Date;
  cdsE.Open;

  Try
    BancoOFX1 := TBancoOFX.create(self);

    if OpenDialog1.Execute then
    begin
      caminho := OpenDialog1.FileName;
      BancoOFX1.OFXFile := caminho;
      BancoOFX1.Process;
      //ListBox1.Clear;
      for i := 0 to BancoOFX1.Count-1 do
      begin
        if not (cdsE.Locate('EXTRATOCOD', BancoOFX1.Get(i).ID, [loCaseInsensitive])) then
        begin
          if (cdsE.State in [dsBrowse]) then
            cdsE.Append;
          cdsEEXTRATOCOD.AsString    := BancoOFX1.Get(i).ID;
        end
        else begin
          cdsE.Edit;
        end;
        cdsEEXTRATODATA.AsDateTime := BancoOFX1.Get(i).MovDate;
        cdsECAIXA.AsInteger        := contaCaixa;
        cdsEEXTRATODOC.AsString    := BancoOFX1.Get(i).Desc; // + ' - ' + BancoOFX1.Get(i).Document;
        cdsEEXTRATOTIPO.AsString   := BancoOFX1.Get(i).MovType;
        cdsEEXTRATOVALOR.AsFloat   := BancoOFX1.Get(i).Value;
        if (jaFoiLancado('CAIXA', BancoOFX1.Get(i).ID)) then
          cdsECONCILIADO.AsString := 'S';
        if (jaFoiLancado('DESPESA', BancoOFX1.Get(i).ID)) then
          cdsECONCILIADO.AsString := 'S';
        cdsE.ApplyUpdates(0);
      end;
    end;
    abrirExtrato;
    abrirCaixa;
  Finally
    BancoOFX1.Free;
  end;
end;

procedure TfBancoExtrato.FormCreate(Sender: TObject);
begin
  //inherited;
  util := TUtils.Create;
end;

procedure TfBancoExtrato.FormShow(Sender: TObject);
var conta_local : String;
begin
  LimpaMarcacao;
   // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  caixaBanco := dm.cds_parametroDADOS.AsString;
  if not dm.cds_7_contas.Active then
  begin
    dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
    dm.cds_7_contas.Open;
  end;
  cbConta.Items.Clear;
  dm.cds_7_contas.First;
  while (not dm.cds_7_contas.Eof) do
  begin
    cbConta.Items.Add(dm.cds_7_contasNOME.AsString);
    dm.cds_7_contas.Next;
  end;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTASDESPESAS';
  dm.cds_parametro.Open;
  ContaDespesa := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CONTASRECEITAS';
  dm.cds_parametro.Open;
  ContaReceita := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if dm.cds_ccusto.Active then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := conta_local;
  dm.cds_ccusto.Open;
  ComboBox1.Items.Add('TODOS');
  While not dm.cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;
  dm.cds_parametro.Close;

  dm.cds_parametro.Close;
  abrirExtrato;
end;

procedure TfBancoExtrato.cbContaClick(Sender: TObject);
begin
  //inherited;

end;

procedure TfBancoExtrato.btnIncluirClick(Sender: TObject);
begin
  //inherited;
  abrirExtrato;
  LancamentoNaoLancadoComConta;  
end;

procedure TfBancoExtrato.btnExcluirClick(Sender: TObject);
begin
  //inherited;
  fBancoDePara.caixa := dm.cds_7_contasCODIGO.AsInteger;
  fBancoDePara.extratoTipo := cdsExtratoEXTRATOTIPO.AsString;
  fBancoDePara.extratoDoc  := cdsExtratoEXTRATODOC.AsString;
  fBancoDePara.ShowModal;
end;

procedure TfBancoExtrato.JvDBUltimGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfBancoExtrato.JvDBUltimGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfBancoExtrato.JvDBUltimGrid1ColExit(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfBancoExtrato.JvDBUltimGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
//***************************************************
// destacando Campos
//***************************************************
  if (Column.Field = cdsExtratoCONCILIADO)  then
  begin
    if ((cdsExtratoCONCILIADO.IsNull) or (cdsExtratoCONCILIADO.AsString = 'N')) then
    begin
      //JvDBUltimGrid1.Canvas.Font.Color:= clRed;
      JvDBUltimGrid1.Columns[1].Color := clRed;
      JvDBUltimGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end
    else if (cdsExtratoCONCILIADO.AsString = 'S') then
    begin
      //JvDBUltimGrid1.Canvas.Font.Color := clBlue;
      JvDBUltimGrid1.Columns[1].Color := clBlue;
      JvDBUltimGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
    end;
    ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
      DataCol, Column, State);
  end;
end;

procedure TfBancoExtrato.ChkDBGridCellClick(Column: TColumn);
var
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'cdsExtratoSEL')
      and Field.CanModify and not Column.ReadOnly then
  with Field.Dataset do
  begin
    if State = dsBrowse then
      Edit;
    if (cdsExtratoSEL.AsString <> 'S') then
    begin
      //dbGrid1.SelectedRows.CurrentRowSelected := True;
      //dbgrid1.Refresh;
      cdsExtratoSEL.AsString := 'S';
      cdsExtrato.Post;
    end
    else begin
      cdsExtratoSEL.AsString := 'N';
    end;
  end;
end;

procedure TfBancoExtrato.ChkDBGridColEnter(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cdsExtratoSEL') then
    DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure TfBancoExtrato.ChkDBGridColExit(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cdsExtratoSEL') then
    DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfBancoExtrato.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'cdsExtratoSEL') then
  begin
    // Fill the cell with the background color
    DBGrid.Canvas.FillRect(Rect);
    // Determine the position of the graphic inside the cell
    case Column.Alignment of
      taRightJustify:
        X := Rect.Right - 2 - 16;
      taCenter:
        X := (Rect.Right - Rect.Left - 16) div 2 + Rect.Left;
      else // taLeftJustify:
        X := Rect.Left + 2;
    end;
    Y := (Rect.Bottom - Rect.Top - 16) div 2 + Rect.Top;
    // Determine the image to be used
    // if Field.AsBoolean then Index := 1 else Index := 0;
    if cdsExtratoSEL.AsString <> 'S' then Index := 1 else Index := 0;
    // Draw the graphic
    ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TfBancoExtrato.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cdsExtratoSEL') then
    if (Key = ' ') and Field.CanModify and
        not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        //Field.AsBoolean := not Field.AsBoolean;
      if (cdsExtratoSEL.AsString <> 'S') then
      begin
        cdsExtratoSEL.AsString := 'S';
        cdsExtrato.Post;
      end
      else begin
        cdsExtratoSEL.AsString := '';
      end;
  end;

end;

procedure TfBancoExtrato.cbMesChange(Sender: TObject);
begin
  //inherited;
  util.criaIni(cbMes.text);
  util.criaFim(cbMes.text);
  MaskEdit1.Text := util.PeriodoIni;
  MaskEdit2.Text := util.PeriodoFim;
end;

procedure TfBancoExtrato.abrirExtrato;
var nada: String;
begin
  if (cdsExtrato.Active) then
    cdsExtrato.Close;
  cdsExtrato.Params.ParamByName('CAIXA').Clear;
  cdsExtrato.Params.ParamByName('CAIXA').AsInteger := contaCaixa;
  cdsExtrato.Params.ParamByName('DTA1').AsDate     := MaskEdit1.Date;
  cdsExtrato.Params.ParamByName('DTA2').AsDate     := MaskEdit2.Date;
  cdsExtrato.Open;
  While not cdsExtrato.Eof do
  begin
    nada := cdsExtratoNOME.AsString;
    cdsExtrato.next;
  end;
end;

procedure TfBancoExtrato.FormDestroy(Sender: TObject);
begin
  inherited;
  util.Destroy;
end;

procedure TfBancoExtrato.cbContaChange(Sender: TObject);
begin
  inherited;
  dm.cds_7_contas.Locate('NOME', cbConta.Text, [loCaseInsensitive]);
  contaCaixa := dm.cds_7_contasCODIGO.AsInteger;
  contaLanc  := dm.cds_7_contasCONTA.AsString;
end;

procedure TfBancoExtrato.abrirCaixa;
begin
  if (cdsLanc.Active) then
    cdsLanc.Close;
  cdsLanc.Params.ParamByName('CAIXA').AsInteger := contaCaixa;
  cdsLanc.Params.ParamByName('DTA1').AsDate     := MaskEdit1.Date;
  cdsLanc.Params.ParamByName('DTA2').AsDate     := MaskEdit2.Date;
  cdsLanc.Open;
end;

procedure TfBancoExtrato.LancamentoNaoLancadoComConta;
var despesa: TPagarCls;
   codFornec,  codPag : Integer;
   multiplicador : Double;
begin
  if (cbConta.ItemIndex = -1) then
  begin
    MessageDlg('Escolha o caixa a ser lançado.', mtWarning, [mbOK], 0);
    Exit;
  end;

  if (sqlFornecedor.Active) then
    sqlFornecedor.Close;
  sqlFornecedor.ParamByName('CONTA').AsString := contaLanc;
  sqlFornecedor.Open;
  if (sqlFornecedor.IsEmpty) then
  begin
    MessageDlg('Não existe nenhum fornecedor cadastrado com esta conta de Caixa.', mtWarning, [mbOK], 0);
    Exit;
  end;
  codFornec := sqlFornecedor.Fields[0].AsInteger;

  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if (ComboBox1.Text = '') then
  begin
    MessageDlg('Informe o Centro de Custo.', mtWarning, [mbOK], 0);
    Exit;
  end;
  dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
  cCusto := dm.cds_ccustoCODIGO.AsInteger;

  Try
    despesa := TPagarCls.Create;

    cdsExtrato.DisableControls;
    cdsExtrato.First;

    multiplicador := 1;

    While not cdsExtrato.Eof do
    begin
      if (cdsExtratoCONTA.AsInteger > 0) then  // Se tem conta na tabela DEPARA
      begin
        if (tipoConta(cdsExtratoCONTA.AsInteger) = 'DESPESA') then
        begin
          if (jaFoiLancado('DESPESA', cdsExtratoEXTRATOCOD.AsString) = False) then
          begin
            despesa.CodFornecedor := codFornec;
            despesa.CodCCusto     := cCusto;
            despesa.CodUsuario    := dm.varUSERID;
            despesa.Caixa         := contaCaixa;
            despesa.NParcela      := 1;
            despesa.Via           := 1;
            despesa.DtEmissao     := cdsExtratoEXTRATODATA.AsDateTime;
            despesa.DtVcto        := cdsExtratoEXTRATODATA.AsDateTime;
            despesa.dtPag         := cdsExtratoEXTRATODATA.AsDateTime;
            despesa.DtBaixa       := cdsExtratoEXTRATODATA.AsDateTime;
            despesa.DtConsolida   := cdsExtratoEXTRATODATA.AsDateTime;

            if (cdsExtratoEXTRATOVALOR.AsFloat < 0) then
              multiplicador := -1;

            despesa.Valor         := cdsExtratoEXTRATOVALOR.AsFloat * multiplicador;
            despesa.valorPag      := cdsExtratoEXTRATOVALOR.AsFloat * multiplicador;
            despesa.Status        := '5-';
            despesa.Titulo        := cdsExtratoEXTRATOCOD.AsString;
            despesa.ContaCredito  := cdsExtratoCONTA.AsInteger;
            despesa.CodConciliaco := cdsExtratoEXTRATOCOD.AsString;
            despesa.Obs           := copy('OFX ' +
              cdsExtratoEXTRATODOC.AsString + '-' + cdsExtratoEXTRATOCOD.AsString +
              '-' + cdsExtratoNOME.AsString, 0, 150);
            try
              TD.TransactionID := 1;
              TD.IsolationLevel := xilREADCOMMITTED;

              dm.sqlsisAdimin.StartTransaction(TD);
              codPag := despesa.geraTitulo(0, 0);
              dm.sqlsisAdimin.Commit(TD);

              dm.sqlsisAdimin.StartTransaction(TD);
              despesa.marcarTitulo(codPag, beUsuarioLogado);
              dm.sqlsisAdimin.Commit(TD);

              dm.sqlsisAdimin.StartTransaction(TD);
              despesa.baixaTitulo(despesa.Valor, 0, 0, 0, 0, cdsExtratoEXTRATODATA.AsDateTime,
              cdsExtratoEXTRATODATA.AsDateTime, cdsExtratoEXTRATODATA.AsDateTime,
              '1', cdsExtratoEXTRATOCOD.AsString, contaCaixa, codFornec,
              '7-', beUsuarioLogado);
              dm.sqlsisAdimin.Commit(TD);
              LimpaMarcacao;
            except
              on E : Exception do
              begin
                ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
                dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
              end;
            end;
          end;
        end;
        if (tipoConta(cdsExtratoCONTA.AsInteger) = 'CAIXA') then
        begin
          if (jaFoiLancado('CAIXA', cdsExtratoEXTRATOCOD.AsString) = False) then
          begin
            LancaContabil; // Rotina para fazer um lancamento Contabil
          end;
        end;
      end;
      cdsExtrato.Next;
    end;
  Finally
    cdsExtrato.EnableControls;
    despesa.Free;
  end;
end;

function TfBancoExtrato.tipoConta(conta: Integer): String;
var v: string;
begin
  Result := '';
  if (sdsTipoConta.Active) then
    sdsTipoConta.Close;
  sdsTipoConta.SQL.Clear;

  sdsTipoConta.SQL.Add('SELECT PLNCTAMAIN(CONTA), PLNCTAROOT(CONTA) FROM PLANO WHERE CODIGO = ' +
    IntToStr(conta));

  sdsTipoConta.Open;
  if (sdsTipoConta.IsEmpty) then
    Result := 'CONTA_INVALIDA';

  v := trim(sdsTipoConta.Fields[0].AsString);
  if (v = caixaBanco) then
    Result := 'CAIXA';

  v := trim(sdsTipoConta.Fields[1].AsString);
  if (v = contaDespesa) then
    Result := 'DESPESA';

  if (v = contaReceita) then
    Result := 'RECEITA';

end;

procedure TfBancoExtrato.LancaContabil;
var var_sqlb, var_sqla, var_sqlbh, var_sqlah, contaTransf: String;
  cod_id, cod_idOrigem : integer;
begin
  dm.cds_ccusto.Locate('NOME', ComboBox1.Text, [loCaseInsensitive]);
  cCusto := dm.cds_ccustoCODIGO.AsInteger;

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cod_id := dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;

  DecimalSeparator := '.';
  if DM.c_1_planoc.Active then
    DM.c_1_planoc.Close;
  var_sqla := 'Select * from PLANO ';
  var_sqla := var_sqla + 'WHERE CODIGO = ';
  var_sqla := var_sqla + IntToStr(cdsExtratoCONTA.AsInteger);
  DM.c_1_planoc.CommandText := var_sqla;
  DM.c_1_planoc.Open;

  contaTransf := dm.c_1_planocCONTA.AsString;

  // Inserindo ENTRADA
  var_sqla := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
         ', DATA, CODUSUARIO, CODCCUSTO, CODSERVICO, STATUS, CONTA ' +
         ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
         ', QTDEDEBITO, QTDEORCADO, CODCONCILIACAO) Values (';
  var_sqla := var_sqla + intToStr(cod_id);
  var_sqla := var_sqla + ',' + intToStr(cod_id);
  var_sqla := var_sqla + ',' + QuotedStr('CONTABIL');
  var_sqla := var_sqla + ',' + QuotedStr(formatdatetime('mm/dd/yyyy', cdsExtratoEXTRATODATA.AsDateTime));
  var_sqla := var_sqla + ',' + IntToStr(beUsuarioLogado);
  var_sqla := var_sqla + ',' + IntToStr(cCusto);
  var_sqla := var_sqla + ',' + '0';
  var_sqla := var_sqla + ', 0';
  if (cdsExtratoEXTRATOVALOR.AsFloat > 0) then
  begin
    var_sqla := var_sqla + ',' + QuotedStr(contaLanc);
  end
  else
    var_sqla := var_sqla + ',' + QuotedStr(contaTransf);

  var_sqla := var_sqla + ',' + '0';
  if (cdsExtratoEXTRATOVALOR.AsFloat > 0) then
  begin
    var_sqla := var_sqla + ',' + FloatToStr(cdsExtratoEXTRATOVALOR.AsFloat);
  end
  else
    var_sqla := var_sqla + ',' + FloatToStr(cdsExtratoEXTRATOVALOR.AsFloat*(-1));

  var_sqla := var_sqla + ',' + '0';
  var_sqla := var_sqla + ',' + '0';
  var_sqla := var_sqla + ',' + '0';
  var_sqla := var_sqla + ',' + '0';
  var_sqla := var_sqla + ',' + QuotedStr(cdsExtratoEXTRATOCOD.AsString);
  var_sqla := var_sqla + ')';

  cod_idOrigem := cod_id;
  var_sqlah := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
              ') Values (';
  var_sqlah := var_sqlah + intToStr(cod_id);
  var_sqlah := var_sqlah + ',' + QuotedStr(copy('OFX ' +
    cdsExtratoEXTRATODOC.AsString + '-' + cdsExtratoEXTRATOCOD.AsString +
    '-' + cdsExtratoNOME.AsString,0 , 200));
  var_sqlah := var_sqlah + ')';


  // Inserindo Saida

  if dm.c_6_genid.Active then
    dm.c_6_genid.Close;
  dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CONTAB_AUTOINC, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
  dm.c_6_genid.Open;
  cod_id := dm.c_6_genidCODIGO.AsInteger;
  dm.c_6_genid.Close;

  var_sqlb := 'INSERT INTO MOVIMENTOCONT (CODCONT, CODORIGEM, TIPOORIGEM ' +
         ', DATA, CODUSUARIO, CODCCUSTO, CODSERVICO, STATUS, CONTA ' +
         ', VALORCREDITO, VALORDEBITO, VALORORCADO, QTDECREDITO ' +
         ', QTDEDEBITO, QTDEORCADO, CODCONCILIACAO) Values (';
  var_sqlb := var_sqlb + intToStr(cod_id);
  var_sqlb := var_sqlb + ',' + intToStr(cod_idOrigem);
  var_sqlb := var_sqlb + ',' + QuotedStr('CONTABIL');
  var_sqlb := var_sqlb + ',' + QuotedStr(formatdatetime('mm/dd/yyyy', cdsExtratoEXTRATODATA.AsDateTime));
  var_sqlb := var_sqlb + ',' + IntToStr(beUsuarioLogado);
  var_sqlb := var_sqlb + ',' + IntToStr(cCusto);
  var_sqlb := var_sqlb + ',' + '0';
  var_sqlb := var_sqlb + ', 0';
  if (cdsExtratoEXTRATOVALOR.AsFloat > 0) then
  begin
    var_sqlb := var_sqlb + ',' + QuotedStr(contaTransf);
  end
  else
    var_sqlb := var_sqlb + ',' + QuotedStr(contaLanc);

  if (cdsExtratoEXTRATOVALOR.AsFloat > 0) then
  begin
    var_sqlb := var_sqlb + ',' + FloatToStr(cdsExtratoEXTRATOVALOR.AsFloat);
  end
  else
    var_sqlb := var_sqlb + ',' + FloatToStr(cdsExtratoEXTRATOVALOR.AsFloat*(-1));

  var_sqlb := var_sqlb + ',' + '0';
  var_sqlb := var_sqlb + ',' + '0';

  var_sqlb := var_sqlb + ',' + '0';
  var_sqlb := var_sqlb + ',' + '0';
  var_sqlb := var_sqlb + ',' + '0';
  var_sqlb := var_sqlb + ',' + QuotedStr(cdsExtratoEXTRATOCOD.AsString);
  var_sqlb := var_sqlb + ')';

  var_sqlbh := 'INSERT INTO HISTORICO_CONTAB(COD_CONTAB, HISTORICO ' +
              ') Values (';
  var_sqlbh := var_sqlbh + intToStr(cod_id);
  var_sqlbh := var_sqlbh + ',' + QuotedStr(copy('OFX ' +
    cdsExtratoEXTRATODOC.AsString + '-' + cdsExtratoEXTRATOCOD.AsString +
    '-' + cdsExtratoNOME.AsString, 0, 200));
  var_sqlbh := var_sqlbh + ')';


  DecimalSeparator := ',';
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(var_sqla);
    dm.sqlsisAdimin.ExecuteDirect(var_sqlb);
    dm.sqlsisAdimin.ExecuteDirect(var_sqlah);
    dm.sqlsisAdimin.ExecuteDirect(var_sqlbh);
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;
end;


function TfBancoExtrato.jaFoiLancado(tipo, id: String): Boolean;
var  sqlB : TSqlQuery;
  strT: String;
begin
  Result := True;
  try
    sqlB :=  TSqlQuery.Create(nil);
    sqlB.SQLConnection := dm.sqlsisAdimin;
    if (tipo = 'RECEITA') then
    begin
      strT := 'SELECT CODRECEBIMENTO   ' +
              '  FROM RECEBIMENTO      ' +
              ' WHERE CODCONCILIACAO = ' + QuotedStr(id) +
              '   AND CAIXA          = ' + IntToStr(contaCaixa);
      sqlB.SQL.Add(strT);
      sqlB.Open;
      if (sqlB.IsEmpty) then
        Result := False;
    end;
    if (tipo = 'DESPESA') then
    begin
      strT := 'SELECT CODPAGAMENTO     ' +
              '  FROM PAGAMENTO        ' +
              ' WHERE CODCONCILIACAO = ' + QuotedStr(id) +
              '   AND CAIXA          = ' + IntToStr(contaCaixa);
      sqlB.SQL.Add(strT);
      sqlB.Open;
      if (sqlB.IsEmpty) then
        Result := False;
    end;
    if (tipo = 'CAIXA') then
    begin
      strT := 'SELECT CODCONT          ' +
              '  FROM MOVIMENTOCONT    ' +
              ' WHERE CODCONCILIACAO = ' + QuotedStr(id) +
              '   AND CONTA          = ' + QuotedStr(contaLanc);
      sqlB.SQL.Add(strT);
      sqlB.Open;
      if (sqlB.IsEmpty) then
        Result := False;
    end;
  finally
    sqlB.Free;
  end;
end;


procedure TfBancoExtrato.LimpaMarcacao;
var vsql: String;
begin
  vsql := 'UPDATE PAGAMENTO SET DP = NULL ';
  vsql := vsql + ' WHERE DP = 0 ';
  vsql := vsql + '   AND USERID = ' + IntToStr(beUsuarioLogado);
  try
    TD.TransactionID := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    dm.sqlsisAdimin.StartTransaction(TD);
    dm.sqlsisAdimin.ExecuteDirect(vsql);
    dm.sqlsisAdimin.Commit(TD);
  except
    on E : Exception do
    begin
      ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
      dm.sqlsisAdimin.Rollback(TD); //on failure, undo the changes}
    end;
  end;
end;

end.
