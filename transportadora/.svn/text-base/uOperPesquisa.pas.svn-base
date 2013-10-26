unit uOperPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvExDBGrids, JvDBGrid, StdCtrls, Mask, Buttons,
  ExtCtrls, MMJPanel, FMTBcd, DB, DBClient, Provider, SqlExpr, ImgList, DBXpress,
  Menus, rpcompobase, rpvclreport;

type
  TfOperPesquisa = class(TForm)
    MMJPanel2: TMMJPanel;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    MMJPanel1: TMMJPanel;
    meDta1: TMaskEdit;
    Label8: TLabel;
    meDta2: TMaskEdit;
    BitBtn7: TBitBtn;
    Label2: TLabel;
    edCliente: TEdit;
    Label10: TLabel;
    BitBtn8: TBitBtn;
    cbStatus: TComboBox;
    Label3: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    sPalm: TSQLDataSet;
    pPalm: TDataSetProvider;
    cPalm: TClientDataSet;
    dPalm: TDataSource;
    BitBtn3: TBitBtn;
    ImageList1: TImageList;
    sPalmCOD_PALM: TIntegerField;
    sPalmCLIENTE: TStringField;
    sPalmLOCAL: TStringField;
    sPalmVEICULO: TStringField;
    sPalmPLACA: TStringField;
    sPalmTRANSPORTE: TStringField;
    sPalmTIPO: TStringField;
    sPalmOPERACAO: TStringField;
    sPalmMODO: TStringField;
    sPalmSETOR: TStringField;
    sPalmSTATUS: TStringField;
    sPalmSERVICO: TStringField;
    sPalmOBSERVACAO: TStringField;
    sPalmDATAOPERACAO: TStringField;
    sPalmDATATERMINO: TStringField;
    sPalmFATURADO: TStringField;
    sPalmRESPONSAVEL: TStringField;
    sPalmRG: TStringField;
    sPalmHORAINICIAL: TStringField;
    sPalmHORAFINAL: TStringField;
    sPalmPESO: TStringField;
    sPalmMARCOU: TStringField;
    cPalmCOD_PALM: TIntegerField;
    cPalmCLIENTE: TStringField;
    cPalmLOCAL: TStringField;
    cPalmVEICULO: TStringField;
    cPalmPLACA: TStringField;
    cPalmTRANSPORTE: TStringField;
    cPalmTIPO: TStringField;
    cPalmOPERACAO: TStringField;
    cPalmMODO: TStringField;
    cPalmSETOR: TStringField;
    cPalmSTATUS: TStringField;
    cPalmSERVICO: TStringField;
    cPalmOBSERVACAO: TStringField;
    cPalmDATAOPERACAO: TStringField;
    cPalmDATATERMINO: TStringField;
    cPalmFATURADO: TStringField;
    cPalmRESPONSAVEL: TStringField;
    cPalmRG: TStringField;
    cPalmHORAINICIAL: TStringField;
    cPalmHORAFINAL: TStringField;
    cPalmPESO: TStringField;
    cPalmMARCOU: TStringField;
    sTipoOper: TSQLDataSet;
    sTipoOperCODDADOS: TIntegerField;
    sTipoOperDESCRICAO: TStringField;
    sFaixa: TSQLDataSet;
    sCodFaixa: TSQLDataSet;
    sFaixaCODFAIXA: TIntegerField;
    sCodFaixaVALOR_PLANO: TFloatField;
    sCodFaixaDESCONTO: TFloatField;
    sCodFaixaVALORPARCELA: TFloatField;
    sCliente: TSQLDataSet;
    sClienteGRUPO_CLIENTE: TStringField;
    sClienteMENSALIDADE: TFloatField;
    sClienteRA: TStringField;
    sClienteCODCLIENTE: TIntegerField;
    sClientePRAZORECEBIMENTO: TSmallintField;
    DBGrid1: TDBGrid;
    Label21: TLabel;
    Label22: TLabel;
    PopupMenu1: TPopupMenu;
    marcarTodos: TMenuItem;
    desmarcar: TMenuItem;
    VCLReport1: TVCLReport;
    sPalmGEROUARQUIVO: TStringField;
    sPalmNOMEARQUIVO: TStringField;
    sPalmCODFAIXA: TIntegerField;
    sPalmVALOROPERACAO: TFloatField;
    sPalmGEROUFINANCEIRO: TStringField;
    cPalmGEROUARQUIVO: TStringField;
    cPalmNOMEARQUIVO: TStringField;
    cPalmCODFAIXA: TIntegerField;
    cPalmVALOROPERACAO: TFloatField;
    cPalmGEROUFINANCEIRO: TStringField;
    sCodFaixaCODFAIXA: TIntegerField;
    DBGrid2: TDBGrid;
    procedure BitBtn7Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
    procedure JvDBGrid1ColEnter(Sender: TObject);
    procedure JvDBGrid1ColExit(Sender: TObject);
    procedure JvDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure marcarTodosClick(Sender: TObject);
    procedure desmarcarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure ChkDBGridColEnter(DBGrid: TDBGrid);
    procedure ChkDBGridColExit(DBGrid: TDBGrid);
    procedure ChkDBGridCellClick(Column: TColumn);
    procedure ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
    procedure buscaFaixa;
    procedure gerafinanceiro;
  public
    { Public declarations }
  end;

var
  fOperPesquisa: TfOperPesquisa;
  vSql, vCondicao, datastr: String;  

implementation

uses UDm, uListaClientes, uDmTransp, Math, uOperacaoAltera;

{$R *.dfm}

procedure TfOperPesquisa.BitBtn7Click(Sender: TObject);
begin
 meDta1.Text := '  /  /  ';
 meDta2.Text := '  /  /  ';
end;

procedure TfOperPesquisa.btnSairClick(Sender: TObject);
begin
   Close;
end;

procedure TfOperPesquisa.btnProcurarClick(Sender: TObject);
begin
     buscaFaixa;
     vSql := '';
     vCondicao := '';

     vSql:='Select * from PALM ';
    //==============================================================================
    datastr:='  /  /  ';
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
          vCondicao := ' WHERE DATAOPERACAO BETWEEN ' +
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

     if edCliente.Text <> '' then
       if vCondicao <> '' then
         vCondicao := vCondicao + ' and UDF_COLLATEBR(CLIENTE) containing ' + '''' + edCliente.Text +  ''''
       else
         vCondicao := 'where UDF_COLLATEBR(CLIENTE) containing ' + '''' + edCliente.Text + '''';

     if cbStatus.Text <> '' then
       if vCondicao <> '' then
         vCondicao := vCondicao + ' and STATUS = ' + '''' + cbStatus.Text + ''' '
       else
         vCondicao := 'where STATUS = ' + '''' + cbStatus.Text + ''' ';

      vCondicao := vSql + vCondicao + ' order by DATAOPERACAO';

      if cPalm.Active then
         cPalm.Close;
      cPalm.CommandText := '';
      cPalm.CommandText := vCondicao;
      cPalm.Open;
end;

procedure TfOperPesquisa.ChkDBGridCellClick(Column: TColumn);
  var
    Field: TField;
begin
    Field := Column.Field;
    if (Field <> nil) and (Field.Name = 'cPalmMARCOU')and Field.CanModify and not Column.ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
        if (cPalmMARCOU.AsString <> 'S') then
        begin
          cPalmMARCOU.AsString := 'S';
          cPalm.Post;
        end
        else
        begin
          cPalmMARCOU.AsString := '';
        end;
      end;
end;

procedure TfOperPesquisa.ChkDBGridColEnter(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cPalmMARCOU') then
    DBGrid.Options := DBGrid.Options - [dgEditing];
end;

procedure TfOperPesquisa.ChkDBGridColExit(DBGrid: TDBGrid);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cPalmMARCOU') then
    DBGrid.Options := DBGrid.Options + [dgEditing];
end;

procedure TfOperPesquisa.ChkDBGridKeyPress(DBGrid: TDBGrid; var Key: Char);
var
  Field: TField;
begin
  Field := DBGrid.SelectedField;
  if (Field <> nil) and (Field.Name = 'cPalmMARCOU') then
    if (Key = ' ') and Field.CanModify and
        not DBGrid.Columns[DBGrid.SelectedIndex].ReadOnly then
      with Field.Dataset do begin
        if State = dsBrowse then
          Edit;
      //Field.AsBoolean := not Field.AsBoolean;
      if (cPalmMARCOU.AsString = '') then
      begin
        cPalmMARCOU.AsString := 'S';
        cPalm.Post;
      end
      else begin
        cPalmMARCOU.AsString := '';
      end;
      end;
end;

procedure TfOperPesquisa.JvDBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfOperPesquisa.JvDBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfOperPesquisa.JvDBGrid1ColExit(Sender: TObject);
begin
 ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfOperPesquisa.JvDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

{  if Column.Field = scdsCr_procSTATUSP then
   if ((scdsCr_procSTATUS.AsString = '5-')) then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = scdsCr_procSTATUSP then
   if (scdsCr_procSTATUS.AsString = '7-') then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;

  if Column.Field = scdsCr_procSTATUSP then
   if (scdsCr_procSTATUS.AsString = '8-') then
   begin
     DBGrid1.Canvas.Font.Color := clYellow;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
        }
  ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);
end;

procedure TfOperPesquisa.JvDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfOperPesquisa.JvDBGrid1TitleClick(Column: TColumn);
begin
    cPalm.IndexFieldNames := Column.FieldName;
end;

procedure TfOperPesquisa.ChkDBGridDrawColumnCell(DBGrid: TDBGrid;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  X, Y, Index: integer;
  Field: TField;
begin
  Field := Column.Field;
  if (Field <> nil) and (Field.Name = 'cPalmMARCOU') then
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
    if cPalmMARCOU.AsString <> 'S' then Index := 1 else Index := 0;
    // Draw the graphic
    ImageList1.Draw(DBGrid.Canvas, X, Y, Index);
  end else // Default drawing
    DBGrid.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TfOperPesquisa.BitBtn8Click(Sender: TObject);
begin
    varform := 'Logistica';
     fListaClientes:=TfListaClientes.Create(Application);
     fListaClientes.BitBtn8.Enabled := False;
     fListaClientes.ShowModal;
     try
       edCliente.Text := fListaClientes.nomecli;

     finally
        fListaClientes.Free;
     end;
end;

procedure TfOperPesquisa.BitBtn3Click(Sender: TObject);
var
  vCodigo : integer;
  vCodigoStr : String;
begin
  if (cPalm.State in [dsBrowse]) then
  begin
    cPalm.First;
    while not cPalm.Eof do
    begin
      if ((cPalmMARCOU.AsString = 'S') and (cPalmSTATUS.AsString = 'Finalizado')) then
         gerafinanceiro;
      cPalm.Next;
    end;
  end;
  btnProcurar.Click;
end;

procedure TfOperPesquisa.buscaFaixa;
var
  vCodigo : integer;
  vCodigoStr, peso : String;
  valorPesocli, preco, precocobrar : double;
begin
  if (not cPalm.Active) then
      cPalm.Open;
  cPalm.First;
  while not cPalm.Eof do
  begin
    if (cPalmGEROUFINANCEIRO.AsString <> 'S') then
    begin
      if (cPalmSTATUS.AsString = 'Finalizado') then
      begin
         // Pego o Codidogo da Operação
         if (sTipoOper.Active) then
            sTipoOper.Close;
         sTipoOper.Params[0].Clear;
         sTipoOper.Params[0].AsString := 'OPERAÇÃO';
         sTipoOper.Open;
         sTipoOper.Locate('DESCRICAO', cPalmOPERACAO.AsString,[loCaseInsensitive]);
         vCodigoStr := IntToStr(sTipoOperCODDADOS.AsInteger);
         sTipoOper.Close;
         //Tipo Serviço
         if (sTipoOper.Active) then
            sTipoOper.Close;
         sTipoOper.Params[0].Clear;
         sTipoOper.Params[0].AsString := 'TIPO DE SERVIÇO';
         sTipoOper.Open;
         sTipoOper.Locate('DESCRICAO', cPalmSERVICO.AsString,[loCaseInsensitive]);
         vCodigoStr := vCodigoStr + IntToStr(sTipoOperCODDADOS.AsInteger);
         sTipoOper.Close;
         //Modo
         if (sTipoOper.Active) then
            sTipoOper.Close;
         sTipoOper.Params[0].Clear;
         sTipoOper.Params[0].AsString := 'MODO';
         sTipoOper.Open;
         sTipoOper.Locate('DESCRICAO', cPalmMODO.AsString,[loCaseInsensitive]);
         vCodigoStr := vCodigoStr + IntToStr(sTipoOperCODDADOS.AsInteger);
         sTipoOper.Close;
         //Combo Setor
         if (sTipoOper.Active) then
            sTipoOper.Close;
         sTipoOper.Params[0].Clear;
         sTipoOper.Params[0].AsString := 'SETOR';
         sTipoOper.Open;
         sTipoOper.Locate('DESCRICAO', cPalmSETOR.AsString,[loCaseInsensitive]);
         vCodigoStr := vCodigoStr + IntToStr(sTipoOperCODDADOS.AsInteger);
         sTipoOper.Close;
         vCodigo := StrToInt(vCodigoStr);
         if (sFaixa.Active) then
             sFaixa.Close;
         sFaixa.Params[0].AsInteger := vCodigo;
         sFaixa.Open;
         {if (sFaixa.IsEmpty) then
           MessageDlg('Faixa não encontrada', mtWarning, [mbOK], 0)
         else }
          if (sCodFaixa.Active) then
             sCodFaixa.Close;
          sCodFaixa.Params[0].AsInteger := sFaixaCODFAIXA.AsInteger;
          sCodFaixa.Open;
          if (sCodFaixa.IsEmpty) then
          begin
            MessageDlg('Faixa Não Existe..', mtWarning, [mbOK], 0);
          end
          else
          begin
            cPalm.Edit;
            cPalmCODFAIXA.AsInteger := sCodFaixaCODFAIXA.AsInteger;
            preco := sCodFaixaDESCONTO.Value; // preço tabela 2
            //precoapos18hs := sCodFaixaVALORPARCELA.Value;
            peso := cPalmPESO.AsString; // pego o peso que lançou do palm
            sCodFaixa.Close;
            // Busco do Cliente os dados referentes a Faixa
            if (sCliente.Active) then
               sCliente.Close;
            sCliente.Params[0].AsString := cPalmCLIENTE.AsString;
            sCliente.Open;
            if (sCliente.IsEmpty) then
            begin
               // Cadastrar Cliente
            end
            else
            begin
               valorPesocli := sClienteMENSALIDADE.Value;  // valor se tiver Peso
               //apos18hs := sClienteRA.AsString; // cobrar apos as 18 hs
               sCliente.Close;
               if (peso <> '') then
                   cPalmVALOROPERACAO.Value := valorPesocli // se tem peso cobro o preço do cliente
               else
                   cPalmVALOROPERACAO.Value := preco; // se nao tem peso cobro o preço da tabela 2
            end;
            cPalmGEROUFINANCEIRO.AsString := 'S';
            cPalm.Post;
          end;
      end;
    end;
    cPalm.Next;
  end;
  cPalm.ApplyUpdates(0);
  cPalm.Close;
  //************************************************************************
 { if (sCodFaixa.Active) then
     sCodFaixa.Close;
  sCodFaixa.Params[0].AsInteger := sFaixaCODFAIXA.AsInteger;
  sCodFaixa.Open;
  if (sCodFaixa.IsEmpty) then
    MessageDlg('Faixa Não Existe..', mtWarning, [mbOK], 0)
  else
    gerafinanceiro;}
end;

procedure TfOperPesquisa.gerafinanceiro;
var
   str_sql : string;
   idCliente : integer;
   TD: TTransactionDesc;
   dtafinal : Ttime;
   dtaOperacao : TDateTime;
begin
  // Busco do Cliente os dados referentes a Faixa
  if (sCliente.Active) then
     sCliente.Close;
  sCliente.Params[0].AsString := cPalmCLIENTE.AsString;
  sCliente.Open;

  if (sCliente.IsEmpty) then
     MessageDlg('Cliente não Cadastrado.', mtWarning, [mbOK], 0) // Cadastrar Cliente
  else
     idCliente := sClienteCODCLIENTE.AsInteger;
  sCliente.Close;
  // agora gerar o Contas a Receber
   TD.TransactionID := 1;
   TD.IsolationLevel := xilREADCOMMITTED;
   str_sql := 'INSERT INTO RECEBIMENTO(CODRECEBIMENTO, TITULO, EMISSAO, ' +
              'CODCLIENTE, DATAVENCIMENTO, STATUS , VIA, FORMARECEBIMENTO, ' +
              'CODVENDA , CODVENDEDOR, CODUSUARIO, DATASISTEMA, ' +
              'VALOR_PRIM_VIA, VALOR_RESTO, VALORTITULO, VALORRECEBIDO, PARCELAS, ' +
              'DESCONTO, JUROS, FUNRURAL, PERDA, TROCA, OUTRO_CREDITO)';
   str_sql := str_sql + 'VALUES(';
   str_sql := str_sql + 'gen_id(COD_AREC,1), ';//CodRecebimento
   str_sql := str_sql + IntToStr(cPalmCOD_PALM.AsInteger) + ', '; //Titulo
   str_sql := str_sql + cPalmDATAOPERACAO.AsString + ', '; // Emissao
   str_sql := str_sql + IntToStr(idCliente) + ', '; // CodCliente
   str_sql := str_sql + cPalmDATAOPERACAO.AsString + ', '; //Vencimento
   str_sql := str_sql + QuotedStr('5-') + ', '; //Status
   str_sql := str_sql + IntToStr(1) + ', '; //via
   str_sql := str_sql + IntToStr(1) + ', '; //Formarecebimento
   str_sql := str_sql + IntToStr(0) + ', ';// codvenda
   str_sql := str_sql + IntToStr(1) + ', ';// codvendedor
   str_sql := str_sql + IntToStr(1) + ', ';// codusuario
   str_sql := str_sql + QuotedStr(FormatDateTime('mm/dd/yyyy', Now)) + ', ';  //DataSistema
   // A cobrança apos as 18 horas o gerson falou pra deixar quieto por enquanto
   {if (apos18hs = 'Sim') then
   begin
     dtafinal := StrToTime(cPalmDATATERMINO.AsString);
     DecimalSeparator := ',';
     if (dtafinal > StrToTime('18:00')) then
       if (precoapos18hs > 0) then
          precocobrar := precoapos18hs;
   end;}
   DecimalSeparator := '.';
   str_sql := str_sql + FloatToStr(cPalmVALOROPERACAO.Value) + ', '; // Primeira Via
   str_sql := str_sql + FloatToStr(cPalmVALOROPERACAO.Value) + ', '; // Valor Resto
   str_sql := str_sql + FloatToStr(cPalmVALOROPERACAO.Value) + ', '; // Valor Titulo
   str_sql := str_sql + IntToStr(0) + ', '; // Valor Recebido
   str_sql := str_sql + IntToStr(1) + ', '; // Parcela
   str_sql := str_sql + IntToStr(0) + ', ';
   str_sql := str_sql + IntToStr(0) + ', ';
   str_sql := str_sql + IntToStr(0) + ', ';
   str_sql := str_sql + IntToStr(0) + ', ';
   str_sql := str_sql + IntToStr(0) + ', ';
   str_sql := str_sql + IntToStr(0) + ')';
   dm.sqlsisAdimin.StartTransaction(TD);
     try
       dm.sqlsisAdimin.ExecuteDirect(str_sql);
       dm.sqlsisAdimin.Commit(TD);
     except
       dm.sqlsisAdimin.Rollback(TD);
       MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
       exit;
     end;
     cPalm.Edit;
     cPalmSTATUS.AsString := 'Faturado';
     if (cPalmMARCOU.AsString = 'S') then
         cPalmMARCOU.AsString := '';
     cPalm.ApplyUpdates(0);
end;

procedure TfOperPesquisa.DBGrid1CellClick(Column: TColumn);
begin
  ChkDBGridCellClick(Column);
end;

procedure TfOperPesquisa.DBGrid1ColEnter(Sender: TObject);
begin
  ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfOperPesquisa.DBGrid1ColExit(Sender: TObject);
begin
 ChkDBGridColEnter(Sender as TDBGrid);
end;

procedure TfOperPesquisa.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   if not odd(cPalm.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;

  ChkDBGridDrawColumnCell(Sender as TDBGrid, Rect,
    DataCol, Column, State);
end;

procedure TfOperPesquisa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
     ChkDBGridKeyPress(Sender as TDBGrid, Key);
end;

procedure TfOperPesquisa.DBGrid1TitleClick(Column: TColumn);
begin
     cPalm.IndexFieldNames := Column.FieldName;
end;

procedure TfOperPesquisa.marcarTodosClick(Sender: TObject);
begin
  if (cPalm.Active) then
  begin
      cPalm.First;
      cPalm.DisableControls;
      while not cPalm.Eof do
      begin
        if cPalm.State = dsBrowse then
           cPalm.Edit;
        cPalmMARCOU.AsString := 'S';
        cPalm.Post;
        cPalm.Next;
      end;
      cPalm.First;
      cPalm.EnableControls;
  end;

end;

procedure TfOperPesquisa.desmarcarClick(Sender: TObject);
begin
  if (cPalm.Active) then
  begin
      cPalm.First;
      cPalm.DisableControls;
      while not cPalm.Eof do
      begin
        if cPalm.State = dsBrowse then
           cPalm.Edit;
        cPalmMARCOU.AsString := '';
        cPalm.Post;
        cPalm.Next;
      end;
      cPalm.First;
      cPalm.EnableControls;
  end;

end;

procedure TfOperPesquisa.BitBtn2Click(Sender: TObject);
begin
  dmTransp.vRelatorio := '';
  if not cPalm.Active then
  begin
   MessageDlg('Pôr favor efetue a pesquisa antes, para depois imprimir..', mtWarning, [mbOK], 0);
   exit;
  end;
  dmTransp.vRelatorio := vCondicao;
  VCLReport1.FileName := str_relatorio + 'relPalm.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport1.Report.DataInfo.Items[0].SQL:= vCondicao;
  VCLReport1.Execute;
end;

procedure TfOperPesquisa.DBGrid1DblClick(Sender: TObject);
begin
  fOperacaoAltera := TfOperacaoAltera.Create(Application);
  try
    dmTransp.vCodPalm := cPalmCOD_PALM.AsInteger;
    fOperacaoAltera.ShowModal;
  finally
    fOperacaoAltera.Free;
  end;  
end;

end.
