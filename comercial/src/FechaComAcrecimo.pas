unit FechaComAcrecimo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits, FMTBcd, SqlExpr,
  Provider, DB, DBClient;

type
  TFormFechaComAcrecimo = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    GroupBox3: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit1: TJvCalcEdit;
    cdsTrib: TClientDataSet;
    dspTrib: TDataSetProvider;
    sdsTrib: TSQLDataSet;
    sdsTribSUM: TFloatField;
    cdsTribSUM: TFloatField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFechaComAcrecimo: TFormFechaComAcrecimo;

implementation

uses Principal, UnitDeclaracoes, UDm, uTerminal_Delivery;

{$R *.DFM}

Procedure TFormFechaComAcrecimo.Button1Click(Sender: TObject);
  Var sAcreDesc, sPercValor, sValorPercentual, Tributos: String;
  porcentagem : Double;
  Begin

    // Verificação do Acréscimo ou Desconto
    // 'A' para Acréscimo
    // 'D' para Desconto

    If RadioButton1.Checked = True Then Begin sAcreDesc := 'D' End;
    If RadioButton2.Checked = True Then Begin sAcreDesc := 'A' End;

    // Verificação do Tipo do Acréscimo ou Desconto
    // '%' para percentual
    // '$' para valor

    If RadioButton3.Checked = True Then Begin sPercValor := '%' End;
    If RadioButton4.Checked = True Then Begin sPercValor := '$' End;

    sValorPercentual := Format('%-6.2n',  [Edit1.Value]);

    if (cdsTrib.Active) then
      cdsTrib.Close;
    cdsTrib.Params[0].AsInteger := fTerminal_Delivery.cds_MovimentoCODMOVIMENTO.AsInteger;
    cdsTrib.Open;
    porcentagem := (cdsTribSUM.AsFloat / StrToFloat(StringReplace(Edit3.Text, '.', '', [rfReplaceAll]))) *100 ;
    Tributos := #13+#10+ 'Val Aprox Tributos R$' + FloatToStr(cdsTribSUM.AsFloat) + '(' + Format('%-3.2n', [porcentagem]) + '%) '+ #13+#10 + 'Fonte: IBPT';

    iRetorno := Bematech_FI_FechaCupom( Edit2.Text, sAcreDesc, sPercValor,
                sValorPercentual, Edit3.Text, Edit4.Text + Tributos);
    frmPrincipal.Analisa_iRetorno();
    frmPrincipal.Retorno_Impressora();
    Close;

  End;

Procedure TFormFechaComAcrecimo.Button2Click(Sender: TObject);
  Begin
    Close;
  End;

procedure TFormFechaComAcrecimo.FormShow(Sender: TObject);
begin
    if Dm.cds_parametro.Active then
       dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'MENSAGEM';
    dm.cds_parametro.Open;
    if not dm.cds_parametro.IsEmpty then
      Edit4.Text := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;
end;

End.
