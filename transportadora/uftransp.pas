unit uftransp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, DB, Menus, XPMenu, StdCtrls, Buttons, ExtCtrls, MMJPanel,
  DBCtrls, Mask;

type
  Tftransp = class(TfPai)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    Label11: TLabel;
    DBEdit3: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnProcurarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftransp: Tftransp;

implementation

uses UDm, uProcurar;

{$R *.dfm}

procedure Tftransp.DtSrcStateChange(Sender: TObject);
begin
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
  inherited;

end;

procedure Tftransp.btnIncluirClick(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure Tftransp.btnProcurarClick(Sender: TObject);
begin
  inherited;
  fProcurar:= TfProcurar.Create(self,dm.proc_transp);
  try
    fProcurar.btnImprimir.Visible := true;
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMETRANSP';
    if fProcurar.ShowModal=mrOk then
    begin
      if dm.cdsTransp.Active then
        dm.cdsTransp.Close;
      dm.cdsTransp.Params[0].AsInteger := dm.proc_transpCODTRANSP.AsInteger;
      dm.cdsTransp.Open;
    end;
  finally
    dm.proc_transp.Close;
    fProcurar.Free;
  end;
end;

procedure Tftransp.btnGravarClick(Sender: TObject);
begin
  if DtSrc.DataSet.State in [dsInsert] then
  begin
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_TRANSP, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    DM.cdsTranspCODTRANSP.AsInteger := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
  end;
  inherited;

end;

end.
