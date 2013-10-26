unit uLabLaudo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, StdCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  ExtCtrls, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, Menus, XPMenu,
  DB, Buttons, MMJPanel, FMTBcd, DBClient, Provider, SqlExpr, ComCtrls,
  DBCtrls, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit;

type
  TfLabLaudo = class(TfPai_new)
    sds: TSQLDataSet;
    dsp: TDataSetProvider;
    cds: TClientDataSet;
    sdsCODEXAME: TIntegerField;
    sdsDATASOLICITACAO: TDateField;
    sdsDATAENTREGAMATERIAL: TDateField;
    sdsDATAPREVISTAENTREGA: TDateField;
    sdsDATALAUDOEXAME: TDateField;
    sdsDATARETIRADA: TDateField;
    sdsCODCLIENTE: TIntegerField;
    sdsTIPOEXAME: TStringField;
    sdsMEDICOSOLICITANTE: TIntegerField;
    sdsCONVENIO: TStringField;
    sdsVALOR: TFloatField;
    sdsSITUACAO: TStringField;
    sdsMATERIALRECEBIDO: TStringField;
    cdsCODEXAME: TIntegerField;
    cdsDATASOLICITACAO: TDateField;
    cdsDATAENTREGAMATERIAL: TDateField;
    cdsDATAPREVISTAENTREGA: TDateField;
    cdsDATALAUDOEXAME: TDateField;
    cdsDATARETIRADA: TDateField;
    cdsCODCLIENTE: TIntegerField;
    cdsTIPOEXAME: TStringField;
    cdsMEDICOSOLICITANTE: TIntegerField;
    cdsCONVENIO: TStringField;
    cdsVALOR: TFloatField;
    cdsSITUACAO: TStringField;
    cdsMATERIALRECEBIDO: TStringField;
    sdsNOMECLIENTE: TStringField;
    cdsNOMECLIENTE: TStringField;
    sdsCli: TSQLDataSet;
    dspCli: TDataSetProvider;
    cdsCli: TClientDataSet;
    DataSource1: TDataSource;
    PageControl2: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    gruposanguineo: TEdit;
    rh: TEdit;
    fatordu: TEdit;
    TabSheet3: TTabSheet;
    glicemia: TEdit;
    Edit59: TEdit;
    Edit60: TEdit;
    TabSheet4: TTabSheet;
    hora: TEdit;
    Edit63: TEdit;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    edtCliente: TJvDBSearchComboBox;
    BitBtn1: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    GroupBox1: TGroupBox;
    plaquetas: TEdit;
    chbcm: TEdit;
    hbcm: TEdit;
    VCM: TEdit;
    Hematocrito: TEdit;
    Hemoglobina: TEdit;
    Eritrocitos: TEdit;
    Edit33: TEdit;
    Edit38: TEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    Edit71: TEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    GroupBox2: TGroupBox;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    leucocitos: TEdit;
    matemielocitos: TEdit;
    bastonetes: TEdit;
    linfoblastos: TEdit;
    prolinfocitos: TEdit;
    Segmentados: TEdit;
    Atipicos: TEdit;
    Linfocitos: TEdit;
    Monicitos: TEdit;
    Edit4: TEdit;
    GroupBox4: TGroupBox;
    DBMemo1: TDBMemo;
    GroupBox3: TGroupBox;
    DBMemo2: TDBMemo;
    Edit7: TEdit;
    Edit8: TEdit;
    hcg: TEdit;
    Edit44: TEdit;
    protozoarios: TEdit;
    helmintos: TEdit;
    DBNavigator1: TDBNavigator;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    DBMemo3: TDBMemo;
    GroupBox5: TGroupBox;
    DBEdit1: TDBEdit;
    GroupBox6: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox7: TGroupBox;
    DBEdit3: TDBEdit;
    GroupBox8: TGroupBox;
    DBEdit4: TDBEdit;
    GroupBox9: TGroupBox;
    DBEdit5: TDBEdit;
    GroupBox10: TGroupBox;
    urina8a: TEdit;
    urina7a: TEdit;
    urina6a: TEdit;
    urina5a: TEdit;
    urina4a: TEdit;
    urina3a: TEdit;
    urina2a: TEdit;
    urina1a: TEdit;
    GroupBox11: TGroupBox;
    urina1c: TEdit;
    urina2c: TEdit;
    urina3c: TEdit;
    urina4c: TEdit;
    urina5c: TEdit;
    urina6c: TEdit;
    Edit58: TEdit;
    sdsLaudo: TSQLDataSet;
    dsplaudo: TDataSetProvider;
    cdsLaudo: TClientDataSet;
    DtSrc_exame: TDataSource;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    sdsLaudoCODEXAMERESULT: TIntegerField;
    sdsLaudoCODEXAME: TIntegerField;
    sdsLaudoRESULTADO1: TStringField;
    sdsLaudoRESULTADO2: TStringField;
    sdsLaudoRESULTADO3: TStringField;
    sdsLaudoRESULTADO4: TStringField;
    sdsLaudoRESULTADO5: TStringField;
    sdsLaudoRESULTADO6: TStringField;
    sdsLaudoRESULTADO7: TStringField;
    sdsLaudoRESULTADO8: TStringField;
    sdsLaudoRESULTADO9: TStringField;
    sdsLaudoRESULTADO10: TStringField;
    sdsLaudoRESULTADO11: TStringField;
    sdsLaudoRESULTADO12: TStringField;
    sdsLaudoRESULTADO13: TStringField;
    sdsLaudoRESULTADO14: TStringField;
    sdsLaudoRESULTADO15: TStringField;
    sdsLaudoRESULTADO16: TStringField;
    sdsLaudoRESULTADO17: TStringField;
    sdsLaudoRESULTADO18: TStringField;
    sdsLaudoRESULTADO19: TStringField;
    sdsLaudoRESULTADO20: TStringField;
    sdsLaudoRESULTADO21: TStringField;
    sdsLaudoRESULTADO22: TStringField;
    sdsLaudoRESULTADO23: TStringField;
    sdsLaudoRESULTADO24: TStringField;
    sdsLaudoRESULTADO25: TStringField;
    sdsLaudoPORCENTO: TStringField;
    sdsLaudoPORCENTO1: TStringField;
    sdsLaudoPORCENTO2: TStringField;
    sdsLaudoPORCENTO3: TStringField;
    sdsLaudoPORCENTO4: TStringField;
    sdsLaudoPORCENTO5: TStringField;
    sdsLaudoPORCENTO6: TStringField;
    sdsLaudoPORCENTO7: TStringField;
    sdsLaudoPORCENTO8: TStringField;
    sdsLaudoPORCENTO9: TStringField;
    sdsLaudoOBS: TStringField;
    sdsLaudoOBS1: TStringField;
    sdsLaudoOBS2: TStringField;
    cdsLaudoCODEXAMERESULT: TIntegerField;
    cdsLaudoCODEXAME: TIntegerField;
    cdsLaudoRESULTADO1: TStringField;
    cdsLaudoRESULTADO2: TStringField;
    cdsLaudoRESULTADO3: TStringField;
    cdsLaudoRESULTADO4: TStringField;
    cdsLaudoRESULTADO5: TStringField;
    cdsLaudoRESULTADO6: TStringField;
    cdsLaudoRESULTADO7: TStringField;
    cdsLaudoRESULTADO8: TStringField;
    cdsLaudoRESULTADO9: TStringField;
    cdsLaudoRESULTADO10: TStringField;
    cdsLaudoRESULTADO11: TStringField;
    cdsLaudoRESULTADO12: TStringField;
    cdsLaudoRESULTADO13: TStringField;
    cdsLaudoRESULTADO14: TStringField;
    cdsLaudoRESULTADO15: TStringField;
    cdsLaudoRESULTADO16: TStringField;
    cdsLaudoRESULTADO17: TStringField;
    cdsLaudoRESULTADO18: TStringField;
    cdsLaudoRESULTADO19: TStringField;
    cdsLaudoRESULTADO20: TStringField;
    cdsLaudoRESULTADO21: TStringField;
    cdsLaudoRESULTADO22: TStringField;
    cdsLaudoRESULTADO23: TStringField;
    cdsLaudoRESULTADO24: TStringField;
    cdsLaudoRESULTADO25: TStringField;
    cdsLaudoPORCENTO: TStringField;
    cdsLaudoPORCENTO1: TStringField;
    cdsLaudoPORCENTO2: TStringField;
    cdsLaudoPORCENTO3: TStringField;
    cdsLaudoPORCENTO4: TStringField;
    cdsLaudoPORCENTO5: TStringField;
    cdsLaudoPORCENTO6: TStringField;
    cdsLaudoPORCENTO7: TStringField;
    cdsLaudoPORCENTO8: TStringField;
    cdsLaudoPORCENTO9: TStringField;
    cdsLaudoOBS: TStringField;
    cdsLaudoOBS1: TStringField;
    cdsLaudoOBS2: TStringField;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    sdsCliCODCLIENTE: TIntegerField;
    sdsCliNOMECLIENTE: TStringField;
    cdsCliCODCLIENTE: TIntegerField;
    cdsCliNOMECLIENTE: TStringField;
    DBText1: TDBText;
    DBText2: TDBText;
    dt1: TJvDatePickerEdit;
    TabSheet11: TTabSheet;
    GroupBox18: TGroupBox;
    GroupBox22: TGroupBox;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit60: TDBEdit;
    DBEdit61: TDBEdit;
    GroupBox12: TGroupBox;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    GroupBox13: TGroupBox;
    DBEdit62: TDBEdit;
    DBEdit63: TDBEdit;
    GroupBox15: TGroupBox;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    GroupBox19: TGroupBox;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    GroupBox23: TGroupBox;
    DBEdit72: TDBEdit;
    DBEdit73: TDBEdit;
    GroupBox24: TGroupBox;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    GroupBox14: TGroupBox;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    GroupBox16: TGroupBox;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    GroupBox20: TGroupBox;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    TabSheet12: TTabSheet;
    GroupBox21: TGroupBox;
    Label27: TLabel;
    DBEdit13: TDBEdit;
    DBEdit23: TDBEdit;
    GroupBox25: TGroupBox;
    Label29: TLabel;
    DBEdit24: TDBEdit;
    DBEdit32: TDBEdit;
    GroupBox26: TGroupBox;
    Label31: TLabel;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    Label34: TLabel;
    GroupBox28: TGroupBox;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    Label57: TLabel;
    DBEdit89: TDBEdit;
    Label58: TLabel;
    Label59: TLabel;
    DBEdit90: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    DBEdit91: TDBEdit;
    Label62: TLabel;
    Label63: TLabel;
    DBEdit92: TDBEdit;
    Label64: TLabel;
    Label65: TLabel;
    DBEdit93: TDBEdit;
    Label66: TLabel;
    DBEdit94: TDBEdit;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    TabSheet13: TTabSheet;
    Edit1: TEdit;
    DBEdit78: TDBEdit;
    DBEdit95: TDBEdit;
    Edit2: TEdit;
    DBEdit96: TDBEdit;
    Label71: TLabel;
    Edit3: TEdit;
    DBEdit97: TDBEdit;
    Edit5: TEdit;
    DBEdit98: TDBEdit;
    Label72: TLabel;
    GroupBox27: TGroupBox;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    DBEdit76: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit99: TDBEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PageControl2Change(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit28Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLabLaudo: TfLabLaudo;

implementation

uses UDm;

{$R *.dfm}

procedure TfLabLaudo.BitBtn1Click(Sender: TObject);
var sqltexto : string;
begin
  inherited;
  cds.close;
  cds.CommandText := '';
  sqltexto := 'select lab.*, cli.NOMECLIENTE from LABEXAME lab left outer join CLIENTES cli on cli.CODCLIENTE = lab.CODCLIENTE ';
  if (RadioGroup1.ItemIndex = 1) then
      sqltexto := sqltexto + 'where lab.SITUACAO <> ' + QuotedStr('LAUDADO') +
      ' and lab.SITUACAO <> ' + QuotedStr('NÃO COLETADO')

{      sqltexto := sqltexto + 'where lab.SITUACAO <> ' + QuotedStr('FINALIZADO') +
      ' and lab.SITUACAO <> ' + QuotedStr('LAUDADO') +
      ' and lab.SITUACAO <> ' + QuotedStr('NÃO COLETADO')
}
  else
      sqltexto := sqltexto + 'where lab.SITUACAO = ' + QuotedStr('LAUDADO');
  if (edtCliente.Text <> '') then
    sqltexto := sqltexto + ' and cli.NOMECLIENTE = ' + QuotedStr(edtCliente.Text);
  cds.CommandText := sqltexto;
  cds.Open;

end;

procedure TfLabLaudo.FormShow(Sender: TObject);
begin
  inherited;
  if (not cdsCli.Active) then
    cdsCli.Open;
  edtCliente.Text := '';
end;

procedure TfLabLaudo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if (cdsCli.Active) then
    cdsCli.Close;
end;

procedure TfLabLaudo.PageControl2Change(Sender: TObject);
begin
  inherited;
      if (cdsLaudo.Active) then
         cdsLaudo.Close;
      cdsLaudo.Params[0].asinteger := cdsCODEXAME.AsInteger;
      cdsLaudo.Open;
      if (not cdsLaudo.IsEmpty) then
        cdsLaudo.edit;


       if (cdsTIPOEXAME.AsString = 'COLINESTERASE') then
      begin
         TabSheet13.TabVisible := True;
         TabSheet10.TabVisible := False;
         TabSheet11.TabVisible := False;
         DBEdit78.Color := clYellow;
      end;


      if (cdsTIPOEXAME.AsString = 'HEMOGRAMA') then
      begin
         TabSheet1.TabVisible := True;
         PageControl1.ActivePage := TabSheet1;
         TabSheet11.TabVisible := False;
         TabSheet13.TabVisible := False;

       end
       else
           TabSheet1.TabVisible := False;

      if (cdsTIPOEXAME.AsString = 'TIPAGEM SANGUINEA') then
      begin
         TabSheet2.TabVisible := True;
         PageControl1.ActivePage := TabSheet2;
         TabSheet11.TabVisible := False;
         TabSheet13.TabVisible := False;         
      end
      else
           TabSheet2.TabVisible := False;

      if (cdsTIPOEXAME.AsString = 'GLICEMIA') then
      begin
         TabSheet3.TabVisible := True;
         TabSheet11.TabVisible := False;
         TabSheet13.TabVisible := False;         
         PageControl1.ActivePage := TabSheet3;
      end
      else
           TabSheet3.TabVisible := False;

      if (cdsTIPOEXAME.AsString = 'VELOC. HOMOSSED.') then
      begin
         TabSheet4.TabVisible := True;
         PageControl1.ActivePage := TabSheet4;
         TabSheet11.TabVisible := False;
         TabSheet13.TabVisible := False;

      end
      else
           TabSheet4.TabVisible := False;

      if (cdsTIPOEXAME.AsString = 'BETA HCG') then
      begin
         TabSheet5.TabVisible := True;
         TabSheet11.TabVisible := False;
         TabSheet13.TabVisible := False;
         PageControl1.ActivePage := TabSheet5;
      end
      else
           TabSheet5.TabVisible := False;

      if (cdsTIPOEXAME.AsString = 'PROTO') then
      begin
         TabSheet6.TabVisible := True;
         PageControl1.ActivePage := TabSheet6;
         TabSheet11.TabVisible := False;
         TabSheet13.TabVisible := False;

      end
      else
           TabSheet6.TabVisible := False;

      if (cdsTIPOEXAME.AsString = 'URINA I') then
      begin
         TabSheet9.TabVisible := True;
         PageControl1.ActivePage := TabSheet9;
         TabSheet11.TabVisible := False;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;

     end
     else
           TabSheet9.TabVisible := False;

      if (cdsTIPOEXAME.AsString = 'ACIDO URICO') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := True;
           GroupBox14.Enabled := False;
           GroupBox16.Enabled := False;
           GroupBox18.Enabled := False;
           GroupBox20.Enabled := False;
           GroupBox22.Enabled := False;
           GroupBox13.Enabled := False;
           GroupBox15.Enabled := False;
           GroupBox17.Enabled := False;
           GroupBox19.Enabled := False;
           GroupBox23.Enabled := False;
           GroupBox24.Enabled := False;
           DBEdit50.Color := clWindow;
           DBEdit51.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;
         end;
     end;
        if (cdsTIPOEXAME.AsString = 'COLESTEROL TOTAL') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := False;
           GroupBox14.Enabled := True;
           GroupBox16.Enabled := False;
           GroupBox18.Enabled := False;
           GroupBox20.Enabled := False;
           GroupBox22.Enabled := False;
           GroupBox13.Enabled := False;
           GroupBox15.Enabled := False;
           GroupBox17.Enabled := False;
           GroupBox19.Enabled := False;
           GroupBox23.Enabled := False;
           GroupBox24.Enabled := False;
           DBEdit52.Color := clWindow;
           DBEdit53.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;


         end;
     end;
        if (cdsTIPOEXAME.AsString = 'HDL - COLESTEROL') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := False;
           GroupBox14.Enabled := False;
           GroupBox16.Enabled := True;
           GroupBox18.Enabled := False;
           GroupBox20.Enabled := False;
           GroupBox22.Enabled := False;
           GroupBox13.Enabled := False;
           GroupBox15.Enabled := False;
           GroupBox17.Enabled := False;
           GroupBox19.Enabled := False;
           GroupBox23.Enabled := False;
           GroupBox24.Enabled := False;
           DBEdit54.Color := clWindow;
           DBEdit55.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;
         end;
     end;
        if (cdsTIPOEXAME.AsString = 'LDL - COLESTEROL') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := False;
           GroupBox14.Enabled := False;
           GroupBox16.Enabled := False;
           GroupBox18.Enabled := True;
           GroupBox20.Enabled := False;
           GroupBox22.Enabled := False;
           GroupBox13.Enabled := False;
           GroupBox15.Enabled := False;
           GroupBox17.Enabled := False;
           GroupBox19.Enabled := False;
           GroupBox23.Enabled := False;
           GroupBox24.Enabled := False;
           DBEdit57.Color := clWindow;
           DBEdit56.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;
         end;
     end;
        if (cdsTIPOEXAME.AsString = 'VLDL - COLESTEROL') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := False;
           GroupBox14.Enabled := False;
           GroupBox16.Enabled := False;
           GroupBox18.Enabled := False;
           GroupBox20.Enabled := True;
           GroupBox22.Enabled := False;
           GroupBox13.Enabled := False;
           GroupBox15.Enabled := False;
           GroupBox17.Enabled := False;
           GroupBox19.Enabled := False;
           GroupBox23.Enabled := False;
           GroupBox24.Enabled := False;
           DBEdit58.Color := clWindow;
           DBEdit59.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;
         end;
     end;
        if (cdsTIPOEXAME.AsString = 'TRIGLICERIDES') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := False;
           GroupBox14.Enabled := False;
           GroupBox16.Enabled := False;
           GroupBox18.Enabled := False;
           GroupBox20.Enabled := False;
           GroupBox22.Enabled := True;
           GroupBox13.Enabled := False;
           GroupBox15.Enabled := False;
           GroupBox17.Enabled := False;
           GroupBox19.Enabled := False;
           GroupBox23.Enabled := False;
           GroupBox24.Enabled := False;
           DBEdit61.Color := clWindow;
           DBEdit60.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;
         end;
     end;
        if (cdsTIPOEXAME.AsString = 'CREATININA') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := False;
           GroupBox14.Enabled := False;
           GroupBox16.Enabled := False;
           GroupBox18.Enabled := False;
           GroupBox20.Enabled := False;
           GroupBox22.Enabled := False;
           GroupBox13.Enabled := True;
           GroupBox15.Enabled := False;
           GroupBox17.Enabled := False;
           GroupBox19.Enabled := False;
           GroupBox23.Enabled := False;
           GroupBox24.Enabled := False;
           DBEdit62.Color := clWindow;
           DBEdit63.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;
         end;
     end;
        if (cdsTIPOEXAME.AsString = 'UREIA') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := False;
           GroupBox14.Enabled := False;
           GroupBox16.Enabled := False;
           GroupBox18.Enabled := False;
           GroupBox20.Enabled := False;
           GroupBox22.Enabled := False;
           GroupBox13.Enabled := False;
           GroupBox15.Enabled := True;
           GroupBox17.Enabled := False;
           GroupBox19.Enabled := False;
           GroupBox23.Enabled := False;
           GroupBox24.Enabled := False;
           DBEdit64.Color := clWindow;
           DBEdit65.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;
         end;
     end;
        if (cdsTIPOEXAME.AsString = 'AST/TGO') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := False;
           GroupBox14.Enabled := False;
           GroupBox16.Enabled := False;
           GroupBox18.Enabled := False;
           GroupBox20.Enabled := False;
           GroupBox22.Enabled := False;
           GroupBox13.Enabled := False;
           GroupBox15.Enabled := False;
           GroupBox17.Enabled := True;
           GroupBox19.Enabled := False;
           GroupBox23.Enabled := False;
           GroupBox24.Enabled := False;
           DBEdit66.Color := clWindow;
           DBEdit67.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;
         end;
     end;
        if (cdsTIPOEXAME.AsString = 'ALT/TGP') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := False;
           GroupBox14.Enabled := False;
           GroupBox16.Enabled := False;
           GroupBox18.Enabled := False;
           GroupBox20.Enabled := False;
           GroupBox22.Enabled := False;
           GroupBox13.Enabled := False;
           GroupBox15.Enabled := False;
           GroupBox17.Enabled := False;
           GroupBox19.Enabled := True;
           GroupBox23.Enabled := False;
           GroupBox24.Enabled := False;
           DBEdit68.Color := clWindow;
           DBEdit69.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;
         end;
     end;
        if (cdsTIPOEXAME.AsString = 'GAMA-GLUTAMIL TRANSFERASE') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := False;
           GroupBox14.Enabled := False;
           GroupBox16.Enabled := False;
           GroupBox18.Enabled := False;
           GroupBox20.Enabled := False;
           GroupBox22.Enabled := False;
           GroupBox13.Enabled := False;
           GroupBox15.Enabled := False;
           GroupBox17.Enabled := False;
           GroupBox19.Enabled := False;
           GroupBox23.Enabled := True;
           GroupBox24.Enabled := False;
           DBEdit72.Color := clWindow;
           DBEdit73.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;
         end;
     end;
        if (cdsTIPOEXAME.AsString = 'FOSFATASE ALCALINA') then
      begin
         TabSheet11.TabVisible := True;
         PageControl1.ActivePage := TabSheet11;
         TabSheet12.TabVisible := False;
         TabSheet13.TabVisible := False;
         if(cdsLaudo.State in [dsedit]) then
         begin
           GroupBox12.Enabled := False;
           GroupBox14.Enabled := False;
           GroupBox16.Enabled := False;
           GroupBox18.Enabled := False;
           GroupBox20.Enabled := False;
           GroupBox22.Enabled := False;
           GroupBox13.Enabled := False;
           GroupBox15.Enabled := False;
           GroupBox17.Enabled := False;
           GroupBox19.Enabled := False;
           GroupBox23.Enabled := False;
           GroupBox24.Enabled := True;
           DBEdit74.Color := clWindow;
           DBEdit75.Color := clWindow;
           TabSheet10.TabVisible := False;
           TabSheet12.TabVisible := False;
           TabSheet13.TabVisible := False;
         end;
     end;

     if ((cdsTIPOEXAME.AsString <> 'ACIDO URICO') and
         (cdsTIPOEXAME.AsString <> 'COLESTEROL TOTAL')and
         (cdsTIPOEXAME.AsString <> 'HDL - COLESTEROL')and
         (cdsTIPOEXAME.AsString <> 'LDL - COLESTEROL')and
         (cdsTIPOEXAME.AsString <> 'VLDL - COLESTEROL')and
         (cdsTIPOEXAME.AsString <> 'TRIGLICERIDES')and
         (cdsTIPOEXAME.AsString <> 'CREATININA')and
         (cdsTIPOEXAME.AsString <> 'UREIA')and
         (cdsTIPOEXAME.AsString <> 'AST/TGO')and
         (cdsTIPOEXAME.AsString <> 'ALT/TGP')and
         (cdsTIPOEXAME.AsString <> 'GAMA-GLUTAMIL TRANSFERASE')and
         (cdsTIPOEXAME.AsString <> 'FOSFATASE ALCALINA')

        )

     then
           TabSheet12.TabVisible := False;
        if (cdsTIPOEXAME.AsString = 'TEMPO DE SANGRAMENTO (TS)') then
      begin
         TabSheet11.TabVisible := False;
         TabSheet13.TabVisible := False;
         TabSheet12.TabVisible := True;
         PageControl1.ActivePage := TabSheet12;
         if(cdsLaudo.State in [dsedit,dsinsert,dsbrowse ]) then
         begin
           GroupBox21.Visible := True;
           GroupBox25.Enabled := False;
           GroupBox26.Enabled := False;
           GroupBox27.Enabled := False;
           GroupBox28.Enabled := False;
           DBEdit13.Color := clYellow;
           DBEdit23.Color := clYellow;


         end;
     end;

        if (cdsTIPOEXAME.AsString = 'TEMPO DE COAGULAÇÃO (TC)') then
      begin
         TabSheet11.TabVisible := False;
         TabSheet13.TabVisible := False;
         TabSheet12.TabVisible := True;
         PageControl1.ActivePage := TabSheet12;
         if(cdsLaudo.State in [dsedit,dsinsert,dsbrowse ]) then
         begin
           GroupBox21.Enabled := False;
           GroupBox25.Visible := True;
           GroupBox26.Enabled := False;
           GroupBox27.Enabled := False;
           GroupBox28.Enabled := False;
           DBEdit24.Color := clYellow;
           DBEdit32.Color := clYellow;

         end;
     end;






end;

procedure TfLabLaudo.btnIncluirClick(Sender: TObject);
begin
  inherited;
  IF(cdsLaudo.RecordCount = 1) THEN
  BEGIN
    cdsLaudo.Cancel;
MessageDlg('Já Existe Resultado Cadastrado '+#13+#10+'Voce somente podera  Alterar ?', mtInformation, [mbOK], 0);
    EXIT;
  END;
  cdsLaudoCODEXAME.AsInteger := cdsCODEXAME.AsInteger;
  if (cdsTIPOEXAME.AsString = 'HEMOGRAMA') then
     DBEdit6.SetFocus;
  if (cdsTIPOEXAME.AsString = 'TIPAGEM SANGUINEA') then
     DBEdit25.SetFocus;
  if (cdsTIPOEXAME.AsString = 'GLICEMIA') then
     DBEdit28.SetFocus;
  if (cdsTIPOEXAME.AsString = 'VELOC. HOMOSSED.') then
     DBEdit29.SetFocus;
  if (cdsTIPOEXAME.AsString = 'BETA HCG') then
     DBEdit49.SetFocus;
  if (cdsTIPOEXAME.AsString = 'PROTO') then
     DBEdit30.SetFocus;
  if (cdsTIPOEXAME.AsString = 'URINA I') then
     DBEdit1.SetFocus;


  if (cdsTIPOEXAME.AsString = 'ACIDO URICO') then
  begin
     GroupBox12.Enabled := True;
     DBEdit50.Color := clYellow;
     DBEdit51.Color := clYellow;
     DBEdit50.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'COLESTEROL TOTAL') then
  begin
     GroupBox14.Enabled := True;
     DBEdit52.Color := clYellow;
     DBEdit53.Color := clYellow;
     DBEdit52.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'HDL - COLESTEROL') then
  begin
     GroupBox16.Enabled := True;
     DBEdit54.Color := clYellow;
     DBEdit55.Color := clYellow;
     DBEdit54.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'LDL - COLESTEROL') then
  begin
     GroupBox18.Enabled := True;
     DBEdit57.Color := clYellow;
     DBEdit56.Color := clYellow;
     DBEdit57.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'VLDL - COLESTEROL') then
  begin
     GroupBox20.Enabled := True;
     DBEdit58.Color := clYellow;
     DBEdit59.Color := clYellow;
     DBEdit58.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'TRIGLICERIDES') then
  begin
     GroupBox22.Enabled := True;
     DBEdit61.Color := clYellow;
     DBEdit60.Color := clYellow;
     DBEdit61.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'CREATININA') then
  begin
     GroupBox13.Enabled := True;
     DBEdit62.Color := clYellow;
     DBEdit63.Color := clYellow;
     DBEdit62.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'UREIA') then
  begin
     GroupBox15.Enabled := True;
     DBEdit64.Color := clYellow;
     DBEdit65.Color := clYellow;
     DBEdit64.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'AST/TGO') then
  begin
     GroupBox17.Enabled := True;
     DBEdit66.Color := clYellow;
     DBEdit67.Color := clYellow;
     DBEdit66.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'ALT/TGP') then
  begin
     GroupBox19.Enabled := True;
     DBEdit68.Color := clYellow;
     DBEdit69.Color := clYellow;
     DBEdit68.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'GAMA-GLUTAMIL TRANSFERASE') then
  begin
     GroupBox23.Enabled := True;
     DBEdit72.Color := clYellow;
     DBEdit73.Color := clYellow;
     DBEdit72.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'FOSFATASE ALCALINA') then
  begin
     GroupBox24.Enabled := True;
     DBEdit74.Color := clYellow;
     DBEdit75.Color := clYellow;
     DBEdit74.SetFocus;
  end;
  if (cdsTIPOEXAME.AsString = 'TEMPO DE SANGRAMENTO (TS)') then
    begin
    GroupBox21.Enabled := True;
    DBEdit13.Color := clYellow;
    DBEdit23.Color := clYellow;
    DBEdit13.SetFocus;
    end;
  if (cdsTIPOEXAME.AsString = 'TEMPO DE COAGULAÇÃO (TC)') then
    begin
    GroupBox25.Enabled := True;
    DBEdit24.Color := clYellow;
    DBEdit32.Color := clYellow;
    DBEdit24.SetFocus;
    end;


end;

procedure TfLabLaudo.btnGravarClick(Sender: TObject);
begin

  if (DtSrc.State in [dsInsert]) then
  begin
   if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(LABEXAMERESULTADOCOD, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cdsLaudoCODEXAMERESULT.AsInteger := dm.c_6_genid.Fields[0].AsInteger;
    dm.c_6_genid.Close;
  end;
  if (cdsSITUACAO.AsString = 'COLETADO') then
  begin
    cds.Edit;
    cdsSituacao.AsString := 'LAUDADO';
    cdsDATALAUDOEXAME.AsDateTime := dt1.Date;
    cds.ApplyUpdates(0);
    RadioGroup1.ItemIndex := 0;
  end;
  inherited;

end;

procedure TfLabLaudo.FormCreate(Sender: TObject);
begin
  inherited;
   PageControl2.ActivePage := TabSheet7;
end;

procedure TfLabLaudo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;
procedure TfLabLaudo.DBEdit28Exit(Sender: TObject);
begin
  inherited;
 if(DBEdit28.Text < '70' )and (DBEdit28.Text > '110' ) then
   cdsLaudoOBS.Text := 'RESULTADO TEC. CONFIRMADO' ;
end;

end.
