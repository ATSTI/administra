unit uRemessaTitulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  FMTBcd, SqlExpr, Provider, DBClient, Mask, DBCtrls;

type
  TfRemessaTitulo = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    RadioGroup1: TRadioGroup;
    cds: TClientDataSet;
    cdsTITULO: TStringField;
    cdsNUMEROBORDERO: TSmallintField;
    cdsCODAGENCIA: TSmallintField;
    cdsDATAREMESSA: TDateField;
    cdsTIPOOPERACAO: TSmallintField;
    cdsBANCO: TStringField;
    dsp: TDataSetProvider;
    sds: TSQLDataSet;
    sdsTITULO: TStringField;
    sdsNUMEROBORDERO: TSmallintField;
    sdsCODAGENCIA: TSmallintField;
    sdsDATAREMESSA: TDateField;
    sdsTIPOOPERACAO: TSmallintField;
    sdsBANCO: TStringField;
    sdsNOMECLIENTE: TStringField;
    cdsNOMECLIENTE: TStringField;
    procedure btnGravarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRemessaTitulo: TfRemessaTitulo;
  varRemetido, qtde : Integer;
  varTitulo: String;  

implementation

uses UDm, uListaClientes, ubanco;

{$R *.dfm}

procedure TfRemessaTitulo.btnGravarClick(Sender: TObject);
var strsql, mensagem: string;
begin
  if (RadioGroup1.ItemIndex = 0) then
    cdsTIPOOPERACAO.AsInteger := 0
  else
    cdsTIPOOPERACAO.AsInteger := 1;
//  inherited;
    strsql := 'EXECUTE PROCEDURE REMESSABANCO(';
    strsql := strsql + QuotedStr(formatdatetime('mm/dd/yy', cdsDATAREMESSA.AsDateTime));
    strsql := strsql + ',' + IntToStr(cdsNUMEROBORDERO.Value);
    strsql := strsql + ',' + IntToStr(cdsCODAGENCIA.Value);
  if (varRemetido > 0) then
  begin
    strsql := strsql + ',' + QuotedStr('S');
    strsql := strsql + ')';
      dm.sqlsisAdimin.ExecuteDirect(strsql);
    if (cds.Active) then
      cds.Close;
    cds.Params[0].asString := varTitulo;
    cds.Open;
    MessageDlg('Envio efetuado com sucesso.', mtWarning, [mbOK], 0);
  end
  else IF (RadioGroup1.ItemIndex = 1) then
  begin
    if (qtde > 1) then
    begin
      mensagem := 'Cancelar o ENVIO das DUPLICATAS selecionadas ?';
    end
    else begin
      mensagem := 'Cancelar o ENVIO da DUPLICATA: ''' + varTitulo + '''?';
    end;
    if (MessageDlg(mensagem, mtConfirmation, [mbYes, mbNo],0) = mrYes) then
    begin
      strsql := strsql + ',' + QuotedStr('N');
      strsql := strsql + ')';
    end else
      exit;
      dm.sqlsisAdimin.ExecuteDirect(strsql);
    if (cds.Active) then
      cds.Close;
    cds.Params[0].asString := varTitulo;
    cds.Open;
    MessageDlg('Envio cancelado com sucesso.', mtWarning, [mbOK], 0);
  end else
  begin
    if (cds.State in [dsInsert, dsEdit]) then
      cds.ApplyUpdates(0);
  end;
end;

procedure TfRemessaTitulo.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  fListaClientes:=TfListaClientes.Create(Application);
  Try
    fListaClientes.ShowModal;
    cdsNUMEROBORDERO.AsInteger := fListaClientes.ListaClienteCODCLIENTE.asInteger;
    cdsNOMECLIENTE.AsString := fListaClientes.ListaClienteNOMECLIENTE.asString;
  Finally
   fListaClientes.ListaCliente.close;
   fListaClientes.Free;
  end;
end;

procedure TfRemessaTitulo.SpeedButton1Click(Sender: TObject);
begin
  inherited;
 fbanco:=Tfbanco.Create(Application);
 try
   dm.cdsBanco.Open;
   fbanco.ShowModal;
   if (cds.State in [dsInsert, dsEdit]) then
   begin
     cdsCODAGENCIA.Value := codbanco;
     cdsBANCO.AsString := nomebanco;
   end;
 finally
   dm.cdsBanco.Close;
   fbanco.Free;
 end
end;

procedure TfRemessaTitulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  dm.sqlsisAdimin.ExecuteDirect('update RECEBIMENTO set DP = null where DP = 0');
end;

procedure TfRemessaTitulo.DtSrcStateChange(Sender: TObject);
begin
  Incluir  := 'S';
  Excluir  := 'S';
  Alterar  := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

end.
