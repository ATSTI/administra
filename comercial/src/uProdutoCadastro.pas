unit uProdutoCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, dxCore, dxButton, EDBFind, Mask, FMTBcd, SqlExpr, JvExStdCtrls,
  JvCombobox, JvDBSearchComboBox, JvExMask, JvSpin, JvDBSpinEdit, ComCtrls,
  JvExComCtrls, JvComCtrls, JvCheckBox, ACBrBase, ACBrValidador;

type
  TfProdutoCadastro = class(TfPai)
    DBText2: TDBText;
    Label3: TLabel;
    DBEdit1: TDBEdit;
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
    Label10: TLabel;
    Label11: TLabel;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    GroupBox2: TGroupBox;
    DBEdit11: TDBEdit;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit13: TDBEdit;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    Label19: TLabel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dst_familia: TDataSource;
    dstMarca: TDataSource;
    dstCategoria: TDataSource;
    DBEdit19: TDBEdit;
    Label27: TLabel;
    sds_ClaFiscal: TSQLDataSet;
    DtSrc_cm: TDataSource;
    dxButton3: TdxButton;
    Button1: TButton;
    dxButton4: TdxButton;
    SpeedButton1: TBitBtn;
    SpeedButton2: TBitBtn;
    SpeedButton3: TBitBtn;
    cbTipo: TComboBox;
    Label28: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBEdit20: TDBEdit;
    Label29: TLabel;
    DBEdit14: TDBEdit;
    dbMarca: TDBEdit;
    DBEdit16: TDBEdit;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Label32: TLabel;
    Label21: TLabel;
    DBEdit22: TDBEdit;
    DBEdit15: TDBEdit;
    TabSheet2: TTabSheet;
    DBRadioGroup4: TDBRadioGroup;
    DBRadioGroup5: TDBRadioGroup;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup3: TDBRadioGroup;
    Label31: TLabel;
    TabSheet3: TTabSheet;
    DBRadioGroup1: TDBRadioGroup;
    Label30: TLabel;
    Panel2: TPanel;
    Chk_rateio: TCheckBox;
    btnRateio: TBitBtn;
    DBRadioGroup2: TDBRadioGroup;
    Label20: TLabel;
    DBEdit21: TDBEdit;
    DBEdit18: TDBEdit;
    Label26: TLabel;
    DBEdit23: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    GroupBox4: TGroupBox;
    cbAplicacao: TJvComboBox;
    cbLocal: TJvComboBox;
    SpeedButton5: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox5: TGroupBox;
    Chk_lote: TCheckBox;
    DBEdit24: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit25: TDBEdit;
    Memo1: TMemo;
    GroupBox6: TGroupBox;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    Label33: TLabel;
    DBEdit28: TDBEdit;
    rgEmUso: TJvCheckBox;
    DBEdit29: TDBEdit;
    Label34: TLabel;
    BitBtn4: TBitBtn;
    ACBrValidador1: TACBrValidador;
    procedure FormCreate(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure btnRateioClick(Sender: TObject);
    procedure Chk_loteClick(Sender: TObject);
    procedure Chk_rateioClick(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit17Exit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
    procedure cbMarcaChange(Sender: TObject);
    procedure rgEmUsoClick(Sender: TObject);
    procedure cbTipoChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBRadioGroup2Change(Sender: TObject);
    procedure cbLocalChange(Sender: TObject);
    procedure cbAplicacaoChange(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure GroupBox6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
  private
    formatacaoPreco: integer;
    procedure calculaPrecoVenda;
    { Private declarations }
  public
    { Public declarations }
    function Arredondar(valor: Double): integer;
  end;

var
  fProdutoCadastro: TfProdutoCadastro;
  familia : string;
  codprod1:integer;

implementation

uses uComercial, UDm, ufprocura_prod, uMarcas_Grupos, uFamilia, uCategoria,
  uContaRateio, uClassificacaoFiscal, uCodigoTerceiros, uUsoCadastro,
  ufListaProd, uProduto_Mat_prima, sCtrlResize, Math, uFiltro_forn_plano;

{$R *.dfm}

procedure TfProdutoCadastro.FormCreate(Sender: TObject);
var contaEstoque: String;
begin
 // inherited;

//*****************************************************
// abre as tabelas Marca, familia e comissão

  if (not DM.cds_Marca.Active) then
    DM.cds_Marca.Open;


  if (not DM.cds_familia.Active) then
    DM.cds_familia.Open;

  if dm.cds_cm.Active then
    dm.cds_cm.Close;
  dm.cds_cm.Params[0].Clear;
  dm.cds_cm.Params[1].AsInteger := 9999999;
  dm.cds_cm.Open;

  if (DBRadioGroup2.ItemIndex = 1) then
  begin
    DBEdit19.Enabled := False;
    DBEdit19.Color := clMenuBar;
  end;


  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  contaEstoque := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if (dm.cds_ccusto.Active) then
    dm.cds_ccusto.Close;
  dm.cds_ccusto.Params[0].AsString := contaEstoque;
  dm.cds_ccusto.Open;
  // populo a combobox
  dm.cds_ccusto.First;
  while not dm.cds_ccusto.Eof do
  begin
    cbLocal.Items.Add(dm.cds_ccustoNOME.AsString);
    dm.cds_ccusto.Next;
  end;

  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'FORMATACAO';
  dm.cds_parametro.Open;
  formatacaoPreco := 0;
  if (not dm.cds_parametro.IsEmpty) then
  begin
    if (dm.cds_parametroD2.AsString <> '') then
      formatacaoPreco := StrToInt(dm.cds_parametroD2.AsString);
  end;
end;

procedure TfProdutoCadastro.btnProcurarClick(Sender: TObject);
begin
  bitBtn1.Enabled := True;
  bitBtn2.Enabled := True;
  varonde := 'cad_produto';
  inherited;
    fProcura_prod.btnIncluir.Visible := False;
    fProcura_prod.Panel2.Visible := False;
    fProcura_prod.Panel1.Visible := True;
    fProcura_prod.ShowModal;
    if (codprodxa > 0) then
    begin
      try
        if (dm.cds_produto.Active) then
          dm.cds_produto.close;
        dm.cds_produto.Params[0].AsInteger := codprodxa;
        dm.cds_produto.Open;
        dbMarca.Text := dm.cds_produtoMARCA.AsString;
        //dm.cds_produto.Edit;
        if (dm.cds_produtoLOTES.AsString = 'S') then
          Chk_lote.Checked := True
        else
          Chk_lote.Checked := False;

       if (dm.cds_produtoUSA.AsString = 'N') then
         rgEmUso.Checked := False
       else
         rgEmUso.Checked := True;

        if (dm.cds_produtoTIPO.AsString = 'SERV') then
          cbTipo.ItemIndex := 3
        else if (dm.cds_produtoTIPO.AsString = 'COMPRA') then
          cbTipo.ItemIndex := 1
        else if (dm.cds_produtoTIPO.AsString = 'VENDA') then
          cbTipo.ItemIndex := 2
        else if (dm.cds_produtoTIPO.AsString = 'LOCA') then
          cbTipo.ItemIndex := 4
        else
          cbTipo.ItemIndex := 0;

        //dm.cds_produto.Post;
      except
        MessageDlg('Erro na consulta ...', mtWarning, [mbOK], 0);
      end;
    end;
    fProcura_prod.btnIncluir.Visible := True;
    if not dm.cds_produto.IsEmpty then
    begin
      if Dm.cds_produtoRATEIO.AsString = 'S' then
      begin
        Chk_rateio.Checked := True;
        btnRateio.Enabled := True;
      end
      else
        btnRateio.Enabled := False;

      if Dm.cds_produtoLOTES.AsString = 'S' then
        Chk_lote.Checked := True
    end;
    varonde := '';

    cbAplicacao.ItemIndex := -1;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '00 - MERCADORIA PARA REVENDA') then
      cbAplicacao.ItemIndex := 0;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '01 - MATÉRIA-PRIMA') then
      cbAplicacao.ItemIndex := 1;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '02 - EMBALAGEM') then
      cbAplicacao.ItemIndex := 2;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '03 - PRODUTO EM PROCESSO') then
      cbAplicacao.ItemIndex := 3;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '04 - PRODUTO ACABADO') then
      cbAplicacao.ItemIndex := 4;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '05 - SUBPRODUTO') then
      cbAplicacao.ItemIndex := 5;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '06 - PRODUTO INTERMEDIÁRIO') then
      cbAplicacao.ItemIndex := 6;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '07 - MATERIAL DE USO E CONSUMO') then
      cbAplicacao.ItemIndex := 7;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '08 - ATIVO IMOBILIZADO') then
      cbAplicacao.ItemIndex := 8;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '09 - SERVIÇOS') then
      cbAplicacao.ItemIndex := 9;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '10 - OUTROS INSUMOS') then
      cbAplicacao.ItemIndex := 10;
    if (dm.cds_produtoCLASSIFIC_FISCAL.AsString = '99 - OUTRAS') then
      cbAplicacao.ItemIndex := 11;

  cbLocal.ItemIndex := -1;
  if (dm.cds_ccusto.Locate('CODIGO', dm.cds_produtoCODALMOXARIFADO.AsInteger, [loCaseInsensitive])) then
     cbLocal.ItemIndex := dm.cds_ccusto.RecNo-1;


   { if DM.cds_familia.Active then
      DM.cds_familia.Close;
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
      'where MARCA = ' + QuotedStr(cbMarca.Text);
    DM.cds_familia.Open;
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;            }
    DecimalSeparator := ',';
end;

procedure TfProdutoCadastro.btnIncluirClick(Sender: TObject);
begin
  inherited;
  dm.cds_produtoTIPO.AsString := 'PROD';
  // Deixo o campo USA = NULL quando o produto é utilizado e N qdo não 
  rgEmUso.Checked := True;
  Button1.SetFocus;
  dbEdit1.SetFocus;
  dbMarca.Text := '';
  if (DM.cds_Marca.Active) then
    DM.cds_Marca.Close;
  DM.cds_Marca.Open;
//  DBOrigem.ItemIndex := 0;
  dm.cds_produtoNCM.AsString := '00000000';
  dm.cds_produtoUNIDADEMEDIDA.AsString := 'UN';
  dm.cds_produtoORIGEM.AsInteger := 0;
end;

procedure TfProdutoCadastro.btnGravarClick(Sender: TObject);
begin
  if (dbEdit1.Text <> '') then
    if (ACBrValidadorValidarGTIN(dbEdit1.Text) <> '') then
      MessageDlg('Código de Barras inválido, não será usado para a emissão da NFe.', mtInformation, [mbOK], 0);

  if (DtSrc.State in [dsInsert]) then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_PROD, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cds_produtoCODPRODUTO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    IF (DBEdit2.Text = '') Then
      dm.cds_produtoCODPRO.AsString := IntToStr(dm.c_6_genidCODIGO.AsInteger);
    codprod1 := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;

  case DBRadioGroup2.ItemIndex of
    0 : dm.cds_produtoTIPOPRECOVENDA.AsString := 'M'; // Preço Médio
    1 : dm.cds_produtoTIPOPRECOVENDA.AsString := 'U'; // Ultimo Preco
    2 : dm.cds_produtoTIPOPRECOVENDA.AsString := 'F'; // Preco Fixo
  end;

{  case DBOrigem.ItemIndex of
    0 : dm.cds_produtoORIGEM.AsInteger := 0 ; // Nacional
    1 : dm.cds_produtoORIGEM.AsInteger := 1 ; // Importado pelo Mesmo
    2 : dm.cds_produtoORIGEM.AsInteger := 2 ; // Importado por Terceiro
  end;}

  if (cbLocal.ItemIndex > -1) then
  begin
    dm.cds_ccusto.Locate('NOME', cbLocal.Text, [loCaseInsensitive]);
    dm.cds_produtoCODALMOXARIFADO.AsInteger := dm.cds_ccustoCODIGO.AsInteger;
  end;

  if (cbAplicacao.ItemIndex > -1) then
    dm.cds_produtoCLASSIFIC_FISCAL.AsString := cbAplicacao.Text;

  if (dbMarca.Text <> '') then
    dm.cds_produtoMARCA.AsString := dbMarca.Text;

  IF (Chk_lote.Checked = true) then
    dm.cds_produtoLOTES.AsString := 'S';
  IF (Chk_lote.Checked = false) then
    dm.cds_produtoLOTES.AsString := 'N';

  IF (Chk_rateio.Checked = true) then
    dm.cds_produtoRATEIO.AsString := 'S';
  IF (Chk_rateio.Checked = false) then
    dm.cds_produtoRATEIO.AsString := 'N';

  if (rgEmUso.Checked = False) then
    dm.cds_produtoUSA.AsString := 'N'
  else
    dm.cds_produtoUSA.Clear;

  case (cbTipo.ItemIndex) of
    0 : dm.cds_produtoTIPO.AsString := 'PROD';
    1 : dm.cds_produtoTIPO.AsString := 'COMPRA';
    2 : dm.cds_produtoTIPO.AsString := 'VENDA';
    3 : dm.cds_produtoTIPO.AsString := 'SERV';
    4 : dm.cds_produtoTIPO.AsString := 'LOCA';
  end;
  inherited;

{  if varForm = 'Procura' then
     fProcura.editProc.Text := dm.cds_produtoPRODUTO.AsString;
}

end;

procedure TfProdutoCadastro.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure TfProdutoCadastro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  PRODUTO_DESC := DM.cds_produtoPRODUTO.AsString;
  //inherited;
  if dm.cds_cm.Active then
    dm.cds_cm.Close;
  if (varonde = 'compra') then
  begin
    if (dbMarca.Text <> '') then
      fProcura_prod.cbMarca.Text := '';
    fProcura_prod.BitBtn1.Click;
  end;
  if (fProcura_prod.cds_proc.Active) then
    fProcura_prod.cds_proc.Close;
  bitBtn1.Enabled := False;
  bitBtn2.Enabled := False;
end;

procedure TfProdutoCadastro.FormShow(Sender: TObject);
var valor : Double;
begin
  inherited;
  // if (dm.cds_produto.IsEmpty) then
  //   btnIncluir.Click;
  //sCtrlResize.CtrlResize(TForm(fProdutoCadastro));
  DecimalSeparator := ',';
  if (not dm.cds_produto.IsEmpty) then
  begin
    if (dm.cds_produtoTIPO.AsString = 'SERV') then
      cbTipo.ItemIndex := 3
    else if (dm.cds_produtoTIPO.AsString = 'COMPRA') then
      cbTipo.ItemIndex := 1
    else if (dm.cds_produtoTIPO.AsString = 'VENDA') then
      cbTipo.ItemIndex := 2
    else
      cbTipo.ItemIndex := 0;

    if (dm.cds_produtoUSA.AsString = 'N') then
      rgEmUso.Checked := False
    else
      rgEmUso.Checked := True;
    if (dm.cds_produtoLOTES.AsString = 'S') then
      Chk_lote.Checked := True
    else
      Chk_lote.Checked := False;
  end;

  if (not dm.cds_familia.Active) then
    dm.cds_familia.Open;

  if DM.cds_categoria.Active then
    DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].AsString := 'todos';
  DM.cds_categoria.Params[1].Clear;
  DM.cds_categoria.Params[2].Clear;
  DM.cds_categoria.Open;

 codprod1 := 0;

  if (DBRadioGroup2.ItemIndex = 1) then
  begin
    DBEdit19.Enabled := False;
    DBEdit19.Color := clMenuBar;
  end;

  calculaPrecoVenda;
end;

procedure TfProdutoCadastro.DBLookupComboBox2Exit(Sender: TObject);
begin
  inherited;
  if DM.cds_categoria.Active then
    DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].Clear;
  DM.cds_categoria.Params[1].Clear;
  DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
  DM.cds_categoria.Open;
end;

procedure TfProdutoCadastro.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then exit;

  fMarcas_Grupos:=TfMarcas_Grupos.Create(Application);
  try
   fMarcas_Grupos.ShowModal;
  finally
   fMarcas_Grupos.Free;
  end;
end;

procedure TfProdutoCadastro.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then exit;

  fFamilia:=TfFamilia.Create(Application);
  try
    fFamilia.ShowModal;
  finally
    fFamilia.Free;
    DBEdit16.SetFocus;
  end;
end;

procedure TfProdutoCadastro.SpeedButton3Click(Sender: TObject);
begin
  inherited;

  if DtSrc.DataSet.State in [dsInactive] then exit;

  familia := DBEdit14.Text;
  if familia = '' then
  begin
    MessageDlg('Pôr favor escolha uma familia ...', mtWarning, [mbOK], 0);
    DBEdit16.SetFocus;
    exit;
  end;
  fCategoria := TfCategoria.Create(Application);
  try
    if (fCategoria.cds_familia.Active) then
      fCategoria.cds_familia.Close;
    if (dm.GrupoMarca <> '') then
    begin
      if (dbMarca.Text = '') then
      begin
        fCategoria.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
          'where DESCFAMILIA = ' + QuotedStr(DBEdit14.Text);
      end
      else
      begin
        fCategoria.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
          'where DESCFAMILIA = ' + QuotedStr(DBEdit14.Text);
      end;
    end
    else
    fCategoria.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
      'where DESCFAMILIA = ' + QuotedStr(DBEdit14.Text);
    fCategoria.cds_familia.Open;
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].asInteger := fCategoria.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;
    fCategoria.ComboBox1.Text := familia;
    fCategoria.ShowModal;
  finally
   fCategoria.Free;
   if (DBEdit7.Enabled = True) then
     DBEdit7.SetFocus;
  end;

  if DM.cds_categoria.Active then
    DM.cds_categoria.Close;
  DM.cds_categoria.Params[0].Clear;
  DM.cds_categoria.Params[1].Clear;
  DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
  DM.cds_categoria.Open;
    
end;

procedure TfProdutoCadastro.btnRateioClick(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then
     exit;

  if Chk_rateio.Checked = False then exit;
     
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTROCUSTO';
  dm.cds_parametro.Open;
  conta_ccusto := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  conta_produto := dm.cds_produtoCONTA_DESPESA.asString;
  fContaRateio.ShowModal;
end;

procedure TfProdutoCadastro.Chk_loteClick(Sender: TObject);
begin
  inherited;

  if DtSrc.DataSet.State in [dsInactive] then
  begin
     Chk_lote.Checked := false;
     exit;
  end;

  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.Edit;

end;

procedure TfProdutoCadastro.Chk_rateioClick(Sender: TObject);
begin
  inherited;

  if DtSrc.DataSet.State in [dsInactive] then
  begin
     Chk_rateio.Checked := false;
     exit;
  end;

  if DtSrc.DataSet.State in [dsBrowse] then
     DtSrc.DataSet.Edit;

  if Chk_rateio.Checked = True then
    btnRateio.Enabled := True;

end;

procedure TfProdutoCadastro.dxButton1Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then exit;

  if DtSrc.DataSet.State in [dsInsert] then
    btnGravar.Click;

  fCodigoTerceiros := TfCodigoTerceiros.create(Application);
  try
    fCodigoTerceiros.ShowModal;
  finally
    fCodigoTerceiros.Free;
  end;
end;

procedure TfProdutoCadastro.dxButton2Click(Sender: TObject);
begin
  inherited;
  if DtSrc.DataSet.State in [dsInactive] then exit;

  if DtSrc.DataSet.State in [dsInsert] then
    btnGravar.Click;

  fUsoCadastro := TfUsoCadastro.create(Application);
  try
    fUsoCadastro.ShowModal;
  finally
    fUsoCadastro.Free;
  end;
end;

procedure TfProdutoCadastro.DBEdit13Exit(Sender: TObject);
var valor : double;
begin
  inherited;
  calculaPrecoVenda;
end;

procedure TfProdutoCadastro.DBEdit17Exit(Sender: TObject);
var valor : double;
begin
  inherited;
  calculaPrecoVenda;
end;

procedure TfProdutoCadastro.DBEdit19Exit(Sender: TObject);
var valor : double;
begin
  inherited;
  if (dm.cds_produto.State in [dsEdit, dsInsert]) then
  begin
    if ((dm.cds_produtoVALOR_PRAZO.IsNull) or (dm.cds_produtoVALORUNITARIOATUAL.IsNull)) then
      exit;
    if ((dm.cds_produtoVALOR_PRAZO.AsFloat > 0) and (dm.cds_produtoVALORUNITARIOATUAL.AsFloat > 0)) then
    begin
      valor := (dm.cds_produtoVALOR_PRAZO.AsFloat-dm.cds_produtoVALORUNITARIOATUAL.AsFloat);
      valor := (valor/dm.cds_produtoVALORUNITARIOATUAL.AsFloat);
      VALOR := (VALOR * 100);
      if (dbedit17.Text = '') then
      begin
        dm.cds_produtoMARGEM.AsFloat := valor;
      end;
      if (dbedit17.Text <> '') then
      begin
        if (((valor - dm.cds_produtoMARGEM.AsFloat) > 1) OR ((dm.cds_produtoMARGEM.AsFloat - valor) > 1)) then
          dm.cds_produtoMARGEM.AsFloat := valor;
      end;
    end;
  end;
end;

function TfProdutoCadastro.Arredondar(valor: Double): integer;
begin
 if Trunc(Valor) <> valor then
   Result:= trunc(valor)+1
 else
   Result:= trunc(valor);
end;

procedure TfProdutoCadastro.dxButton3Click(Sender: TObject);
begin
  inherited;
  fListaProd:=TfListaProd.Create(Application);
  try
    codprod := dm.cds_produtoCODPRO.AsString;
    fListaProd.ShowModal;
  finally
    fListaProd.Free;
  end;
end;

procedure TfProdutoCadastro.dxButton4Click(Sender: TObject);
begin
  inherited;
  fProduto_Mat_Prima := TfProduto_Mat_Prima.Create(Application);
  try
    fProduto_Mat_Prima.ShowModal;
  finally
    fProduto_Mat_Prima.Free;
  end;

end;

procedure TfProdutoCadastro.cbMarcaChange(Sender: TObject);
begin
  inherited;
  if (dbMarca.Text = '') then
    exit;
  if (DtSrc.State in [dsBrowse]) then
    dm.cds_produto.Edit;
  if (dtSrc.State in [dsEdit, dsInsert]) then
    dm.cds_produtoMARCA.AsString := dbMarca.Text;

  if (dm.GrupoMarca <> '') then
  begin
    if DM.cds_familia.Active then
      DM.cds_familia.Close;
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ' +
      'where MARCA = ' + QuotedStr(dbMarca.Text);
    DM.cds_familia.Open;
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;
  end
  else begin
    if DM.cds_familia.Active then
      DM.cds_familia.Close;
    dm.cds_Familia.CommandText := 'select * from FAMILIAPRODUTOS ';
    DM.cds_familia.Open;
    if DM.cds_categoria.Active then
      DM.cds_categoria.Close;
    DM.cds_categoria.Params[0].Clear;
    DM.cds_categoria.Params[1].Clear;
    DM.cds_categoria.Params[2].AsInteger := DM.cds_familiaCOD_FAMILIA.AsInteger;
    DM.cds_categoria.Open;
  end;
end;

procedure TfProdutoCadastro.rgEmUsoClick(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse, dsInactive]) then
    DtSrc.DataSet.Edit;
end;

procedure TfProdutoCadastro.cbTipoChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
end;

procedure TfProdutoCadastro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Dm.cds_Produto.Close;
  fProcura_prod.cds_proc.Prior;
  Dm.cds_Produto.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;;
  Dm.cds_Produto.Open;
end;

procedure TfProdutoCadastro.BitBtn2Click(Sender: TObject);
begin
  inherited;
  Dm.cds_Produto.Close;
  fProcura_prod.cds_proc.Next;
  Dm.cds_Produto.Params[0].AsInteger := fProcura_prod.cds_procCODPRODUTO.AsInteger;;
  Dm.cds_Produto.Open;
end;

procedure TfProdutoCadastro.DBRadioGroup2Change(Sender: TObject);
begin
  inherited;
  if (DBRadioGroup2.ItemIndex = 1) then
  begin
    DBEdit19.Enabled := False;
    DBEdit19.Color := clMenuBar;
  end
  else
  begin
    DBEdit19.Enabled := True;
    DBEdit19.Color := clWindow;
  end;
  calculaPrecoVenda;
end;

procedure TfProdutoCadastro.cbLocalChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.DataSet.State in [dsBrowse, dsInactive]) then
    dm.cds_produto.Edit;
end;

procedure TfProdutoCadastro.cbAplicacaoChange(Sender: TObject);
begin
  inherited;
  if (DtSrc.DataSet.State in [dsBrowse, dsInactive]) then
    dm.cds_produto.Edit;

end;

procedure TfProdutoCadastro.BitBtn3Click(Sender: TObject);
begin
  inherited;
  cbAplicacao.ItemIndex := -1;
end;

procedure TfProdutoCadastro.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  cbLocal.ItemIndex := -1;
end;

procedure TfProdutoCadastro.calculaPrecoVenda;
var vlrVenda: Double;
begin
  try
    if (dm.cds_produtoMARGEM.AsFloat > 0) then
    begin
      if (dm.cds_produto.State in [dsBrowse]) then
        dm.cds_produto.Edit;

      if (DBRadioGroup2.ItemIndex = 0) then
      begin
        vlrVenda := dm.cds_produtoPRECOMEDIO.AsFloat *
         ((dm.cds_produtoMARGEM.AsFloat/100)+1);
        DecimalSeparator := '.';
        dm.cds_produtoVALOR_PRAZO.AsFloat := SimpleRoundTo(vlrVenda,(-1)*formatacaoPreco);
      end;
      if (DBRadioGroup2.ItemIndex = 1) then
      begin
        vlrVenda := dm.cds_produtoPRECOMEDIO.AsFloat;
        if (dm.cds_produtoVALORUNITARIOATUAL.AsFloat > 0) then
          vlrVenda := dm.cds_produtoVALORUNITARIOATUAL.AsFloat;
        vlrVenda := vlrVenda * ((dm.cds_produtoMARGEM.AsFloat/100)+1);
        DecimalSeparator := '.';
        dm.cds_produtoVALOR_PRAZO.AsFloat := SimpleRoundTo(vlrVenda,(-1)*formatacaoPreco);
      end;
    end;
  finally
    DecimalSeparator := ',';
  end;
end;

procedure TfProdutoCadastro.DBEdit12Exit(Sender: TObject);
begin
  inherited;
  calculaPrecoVenda;
end;

procedure TfProdutoCadastro.GroupBox6Click(Sender: TObject);
begin
  if Memo1.Visible then
    Memo1.Visible := False
  else
    Memo1.Visible := True;  
end;

procedure TfProdutoCadastro.BitBtn4Click(Sender: TObject);
begin
  if (DtSrc.DataSet.Active) then
  begin
    tipo_for := 'CONTASDESPESAS';
    fFiltro_forn_plano.BitBtn6.Click;
    //fFiltro_forn_plano.BitBtn1.Click;
    fFiltro_forn_plano.ShowModal;
    //if dm.cds_ccusto.Active then
    //  dm.cds_ccusto.Close;
    //dm.cds_ccusto.Params[0].AsString := conta_desp;
    //dm.cds_ccusto.Open;
    //dm.cds_ccusto.RecNo := posCusto;
    //edtcodred.Text := varconta_cod;
    //edtconta.Text := varconta_nome;
    //usa_rateio := com_rateio;
    if (DtSrc.DataSet.State in [dsBrowse]) then
      DtSrc.DataSet.Edit;
    dm.cds_produtoCONTA_DESPESA.AsString := varconta;
    //conta_rateio := varconta;
    //dbeCliente.SetFocus;
  end;
  //varconta_cod := '';
  //varconta_nome := '';
end;

procedure TfProdutoCadastro.DBEdit1Exit(Sender: TObject);
begin
  if (dbEdit1.Text <> '') then
    if (ACBrValidadorValidarGTIN(dbEdit1.Text) <> '') then
      MessageDlg('Código de Barras inválido, não será usado para a emissão da NFe.', mtInformation, [mbOK], 0);
end;

end.
