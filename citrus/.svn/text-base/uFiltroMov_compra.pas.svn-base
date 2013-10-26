unit uFiltroMov_compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Menus, SqlExpr, Provider, DB, DBClient, XPMenu, Grids,
  DBGrids, StdCtrls, Mask, ExtCtrls, Buttons, MMJPanel, JvFormPlacement,
  JvComponentBase, JvAppStorage, JvAppXMLStorage, JvExStdCtrls, JvCombobox,
  JvDBSearchComboBox;

type
  TfFiltroMov_compra = class(TForm)
    MMJPanel2: TMMJPanel;
    btnProcurar: TBitBtn;
    btnSair: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    MMJPanel1: TMMJPanel;
    Label9: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    edControle: TEdit;
    BitBtn1: TBitBtn;
    Edit3: TEdit;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    edtNF: TEdit;
    Edit8: TEdit;
    BitBtn7: TBitBtn;
    rgStatus: TRadioGroup;
    meDta1: TMaskEdit;
    meDta2: TMaskEdit;
    BitBtn10: TBitBtn;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    XPMenu1: TXPMenu;
    ds_Cr: TDataSource;
    PopupMenu1: TPopupMenu;
    Consultar1: TMenuItem;
    VerMovimento1: TMenuItem;
    Fechar1: TMenuItem;
    Confirma1: TMenuItem;
    sds_cns: TSQLDataSet;
    sds_cnsCODFORNECEDOR: TIntegerField;
    sds_cnsNOMEFORNECEDOR: TStringField;
    sds_cnsCODMOVIMENTO: TIntegerField;
    sds_cnsCODNATUREZA: TSmallintField;
    sds_cnsDATAMOVIMENTO: TDateField;
    sds_cnsSTATUS: TSmallintField;
    sds_cnsDESCNATUREZA: TStringField;
    sds_cnsNOTAFISCAL: TIntegerField;
    sds_cnsSERIE: TStringField;
    sds_cnsVALOR: TFloatField;
    sds_cnsCONTROLE: TStringField;
    dsp_cns: TDataSetProvider;
    cds_cns: TClientDataSet;
    cds_cnsCODFORNECEDOR: TIntegerField;
    cds_cnsNOMEFORNECEDOR: TStringField;
    cds_cnsCODMOVIMENTO: TIntegerField;
    cds_cnsCODNATUREZA: TSmallintField;
    cds_cnsDATAMOVIMENTO: TDateField;
    cds_cnsSTATUS: TSmallintField;
    cds_cnsDESCNATUREZA: TStringField;
    cds_cnsNOTAFISCAL: TIntegerField;
    cds_cnsSERIE: TStringField;
    cds_cnsVALOR: TFloatField;
    cds_cnsCONTROLE: TStringField;
    Edit5: TEdit;
    Label6: TLabel;
    cbNomeProdutor: TJvDBSearchComboBox;
    cbNatureza: TJvDBSearchComboBox;
    sds_cnsCODALMOXARIFADO: TIntegerField;
    sds_cnsCODCOMPRA: TIntegerField;
    cds_cnsCODALMOXARIFADO: TIntegerField;
    cds_cnsCODCOMPRA: TIntegerField;
    sds_cnsCODCOMPRADOR: TSmallintField;
    cds_cnsCODCOMPRADOR: TSmallintField;
    sds_cnsDATACOMPRA: TDateField;
    sds_cnsDATAVENCIMENTO: TDateField;
    cds_cnsDATACOMPRA: TDateField;
    cds_cnsDATAVENCIMENTO: TDateField;
    sds_cnsN_BOLETO: TStringField;
    cds_cnsN_BOLETO: TStringField;
    procedure btnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure cbNomeProdutorChange(Sender: TObject);
    procedure cbNaturezaChange(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure cbNomeProdutorKeyPress(Sender: TObject; var Key: Char);
    procedure edControleKeyPress(Sender: TObject; var Key: Char);
    procedure cbNaturezaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
     codigo : string;
    { Public declarations }
  end;

var
  fFiltroMov_compra: TfFiltroMov_compra;

implementation

uses UDm, uProcurar, uDmCitrus;

{$R *.dfm}

procedure TfFiltroMov_compra.btnProcurarClick(Sender: TObject);
 Var
 SqlTexto, DataStr: String;
begin
  if cds_cns.Active then
     cds_cns.Close;
     cds_cns.CommandText:= 'select mov.CODMOVIMENTO, comp.NOTAFISCAL, comp.SERIE, ' +
     ' mov.CODNATUREZA, mov.DATAMOVIMENTO, mov.STATUS, comp.VALOR, ' +
     ' nat.DESCNATUREZA, mov.CODFORNECEDOR, forn.NOMEFORNECEDOR, mov.CONTROLE, ' +
     ' mov.CODALMOXARIFADO, comp.CODCOMPRA, comp.CODCOMPRADOR, ' +
     ' comp.DATACOMPRA, comp.DATAVENCIMENTO, comp.N_BOLETO from ' +
     ' MOVIMENTO mov ' +
     ' inner join NATUREZAOPERACAO nat on nat.CODNATUREZA ' +
     ' = mov.CODNATUREZA left outer join FORNECEDOR forn on forn.CODFORNECEDOR = mov.CODFORNECEDOR ' +
     ' left outer join COMPRA comp on comp.CODMOVIMENTO = mov.CODMOVIMENTO ';
  //==============================================================================
  {$IFDEF LINUX}
  datastr:='  -  -  ';
  {$ENDIF}
  {$IFDEF MSWINDOWS}
  datastr:='  /  /  ';
  {$ENDIF}
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
  sqlTexto := ' where mov.DATAMOVIMENTO between ' +
  '''' + formatdatetime('mm/dd/yyyy', StrToDate(medta1.Text)) + '''' +
  ' and ' +
  '''' + formatdatetime('mm/dd/yyyy', StrToDate(medta2.Text)) + '''';
  end;
  except
  on EConvertError do
  begin
  ShowMessage ('Data Inválida! dd/mm/aa');
  meDta1.SetFocus;
  end;
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Status
  //------------------------------------------------------------------------------
  if sqlTexto='' then
     sqlTexto := sqlTexto + ' where mov.STATUS = '
  else
    sqlTexto := sqlTexto + ' and mov.STATUS = ';
    sqlTexto := sqlTexto + IntToStr(rgStatus.ItemIndex);
  //==============================================================================
  //------------------------------------------------------------------------------
  //Natureza da operação
  //------------------------------------------------------------------------------
  Edit3.Text := '4';
  if Edit3.Text<>'' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.CODNATUREZA = '
    else
      sqlTexto := sqlTexto + ' and mov.CODNATUREZA = ';
      sqlTexto := sqlTexto + '' + Edit3.Text + '';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Centro de Custo
  //------------------------------------------------------------------------------
  if ComboBox1.Text<>'' then
  begin
    dm.cds_ccusto.Locate('CODIGO', Combobox1.Text, [loCaseInsensitive]);
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.CODALMOXARIFADO = '
    else
      sqlTexto := sqlTexto + ' and mov.CODALMOXARIFADO = ';
      sqlTexto := sqlTexto +  IntToStr(dm.cds_ccustoCODIGO.AsInteger);
  end;

  //==============================================================================
  //------------------------------------------------------------------------------
  //Fornecedor
  //------------------------------------------------------------------------------
  if edControle.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.CODFORNECEDOR = '
    else
      sqlTexto := sqlTexto + ' and mov.CODFORNECEDOR = ';
      sqlTexto := sqlTexto + '' + edControle.Text + '';
    end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Nota fiscal
  //------------------------------------------------------------------------------
  if edtNF.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where comp.NOTAFISCAL = '
    else
      sqlTexto := sqlTexto + ' and comp.NOTAFISCAL = ';
  sqlTexto := sqlTexto + '' + edtNF.Text + '';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Serie
  //------------------------------------------------------------------------------
  if Edit8.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where comp.SERIE = '
    else
      sqlTexto := sqlTexto + ' and comp.SERIE = ';
  sqlTexto := sqlTexto + '''' + edit8.Text + '''';
  end;
  //==============================================================================
  //------------------------------------------------------------------------------
  //Ordem Compra
  //------------------------------------------------------------------------------
  if Edit5.Text <> '' then
  begin
    if sqlTexto='' then
      sqlTexto := sqlTexto + ' where mov.CONTROLE = '
    else
      sqlTexto := sqlTexto + ' and mov.CONTROLE = ';
  sqlTexto := sqlTexto + '''' + edit5.Text + '''';
  end;
  //==============================================================================

  sqlTexto := sqlTexto + ' order by mov.DATAMOVIMENTO DESC';
  cds_cns.CommandText := cds_cns.CommandText + sqlTexto;
  cds_cns.Open;
  DBGrid1.SetFocus;

end;

procedure TfFiltroMov_compra.FormShow(Sender: TObject);
begin
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.Locate('PARAMETRO', 'PADRAOFILTROCOMPRA', [loCaseInsensitive])) then
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      if (dm.parametroD1.AsString <> '') then
        meDta1.Text := dm.parametroD1.AsString;
      if (dm.parametroD2.AsString <> '') then
        meDta2.Text := dm.parametroD2.AsString;
    end;
  if (not dmCitrus.cdsProdutor.Active) then
    dmCitrus.cdsProdutor.Open;
  cbNomeProdutor.Text := '';

  if (not dm.cdsNatureza.active) then
    dm.cdsNatureza.Open;
  cbNatureza.Text := '';
end;

procedure TfFiltroMov_compra.FormCreate(Sender: TObject);
var conta_local:string;
begin
  if (dm.usuario.Active) then
     dm.usuario.Close;
  dm.usuario.Params[0].AsString := usuario;
  dm.usuario.Open;
  if (not dm.usuario.IsEmpty) then
  begin
       videoW := dm.UsuarioP1.AsString;
       videoH := dm.UsuarioP2.AsString;
  end;
  if videoW = '800' then
    Position := poDesigned;
  if videoW <> '' then
  begin
   ScreenWidth := StrToInt(videoW);
   ScreenHeight := StrToInt(videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;
  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if (dm.cds_ccusto.Active) then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := conta_local;
  dm.cds_ccusto.Open;
  // populo a combobox
  dm.cds_ccusto.First;
  while not dm.cds_ccusto.Eof do
  begin
    ComboBox1.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;

  if (not dm.cdsNatureza.Active) then
    dm.cdsNatureza.Open;

end;


procedure TfFiltroMov_compra.BitBtn1Click(Sender: TObject);
begin
  edControle.Text:='';

end;

procedure TfFiltroMov_compra.BitBtn4Click(Sender: TObject);
begin
  Edit3.Text:='';

end;

procedure TfFiltroMov_compra.BitBtn6Click(Sender: TObject);
begin
  ComboBox1.Text:='';
end;

procedure TfFiltroMov_compra.BitBtn7Click(Sender: TObject);
begin
  edtNF.Text:='';
  Edit8.Text:='';
end;

procedure TfFiltroMov_compra.BitBtn10Click(Sender: TObject);
begin
  meDta1.Text:='';
  meDta2.Text:='';
end;

procedure TfFiltroMov_compra.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfFiltroMov_compra.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfFiltroMov_compra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (not dm.parametro.Active) then
    dm.parametro.Open;
  if (dm.parametro.Locate('PARAMETRO', 'PADRAOFILTROCOMPRA', [loCaseInsensitive])) then
    if (dm.parametroCONFIGURADO.AsString = 'S') then
    begin
      dm.parametro.Edit;
      dm.parametroD1.AsString := meDta1.Text;
      dm.parametroD2.AsString := meDta2.Text;
      try
        dm.parametro.ApplyUpdates(0);
      except
        MessageDlg('Erro na gravação dos parâmetros.', mtError, [mbOK], 0);
      end;
    end;
    fFiltroMov_compra.codigo := '';
end;

procedure TfFiltroMov_compra.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   //key:= #0;
   //SelectNext((Sender as TwinControl),True,True);
   btnProcurar.Click;
 end;
end;

procedure TfFiltroMov_compra.cbNomeProdutorChange(Sender: TObject);
begin
  edControle.Text := IntToStr(dmCitrus.cdsProdutorCODFORNECEDOR.AsInteger);
end;

procedure TfFiltroMov_compra.cbNaturezaChange(Sender: TObject);
begin
  Edit3.Text := IntToStr(dm.cdsNaturezaCODNATUREZA.AsInteger);
end;

procedure TfFiltroMov_compra.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   if (Edit3.Text <> '') then
   begin
     if (dm.cdsNatureza.Active) then
     begin
       dm.cdsNatureza.Locate('CODNATUREZA', Edit3.Text, [loPartialKey]);
       btnProcurar.Click;
     end
     else
       MessageDlg('Tabela Natureza da operação fechada.', mtError, [mbOK], 0);
   end
   else begin
     key:= #0;
     SelectNext((Sender as TwinControl),True,True);
   end;
 end;

end;

procedure TfFiltroMov_compra.cbNomeProdutorKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   //key:= #0;
   //SelectNext((Sender as TwinControl),True,True);
   btnProcurar.Click;
 end;

end;

procedure TfFiltroMov_compra.edControleKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   if (edControle.Text <> '') then
   begin
     if (dmCitrus.cdsProdutor.Active) then
     begin
       dmCitrus.cdsProdutor.Locate('CODFORNECEDOR', edControle.Text,[loPartialKey]);
       btnProcurar.Click;
     end
     else
       MessageDlg('Tabela Forncedor fechada.', mtError, [mbOK], 0);
   end
   else begin
     key:= #0;
     SelectNext((Sender as TwinControl),True,True);
   end;
 end;
end;

procedure TfFiltroMov_compra.cbNaturezaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if (key = #13) then
 begin
   //key:= #0;
   //SelectNext((Sender as TwinControl),True,True);
   btnProcurar.Click;
 end;

end;

end.
