unit uNFeInutilizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, JvExMask, JvToolEdit, Buttons,
  MMJPanel, ACBrNFe, xmldom, XMLIntf, msxmldom, XMLDoc, FMTBcd, DB,
  DBClient, Provider, SqlExpr, Grids, DBGrids, JvExDBGrids, JvDBGrid;

type
  TfNFeInutilizar = class(TForm)
    MMJPanel1: TMMJPanel;
    edtAno: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtModelo: TEdit;
    edtSerie: TEdit;
    Label3: TLabel;
    edtNumIni: TEdit;
    Label4: TLabel;
    edtNumFim: TEdit;
    Label5: TLabel;
    edtJustificativa: TEdit;
    Label6: TLabel;
    btnInutilizar: TButton;
    btnSair: TButton;
    MemoResp: TMemo;
    ComboBox1: TComboBox;
    Label7: TLabel;
    MMJPanel2: TMMJPanel;
    JvDBGrid1: TJvDBGrid;
    s_2: TSQLDataSet;
    s_2CODIGO: TIntegerField;
    s_2CONTA: TStringField;
    s_2NOME: TStringField;
    d_2: TDataSetProvider;
    cds_ccusto: TClientDataSet;
    cds_ccustoCODIGO: TIntegerField;
    cds_ccustoCONTA: TStringField;
    cds_ccustoNOME: TStringField;
    sEmpresa: TSQLDataSet;
    sEmpresaEMPRESA: TStringField;
    sEmpresaRAZAO: TStringField;
    sEmpresaCNPJ_CPF: TStringField;
    sEmpresaENDERECO: TStringField;
    sEmpresaLOGRADOURO: TStringField;
    sEmpresaBAIRRO: TStringField;
    sEmpresaCIDADE: TStringField;
    sEmpresaUF: TStringField;
    sEmpresaCEP: TStringField;
    sEmpresaDDD: TStringField;
    sEmpresaFONE: TStringField;
    sEmpresaFONE_1: TStringField;
    sEmpresaFONE_2: TStringField;
    sEmpresaFAX: TStringField;
    sEmpresaE_MAIL: TStringField;
    sEmpresaWEB: TStringField;
    sEmpresaLOGOTIPO: TGraphicField;
    sEmpresaCODIGO: TIntegerField;
    sEmpresaTIPO: TStringField;
    sEmpresaIE_RG: TStringField;
    sEmpresaSLOGAN: TStringField;
    sEmpresaOUTRAS_INFO: TStringField;
    sEmpresaCODIGO_CONTA: TIntegerField;
    sEmpresaDIVERSOS1: TStringField;
    sEmpresaDIVERSOS2: TStringField;
    sEmpresaDIVERSOS3: TStringField;
    sEmpresaANOLETIVO: TIntegerField;
    sEmpresaMEDIA_ESCOLA: TFloatField;
    sEmpresaPORTA: TIntegerField;
    sEmpresaSMTP: TStringField;
    sEmpresaSENHA: TStringField;
    sEmpresaNUMERO: TStringField;
    sEmpresaCCUSTO: TIntegerField;
    sEmpresaCD_IBGE: TStringField;
    procedure btnInutilizarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNFeInutilizar: TfNFeInutilizar;

implementation

uses uNFeletronica, UDm;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
// Remove caracteres de uma string deixando apenas numeros
var
  I: integer;
  S: string;
begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
    if (Texto[I] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, I, 1);
    end;
  end;
  result := S;
end;

procedure TfNFeInutilizar.btnInutilizarClick(Sender: TObject);
begin

  if (not cds_ccusto.Active) then
    cds_ccusto.Open;
  cds_ccusto.Locate('NOME', ComboBox1.Text,[loCaseInsensitive]);

  //Seleciona Empresa de acordo com o CCusto selecionado
  if (sEmpresa.Active) then
    sEmpresa.Close;
  sEmpresa.Params[0].AsInteger := cds_ccustoCODIGO.AsInteger;
  sEmpresa.Open;

  //verifica se o CC foi selecionado caso não da mensagem avisando
  if(sEmpresa.IsEmpty) then
    MessageDlg('Centro de custo não selecionado', mtError, [mbOK], 0);
 try
   fNFeletronica.ACBrNFe1.WebServices.Inutiliza(RemoveChar(sEmpresaCNPJ_CPF.AsString), edtJustificativa.text, StrToInt(edtAno.text), StrToInt(edtModelo.Text), StrToInt(edtSerie.Text), StrToInt(edtNumIni.Text), StrToInt(edtNumFim.Text));
   MemoResp.Lines.Text :=  UTF8Encode(fNFeletronica.ACBrNFe1.WebServices.Inutilizacao.RetWS);
 finally
   MessageDlg('Protocolo de Inutilização: ' + fNFeletronica.ACBrNFe1.WebServices.Retorno.Protocolo, mtInformation, [mbOK], 0);
 end
end;

procedure TfNFeInutilizar.btnSairClick(Sender: TObject);
begin
  fNFeInutilizar.Close;
end;

procedure TfNFeInutilizar.FormCreate(Sender: TObject);
begin
    if dm.cds_parametro.Active then
      dm.cds_parametro.Close;
    dm.cds_parametro.Params[0].AsString := 'CENTRORECEITA';
    dm.cds_parametro.Open;
    conta_local := dm.cds_parametroDADOS.AsString;
    dm.cds_parametro.Close;
    if cds_ccusto.Active then
      cds_ccusto.Close;
    cds_ccusto.Params[0].AsString := conta_local;
    cds_ccusto.Open;
    // populo a combobox
    cds_ccusto.First;
    while not cds_ccusto.Eof do
    begin
      ComboBox1.Items.Add(cds_ccustoNOME.AsString);
      cds_ccusto.Next;
    end;
end;

end.
