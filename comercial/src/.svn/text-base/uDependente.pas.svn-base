unit uDependente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  Grids, DBGrids, Mask, DBCtrls, EDBFind, FMTBcd, SqlExpr, uPai,
  UCHistDataset;

type
  TfDependente = class(TfPai)
    DBGrid1: TDBGrid;
    DBText1: TDBText;
    EvDBFind1: TEvDBFind;
    GroupBox1: TGroupBox;
    DBText2: TDBText;
    DBText3: TDBText;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    sql_ra: TSQLDataSet;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    GroupBox2: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBComboBox1: TDBComboBox;
    DBEdit4: TDBEdit;
    DBRadioGroup2: TDBRadioGroup;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    Label32: TLabel;
    Label36: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label34: TLabel;
    Hist_Dependente: TUCHist_DataSet;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    BitBtn5: TBitBtn;
    Label41: TLabel;
    DBEdit34: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDependente: TfDependente;

implementation

uses UDmSaude, uClientePlano, UDm, uPlanoSaude;

{$R *.dfm}

procedure TfDependente.FormShow(Sender: TObject);
  var dependente : string;
begin
    if ( grupo = 'ASH') then
    begin
      if DMSaude.cdsCombo.Active then
        DMSaude.cdsCombo.Close;
      DMSaude.cdsCombo.Params[0].AsString := 'TIPO DEPENDENTE';
      DMSaude.cdsCombo.Open;
      if DBEdit8.Visible = false then
      DBEdit8.Visible:= true;
      While not DMSaude.cdsCombo.Eof do
      begin
        DBComboBox1.Items.Add(DMSaude.cdsComboDESCRICAO.AsString);
        DMSaude.cdsCombo.Next;
      end;
    end
    else begin
    if DMSaude.cdsCombo.Active then
        DMSaude.cdsCombo.Close;
      DMSaude.cdsCombo.Params[0].AsString := 'FUNCAO FUNCIONARIO';
      DMSaude.cdsCombo.Open;
    if DBEdit8.Visible = true then
      DBEdit8.Visible:= false;
      While not DMSaude.cdsCombo.Eof do
      begin
        DBComboBox1.Items.Add(DMSaude.cdsComboDESCRICAO.AsString);
        DMSaude.cdsCombo.Next;
      end;

    end;
  inherited;
  { if grupo = 'ASH' then
   begin
    MMJPanel2.Background.StartColor := clSkyBlue;
    MMJPanel1.Background.EndColor := clSkyBlue;
    fDependente.Color := clSkyBlue;
   end;
  }
  EvDBFind1.SetFocus;

  if DMSaude.cdsDependente.Active then
    DMSaude.cdsDependente.Close;
     DMSaude.cdsDependente.Params[0].AsString := DMSaude.cdsClienteRAZAOSOCIAL.AsString;
     DMSaude.cdsDependente.Params[1].AsString := DMSaude.cdsClienteGRUPO_CLIENTE.AsString;
     DMSaude.cdsDependente.Params[2].AsInteger := DMSaude.cdsClienteID_COB.AsInteger;
     DMSaude.cdsDependente.Open;

end;

procedure TfDependente.btnIncluirClick(Sender: TObject);
begin
  Panel1.Visible := true;
  DBComboBox1.SetFocus;
  inherited;
  DMSaude.cdsDependenteSTATUS.AsString :='0';
  DMSaude.cdsDependenteRAZAOSOCIAL.AsString := DMSaude.cdsClienteRAZAOSOCIAL.AsString;
  DMSaude.cdsDependenteTIPOFIRMA.AsInteger := 0;
  DMSaude.cdsDependenteSEGMENTO.AsInteger := 1;
  DMSaude.cdsDependenteREGIAO.AsInteger := 0;
  DMSaude.cdsDependenteCODUSUARIO.AsInteger := 1 ;
  DMSaude.cdsDependenteGRUPO_CLIENTE.AsString := grupo;
  DMSaude.cdsDependenteESTADORG.AsString := '00';
  DMSaude.cdsDependenteEXIST_COBERT.AsInteger := 2 ;
  DMSaude.cdsDependenteEXISTCOPART.AsInteger := 1 ;
  DMSaude.cdsDependenteCODINCLUCANC.AsInteger := 15 ;
  DMSaude.cdsDependenteCNPJ.AsString := '00000000000';
  DMSaude.cdsDependenteID_COB.AsInteger := 0 ;  

  if sql_ra.Active then
    sql_ra.Close;
  if(grupo = 'ASH') then
  begin
    sql_ra.CommandText := 'select udf_strzero(max(cast(RA as integer))+ 1,7) '+
    'as RA from CLIENTES where grupo_cliente = :grupo and razaosocial = :prcod' ;
    sql_ra.Params[0].AsString := grupo;
    sql_ra.Params[1].AsString := DMSaude.cdsClienteRAZAOSOCIAL.AsString;
  end
  else
    sql_ra.CommandText := 'select * from ra_pcmso (' +
    QuotedStr(DMSaude.cdsClienteRAZAOSOCIAL.AsString) + ')';

  sql_ra.Open;
  DMSaude.cdsDependenteRA.AsString := sql_ra.Fields[0].AsString;
end;

procedure TfDependente.btnGravarClick(Sender: TObject);
begin
  if (DMSaude.cdsDependente.State in [dsInsert]) then
    begin
     if DM.c_6_genid.Active then
       DM.c_6_genid.Close;
     DM.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_CLI, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
     DM.c_6_genid.Open;
     DMSaude.cdsDependenteCODCLIENTE.AsInteger := DM.c_6_genid.Fields[0].AsInteger;
     DM.c_6_genid.Close;
    end;
   DMSaude.cdsCombo.Locate('DESCRICAO', DBComboBox1.Text, [loCaseInsensitive]);
   DMSaude.cdsDependenteSITUACAOESCOLAR.AsString := DMSaude.cdsComboCODIGOS.AsString;
   DMSaude.cdsDependenteESTADORG.AsString := DBEdit12.Text;
   DMSaude.cdsDependenteEXIST_COBERT.AsInteger := 2 ;
   DMSaude.cdsDependenteEXISTCOPART.AsInteger := 1 ;
   DMSaude.cdsDependenteCODINCLUCANC.AsInteger := 15 ;
   DMSaude.cdsDependenteCNPJ.AsString := '00000000000';

 {    if DBRadioGroup2.ItemIndex = 1 then
    DMSaude.cdsDependenteID_COB.AsInteger := 1
   else
     DMSaude.cdsDependenteID_COB.AsInteger := 0 ;
 }
   MessageDlg('Data de  Alteração  Será Atualizado  ', mtConfirmation, [mbYes, mbNo], 0);

   DMSaude.cdsDependenteDTAALTERA.AsDateTime := now;
  inherited;
end;

procedure TfDependente.FormCreate(Sender: TObject);
//var dependente : string;
begin
  {  if ( grupo = 'ASH') then
    begin
      if DMSaude.cdsCombo.Active then
        DMSaude.cdsCombo.Close;
      DMSaude.cdsCombo.Params[0].AsString := 'TIPO DEPENDENTE';
      DMSaude.cdsCombo.Open;
      if DBEdit8.Visible = false then
      DBEdit8.Visible:= true;
      While not DMSaude.cdsCombo.Eof do
      begin
        DBComboBox1.Items.Add(DMSaude.cdsComboDESCRICAO.AsString);
        DMSaude.cdsCombo.Next;
      end;
    end
    else begin
    if DMSaude.cdsCombo.Active then
        DMSaude.cdsCombo.Close;
      DMSaude.cdsCombo.Params[0].AsString := 'FUNCAO FUNCIONARIO';
      DMSaude.cdsCombo.Open;
    if DBEdit8.Visible = true then
      DBEdit8.Visible:= false;
      While not DMSaude.cdsCombo.Eof do
      begin
        DBComboBox1.Items.Add(DMSaude.cdsComboDESCRICAO.AsString);


        DMSaude.cdsCombo.Next;
      end;

    end;
   }
  inherited;

end;

procedure TfDependente.btnExcluirClick(Sender: TObject);
begin
//  inherited;
  if(DMSaude.cdsDependente.State in [dsBrowse]) then
    DMSaude.cdsDependente.Edit;
  DMSaude.cdsDependenteSTATUS.AsInteger := 1;
  DMSaude.cdsDependenteID_COB.AsInteger := 1;  
  DMSaude.cdsDependenteDATARESC.AsDateTime := now;
  DMSaude.cdsDependenteDTAALTERA.AsDateTime := now;
  DMSaude.cdsDependente.ApplyUpdates(0);

end;

procedure TfDependente.BitBtn5Click(Sender: TObject);
begin
  inherited;
  if(DtSrc.DataSet.State in [dsBrowse]) then
    DtSrc.DataSet.Edit;
  DMSaude.cdsDependenteDATARESC.Text := '';
end;

end.
