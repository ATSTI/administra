unit uCCe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit,
  ExtCtrls, MMJPanel, DBCtrls, ACBrNFe;

type
  TfCCe = class(TForm)
    sdsNF: TSQLDataSet;
    dspNF: TDataSetProvider;
    cdsNF: TClientDataSet;
    DtsrcNF: TDataSource;
    MMJPanel1: TMMJPanel;
    MMJPanel2: TMMJPanel;
    btnSair: TBitBtn;
    GroupBox2: TGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Label7: TLabel;
    btnIncluirCCe: TBitBtn;
    sdsCCe: TSQLDataSet;
    dspCCe: TDataSetProvider;
    cdsCCe: TClientDataSet;
    DtsrcCCe: TDataSource;
    btnGravar: TBitBtn;
    btnCCe: TBitBtn;
    sdsCCeCHAVE: TStringField;
    sdsCCeORGAO: TIntegerField;
    sdsCCeDHENVIO: TSQLTimeStampField;
    sdsCCeSEQUENCIA: TIntegerField;
    sdsCCeCORRECAO: TStringField;
    sdsCCePROTOCOLO: TStringField;
    sdsCCeSELECIONOU: TStringField;
    sdsCCeCNPJ: TStringField;
    sdsCCeCONDICAO: TStringField;
    cdsCCeCHAVE: TStringField;
    cdsCCeORGAO: TIntegerField;
    cdsCCeDHENVIO: TSQLTimeStampField;
    cdsCCeSEQUENCIA: TIntegerField;
    cdsCCeCORRECAO: TStringField;
    cdsCCePROTOCOLO: TStringField;
    cdsCCeSELECIONOU: TStringField;
    cdsCCeCNPJ: TStringField;
    cdsCCeCONDICAO: TStringField;
    cdsNFNOTASERIE: TStringField;
    cdsNFDTAEMISSAO: TDateField;
    cdsNFCODCLIENTE: TIntegerField;
    cdsNFNUMNF: TIntegerField;
    cdsNFCODVENDA: TIntegerField;
    cdsNFNATUREZA: TSmallintField;
    cdsNFRAZAOSOCIAL: TStringField;
    cdsNFSELECIONOU: TStringField;
    cdsNFPROTOCOLOENV: TStringField;
    cdsNFNOMEXML: TStringField;
    cdsNFCNPJ: TStringField;
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    JvDateEdit1: TJvDateEdit;
    JvDateEdit2: TJvDateEdit;
    btnListar: TBitBtn;
    rbCli: TRadioButton;
    rbFor: TRadioButton;
    JvDBGrid2: TJvDBGrid;
    btnExcluir: TBitBtn;
    procedure btnListarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure rbCliClick(Sender: TObject);
    procedure rbForClick(Sender: TObject);
    procedure btnIncluirCCeClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DtsrcCCeStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCCeClick(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure JvDBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCCe: TfCCe;

implementation

uses pcnCCeNFe, uNFeletronica;

{$R *.dfm}

procedure TfCCe.btnListarClick(Sender: TObject);
var
cce : string;
begin
   if (rbCli.Checked) then
   begin
     cce := ' select  nf.NOTASERIE, nf.DTAEMISSAO, nf.CODCLIENTE, nf.NUMNF, nf.CODVENDA, nf.natureza, ' +
     ' cl.RAZAOSOCIAL, nf.SELECIONOU, nf.PROTOCOLOENV, udf_left(nf.NOMEXML, 60) as NOMEXML, cl.CNPJ ' +
     ' from NOTAFISCAL nf inner join CLIENTES cl on cl.CODCLIENTE = nf.CODCLIENTE ' +
     ' left outer join VENDA v on v.CODVENDA = nf.CODVENDA ' +
     ' where (nf.DTAEMISSAO between :dta1 and :dta2) and' +
     ' (NF.NATUREZA = 15 or NF.NATUREZA = 12) ' +
     ' and nf.PROTOCOLOENV IS NOT NULL order by nf.DTAEMISSAO DESC';
   end
   else
   begin
     cce := ' select  nf.NOTASERIE, nf.DTAEMISSAO, nf.CODCLIENTE, nf.NUMNF, nf.CODVENDA, nf.natureza, ' +
     ' cl.RAZAOSOCIAL, nf.SELECIONOU, nf.PROTOCOLOENV, udf_left(nf.NOMEXML, 60) as NOMEXML, cl.CNPJ ' +
     ' from NOTAFISCAL nf inner join FORNECEDOR cl on cl.CODFORNECEDOR = nf.CODCLIENTE ' +
     ' left outer join Compra v on v.CODCOMPRA = nf.CODVENDA ' +
     ' where (nf.DTAEMISSAO between :dta1 and :dta2) and' +
     ' (NF.NATUREZA = 20 or NF.NATUREZA = 21) ' +
     ' and nf.PROTOCOLOENV IS NOT NULL order by nf.DTAEMISSAO DESC';
   end;
   cdsNF.Params[0].Clear;
   cdsNF.Params[1].Clear;
   if (cdsNF.Active) then
     cdsNF.Close;
   cdsNF.CommandText := '';
   cdsNF.CommandText := cce;
   cdsNF.Params.ParamByName('dta1').AsDateTime := StrToDateTime(JvDateEdit1.Text);
   cdsNF.Params.ParamByName('dta2').AsDateTime := StrToDateTime(JvDateEdit2.Text);
   cdsNF.Open;
   if (not cdsNF.Eof) then
     btnIncluirCCe.Enabled := True
   else
     btnIncluirCCe.Enabled := False;
  if (cdsCCe.Active) then
    cdsCCe.Close;

  if (not cdsNF.IsEmpty) then
  begin
    cdsCCe.CommandText := 'SELECT * FROM CCE' +
      ' WHERE CHAVE = ' + QuotedStr(Copy(cdsNFNOMEXML.AsString, 1 , 44));
    cdsCCe.Open;
  end;
end;

procedure TfCCe.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfCCe.rbCliClick(Sender: TObject);
begin
  rbFor.Checked := False;
end;

procedure TfCCe.rbForClick(Sender: TObject);
begin
  rbCli.Checked := False;
end;

procedure TfCCe.btnIncluirCCeClick(Sender: TObject);
var seqCCe: Integer;
begin
  if ((not cdsCCe.Active) and (not cdsNF.IsEmpty)) then
  begin
    cdsCCe.CommandText := 'SELECT * FROM CCE' +
      ' WHERE CHAVE = ' + QuotedStr(Copy(cdsNFNOMEXML.AsString, 1 , 44));
    cdsCCe.Open;
  end;
  if (cdsCCe.IsEmpty) then
    seqCCe := 1
  else begin
    seqCce := cdsCCe.RecordCount + 1;
  end;
  cdsCCe.Append;
  cdsCCeCHAVE.AsString := Copy(cdsNFNOMEXML.AsString, 1 , 44);
  cdsCCeORGAO.AsString := Copy(cdsNFNOMEXML.AsString, 1, 2);
  cdsCCeCNPJ.AsString  := cdsNFCNPJ.AsString;
  cdsCCeSEQUENCIA.AsInteger := seqCCe;
end;

procedure TfCCe.btnGravarClick(Sender: TObject);
var correcao : Integer;
begin
//  correcao := StrLen(cdsCCeCORRECAO.AsString);
  if ( correcao < 15) then
    MessageDlg('Descrição da correção menor que minimo exigido.', mtWarning, [mbOK], 0);
  cdsCCe.ApplyUpdates(0);
end;

procedure TfCCe.DtsrcCCeStateChange(Sender: TObject);
begin
      btnGravar.Visible:=DtsrcCCe.State in [dsInsert,dsEdit];

      if DtsrcCCe.State in [dsInsert, dsEdit] then
        btnGravar.Enabled := True;

      if DtsrcCCe.State in [dsBrowse,dsInactive] then
        btnGravar.Enabled := False;
end;

procedure TfCCe.FormCreate(Sender: TObject);
begin
  JvDateEdit1.Text := DateToStr(Now);
  JvDateEdit2.Text := DateToStr(Now);
end;

procedure TfCCe.btnCCeClick(Sender: TObject);
begin
  fNFeletronica.PageControl1.ActivePage := fNFeletronica.CCe;
  fNFeletronica.ShowModal;
end;

procedure TfCCe.JvDBGrid1DblClick(Sender: TObject);
begin
  if (not cdsNF.IsEmpty) then
  begin
    cdsCCe.Close;
    cdsCCe.CommandText := 'SELECT * FROM CCE' +
      ' WHERE CHAVE = ' + QuotedStr(Copy(cdsNFNOMEXML.AsString, 1 , 44));
    cdsCCe.Open;
  end;
end;

procedure TfCCe.btnExcluirClick(Sender: TObject);
begin
  if  MessageDlg('Confirma a exclusão Carta de Correção selecionada ?',
    mtConfirmation, [mbYes, mbNo],0) = mrNo then exit;
    
  if (cdsCCePROTOCOLO.IsNull) then
  begin
    cdsCCe.Delete;
    cdsCCe.ApplyUpdates(0);
    MessageDlg('Registro excluido com sucesso.', mtInformation, [mbOK], 0);
  end
  else begin
    MessageDlg('Não é possível excluir uma carta de correção já GERADA.', mtWarning, [mbOK], 0);
  end;
end;

procedure TfCCe.JvDBGrid1CellClick(Column: TColumn);
begin
  if (not cdsNF.IsEmpty) then
  begin
    cdsCCe.Close;
    cdsCCe.CommandText := 'SELECT * FROM CCE' +
      ' WHERE CHAVE = ' + QuotedStr(Copy(cdsNFNOMEXML.AsString, 1 , 44));
    cdsCCe.Open;
  end;
end;

end.
