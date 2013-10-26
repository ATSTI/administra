unit uClienteBloqueio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, FMTBcd, ExtCtrls, DB,
  DBClient, Provider, SqlExpr, JvExStdCtrls, JvEdit, JvDBSearchEdit;

type
  TfClienteBloqueio = class(TForm)
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    btnSair: TBitBtn;
    sdsCliente: TSQLDataSet;
    dspCliente: TDataSetProvider;
    cdsCliente: TClientDataSet;
    dsCliente: TDataSource;
    cdsClienteCODCLIENTE: TIntegerField;
    cdsClienteNOMECLIENTE: TStringField;
    cdsClienteSTATUS: TSmallintField;
    RadioGroup1: TRadioGroup;
    cdsClienteBLOQUEIO: TStringField;
    JvDBSearchEdit1: TJvDBSearchEdit;
    JvDBSearchEdit2: TJvDBSearchEdit;
    procedure btnSairClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cdsClienteReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClienteBloqueio: TfClienteBloqueio;

implementation

uses UDm;

{$R *.dfm}

procedure TfClienteBloqueio.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TfClienteBloqueio.RadioGroup1Click(Sender: TObject);
begin
  if (cdsCliente.Active) then
    cdsCliente.close;

  cdsCliente.CommandText := ' select CODCLIENTE, NOMECLIENTE, STATUS, BLOQUEIO from CLIENTES ' +
  'where ((BLOQUEIO = :pStatus) or (:pStatus = ' + QUOTEDSTR('T')+ ')) order by nomecliente ' ;

  cdsCliente.Params.ParamByName('pStatus').Clear;
  Case (RadioGroup1.ItemIndex) of
    1: cdsCliente.CommandText := 'select CODCLIENTE, NOMECLIENTE, STATUS, BLOQUEIO from CLIENTES ' +
    'where ((BLOQUEIO = ' + QUOTEDSTR('N')+ ') or (BLOQUEIO IS NULL)) order by nomecliente';
    0: cdsCliente.Params.ParamByName('pStatus').AsString := 'S';
    2: cdsCliente.Params.ParamByName('pStatus').AsString := 'T';
  end;
  cdsCliente.Open;
end;

procedure TfClienteBloqueio.BitBtn1Click(Sender: TObject);
begin
  if (cdsCliente.Active) then
  begin
    cdsCliente.Edit;
    cdsClienteBLOQUEIO.AsString := 'S';
    cdsCliente.ApplyUpdates(0);
    MessageDlg('Cliente Bloqueado.' , mtWarning,[mbOk], 0);
  end;
end;

procedure TfClienteBloqueio.cdsClienteReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  MessageDlg('Não é possível gravar o registro. Erro : ' + E.Message , mtWarning,
        [mbOk], 0);
end;

procedure TfClienteBloqueio.BitBtn2Click(Sender: TObject);
begin
  if (cdsCliente.Active) then
  begin
    cdsCliente.Edit;
    cdsClienteBLOQUEIO.AsString := 'N';
    cdsCliente.ApplyUpdates(0);
    MessageDlg('Cadastro do Cliente Liberado.' , mtWarning,[mbOk], 0);
  end;
end;

procedure TfClienteBloqueio.FormShow(Sender: TObject);
begin
  if (cdsCliente.Active) then
    cdsCliente.close;

  cdsCliente.CommandText := ' select CODCLIENTE, NOMECLIENTE, STATUS, BLOQUEIO from CLIENTES ' +
  ' order by nomecliente ' ;

  cdsCliente.Open;
end;

end.
