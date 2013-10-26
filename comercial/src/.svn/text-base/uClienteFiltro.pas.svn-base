unit uClienteFiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvCheckedMaskEdit,
  JvDatePickerEdit, StdCtrls, Buttons, ExtCtrls, FMTBcd, DBCtrls, SqlExpr,
  Provider, DB, DBClient, JvExStdCtrls, JvDBCombobox;

type
  TfClienteFiltro = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    codVen: TEdit;
    nomeVen: TEdit;
    BitBtn5: TBitBtn;
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn13: TBitBtn;
    Panel2: TPanel;
    GroupBox7: TGroupBox;
    cbfisica: TRadioButton;
    cbjuridica: TRadioButton;
    cbttipo: TRadioButton;
    GroupBox1: TGroupBox;
    CBox1: TRadioButton;
    CBox2: TRadioButton;
    GroupBox6: TGroupBox;
    CBox3: TRadioButton;
    CBox4: TRadioButton;
    cbtemail: TRadioButton;
    GroupBox4: TGroupBox;
    edCidade: TEdit;
    BitBtn1: TBitBtn;
    edtUF: TEdit;
    Label5: TLabel;
    edtDDD: TEdit;
    Label7: TLabel;
    GroupBox5: TGroupBox;
    JvDatePickerEdit2: TJvDatePickerEdit;
    JvDatePickerEdit3: TJvDatePickerEdit;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    edCodigo: TEdit;
    edNome: TEdit;
    edRazao: TEdit;
    edCNPJCPF: TEdit;
    edIERG: TEdit;
    Label6: TLabel;
    Label8: TLabel;
    GroupBox8: TGroupBox;
    DtSrcReg: TDataSource;
    cdsRegiao: TClientDataSet;
    cdsRegiaoCODDADOS: TIntegerField;
    cdsRegiaoDESCRICAO: TStringField;
    cdsRegiaoUSO: TStringField;
    cdsRegiaoCODIGOS: TStringField;
    cdsRegiaoOUTROS: TStringField;
    DataSetProvider1: TDataSetProvider;
    SQLDataSet1: TSQLDataSet;
    SQLDataSet1CODDADOS: TIntegerField;
    SQLDataSet1DESCRICAO: TStringField;
    SQLDataSet1USO: TStringField;
    SQLDataSet1CODIGOS: TStringField;
    SQLDataSet1OUTROS: TStringField;
    cbbRegiao: TComboBox;
    gbNasc: TGroupBox;
    cbAniversario: TComboBox;
    GroupBox9: TGroupBox;
    cbOrdem1: TComboBox;
    Label14: TLabel;
    Label16: TLabel;
    cbOrdem2: TComboBox;
    Label17: TLabel;
    cbOrdem3: TComboBox;
    BitBtn6: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn7: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edCNPJCPFKeyPress(Sender: TObject; var Key: Char);
    procedure edIERGKeyPress(Sender: TObject; var Key: Char);
    procedure edIERGChange(Sender: TObject);
    procedure edCNPJCPFChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    cod_vendedor : Integer;
    nome_vendedor : String;
    { Public declarations }
  end;

var
  fClienteFiltro: TfClienteFiltro;

implementation

uses uProcurar, UDm;

{$R *.dfm}

procedure TfClienteFiltro.BitBtn3Click(Sender: TObject);
begin
  //ListaCliente.Close;
  edCodigo.Text     := '';
  edNome.Text       := '';
  edCidade.Text     := '';
  codVen.Text       := '';
  nomeVen.Text      := '';
  cbtemail.Checked  := true;
  cbttipo.Checked   := true;
  CBox1.Checked     := true;
  //RadioButton5.Checked := False;
  //BitBtn2.Click;
end;

procedure TfClienteFiltro.BitBtn13Click(Sender: TObject);
begin
  Close;
end;

procedure TfClienteFiltro.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfClienteFiltro.edCNPJCPFKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (key in ['0'..'9',#01..#24]) then
    key := #0;
end;

procedure TfClienteFiltro.edIERGKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#01..#24]) then
    key := #0;
end;

procedure TfClienteFiltro.edIERGChange(Sender: TObject);
begin
  edIERG.text:= StringReplace(edIERG.text,'.','',[rfReplaceAll]);
  edIERG.text:= StringReplace(edIERG.text,',','',[rfReplaceAll]);
  edIERG.text:= StringReplace(edIERG.text,'\','',[rfReplaceAll]);
  edIERG.text:= StringReplace(edIERG.text,'/','',[rfReplaceAll]);
  edIERG.text:= StringReplace(edIERG.text,'-','',[rfReplaceAll]);
end;

procedure TfClienteFiltro.edCNPJCPFChange(Sender: TObject);
begin
  edCNPJCPF.text:= StringReplace(edCNPJCPF.text,'.','',[rfReplaceAll]);
  edCNPJCPF.text:= StringReplace(edCNPJCPF.text,',','',[rfReplaceAll]);
  edCNPJCPF.text:= StringReplace(edCNPJCPF.text,'\','',[rfReplaceAll]);
  edCNPJCPF.text:= StringReplace(edCNPJCPF.text,'/','',[rfReplaceAll]);
  edCNPJCPF.text:= StringReplace(edCNPJCPF.text,'-','',[rfReplaceAll]);
end;

procedure TfClienteFiltro.FormShow(Sender: TObject);
begin
  if (not cdsRegiao.Active) then
    cdsRegiao.Open;
  cbbRegiao.Clear;
  cdsRegiao.First;
  while  not cdsRegiao.Eof do
  begin
    cbbRegiao.Items.Add(cdsRegiaoDESCRICAO.AsString);
    cdsRegiao.Next;
  end;
  if (dm.cadastroClienteTipo = 'SIMPLES') then
    gbNasc.Visible := True;   
end;

procedure TfClienteFiltro.FormCreate(Sender: TObject);
begin
  cbbRegiao.Text := '';
end;

procedure TfClienteFiltro.BitBtn5Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  fProcurar.usuarioproc := 'VENDEDOR';
  fProcurar.BtnProcurar.Click;
  fProcurar.btnIncluir.Visible := True;
  try
    fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
    varForm1 := 'vendedor';
    cod_vendedor := 0;
    nome_vendedor := '';
    if fProcurar.ShowModal=mrOk then
    begin
      codVen.text := IntToStr(dm.scds_usuario_procCODUSUARIO.AsInteger);
      nomeVen.text := dm.scds_usuario_procNOMEUSUARIO.AsString;
    end;
  finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
  end;
end;

procedure TfClienteFiltro.BitBtn6Click(Sender: TObject);
begin
  cbOrdem1.ItemIndex := -1;
end;

procedure TfClienteFiltro.BitBtn4Click(Sender: TObject);
begin
  cbOrdem2.ItemIndex := -1;
end;

procedure TfClienteFiltro.BitBtn7Click(Sender: TObject);
begin
  cbOrdem3.ItemIndex := -1;
end;

end.
