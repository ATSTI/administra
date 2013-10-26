unit uAlunosCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, ComCtrls, StdCtrls, Buttons,
  ExtCtrls, MMJPanel, DBCtrls, Mask, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvExStdCtrls, JvGroupBox, JvExExtCtrls, JvImage, FMTBcd, SqlExpr;

type
  TfAlunosCadastro = class(TfPai_new)
    LabelICodigo: TLabel;
    DBEditCodigo: TDBEdit;
    DBEditNome: TDBEdit;
    LabelNome: TLabel;
    DBComboBox4: TDBComboBox;
    Label79: TLabel;
    Panel3: TPanel;
    Image1: TJvImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBEdit14: TDBEdit;
    Label11: TLabel;
    DBComboBox1: TDBComboBox;
    Label24: TLabel;
    DBEdit4: TDBEdit;
    Label10: TLabel;
    DBEditTurno: TDBEdit;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit16: TDBEdit;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    Label22: TLabel;
    DBEdit18: TDBEdit;
    Label25: TLabel;
    DBEdit28: TDBEdit;
    Label40: TLabel;
    DBEdit29: TDBEdit;
    Label42: TLabel;
    DBEdit30: TDBEdit;
    Label43: TLabel;
    DBEdit31: TDBEdit;
    Label44: TLabel;
    DBEdit20: TDBEdit;
    Label27: TLabel;
    DBEdit19: TDBEdit;
    Label26: TLabel;
    DBEdit2: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label38: TLabel;
    DBComboBox2: TDBComboBox;
    Label9: TLabel;
    JvGroupBox1: TJvGroupBox;
    Label1: TLabel;
    Label45: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label46: TLabel;
    Label39: TLabel;
    Label41: TLabel;
    Label34: TLabel;
    Label3: TLabel;
    Label47: TLabel;
    Label35: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    DBEditEndereco: TDBEdit;
    DBEdit33: TDBEdit;
    DBEditClasses: TDBEdit;
    DBEditCidade: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit7: TDBEdit;
    DBEditFone: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit26: TDBEdit;
    DBEditEmail: TDBEdit;
    DBEdit5: TDBEdit;
    DtSrcEnd: TDataSource;
    TabSheet2: TTabSheet;
    dbradiogroup1: TDBRadioGroup;
    Label52: TLabel;
    DBEdit42: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label53: TLabel;
    DBEditNumero: TDBEdit;
    DBEdit43: TDBEdit;
    Label54: TLabel;
    Label55: TLabel;
    DBEdit44: TDBEdit;
    Label56: TLabel;
    GroupBox3: TGroupBox;
    JvDBGrid1: TJvDBGrid;
    DBEdit61: TDBEdit;
    Label76: TLabel;
    Label57: TLabel;
    DBEdit62: TDBEdit;
    Label78: TLabel;
    ComboBox2: TComboBox;
    Label88: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label112: TLabel;
    DBEdit32: TDBEdit;
    Label48: TLabel;
    DBEdit36: TDBEdit;
    Label49: TLabel;
    BitBtn14: TBitBtn;
    MMJPanel3: TMMJPanel;
    btnGravar1: TBitBtn;
    btnIncluir1: TBitBtn;
    btnCancelar1: TBitBtn;
    btnExcluir1: TBitBtn;
    btnSair1: TBitBtn;
    btnProcurar1: TBitBtn;
    TabSheet1: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    dsTipoSerie: TDataSource;
    dsFaixa: TDataSource;
    DtSrcBanco: TDataSource;
    DtSrcFicha: TDataSource;
    ds_Cr: TDataSource;
    Label59: TLabel;
    DBEdit46: TDBEdit;
    Label60: TLabel;
    DBEdit47: TDBEdit;
    Label61: TLabel;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    Label62: TLabel;
    DBEdit50: TDBEdit;
    Label63: TLabel;
    DBEdit51: TDBEdit;
    Label64: TLabel;
    DBEdit52: TDBEdit;
    Label65: TLabel;
    DBEdit53: TDBEdit;
    Label66: TLabel;
    DBEdit55: TDBEdit;
    Label68: TLabel;
    DBEdit54: TDBEdit;
    Label67: TLabel;
    DBEdit56: TDBEdit;
    Label69: TLabel;
    DBEdit57: TDBEdit;
    Label70: TLabel;
    DBEdit58: TDBEdit;
    Label71: TLabel;
    DBEdit59: TDBEdit;
    Label72: TLabel;
    MMJPanel4: TMMJPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DtSrcResp: TDataSource;
    DBNavigator1: TDBNavigator;
    Label89: TLabel;
    DBEdit65: TDBEdit;
    Label90: TLabel;
    DBEdit66: TDBEdit;
    Label91: TLabel;
    DBEdit67: TDBEdit;
    Label92: TLabel;
    DBEdit68: TDBEdit;
    Label93: TLabel;
    DBEdit69: TDBEdit;
    Label94: TLabel;
    DBEdit70: TDBEdit;
    Label95: TLabel;
    GroupBox15: TGroupBox;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    DBEdit81: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBRadioGroup20: TDBRadioGroup;
    DBRadioGroup21: TDBRadioGroup;
    DBRadioGroup18: TDBRadioGroup;
    DBRadioGroup19: TDBRadioGroup;
    GroupBox25: TGroupBox;
    Label110: TLabel;
    Label111: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    DBEdit94: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    DBComboBox5: TDBComboBox;
    MMJPanel5: TMMJPanel;
    BitBtn10: TBitBtn;
    sds_estado: TSQLDataSet;
    pgfichamedica: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    MMJPanel6: TMMJPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox4: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    GroupBox5: TGroupBox;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox15: TDBCheckBox;
    DBRadioGroup3: TDBRadioGroup;
    GroupBox8: TGroupBox;
    Label97: TLabel;
    DBRadioGroup4: TDBRadioGroup;
    DBEdit71: TDBEdit;
    GroupBox7: TGroupBox;
    DBCheckBox16: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    GroupBox9: TGroupBox;
    Label96: TLabel;
    DBRadioGroup6: TDBRadioGroup;
    DBEdit72: TDBEdit;
    GroupBox10: TGroupBox;
    Label98: TLabel;
    DBRadioGroup7: TDBRadioGroup;
    DBEdit73: TDBEdit;
    Label99: TLabel;
    DBEdit74: TDBEdit;
    DBEdit75: TDBEdit;
    Label100: TLabel;
    DBEdit76: TDBEdit;
    Label101: TLabel;
    GroupBox11: TGroupBox;
    Label102: TLabel;
    DBRadioGroup8: TDBRadioGroup;
    DBEdit77: TDBEdit;
    GroupBox12: TGroupBox;
    Label103: TLabel;
    DBRadioGroup9: TDBRadioGroup;
    DBEdit78: TDBEdit;
    GroupBox13: TGroupBox;
    DBEdit79: TDBEdit;
    GroupBox14: TGroupBox;
    Label104: TLabel;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBEdit80: TDBEdit;
    GroupBox6: TGroupBox;
    DBRadioGroup10: TDBRadioGroup;
    GroupBox16: TGroupBox;
    DBEdit86: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit87: TDBEdit;
    DBRadioGroup11: TDBRadioGroup;
    GroupBox18: TGroupBox;
    DBEdit88: TDBEdit;
    DBRadioGroup12: TDBRadioGroup;
    GroupBox19: TGroupBox;
    DBEdit89: TDBEdit;
    DBRadioGroup13: TDBRadioGroup;
    GroupBox20: TGroupBox;
    DBEdit90: TDBEdit;
    DBRadioGroup14: TDBRadioGroup;
    GroupBox21: TGroupBox;
    DBEdit91: TDBEdit;
    DBRadioGroup15: TDBRadioGroup;
    DBRadioGroup16: TDBRadioGroup;
    GroupBox22: TGroupBox;
    DBEdit92: TDBEdit;
    DBRadioGroup17: TDBRadioGroup;
    GroupBox23: TGroupBox;
    DBEdit93: TDBEdit;
    Label50: TLabel;
    DBMemo4: TDBMemo;
    Label51: TLabel;
    DBMemo5: TDBMemo;
    BitBtn9: TBitBtn;
    DBTextDestaque1: TDBText;
    DBTextDestaque: TDBText;
    DBEdit6: TDBEdit;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    TabSheet9: TTabSheet;
    dtOcorre: TDataSource;
    Label85: TLabel;
    DBEdit101: TDBEdit;
    Label86: TLabel;
    DBComboBox6: TDBComboBox;
    Label87: TLabel;
    DBMemo1: TDBMemo;
    DBNavigator2: TDBNavigator;
    SpeedButton3: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    JvDBGrid2: TJvDBGrid;
    MMJPanel7: TMMJPanel;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure DtSrcStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    RAALUNO : STRING;
    conta_local : String;
  end;

var
  fAlunosCadastro: TfAlunosCadastro;

implementation

uses UDMEscola, UDm, uFichaMedica, uProcResponsavel;

{$R *.dfm}

procedure TfAlunosCadastro.FormShow(Sender: TObject);
begin
  inherited;
 PageControl1.ActivePage := TabSheet11;
  if (DMEscola.cdsAlunos.Active) then
    DMEscola.cdsAlunos.Close;
  DMEscola.cdsAlunos.Params[0].AsString := RAALUNO;
  DMEscola.cdsAlunos.Open;
  if (not DMEscola.cdsAlunos.IsEmpty) then
  begin
    {** Abre o endereço do aluno}
    if (DMEscola.cdsEndAluno.Active) then
        DMEscola.cdsEndAluno.Close;
    DMEscola.cdsEndAluno.Params[0].AsInteger := DMEscola.cdsAlunosCODCLIENTE.AsInteger;
    DMEscola.cdsEndAluno.Open;
    {** Abre a Fixa Médica}
    if (DMEscola.cdsFicha.Active) then
      DMEscola.cdsFicha.Close;
    DMEscola.cdsFicha.Params[0].AsString := RAALUNO;
    DMEscola.cdsFicha.Open;
    {** Abre os Responsáveis}
    if (DMEscola.cdsResp.Active) then
      DMEscola.cdsResp.Close;
    DMEscola.cdsResp.Params[0].AsString := RAALUNO;
    DMEscola.cdsResp.Open;
    {** Abre os dados FINANCEIRO}
    if (DMEscola.cdsCr_proc.Active) then
      DMEscola.cdsCr_proc.Close;
    DMEscola.cdsCr_proc.Params[0].AsInteger := DMEscola.cdsAlunosCODCLIENTE.AsInteger;
    DMEscola.cdsCr_proc.Open;
    {** Abre os dados OCORRENCIAS}
    if (DMEscola.cdsOcorrencia.Active) then
      DMEscola.cdsOcorrencia.Close;
    DMEscola.cdsOcorrencia.Params[0].AsInteger := DMEscola.cdsAlunosCODCLIENTE.AsInteger;
    DMEscola.cdsOcorrencia.Params[1].AsInteger := DMEscola.anoativo;    
    DMEscola.cdsOcorrencia.Open;
  end;

  //Vejo quais são as contas de Receitas para listar no lookupcombobox.
  if dm.cds_parametro.Active then
    dm.cds_parametro.Close;
  dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
  dm.cds_parametro.Open;
  conta_local := dm.cds_parametroDADOS.AsString;
  dm.cds_parametro.Close;
  if DMEscola.cds_ccusto.Active then
    DMEscola.cds_ccusto.Close;
  DMEscola.cds_ccusto.Params[0].AsString := conta_local;
  DMEscola.cds_ccusto.Open;

  if (not dm.TableTipoSerie.Active) then
      dm.TableTipoSerie.Open;

  if (not dm.cdsFaixa.Active) then
      dm.cdsFaixa.Open;

end;

procedure TfAlunosCadastro.btnIncluirClick(Sender: TObject);
begin
  PageControl1.ActivePage := TabSheet11;
  inherited;
  DBEditNome.SetFocus;
end;

procedure TfAlunosCadastro.btnGravarClick(Sender: TObject);
begin
 { if (DBEdit42.Text = '') then
  begin
      MessageDlg('informe o Ano Letivo', mtWarning, [mbOK], 0);
      exit;
  end;
  if (DBLookupComboBox1.Text = '') then
  begin
      MessageDlg('informe a Série do Aluno', mtWarning, [mbOK], 0);
      exit;
  end;
  if (DBLookupComboBox2.Text = '') then
  begin
      MessageDlg('informe o Banco para Gerar Boletos', mtWarning, [mbOK], 0);
      exit;
  end;}
  // Salvo o Aluno
  inherited;
  {** Salvo o Endereço}
  DMEscola.cdsEndAluno.ApplyUpdates(0);

end;

procedure TfAlunosCadastro.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  btnIncluir1.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  btnGravar1.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnCancelar1.Enabled:=DtSrc.State in [dsInsert,dsEdit];
  btnExcluir1.Enabled:=DtSrc.State in [dsBrowse];
  btnSair1.Enabled:=DtSrc.State in [dsBrowse,dsInactive];
  if DtSrc.State in [dsInsert, dsEdit] then
  begin
    btnIncluir1.Visible := False;
    btnexcluir1.Visible := False;
    btnGravar1.Visible := True;
    btnCancelar1.Visible := True;
  end;

  if DtSrc.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir1.Visible := True;
    btnExcluir1.Visible := True;
    btnGravar1.Visible := False;
    btnCancelar1.Visible := False;
  end;

end;

procedure TfAlunosCadastro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if (DMEscola.cdsAlunos.IsEmpty) then
    Exit;
  fFichaMedica := TfFichaMedica.Create(Application);
  try
    fFichaMedica.PageControl1.ActivePage := fFichaMedica.TabSheet1;
    fFichaMedica.ShowModal;
  finally
    fFichaMedica.Free;
  end;
  if (DMEscola.cdsFicha.Active) then
      DMEscola.cdsFicha.Close;
  DMEscola.cdsFicha.Params[0].AsString := DMEscola.cdsAlunosRA.AsString;
  DMEscola.cdsFicha.Open;
end;

procedure TfAlunosCadastro.BitBtn7Click(Sender: TObject);
begin
  inherited;
  if (DMEscola.cdsAlunos.IsEmpty) then
      exit;
  fProcResponsavel := TfProcResponsavel.Create(Application);
  try
    if (DBEdit46.Text <> '') then
    begin
      fProcResponsavel.Edit1.Text := DBEdit46.Text;
      fProcResponsavel.BitBtn5.Click;
    end;
    fProcResponsavel.ShowModal;
    if (DMEscola.cdsResp.Active) then
       DMEscola.cdsResp.Close;
    DMEscola.cdsResp.Params[0].AsString := DMEscola.cdsAlunosRA.AsString;
    DMEscola.cdsResp.Open;
    DMEscola.cdsResp.First;
  finally
    fProcResponsavel.Free;
  end;

end;

procedure TfAlunosCadastro.BitBtn9Click(Sender: TObject);
begin
  inherited;
  if (DMEscola.cdsAlunos.IsEmpty) then
    Exit;
  fFichaMedica := TfFichaMedica.Create(Application);
  try
    fFichaMedica.PageControl1.ActivePage := fFichaMedica.TabSheet11;
    fFichaMedica.ShowModal;
  finally
    fFichaMedica.Free;
  end;
  if (DMEscola.cdsFicha.Active) then
      DMEscola.cdsFicha.Close;
  DMEscola.cdsFicha.Params[0].AsString := DMEscola.cdsAlunosRA.AsString;
  DMEscola.cdsFicha.Open;
end;

procedure TfAlunosCadastro.SpeedButton1Click(Sender: TObject);
var Origem, Destino: string;
begin
  //aqui busco a foto
  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute
   then Image1.Picture.LoadFromFile(OpenDialog1.FileName);
  //aqui salvo a foto
  if DMEscola.cdsAlunos.Active then
  begin
    if DMEscola.cdsAlunos.State in [dsBrowse] then
       DMEscola.cdsAlunos.Edit;
     DMEscola.cdsAlunosFOTO.AsString := ExtractFileName(OpenDialog1.FileName);
     DMEscola.cdsAlunos.ApplyUpdates(0);
     Origem := OpenDialog1.FileName;
     Destino := Dm.caminhofoto + ExtractFileName(OpenDialog1.FileName);
     if (FileExists(origem)) then
     if not CopyFile(PChar(Origem), PChar(Destino), true) then
        ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
  end;
end;

procedure TfAlunosCadastro.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  Image1.Picture.Bitmap.Assign(nil);
  if DMEscola.cdsAlunos.Active then
  begin
    if DMEscola.cdsAlunos.State in [dsBrowse] then
       DMEscola.cdsAlunos.Edit;
    DMEscola.cdsAlunosFOTO.Clear;
    DMEscola.cdsAlunos.ApplyUpdates(0);
  end;
end;

end.
