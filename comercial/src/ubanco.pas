unit ubanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, Grids, DBGrids, Mask, FMTBcd, DBClient, Provider, SqlExpr,
  RXCtrls, JvExMask, JvSpin, JvDBSpinEdit;

type
  Tfbanco = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    dbedtCODBANCO: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    RxLabel2: TRxLabel;
    dbedtCODIGO_CEDENTE: TDBEdit;
    lbl1: TLabel;
    dbedtCODIGO_CEDENTE1: TDBEdit;
    lbl2: TLabel;
    dbedtCODIGO_AGENCIA: TDBEdit;
    lbl3: TLabel;
    dbedtINSTRUCAO1: TDBEdit;
    lbl4: TLabel;
    lbl5: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    dbedtCODIGOBOLETO: TDBEdit;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl11: TLabel;
    lbl10: TLabel;
    dbedtCARTEIRA: TDBEdit;
    lbl7: TLabel;
    dbcbbLAYOUT_BL: TDBComboBox;
    lbl14: TLabel;
    dbcbbLAYOUT_RM: TDBComboBox;
    dbcbbRESP_EMISSAO: TDBComboBox;
    lbl9: TLabel;
    dbcbbIMP_COMPROVANTE: TDBComboBox;
    lbl12: TLabel;
    dbcbbRESP_EMISSAO2: TDBComboBox;
    lbl13: TLabel;
    lbl15: TLabel;
    JvDBSpinEdit1: TJvDBSpinEdit;
    lbl16: TLabel;
    dbcbbPROTESTO: TDBComboBox;
    dbedtPASTA_RETORNO: TDBEdit;
    dbedtPASTA_RETORNO1: TDBEdit;
    dbedtPASTA_REMESSA: TDBEdit;
    lbl17: TLabel;
    procedure DtSrcStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbanco: Tfbanco;
  codbanco : Integer;
  nomebanco: string;  

implementation

uses UDm, sCtrlResize;

{$R *.dfm}

procedure Tfbanco.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure Tfbanco.FormShow(Sender: TObject);
begin
 // inherited;
   sCtrlResize.CtrlResize(TForm(fbanco));
  if (not dm.cdsBanco.Active) then
    dm.cdsBanco.Open;
end;

procedure Tfbanco.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure Tfbanco.btnGravarClick(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_BANCO, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    dm.cdsBancoCODBANCO.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  if (dbedtCODBANCO.Text = '') then
  begin
    showmessage('Informe o Código do Banco');
    dbedtCODBANCO.SetFocus;
    exit;
  end;

  inherited;
  btnIncluir.SetFocus;
end;

procedure Tfbanco.btnSairClick(Sender: TObject);
begin
  inherited;
  codbanco :=  dm.cdsBancoCODBANCO.value;
  nomebanco := dm.cdsBancoBANCO.AsString;
end;

procedure Tfbanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  codbanco :=  dm.cdsBancoCODBANCO.value;
  nomebanco := dm.cdsBancoBANCO.AsString;
end;

procedure Tfbanco.FormCreate(Sender: TObject);
begin
//  inherited;

end;

end.
