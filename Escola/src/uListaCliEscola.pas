unit uListaCliEscola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Provider, SqlExpr, FMTBcd, Grids, DBGrids, rpcompobase,
  DBClient, DB, DBLocal, DBLocalS, Menus, StdCtrls, Buttons,
  ExtCtrls, rpvclreport, XPMenu, MMJPanel, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBFindEdit, JvExStdCtrls, JvCombobox, JvDBSearchComboBox,
  JvEdit, JvDBSearchEdit;

type
  TfListaCliEscola = class(TForm)
    PopupMenu1: TPopupMenu;
    Novo1: TMenuItem;
    Cancela1: TMenuItem;
    procurar1: TMenuItem;
    fechar1: TMenuItem;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    VCLReport1: TVCLReport;
    XPMenu1: TXPMenu;
    ListaCliente: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    VCLReport_etiqueta: TVCLReport;
    MMJPanel2: TMMJPanel;
    BitBtn8: TSpeedButton;
    Bevel4: TBevel;
    Bevel1: TBevel;
    BitBtn4: TSpeedButton;
    Bevel3: TBevel;
    BitBtn5: TSpeedButton;
    edCodigo: TJvDBSearchEdit;
    Label3: TLabel;
    edNome: TJvDBSearchComboBox;
    Label4: TLabel;
    cbSerie: TComboBox;
    Label12: TLabel;
    cdsCODCLIENTE: TIntegerField;
    cdsNOMECLIENTE: TStringField;
    cdsSERIE: TStringField;
    cdsSERIELETRA: TStringField;
    cdsRA: TStringField;
    cdsNUMERO: TIntegerField;
    cdsANOLETIVO: TStringField;
    ListaClienteCODCLIENTE: TIntegerField;
    ListaClienteNOMECLIENTE: TStringField;
    ListaClienteSERIE: TStringField;
    ListaClienteSERIELETRA: TStringField;
    ListaClienteRA: TStringField;
    ListaClienteNUMERO: TIntegerField;
    ListaClienteANOLETIVO: TStringField;
    rgSituacao: TRadioGroup;
    TableSeries: TSQLDataSet;
    TableSeriesSERIELETRA: TStringField;
    TableSeriesTURNO: TStringField;
    TableSeriesTIPOENSINO: TStringField;
    TableSeriesSERIE: TStringField;
    TableSeriesDESC_CLASSE: TStringField;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure rgSituacaoClick(Sender: TObject);
    procedure cbSerieChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fListaCliEscola: TfListaCliEscola;

implementation

uses UDm, uAlunosCadastro, uRelatorios;

{$R *.dfm}

procedure TfListaCliEscola.DBGrid1TitleClick(Column: TColumn);
begin
    cds.IndexFieldNames := Column.FieldName;
end;

procedure TfListaCliEscola.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if not odd(ListaCliente.RecNo) then // se for impar
  // se a coluna ñ está selecionada
   if not (gdSelected in State) then
   begin
    //define uma COR DE FUNDO
    DBGrid1.Canvas.Brush.Color := $00FFEFDF;
    DBGrid1.Canvas.FillRect(Rect); //Pinta a celula
    //Pinta o texto padrão
    DBGrid1.DefaultDrawDataCell(Rect,Column.Field,State);
   end;
end;

procedure TfListaCliEscola.BitBtn3Click(Sender: TObject);
begin
  cds.Close;
  edCodigo.Text := '';
  edNome.Text := '';
  cbSerie.Text := '';
end;

procedure TfListaCliEscola.BitBtn4Click(Sender: TObject);
begin
   fRelatorios := TfRelatorios.Create(Application);
   try
      fRelatorios.ShowModal;
   finally
      fRelatorios.free;
   end;
end;

procedure TfListaCliEscola.FormCreate(Sender: TObject);
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
end;

procedure TfListaCliEscola.BitBtn5Click(Sender: TObject);
begin
  Close;
end;

procedure TfListaCliEscola.BitBtn8Click(Sender: TObject);
begin
  if (cds.State in [dsInactive]) then
    exit;
  fAlunosCadastro := TfAlunosCadastro.Create(Application);
  try
    fAlunosCadastro.RAALUNO := cdsRA.AsString;
    fAlunosCadastro.btnProcurar.Enabled := False;
    fAlunosCadastro.btnProcurar1.Enabled := False;
    fAlunosCadastro.ShowModal;
  finally
    fAlunosCadastro.Free;
  end;

end;

procedure TfListaCliEscola.SpeedButton2Click(Sender: TObject);
begin
  if not dm.cds_empresa.Active then
    dm.cds_empresa.Open;
  VCLReport1.FileName := str_relatorio + 'clienteEtiqueta2.rep';
  VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;  
  // Número de Etiquetas por Cliente
  VCLReport1.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
  IF (edCodigo.Text <> '') then
    VCLReport1.Report.Params.ParamByName('CODCLI').Value := StrToInt(edCodigo.Text)
  else
    VCLReport1.Report.Params.ParamByName('CODCLI').Value := 0;

  VCLReport1.Report.Params.ParamByName('CODVEND').Value := 0;
  VCLReport1.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
  VCLReport1.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
  VCLReport1.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
  VCLReport1.Execute;
end;

procedure TfListaCliEscola.SpeedButton4Click(Sender: TObject);
begin
  if not dm.cds_empresa.Active then
    dm.cds_empresa.Open;
  VCLReport_etiqueta.Filename := str_relatorio + 'clienteEtiquetaUnica.rep';
  VCLReport_etiqueta.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
  VCLReport_etiqueta.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
  IF (edCodigo.Text <> '') then
    VCLReport_etiqueta.Report.Params.ParamByName('CODCLI').Value := StrToInt(edCodigo.Text)
  else
    VCLReport_etiqueta.Report.Params.ParamByName('CODCLI').Value := 0;
  VCLReport_etiqueta.Report.Params.ParamByName('CODVEND').Value := 0;
  VCLReport_etiqueta.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
  VCLReport_etiqueta.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
  VCLReport_etiqueta.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
  VCLReport_etiqueta.Execute;
end;

procedure TfListaCliEscola.FormShow(Sender: TObject);
begin
  if (not TableSeries.Active) then
    TableSeries.Open;
  TableSeries.First;
  while not TableSeries.Eof do
  begin
     cbSerie.Items.Add(TableSeriesDESC_CLASSE.AsString);
     TableSeries.Next;
  end;
  TableSeries.Close;
  if (not cds.Active) then
    cds.Open;
  edNome.SetFocus;
end;

procedure TfListaCliEscola.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
    BitBtn8.Click;
end;

procedure TfListaCliEscola.rgSituacaoClick(Sender: TObject);
var str,str1 : string;
begin
  str := '';
  str1 := '';
  Case rgSituacao.ItemIndex of
     0: str := 'M';
     1: str := 'T';
     2: str := 'I';
     3: str := '';
  end;
  if cbSerie.Text <> '' then
  begin
  if (not TableSeries.Active) then
     TableSeries.Open;
    if (TableSeries.Locate('DESC_CLASSE', cbSerie.Text, [loCaseInsensitive])) then
      str1 := TableSeriesSERIE.AsString;
  end;
  if cds.Active then
    cds.Close;
  if (str1 = '') then
    if (str = '') then
      cds.CommandText := 'Select * from CLIENTES order by NOMECLIENTE, RA'
    else
      cds.CommandText := 'Select * from CLIENTES where (SITUACAOESCOLAR = '+
        QuotedStr(str) + ') order by NOMECLIENTE, RA'
  else
    if (str = '') then
      cds.CommandText := 'Select * from CLIENTES where (SERIE = ' +
        QuotedStr(str1) + ') order by NOMECLIENTE, RA'
    else
      cds.CommandText := 'Select * from CLIENTES where (SITUACAOESCOLAR = '+
        QuotedStr(str) + ') AND (SERIE = ' +  QuotedStr(str1) +
        ') order by NOMECLIENTE, RA';

  cds.Open;
end;

procedure TfListaCliEscola.cbSerieChange(Sender: TObject);
var str,str1 : string;
begin
  str := '';
  str1 := '';
  Case rgSituacao.ItemIndex of
     0: str := 'M';
     1: str := 'T';
     2: str := 'I';
     3: str := '';
  end;
  if (not TableSeries.Active) then
     TableSeries.Open;
  if (TableSeries.Locate('DESC_CLASSE', cbSerie.Text, [loCaseInsensitive])) then
    str1 := TableSeriesSERIE.AsString;

  if cds.Active then
    cds.Close;
  if (str1 = '') then
    if (str = '') then
      cds.CommandText := 'Select * from CLIENTES order by NOME, RA'
    else
      cds.CommandText := 'Select * from CLIENTES where (SITUACAOESCOLAR = '+
        QuotedStr(str) + ') order by NOMECLIENTE, RA'
  else
    if (str = '') then
      cds.CommandText := 'Select * from CLIENTES where (SERIE = ' +
      QuotedStr(str1) + ') order by NOMECLIENTE, RA'
    else
      cds.CommandText := 'Select * from CLIENTES where (SITUACAOESCOLAR = '+
        QuotedStr(str) + ') AND (SERIE = ' +  QuotedStr(str1) +
        ') order by NOMECLIENTE, RA';

  cds.Open;

end;

end.
