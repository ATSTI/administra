unit uEtiquetas_cli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, rpcompobase, rpvclreport, FMTBcd, DB, SqlExpr;

type
  TfEtiquetas_cli = class(TForm)
    VCLReport_etiqueta: TVCLReport;
    SpeedButton4: TBitBtn;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    VCLReport1: TVCLReport;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Combo: TComboBox;
    Label4: TLabel;
    BitBtn13: TBitBtn;
    sEndereco: TSQLDataSet;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton5: TRadioButton;
    sEnderecoCODCLIENTE: TIntegerField;
    sEnderecoLOGRADOURO: TStringField;
    sEnderecoBAIRRO: TStringField;
    sEnderecoCOMPLEMENTO: TStringField;
    sEnderecoCIDADE: TStringField;
    sEnderecoUF: TStringField;
    sEnderecoCEP: TStringField;
    sEnderecoNUMERO: TStringField;
    procedure SpeedButton4Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEtiquetas_cli: TfEtiquetas_cli;

implementation

uses uListaClientes, UDm, ComObj;

{$R *.dfm}

procedure TfEtiquetas_cli.SpeedButton4Click(Sender: TObject);
begin
if (RadioButton4.Checked = True) then
 begin
    if not dm.cds_empresa.Active then
      dm.cds_empresa.Open;
    VCLReport_etiqueta.Filename := str_relatorio + 'clienteEtiquetaUnica.rep';
    VCLReport_etiqueta.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    VCLReport_etiqueta.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
{    IF (fListaClientes.edCodigo.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('CODCLI').Value := StrToInt(fListaClientes.edCodigo.Text)
    else
      VCLReport_etiqueta.Report.Params.ParamByName('CODCLI').Value := 0;
    IF (fListaClientes.CodVen.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('CODVEND').Value := StrToInt(fListaClientes.CodVen.Text)
    else
      VCLReport_etiqueta.Report.Params.ParamByName('CODVEND').Value := 0;
    IF (fListaClientes.EdtUF.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('UFCLI').Value := fListaClientes.edtUF.Text
    else
      VCLReport_etiqueta.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
    IF (fListaClientes.EdCidade.text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('CID').Value := fListaClientes.edCidade.Text
    else
      VCLReport_etiqueta.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
    IF (fListaClientes.EdtDDD.Text <> '') then
      VCLReport_etiqueta.Report.Params.ParamByName('DDDCLI').Value := fListaClientes.edtDDD.Text
    else
      VCLReport_etiqueta.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
 }
    VCLReport_etiqueta.Title := VCLReport_etiqueta.Filename;
    VCLReport_etiqueta.Execute;
 end;
 if (RadioButton3.Checked = True) then
 begin
    if not dm.cds_empresa.Active then
      dm.cds_empresa.Open;
    VCLReport1.FileName := str_relatorio + 'clienteEtiqueta2.rep';
    VCLReport1.Report.DatabaseInfo.Items[0].SQLConnection := dm.sqlsisAdimin;
    // Número de Etiquetas por Cliente
    VCLReport1.Report.Params.ParamByName('N_ETIQUETA').Value := 1;
{    IF (fListaClientes.edCodigo.Text <> '') then
      VCLReport1.Report.Params.ParamByName('CODCLI').Value := StrToInt(fListaClientes.edCodigo.Text)
    else
      VCLReport1.Report.Params.ParamByName('CODCLI').Value := 0;
    IF (fListaClientes.CodVen.Text <> '') then
      VCLReport1.Report.Params.ParamByName('CODVEND').Value := StrToInt(fListaClientes.codVen.Text)
    else
      VCLReport1.Report.Params.ParamByName('CODVEND').Value := 0;
    IF (fListaClientes.edtUF.Text <> '') then
      VCLReport1.Report.Params.ParamByName('UFCLI').Value := fListaClientes.edtUF.Text
    else
      VCLReport1.Report.Params.ParamByName('UFCLI').Value := 'TODOS';
    IF (fListaClientes.EdCidade.text <> '') then
      VCLReport1.Report.Params.ParamByName('CID').Value := fListaClientes.edCidade.Text
    else
      VCLReport1.Report.Params.ParamByName('CID').Value := 'TODAS AS CIDADES CADASTRADAS NO SISTEMA';
    IF (fListaClientes.edtDDD.Text <> '') then
      VCLReport1.Report.Params.ParamByName('DDDCLI').Value := fListaClientes.edtDDD.Text
    else
      VCLReport1.Report.Params.ParamByName('DDDCLI').Value := 'TODOS';
 }   VCLReport1.title := VCLReport1.FileName;
    VCLReport1.Execute;
 end;
end;

procedure TfEtiquetas_cli.RadioButton3Click(Sender: TObject);
begin
  if RadioButton4.Checked = true then
    RadioButton4.Checked := false;
end;

procedure TfEtiquetas_cli.RadioButton4Click(Sender: TObject);
begin
  if RadioButton3.Checked = true then
    RadioButton3.Checked := false;
end;

procedure TfEtiquetas_cli.Button1Click(Sender: TObject);
var
MSWord: Variant;
finallinha:boolean;
tipoend : integer;
begin
  if(Combo.Text = '')then
  begin
    MessageDlg('Escolha um tipo de Etiqueta', mtWarning, [mbOK], 0);
    Combo.SetFocus;
    exit;
  end;
  tipoend := 0;
  if (RadioButton2.Checked) then
    tipoend := 1;
  if (RadioButton5.Checked) then
    tipoend := 2;

  //sera usada a uses COMOBJ
  // Abre o Word
  MSWord := CreateOleObject('Word.Application');
  //não visualizar Microsoft Word
  MSWord.Visible:=false;

  // Abre documento em anexo junto ao  exe
  MSWord.Documents.Open(ExtractFilePath(Application.ExeName)+ Combo.Text + '.doc' ); //'a5.doc');//'Doc1.doc') ;//'Etiqueta_Pimaco_6181.doc');
  finallinha:=false;//Essa variavel foi criada para controlar o avanço de para cada celula da coluna
  fListaClientes.cds.First;
  while not fListaClientes.cds.Eof do
  begin
       // Escreve na  célula
       if (sEndereco.Active) then
         sEndereco.Close;
       sEndereco.Params[0].AsInteger := fListaClientes.cdsCODCLIENTE.AsInteger;
       sEndereco.Params[1].AsInteger := tipoend;
       sEndereco.Open;
       if (Combo.text = '6181') then
         MSWord.Selection.TypeText(Text :=trim(fListaClientes.cdsRAZAOSOCIAL.AsString)+#13+trim (sEnderecoLOGRADOURO.AsString)+ ', ' + trim (sEnderecoNUMERO.AsString) + ' - ' + trim (sEnderecoBAIRRO.AsString) + ' - ' +  (sEnderecoCOMPLEMENTO.AsString)  +#13+trim (sEnderecoCIDADE.AsString) + ' UF: ' + trim (sEnderecoUF.AsString) + ' CEP: ' + trim (sEnderecoCEP.AsString) )
       else
         MSWord.Selection.TypeText(Text :=#13+ 'Destinatário' +#13+#13+trim(fListaClientes.cdsRAZAOSOCIAL.AsString)+#13+trim (sEnderecoLOGRADOURO.AsString)+ ', ' + trim (sEnderecoNUMERO.AsString) + ' - ' + trim (sEnderecoBAIRRO.AsString) + ' - ' + trim (sEnderecoCOMPLEMENTO.AsString) + #13 +trim (sEnderecoCIDADE.AsString) + ' - ' + trim (sEnderecoUF.AsString) + #13 + 'CEP: ' + trim (sEnderecoCEP.AsString));
       if finallinha=false then
         begin
           // Pula 1 celula
           MSWord.Selection.MoveRight(12);
        //   MSWord.Selection.MoveRight(12);
           finallinha:=true;
         end
       else
         begin
           // vai para a proxima celula
           MSWord.Selection.MoveRight(12);
           finallinha:=false;
         end;
       fListaClientes.cds.Next;
  end;
  //visualizar Microsoft word 
  MSWord.Visible:=true;

end;

procedure TfEtiquetas_cli.BitBtn13Click(Sender: TObject);
begin
  Close;
end;

procedure TfEtiquetas_cli.RadioButton1Click(Sender: TObject);
begin
  if RadioButton2.Checked = true then
    RadioButton2.Checked := false;
  if RadioButton5.Checked = true then
    RadioButton5.Checked := false;
end;

procedure TfEtiquetas_cli.RadioButton2Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
    RadioButton1.Checked := false;
  if RadioButton5.Checked = true then
    RadioButton5.Checked := false;
end;

procedure TfEtiquetas_cli.RadioButton5Click(Sender: TObject);
begin
  if RadioButton1.Checked = true then
    RadioButton1.Checked := false;
  if RadioButton2.Checked = true then
    RadioButton2.Checked := false;
end;

end.
