unit uLotes_Produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, MMJPanel, Mask, DBCtrls, JvExMask,
  JvToolEdit, JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit,
  JvDBDatePickerEdit, FMTBcd, DB, SqlExpr, DateUtils;

type
  TfLotes_Produtos = class(TForm)
    MMJPanel2: TMMJPanel;
    btnSair: TBitBtn;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBText1: TDBText;
    LotSeq: TCheckBox;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    JvDBDatePickerEdit1: TJvDBDatePickerEdit;
    JvDBDatePickerEdit2: TJvDBDatePickerEdit;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    sqlGrade: TSQLQuery;
    chLoteUnidade: TCheckBox;
    procedure btnSairClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
  private
    gradeCompra: String;
    { Private declarations }
  public
    TIPO : String;
    { Public declarations }
  end;

var
  fLotes_Produtos: TfLotes_Produtos;
  QTDE, preco, icms, lote, quantidade : Double;
  codproduto, comissao, codalmox : Integer;
  codpro, descpro, unid, almox : String;

implementation

uses uCompra, UDm, uEntra_Sai_estoque;

{$R *.dfm}

procedure TfLotes_Produtos.btnSairClick(Sender: TObject);
var x, y : Integer;
dta1: TDate;
dta2: TDate;
begin
  if (LotSeq.Checked) then
  begin
     if (DBEdit1.Text = '') then
     begin
       MessageDlg('Informe o primeiro número para a sequencia.', mtWarning, [mbOK], 0);
       exit;
     end;
  end;
  if(DBEdit1.Text = '') then
    MessageDlg('É necessario preencher a Serie do Produto.', mtWarning, [mbOK], 0)
  else
  begin
    if (dm.cds_produtoPRO_COD.AsString = 'GRADE') then
    begin

    end;
    if (not dm.cds_produtoTAM_LOTE.IsNull) then
    begin
      if (Length(DBEdit1.Text) <> DM.cds_produtoTAM_LOTE.AsInteger) then
      begin
        MessageDlg('Tamanho do lote incorreto.', mtWarning, [mbOK], 0);
        Exit;
      end;
    end;
   dta1 := today;
   dta2 := today;
   if (JvDBDatePickerEdit1.Date > 0) then
   begin
     dta1 := JvDBDatePickerEdit1.Date;
     dta2 := JvDBDatePickerEdit2.Date;
   end;
   fCompra.cds_Mov_detDTAFAB.AsDateTime := dta1;
   fCompra.cds_Mov_detDTAVCTO.AsDateTime := dta2;

   if ((chLoteUnidade.Checked) and (fCompra.cds_Mov_detQUANTIDADE.AsFloat > 1)) then
   begin
      quantidade := fCompra.cds_Mov_detQUANTIDADE.AsFloat;
      y := Trunc(quantidade) - 2;
      //COPIA DADOS DA DETALHE ATUAL
      codproduto := fCompra.cds_Mov_detCODPRODUTO.AsInteger;
      codpro := fCompra.cds_Mov_detCODPRO.AsString;
      comissao := fCompra.cds_Mov_detCOD_COMISSAO.AsInteger;
      if (fCompra.cds_Mov_detQTDE_PCT.AsFloat > 0 ) then
        QTDE := fCompra.cds_Mov_detQTDE_PCT.AsFloat
      else
        QTDE := 0;
      unid := fCompra.cds_Mov_detUN.AsString;
      preco := fCompra.cds_Mov_detPRECO.AsFloat;
      codalmox := fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger;
      almox := fCompra.cds_Mov_detALMOXARIFADO.AsString;
      icms := fCompra.cds_Mov_detICMS.AsFloat;
      fCompra.cds_Mov_detQUANTIDADE.AsFloat := 1;
      fCompra.cds_Mov_detDESCPRODUTO.AsString := descpro;
      if(LotSeq.Checked) then
        lote := StrToFloat(DBEdit1.Text);
      //VAI PARA DETALHE SEGUINTE
      if(LotSeq.Checked) then
      begin
          for x := 0 to y do
          begin
            fCompra.btnNovo.Click;
            fCompra.cds_Mov_detQUANTIDADE.AsFloat := 1;
            fCompra.cds_Mov_detCODPRODUTO.AsInteger := codproduto;
            fCompra.cds_Mov_detCODPRO.AsString := codpro;
            fCompra.cds_Mov_detCOD_COMISSAO.AsInteger := comissao;
            fCompra.cds_Mov_detQTDE_PCT.AsFloat := QTDE;
            fCompra.cds_Mov_detDESCPRODUTO.Value := descpro;
            fCompra.cds_Mov_detUN.AsString := unid;
            fCompra.cds_Mov_detPRECO.AsFloat := preco;
            fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := codalmox;
            fCompra.cds_Mov_detALMOXARIFADO.AsString := almox;
            fCompra.cds_Mov_detICMS.AsFloat := icms;
            fCompra.cds_Mov_detOBS.AsString := gradeCompra;
            lote := lote + 1;
            fCompra.cds_Mov_detLOTE.AsString := FloatToStr(lote);
          end;
          close;
      end
      else
      begin
        fCompra.btnNovo.Click;
        fCompra.cds_Mov_detQUANTIDADE.AsFloat := quantidade-1;
        fCompra.cds_Mov_detCODPRODUTO.AsInteger := codproduto;
        fCompra.cds_Mov_detCODPRO.AsString := codpro;
        fCompra.cds_Mov_detCOD_COMISSAO.AsInteger := comissao;
        fCompra.cds_Mov_detQTDE_PCT.AsFloat := QTDE;
        fCompra.cds_Mov_detDESCPRODUTO.Value := descpro;
        fCompra.cds_Mov_detUN.AsString := unid;
        fCompra.cds_Mov_detPRECO.AsFloat := preco;
        fCompra.cds_Mov_detCODALMOXARIFADO.AsInteger := codalmox;
        fCompra.cds_Mov_detALMOXARIFADO.AsString := almox;
        fCompra.cds_Mov_detICMS.AsFloat := icms;
        fCompra.cds_Mov_detOBS.AsString := gradeCompra;
        fCompra.cds_Mov_detLOTE.AsString := '';
        dbEdit1.SetFocus;
      end;
    end
    else
    begin
      fCompra.cds_Mov_detLOTE.AsString := DBEdit1.Text;
      fCompra.cds_Mov_detDESCPRODUTO.Value := descpro;
      fCompra.cds_Mov_detOBS.AsString := gradeCompra;
      close;
    end;
  end;
  if (TIPO = 'COMPRA') then
    fCompra.DBEdit10.SetFocus;
end;

procedure TfLotes_Produtos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    if(DBEdit1.Text <> '') then
    begin
      if (dm.cds_produtoPRO_COD.AsString = 'GRADE') then
      begin
        dbEdit2.SetFocus;
      end
      else begin
        //02/10/2018 comentei a linha e adicionei as duas abaixo
        //btnSair.Click;
        key:= #0;
        SelectNext((Sender as TwinControl),True,True);
      end;
    end;
  end;
end;

procedure TfLotes_Produtos.FormShow(Sender: TObject);
begin
  gradeCompra := '';
  if (TIPO = 'COMPRA') then
  begin
    if ((fCompra.cds_Mov_detLOTE.AsString = '') or (fCompra.cds_Mov_detLOTE.AsString = '0')) then
    begin
      if(fCompra.cds_Mov_detQUANTIDADE.AsFloat >1) then
        LotSeq.Visible := True
      else
        LotSeq.Visible := False;
      fCompra.cds_Mov_detDTAFAB.AsDateTime := Now;
      fCompra.cds_Mov_detDTAVCTO.AsDateTime := Now;
      if (fCompra.cds_Mov_detLOTE.AsString = '0') then
        fCompra.cds_Mov_detLOTE.AsString := '';
      descpro := fCompra.cds_Mov_detDESCPRODUTO.Value;
      if(DM.cds_Produto.Active) then
        DM.cds_produto.Close;
      dm.cds_produto.Params[0].AsInteger := fCompra.cds_Mov_detCODPRODUTO.AsInteger;
      dm.cds_produto.Open;
      if (dm.cds_produtoPRO_COD.AsString = 'GRADE') then
      begin
        dbEdit2.ReadOnly := False;
        dbEdit2.Color := clWindow;
      end
      else begin
        dbEdit2.ReadOnly := True;
        dbEdit2.Color := clMenu;
      end;
       dbEdit1.setFocus;
    end;
  end;
  if (TIPO = 'ENT_SAI') then
  begin
    LotSeq.Visible := False;
    btnSair.Visible := False;
    fEntra_Sai_estoque.cds_Mov_detDTAFAB.AsDateTime := Now;
    fEntra_Sai_estoque.cds_Mov_detDTAVCTO.AsDateTime := Now;
  end;
end;

procedure TfLotes_Produtos.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TfLotes_Produtos.DBEdit2KeyPress(Sender: TObject; var Key: Char);
var str_sql: String;
begin
  if (key = #13) then
  begin
    if ((DBEdit1.Text <> '') and (DBEdit2.Text <> '')) then
    begin
      gradeCompra := '';
      // valido o SubGrupo
      if (sqlGrade.Active) then
        sqlGrade.Close;
      sqlGrade.SQL.Clear;
      str_sql := 'SELECT DESCCATEGORIA FROM CATEGORIAPRODUTO ' +
       'WHERE ((DESCCATEGORIA = ' + QuotedStr(dbEdit2.Text) + ')';
      try
        strToInt(dbEdit2.Text);
        str_sql := str_sql + ' OR (COD_CATEGORIA = ' + dbEdit2.Text + '))';
      except
        str_sql := str_sql + ' OR (COD_CATEGORIA = 0))';
      end;

      sqlGrade.SQL.Add(str_sql);
      sqlGrade.Open;
      if (sqlGrade.IsEmpty) then
      begin
        MessageDlg('Grade informada não está cadastrada (Produtos - SubGrupo).', mtWarning, [mbOK], 0);
        exit;
      end
      else begin
        descpro := descpro + '-' + sqlGrade.fieldByName('DESCCATEGORIA').AsString;
        gradeCompra := sqlGrade.fieldByName('DESCCATEGORIA').AsString;
        btnSair.Click;
      end;
    end;
  end;
end;

end.
