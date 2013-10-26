unit uBancoDePara;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, DBCtrls, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid;

type
  TfBancoDePara = class(TfPai_new)
    sdsBancoDePara: TSQLDataSet;
    dspDePara: TDataSetProvider;
    cdsBancoDePara: TClientDataSet;
    Label4: TLabel;
    cbConta: TDBLookupComboBox;
    ds_conta: TDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
    cdsBancoDeParaCAIXA: TIntegerField;
    cdsBancoDeParaCONTA: TIntegerField;
    cdsBancoDeParaEXTRATODOC: TStringField;
    cdsBancoDeParaEXTRATOTIPO: TStringField;
    Label7: TLabel;
    edtcodred: TEdit;
    Label8: TLabel;
    edtconta: TEdit;
    BitBtn12: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure edtcodredExit(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    caixa: Integer;
    extratoDoc, extratoTipo: String;
    { Public declarations }
  end;

var
  fBancoDePara: TfBancoDePara;

implementation

uses UDm, uFiltro_forn_plano;

{$R *.dfm}

procedure TfBancoDePara.FormShow(Sender: TObject);
begin
  inherited;
   // Listo as Contas Caixa
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CAIXA_BANCO';
  dm.cds_parametro.Open;
  if not dm.cds_7_contas.Active then
  begin
    dm.cds_7_contas.Params[0].AsString := dm.cds_parametroDADOS.AsString;
    dm.cds_7_contas.Open;
  end;
  dm.cds_parametro.Close;
  //DM.cds_7_contas.Locate('CODIGO', caixa, [loCaseInsensitive]);
  if (cdsBancoDePara.Active) then
    cdsBancoDePara.Close;
  cdsBancoDePara.Params.ParamByName('CAIXA').AsInteger := dm.cds_7_contasCODIGO.AsInteger;
  cdsBancoDePara.Open;
  
end;

procedure TfBancoDePara.FormCreate(Sender: TObject);
begin
  //inherited;

end;

procedure TfBancoDePara.BitBtn12Click(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert, dsEdit] then
  begin
    tipo_for := 'LANCACONTABIL';
    fFiltro_forn_plano.BitBtn6.Click;
    //fFiltro_forn_plano.BitBtn1.Click;
    fFiltro_forn_plano.ShowModal;
    edtcodred.Text := varconta_cod;
    edtconta.Text := varconta_nome;
    //usa_rateio := com_rateio;
    cdsBancoDeParaCONTA.AsInteger := codigo_conta;
    //conta_rateio := varconta;
    //dbeCliente.SetFocus;
  end;
  //varconta_cod := '';
  //varconta_nome := '';

end;

procedure TfBancoDePara.edtcodredExit(Sender: TObject);
var strc: String;
begin
  if (DM.c_1_planoc.Active) then
    DM.c_1_planoc.Close;
  strc := 'Select * from PLANO ';
  strc := strc + 'WHERE ';
  strc := strc + 'CODREDUZIDO = ';
  strc := strc + '''' + edtcodred.Text + '''';
  DM.c_1_planoc.CommandText := strc;
  DM.c_1_planoc.Open;
  if DM.c_1_planoc.IsEmpty then begin
    MessageDlg('Código não cadastrado, deseja cadastra-ló ?', mtWarning,
    [mbOk], 0);
    BitBtn12.Click;
    exit;
  end
  else begin
    //conta_rateio := DM.c_1_planocCONTA.AsString;
    edtconta.Text := dm.c_1_planocNOME.AsString;
    codigo_conta := dm.c_1_planocCODIGO.AsInteger;
    cdsBancoDeParaCONTA.AsInteger := dm.c_1_planocCODIGO.AsInteger;
    //usa_rateio := dm.c_1_planocRATEIO.AsString;
  end;
  dm.c_1_planoc.Close;
end;

procedure TfBancoDePara.btnIncluirClick(Sender: TObject);
begin
  inherited;
  cdsBancoDeParaCAIXA.AsInteger      := caixa;
  cdsBancoDeParaEXTRATODOC.AsString  := extratoDoc;
  cdsBancoDeParaEXTRATOTIPO.AsString := extratoTipo; 
end;

end.
