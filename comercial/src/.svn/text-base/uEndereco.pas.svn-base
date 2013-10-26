unit uEndereco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, ExtCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit,
  StdCtrls, Menus, XPMenu, DB, Buttons, MMJPanel, FMTBcd, DBCtrls,
  DBClient, Provider, SqlExpr, DBLocal, DBLocalS;

type
  TfEndereco = class(TfPai_new)
    GroupBox4: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn1: TBitBtn;
    RadioGroup2: TRadioGroup;
    sds_CliEnd: TSQLDataSet;
    dsp_CliEnd: TDataSetProvider;
    cds_CliEnd: TClientDataSet;
    sds_CliEndCODENDERECO: TIntegerField;
    sds_CliEndCODCLIENTE: TIntegerField;
    sds_CliEndLOGRADOURO: TStringField;
    sds_CliEndBAIRRO: TStringField;
    sds_CliEndCOMPLEMENTO: TStringField;
    sds_CliEndCIDADE: TStringField;
    sds_CliEndUF: TStringField;
    sds_CliEndCEP: TStringField;
    sds_CliEndTELEFONE: TStringField;
    sds_CliEndTELEFONE1: TStringField;
    sds_CliEndTELEFONE2: TStringField;
    sds_CliEndFAX: TStringField;
    sds_CliEndE_MAIL: TStringField;
    sds_CliEndRAMAL: TStringField;
    sds_CliEndTIPOEND: TSmallintField;
    sds_CliEndDADOSADICIONAIS: TStringField;
    sds_CliEndDDD: TStringField;
    sds_CliEndDDD1: TStringField;
    sds_CliEndDDD2: TStringField;
    sds_CliEndDDD3: TStringField;
    sds_CliEndNUMERO: TStringField;
    sds_CliEndCD_IBGE: TStringField;
    sds_CliEndPAIS: TStringField;
    cds_CliEndCODENDERECO: TIntegerField;
    cds_CliEndCODCLIENTE: TIntegerField;
    cds_CliEndLOGRADOURO: TStringField;
    cds_CliEndBAIRRO: TStringField;
    cds_CliEndCOMPLEMENTO: TStringField;
    cds_CliEndCIDADE: TStringField;
    cds_CliEndUF: TStringField;
    cds_CliEndCEP: TStringField;
    cds_CliEndTELEFONE: TStringField;
    cds_CliEndTELEFONE1: TStringField;
    cds_CliEndTELEFONE2: TStringField;
    cds_CliEndFAX: TStringField;
    cds_CliEndE_MAIL: TStringField;
    cds_CliEndRAMAL: TStringField;
    cds_CliEndTIPOEND: TSmallintField;
    cds_CliEndDADOSADICIONAIS: TStringField;
    cds_CliEndDDD: TStringField;
    cds_CliEndDDD1: TStringField;
    cds_CliEndDDD2: TStringField;
    cds_CliEndDDD3: TStringField;
    cds_CliEndNUMERO: TStringField;
    cds_CliEndCD_IBGE: TStringField;
    cds_CliEndPAIS: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    procIBGE: TSQLClientDataSet;
    procIBGENM_LOCALIDADE2: TStringField;
    procIBGECD_UF: TStringField;
    procIBGENM_MUNICIPIO: TStringField;
    procIBGECD_IBGE: TStringField;
    Label1: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEndereco: TfEndereco;

implementation

uses UDm, sCtrlResize, uCliente1, uProcurar;

{$R *.dfm}

procedure TfEndereco.FormShow(Sender: TObject);
begin
  //inherited;
  //sCtrlResize.CtrlResize(TForm(fEndereco));
  //RadioGroup2.ItemIndex := fCliente1.cds_CliEndTIPO.AsInteger;
  RadioGroup2Click(Sender);
end;

procedure TfEndereco.BitBtn1Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,procIBGE);
  try
   fProcurar.BtnProcurar.Click;
   fProcurar.EvDBFind1.DataField := 'NM_LOCALIDADE';
   if fProcurar.ShowModal=mrOk then
   begin
     if(DtSrc.State in [dsbrowse,dsinactive]) then
       cds_CliEnd.Edit;
     cds_CliEndCIDADE.AsString := procIBGENM_MUNICIPIO.AsString;
     cds_CliEndCD_IBGE.AsString := procIBGECD_IBGE.AsString;
     cds_CliEndUF.AsString := procIBGECD_UF.AsString;
   end;
   finally
    procIBGE.Close;
    fProcurar.Free;
   end;
end;

procedure TfEndereco.btnGravarClick(Sender: TObject);
begin
  if(DtSrc.State in [dsInsert]) then
  begin
    cds_CliEndPAIS.AsString := 'Brasil';
    if dm.c_6_genid.Active then
            dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_END_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_CliEndCODENDERECO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
    cds_CliEndCODCLIENTE.AsInteger := fCliente1.cds_cliCODCLIENTE.AsInteger;
  end;
  inherited;
end;

procedure TfEndereco.RadioGroup2Click(Sender: TObject);
begin
  if (cds_CliEnd.Active) then
    cds_CliEnd.Close;
  cds_CliEnd.Params[0].AsInteger := fCliente1.cds_cliCODCLIENTE.AsInteger;
  cds_CliEnd.Params[1].AsInteger := RadioGroup2.ItemIndex;
  cds_CliEnd.Open;
  if ( cds_CliEnd.IsEmpty) then
    btnIncluir.Click;
end;

procedure TfEndereco.btnIncluirClick(Sender: TObject);
begin
  inherited;
  cds_CliEndTIPOEND.AsInteger := RadioGroup2.ItemIndex;
end;

procedure TfEndereco.FormCreate(Sender: TObject);
begin
  //inherited;

end;

end.
