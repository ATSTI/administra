unit uLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, StdCtrls, Mask, DBCtrls, Grids, DBGrids, Menus,
  XPMenu, DB, Buttons, ExtCtrls, MMJPanel, JvExStdCtrls, JvCombobox,
  JvDBSearchComboBox, JvExControls, JvLabel, JvExDBGrids, JvDBGrid;

type
  TfLote = class(TfPai_new)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    edCodigoProdutor: TEdit;
    Label5: TLabel;
    cbNomeProdutor: TJvDBSearchComboBox;
    BitBtn1: TBitBtn;
    Label14: TLabel;
    edCodigoProduto: TEdit;
    Label7: TLabel;
    cbNomeProduto: TJvDBSearchComboBox;
    JvLabel1: TJvLabel;
    DBGrid1: TJvDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbNomeProdutorChange(Sender: TObject);
    procedure edCodigoProdutorKeyPress(Sender: TObject; var Key: Char);
    procedure abreLote;
    procedure btnIncluirClick(Sender: TObject);
    procedure cbNomeProdutoChange(Sender: TObject);
    procedure edCodigoProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLote: TfLote;

implementation

uses uDmCitrus, sCtrlResize;

{$R *.dfm}

procedure TfLote.BitBtn1Click(Sender: TObject);
begin
  inherited;
  abreLote;
end;

procedure TfLote.FormCreate(Sender: TObject);
begin
  //inherited;
  if (not dmCitrus.cdsProdutor.Active) then
    dmCitrus.cdsProdutor.Open;
  cbNomeProdutor.Text := '';
  if (not dmCitrus.cdsProduto.Active) then
    dmCitrus.cdsProduto.Open;
  cbNomeProduto.Text := '';
end;

procedure TfLote.cbNomeProdutorChange(Sender: TObject);
begin
  inherited;
  edCodigoProdutor.Text := IntToStr(dmCitrus.cdsProdutorCODFORNECEDOR.AsInteger);
end;

procedure TfLote.edCodigoProdutorKeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;
  if (key = #13) then
  begin
  if (edCodigoProdutor.Text <> '') then
    if (not dmCitrus.cdsProdutor.Locate('CODFORNECEDOR', StrToInt(edCodigoProdutor.Text), [loPartialKey])) then
    begin
       MessageDlg('Código não Cadastrado',mtInformation,[mbOk],0);
       cbNomeProdutor.Text := '';
       exit;
    end;
    abreLote;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfLote.abreLote;
begin
  if (edCodigoProdutor.Text <> '') then
  begin
    if (dmCitrus.cdsCFO.Active) then
      dmCitrus.cdsCFO.Close;
    dmCitrus.cdsCFO.Params.ParamByName('pCodProdutor').value := StrToFloat(edCodigoProdutor.Text);
    dmCitrus.cdsCFO.Open;
  end;

end;

procedure TfLote.btnIncluirClick(Sender: TObject);
begin
  if (edCodigoProdutor.Text <> '') then
  begin
    if (dmCitrus.cdsCFO.Active) then
      dmCitrus.cdsCFO.Close;
    dmCitrus.cdsCFO.Params.ParamByName('pCodProdutor').value := StrToFloat(edCodigoProdutor.Text);
    dmCitrus.cdsCFO.Open;
  end;
  if (cbNomeProdutor.Text = '') then
  begin
    MessageDlg('Primeiro, informe o Produtor.',mtInformation,[mbOk],0);
    cbNomeProdutor.SetFocus;
    exit;
  end;
  inherited;
  dmCitrus.cdsCFOPRECO.Value := StrToFloat(edCodigoProdutor.Text);
end;

procedure TfLote.cbNomeProdutoChange(Sender: TObject);
begin
  inherited;
  edCodigoProduto.Text := dmCitrus.cdsProdutoCODPRO.AsString;
end;

procedure TfLote.edCodigoProdutoKeyPress(Sender: TObject; var Key: Char);
begin
  if  (key = #13) then
  begin
  if (edCodigoProduto.Text <> '') then
    if (not dmCitrus.cdsProduto.Locate('CODPRO', edCodigoProduto.Text, [loPartialKey])) then
    begin
       MessageDlg('Código não Cadastrado',mtInformation,[mbOk],0);
       cbNomeProduto.Text := '';
    end;
    key := #0;
    SelectNext((Sender as TwinControl),True,True);
  end;

end;

procedure TfLote.btnGravarClick(Sender: TObject);
begin
  if (edCodigoProduto.Text = '') then
  begin
    MessageDlg('Informe o Produto.',mtInformation,[mbOk],0);
    cbNomeProduto.SetFocus;
    exit;
  end;
  dmCitrus.cdsCFOCODPRODUTO.AsInteger := dmCitrus.cdsProdutoCODPRODUTO.AsInteger;
  if (dmCitrus.cdsCFOPRECO.IsNull) then
    dmCitrus.cdsCFOPRECO.AsFloat := StrToFloat(edCodigoProdutor.Text);
  inherited;
end;

procedure TfLote.FormShow(Sender: TObject);
begin
  //inherited;
  sCtrlResize.CtrlResize(TForm(fLote));
  cbNomeProdutor.Text := '';
  cbNomeProduto.Text := '';
end;

end.
