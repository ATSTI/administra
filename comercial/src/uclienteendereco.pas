unit uclienteendereco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DB, DBClient, Provider, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, DBCtrls, Mask;

type
  Tfclienteendereco = class(TfPai)
    sdsEnderecoCli: TSQLDataSet;
    sdsEnderecoCliCODENDERECO: TIntegerField;
    sdsEnderecoCliCODCLIENTE: TIntegerField;
    sdsEnderecoCliLOGRADOURO: TStringField;
    sdsEnderecoCliBAIRRO: TStringField;
    sdsEnderecoCliCOMPLEMENTO: TStringField;
    sdsEnderecoCliCIDADE: TStringField;
    sdsEnderecoCliUF: TStringField;
    sdsEnderecoCliCEP: TStringField;
    sdsEnderecoCliTELEFONE: TStringField;
    sdsEnderecoCliTELEFONE1: TStringField;
    sdsEnderecoCliTELEFONE2: TStringField;
    sdsEnderecoCliFAX: TStringField;
    sdsEnderecoCliE_MAIL: TStringField;
    sdsEnderecoCliRAMAL: TStringField;
    sdsEnderecoCliTIPOEND: TSmallintField;
    sdsEnderecoCliDADOSADICIONAIS: TStringField;
    sdsEnderecoCliDDD: TStringField;
    dspEnderecoCli: TDataSetProvider;
    cdsEnderecoCli: TClientDataSet;
    cdsEnderecoCliCODENDERECO: TIntegerField;
    cdsEnderecoCliCODCLIENTE: TIntegerField;
    cdsEnderecoCliLOGRADOURO: TStringField;
    cdsEnderecoCliBAIRRO: TStringField;
    cdsEnderecoCliCOMPLEMENTO: TStringField;
    cdsEnderecoCliCIDADE: TStringField;
    cdsEnderecoCliUF: TStringField;
    cdsEnderecoCliCEP: TStringField;
    cdsEnderecoCliTELEFONE: TStringField;
    cdsEnderecoCliTELEFONE1: TStringField;
    cdsEnderecoCliTELEFONE2: TStringField;
    cdsEnderecoCliFAX: TStringField;
    cdsEnderecoCliE_MAIL: TStringField;
    cdsEnderecoCliRAMAL: TStringField;
    cdsEnderecoCliTIPOEND: TSmallintField;
    cdsEnderecoCliDADOSADICIONAIS: TStringField;
    cdsEnderecoCliDDD: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    GroupBox1: TGroupBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label9: TLabel;
    DBEdit13: TDBEdit;
    Label10: TLabel;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBNavigator1: TDBNavigator;
    sds_estado: TSQLDataSet;
    DBComboBox1: TDBComboBox;
    SpeedButton3: TSpeedButton;
    sdsEnderecoCliDDD2: TStringField;
    sdsEnderecoCliDDD3: TStringField;
    sdsEnderecoCliDDD1: TStringField;
    cdsEnderecoCliDDD2: TStringField;
    cdsEnderecoCliDDD3: TStringField;
    cdsEnderecoCliDDD1: TStringField;
    Label17: TLabel;
    DBEdit6: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cdsEnderecoCliNewRecord(DataSet: TDataSet);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fclienteendereco: Tfclienteendereco;

implementation

uses UDm, uClienteCadastro, uEstado;

{$R *.dfm}

procedure Tfclienteendereco.FormCreate(Sender: TObject);
begin
  inherited;
  if (not sds_estado.Active) then
    sds_estado.Open;
  While not sds_estado.Eof do begin
    DBComboBox1.Items.Add(sds_estado.Fields[0].asString);
    sds_estado.Next;
  end;
  sds_estado.Close;
end;

procedure Tfclienteendereco.FormShow(Sender: TObject);
begin
  inherited;
  if cdsEnderecoCli.Active then
     cdsEnderecoCli.Close;
  cdsEnderecoCli.Params[0].Clear;
  cdsEnderecoCli.Params[1].AsInteger := fClienteCadastro.cds_cliCODCLIENTE.AsInteger;
  cdsEnderecoCli.Open;
end;

procedure Tfclienteendereco.btnIncluirClick(Sender: TObject);
begin
  inherited;
 cdsEnderecoCliTELEFONE.EditMask := '0000\-0099;1;_';
 cdsEnderecoCliTELEFONE1.EditMask := '0000\-0099;1;_';
 cdsEnderecoCliTELEFONE2.EditMask := '0000\-0099;1;_';
 cdsEnderecoCliFAX.EditMask := '0000\-0099;1;_';
 dbedit2.SetFocus;
end;

procedure Tfclienteendereco.btnGravarClick(Sender: TObject);
begin
  if (sds_estado.Active) then
    sds_estado.Close;
  sds_estado.CommandText := 'SELECT UF FROM ESTADO_ICMS WHERE UF = ''' + DBComboBox1.Text + '''';
  sds_estado.Open;
  if (sds_estado.IsEmpty) then
  begin
   MessageDlg('Estado não cadastrado na Tabela ESTADO(icms). ', mtWarning, [mbOK], 0);
   fEstado:=TfEstado.Create(Application);
   try
     fEstado.showmodal;
   finally
    fEstado.Free;
   end;
   exit;
  end;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_END_CLI, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdsEnderecoCliCODENDERECO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  inherited;

end;

procedure Tfclienteendereco.cdsEnderecoCliNewRecord(DataSet: TDataSet);
begin
  inherited;
  cdsEnderecoCliCODCLIENTE.AsInteger:= fClienteCadastro.cds_cliCODCLIENTE.AsInteger;
  cdsEnderecoCliTIPOEND.AsInteger:=0;
end;

procedure Tfclienteendereco.SpeedButton3Click(Sender: TObject);
begin
  inherited;
   fEstado:=TfEstado.Create(Application);
   try
     fEstado.showmodal;
   finally
    fEstado.Free;
   end;
end;

end.
