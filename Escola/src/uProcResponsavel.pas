unit uProcResponsavel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, StdCtrls, Buttons,
  Grids, DBGrids, ExtCtrls, MMJPanel, Menus, DBCtrls;

type
  TfProcResponsavel = class(TForm)
    Label1: TLabel;
    MMJPanel1: TMMJPanel;
    DBGrid1: TDBGrid;
    MMJPanel3: TMMJPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DBGrid2: TDBGrid;
    Edit1: TEdit;
    Label2: TLabel;
    sdsResponsavel: TSQLDataSet;
    sdsResponsavelCOD_RESPONSAVEL: TIntegerField;
    sdsResponsavelRESPONSAVEL: TStringField;
    sdsResponsavelENDERECO: TStringField;
    sdsResponsavelBAIRRO: TStringField;
    sdsResponsavelCEP: TStringField;
    sdsResponsavelCIDADE: TStringField;
    sdsResponsavelUF: TStringField;
    sdsResponsavelTIPO_RESPONSAVEL: TStringField;
    sdsResponsavelCPF: TStringField;
    sdsResponsavelRG: TStringField;
    sdsResponsavelTELEFONE: TStringField;
    sdsResponsavelTELEFONE1: TStringField;
    sdsResponsavelEMAIL: TStringField;
    sdsResponsavelLOCALTRABALHO: TStringField;
    sdsResponsavelCAIXAPOSTAL: TStringField;
    sdsResponsavelTELEFONE_COMERCIAL: TStringField;
    dspResponsavel: TDataSetProvider;
    cdsResponsavel: TClientDataSet;
    cdsResponsavelCOD_RESPONSAVEL: TIntegerField;
    cdsResponsavelRESPONSAVEL: TStringField;
    cdsResponsavelENDERECO: TStringField;
    cdsResponsavelBAIRRO: TStringField;
    cdsResponsavelCEP: TStringField;
    cdsResponsavelCIDADE: TStringField;
    cdsResponsavelUF: TStringField;
    cdsResponsavelTIPO_RESPONSAVEL: TStringField;
    cdsResponsavelCPF: TStringField;
    cdsResponsavelRG: TStringField;
    cdsResponsavelTELEFONE: TStringField;
    cdsResponsavelTELEFONE1: TStringField;
    cdsResponsavelEMAIL: TStringField;
    cdsResponsavelLOCALTRABALHO: TStringField;
    cdsResponsavelCAIXAPOSTAL: TStringField;
    cdsResponsavelTELEFONE_COMERCIAL: TStringField;
    DataSource1: TDataSource;
    cdsAlu: TClientDataSet;
    dspAlu: TDataSetProvider;
    DataSource2: TDataSource;
    sdsAlu: TSQLDataSet;
    btnIncluir: TBitBtn;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Sair1: TMenuItem;
    Label3: TLabel;
    Label4: TLabel;
    sResp_alu: TSQLDataSet;
    dResp_alu: TDataSetProvider;
    cResp_alu: TClientDataSet;
    cResp_aluCOD_RESP_ALUNO: TIntegerField;
    cResp_aluCOD_RESPONSAVEL: TIntegerField;
    cResp_aluRA: TStringField;
    sResp_aluCOD_RESP_ALUNO: TIntegerField;
    sResp_aluCOD_RESPONSAVEL: TIntegerField;
    sResp_aluRA: TStringField;
    sResp_aluTIPO_RESPONSAVEL: TStringField;
    cResp_aluTIPO_RESPONSAVEL: TStringField;
    RadioGroup1: TRadioGroup;
    sdsAluRA: TStringField;
    sdsAluNOMECLIENTE: TStringField;
    sdsAluSERIE: TStringField;
    cdsAluRA: TStringField;
    cdsAluNOMECLIENTE: TStringField;
    cdsAluSERIE: TStringField;
    procedure BitBtn5Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnIncluirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fProcResponsavel: TfProcResponsavel;

implementation

uses UDm, uResponsalvel, UDMEscola;

{$R *.dfm}

procedure TfProcResponsavel.BitBtn5Click(Sender: TObject);
var
  sql_texto, varCondicao :string;
begin
  if (cdsResponsavel.Active) then
     cdsResponsavel.Close;
  cdsResponsavel.CommandText := '';
  sql_texto := 'select * from RESPONSAVEL';
  //********************************************************************************************
  if Edit1.Text <> '' then
     varCondicao := ' where UDF_COLLATEBR(RESPONSAVEL) containing ' + '''' + Edit1.Text + ''''
  else
     varCondicao := '';
  //********************************************************************************************
  cdsResponsavel.CommandText := sql_texto + varCondicao;
  cdsResponsavel.Open;
end;

procedure TfProcResponsavel.DBGrid1DblClick(Sender: TObject);
begin
  if (cdsAlu.Active) then
    cdsAlu.Close;
  cdsAlu.Params[0].AsInteger := cdsResponsavelCOD_RESPONSAVEL.AsInteger;
  cdsAlu.Open;  
end;

procedure TfProcResponsavel.DBGrid1TitleClick(Column: TColumn);
begin
    cdsResponsavel.IndexFieldNames := Column.FieldName;
end;

procedure TfProcResponsavel.btnIncluirClick(Sender: TObject);
begin
  fResponsalvel := TfResponsalvel.Create(Application);
  try
    fResponsalvel.codresponsavel := cdsResponsavelCOD_RESPONSAVEL.AsInteger;
    fResponsalvel.ShowModal;
  finally
    fResponsalvel.Free;
  end;    
end;

procedure TfProcResponsavel.BitBtn1Click(Sender: TObject);
begin
   if (cResp_alu.Active) then
       cResp_alu.Close;
   cResp_alu.Params[0].AsInteger := cdsResponsavelCOD_RESPONSAVEL.AsInteger;
   cResp_alu.Params[1].AsString := DMEscola.cdsAlunosRA.AsString;
   cResp_alu.Open;
   if (not cResp_alu.IsEmpty) then
   begin
      MessageDlg('Responsável já foi cadastrado para esse aluno', mtWarning, [mbOK, mbCancel], 0);
   end
   else
   begin
      if (RadioGroup1.ItemIndex = -1) then
      begin
        MessageDlg('Marque o Tipo do Responsável.', mtWarning, [mbOK], 0);
        exit;
      end;
      cResp_alu.Append;
      if dm.c_6_genid.Active then
        dm.c_6_genid.Close;
      dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENRESPALU, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
      dm.c_6_genid.Open;
      cResp_aluCOD_RESP_ALUNO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
      dm.c_6_genid.Close;
      cResp_aluCOD_RESPONSAVEL.AsInteger := cdsResponsavelCOD_RESPONSAVEL.AsInteger;
      cResp_aluRA.AsString := DMEscola.cdsAlunosRA.AsString;
      if (RadioGroup1.ItemIndex = 0) then
        cResp_aluTIPO_RESPONSAVEL.AsString := '0';
      if (RadioGroup1.ItemIndex = 1) then
        cResp_aluTIPO_RESPONSAVEL.AsString := '1';
      if (RadioGroup1.ItemIndex = 2) then
        cResp_aluTIPO_RESPONSAVEL.AsString := '2';
      cResp_alu.ApplyUpdates(0);
      cResp_alu.Close;
   end;
   close;
end;

procedure TfProcResponsavel.BitBtn6Click(Sender: TObject);
begin
  close;
end;

end.
