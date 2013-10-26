unit uRelestoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, DBClient;


type
  TfRelestoque = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    cbTipo: TComboBox;
    Label1: TLabel;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    rb1: TRadioButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRelestoque: TfRelestoque;

implementation

uses uFiltroEstoque, UDm;

{$R *.dfm}

procedure TfRelestoque.BitBtn1Click(Sender: TObject);
begin
  if (RadioButton1.Checked = True) then
    fFiltroEstoque.RepRelItem.FileName := str_relatorio + 'estoqueproduto.rep'

  else if (RadioButton2.Checked = True) then
    fFiltroEstoque.RepRelItem.FileName := str_relatorio + 'estoqueproduto1.rep'

  else if (RadioButton3.Checked = True) then
    fFiltroEstoque.RepRelItem.FileName := str_relatorio + 'estoqueprodutoVenda.rep'

  else if (RadioButton4.Checked = True) then
    fFiltroEstoque.RepRelItem.FileName := str_relatorio + 'lista_estoque.rep'

  else if (rb1.Checked = True) then
    fFiltroEstoque.RepRelItem.FileName := str_relatorio + 'lista_estoque_total.rep';

  fFiltroEstoque.repRelItem.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  if (RadioButton1.Checked = True) then
  begin
    fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PDTA1').Value := StrToDate(fFiltroEstoque.medta1.Text);
    fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PDTA2').Value := StrToDate(fFiltroEstoque.medta2.Text);
  end;
  if (RadioButton3.Checked = True) then
  begin
    fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PDTA1').Value := StrToDate(fFiltroEstoque.medta1.Text);
    fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PDTA2').Value := StrToDate(fFiltroEstoque.medta2.Text);
  end;

  if ((RadioButton4.Checked = True) or (rb1.Checked = True)) then
  begin
    fFiltroEstoque.RepRelItem.Report.Params.ParamByName('DTA1').Value := StrToDate(fFiltroEstoque.medta1.Text);
    fFiltroEstoque.RepRelItem.Report.Params.ParamByName('DTA2').Value := StrToDate(fFiltroEstoque.medta2.Text);
    if (fFiltroEstoque.ComboBox4.Text <> '') then
    begin
       fFiltroEstoque.RepRelItem.Report.Params.ParamByName('MARCA').Value := fFiltroEstoque.ComboBox4.Text;
    end
    else
       fFiltroEstoque.RepRelItem.Report.Params.ParamByName('MARCA').Value := 'TODAS AS MARCAS CADASTRADAS';

    if (fFiltroEstoque.ComboBox1.Text <> 'TODOS') then
    begin
      dm.cds_ccusto.Locate('NOME', fFiltroEstoque.ComboBox1.Text, [loCaseInsensitive]);
      fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
       fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PCCUSTO').Value := 0;
  end
  ELSE
  BEGIN
    IF (fFiltroEstoque.Edit5.Text <> '') then
    begin
      fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PROD1').Value := fFiltroEstoque.Edit5.Text;
      IF (fFiltroEstoque.Edit6.Text <> '') then
         fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PROD2').Value := fFiltroEstoque.Edit6.Text
      else
        fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PROD2').Value := 32000;
    end else begin
      fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PROD1').Value := 0;
      fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PROD2').Value := 32000;
    end;

    IF (fFiltroEstoque.Edit3.Text <> '') then
    begin
      fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PROD1').Value := varProd ; //fFiltroEstoque.Edit3.Text;
      fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PROD2').Value := varProd ; //fFiltroEstoque.Edit3.Text
    end;

    if (fFiltroEstoque.cbGRUPO.Text <> '') then
    begin
       fFiltroEstoque.RepRelItem.Report.Params.ParamByName('GRUPO').Value := fFiltroEstoque.cbGRUPO.Text;
    end
    else
      fFiltroEstoque.RepRelItem.Report.Params.ParamByName('GRUPO').Value := 'TODOS OS GRUPOS CADASTRADOS';

    if (fFiltroEstoque.cbPRODUTO.Text <> '') then
    begin
       fFiltroEstoque.RepRelItem.Report.Params.ParamByName('SUBGRUPO').Value := fFiltroEstoque.cbPRODUTO.Text;
    end
    else
       fFiltroEstoque.RepRelItem.Report.Params.ParamByName('SUBGRUPO').Value := 'TODOS SUBGRUPOS DO CADASTRO';

    if (fFiltroEstoque.ComboBox4.Text <> '') then
    begin
       fFiltroEstoque.RepRelItem.Report.Params.ParamByName('MARCA').Value := fFiltroEstoque.ComboBox4.Text;
    end
    else
       fFiltroEstoque.RepRelItem.Report.Params.ParamByName('MARCA').Value := 'TODAS AS MARCAS CADASTRADAS';


    if (fFiltroEstoque.ComboBox1.Text <> 'TODOS') then
    begin
      dm.cds_ccusto.Locate('NOME', fFiltroEstoque.ComboBox1.Text, [loCaseInsensitive]);
      fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PCCUSTO').Value := dm.cds_ccustoCODIGO.asInteger;
    end
    else
       fFiltroEstoque.RepRelItem.Report.Params.ParamByName('PCCUSTO').Value := 0;

    if (cbTipo.Text <> '') then
    begin
      case cbTipo.ItemIndex of
        0: fFiltroEstoque.RepRelItem.Report.Params.ParamByName('TIPOPRODUTO').Value := 'TODOSPROD';
        1: fFiltroEstoque.RepRelItem.Report.Params.ParamByName('TIPOPRODUTO').Value := 'COMPRA';
        2: fFiltroEstoque.RepRelItem.Report.Params.ParamByName('TIPOPRODUTO').Value := 'VENDA';
        3: fFiltroEstoque.RepRelItem.Report.Params.ParamByName('TIPOPRODUTO').Value := 'SERV';
        4: fFiltroEstoque.RepRelItem.Report.Params.ParamByName('TIPOPRODUTO').Value := 'COMPRA';
        5: fFiltroEstoque.RepRelItem.Report.Params.ParamByName('TIPOPRODUTO').Value := 'VENDA';
      end;
    end;

  END;

  fFiltroEstoque.RepRelItem.Title := fFiltroEstoque.RepRelItem.FileName;
  fFiltroEstoque.RepRelItem.Execute;

end;

procedure TfRelestoque.BitBtn2Click(Sender: TObject);
begin
  close;
end;

end.
