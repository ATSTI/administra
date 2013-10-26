unit uOsInsere;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvExStdCtrls, JvMemo, Menus, XPMenu, DB, Buttons, ExtCtrls, MMJPanel;

type
  TfOsInsere = class(TfPai_new)
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    btnNovo: TBitBtn;
    BitBtn8: TBitBtn;
    edServico: TJvMemo;
    edQtdeServ: TJvCalcEdit;
    edPrecoServ: TJvCalcEdit;
    edDescServ: TJvCalcEdit;
    edDescVlrServ: TJvCalcEdit;
    edTotalServ: TJvCalcEdit;
    edColaborador: TEdit;
    edProduto: TEdit;
    BitBtn3: TBitBtn;
    edProdDescr: TEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    lblServico: TLabel;
    edCodUsuario: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure edCodUsuarioExit(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure edDescServExit(Sender: TObject);
    procedure edDescVlrServExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    codProduto: Integer;
    procedure LimpaCampos();
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fOsInsere: TfOsInsere;

implementation

uses uOs, uProcurar, UDm, uProcura_prodOficina, sCtrlResize;

{$R *.dfm}

procedure TfOsInsere.BitBtn1Click(Sender: TObject);
begin
  fProcurar:= TfProcurar.Create(self,dm.scds_usuario_proc);
  try
    fProcurar.usuarioproc := 'VENDEDOR';
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'NOMEUSUARIO';
    if fProcurar.ShowModal=mrOk then
    begin
      if (fOs.dsServico.State = dsBrowse) then
        fOs.cdsServico.Edit;
      fOs.cdsServicoCODUSUARIO.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
      fOs.cdsServicoNOMEUSUARIO.AsString := dm.scds_usuario_procNOMEUSUARIO.AsString;
      edColaborador.Text := dm.scds_usuario_procNOMEUSUARIO.AsString;
      edCodUsuario.Text  := IntToStr(dm.scds_usuario_procCODUSUARIO.AsInteger);
    end;
  finally
    dm.scds_usuario_proc.Close;
    fProcurar.Free;
  end;

end;

procedure TfOsInsere.BitBtn3Click(Sender: TObject);
begin
  fProcurar := TfProcurar.Create(self,dm.scds_prod);
  try
    fProcurar.BtnProcurar.Click;
    fProcurar.EvDBFind1.DataField := 'PRODUTO';
    fProcurar.btnIncluir.Visible := False;
    fProcurar.BtnProcurar.Click;

    if (fProcurar.ShowModal = mrOK) then
    begin
      edProdDescr.Text := fProcurar.DescProProc;
      edProduto.Text   := fProcurar.codProProc;
      if (fOs.dsServico.State = dsBrowse) then
        fOs.cdsServico.Edit;
      fOs.cdsServicoCODPRODUTO.AsInteger := fProcurar.codProdProc;
      codProduto                         := fProcurar.codProdProc;
      fOs.cdsServicoQTDE.AsFloat         := 1;
      fOs.cdsServicoPRECO.AsFloat        := fProcurar.precoVenda;
      edQtdeServ.Text   := '1';      
    end;
  finally
    if (dm.scds_prod.Active) then
      dm.scds_prod.Close;
    fProcurar.Free;
  end;
  edQtdeServ.SetFocus;
end;

procedure TfOsInsere.edCodUsuarioExit(Sender: TObject);
begin
   if(edCodUsuario.Text <> '') then
   begin
     if dm.scds_usuario_proc.Active then
       dm.scds_usuario_proc.Close;
     dm.scds_usuario_proc.Params[0].Clear;
     dm.scds_usuario_proc.Params[1].AsInteger := StrToInt(edCodUsuario.Text);
     dm.scds_usuario_proc.Open;
     if dm.scds_usuario_proc.IsEmpty then
     begin
       MessageDlg('Código não cadastrado.', mtWarning,
       [mbOk], 0);
       exit;
     end;
      if (fOs.dsServico.State = dsBrowse) then
        fOs.cdsServico.Edit;
      fOs.cdsServicoCODUSUARIO.AsInteger := dm.scds_usuario_ProcCODusuario.AsInteger;
      fOs.cdsServicoNOMEUSUARIO.AsString := dm.scds_usuario_procNOMEUSUARIO.AsString;
     edColaborador.Text := dm.scds_usuario_procNOMEUSUARIO.AsString;
   end;
end;

procedure TfOsInsere.edProdutoExit(Sender: TObject);
begin
  if (edProduto.Text = '') then exit;

  if dm.scds_produto_proc.Active then
    dm.scds_produto_proc.Close;
  dm.scds_produto_proc.Params[0].AsInteger := 0;
  dm.scds_produto_proc.Params[1].AsString := edProduto.Text;
  dm.scds_produto_proc.Open;
  if (dm.scds_produto_proc.IsEmpty) then
  begin
    MessageDlg('Código não cadastrado.', mtWarning,
    [mbOk], 0);
    exit;
  end;

  edProduto.Text    := dm.scds_produto_procCODPRO.AsString;
  edProdDescr.Text  := dm.scds_produto_procPRODUTO.AsString;
  edPrecoServ.Value := dm.scds_produto_procVALOR_PRAZO.AsFloat;
  codProduto        := dm.scds_produto_procCODPRODUTO.AsInteger;
  edQtdeServ.Text   := '1';
  if (fOs.dsServico.State = dsBrowse) then
    fOs.cdsServico.Edit;
  fOs.cdsServicoCODPRODUTO.AsInteger := dm.scds_produto_procCODPRODUTO.AsInteger;
  fOs.cdsServicoQTDE.AsFloat         := 1;
  fOs.cdsServicoPRECO.AsFloat        := dm.scds_produto_procVALOR_PRAZO.AsFloat;
  edQtdeServ.SetFocus;
end;

procedure TfOsInsere.FormShow(Sender: TObject);
begin
  //inherited;
  LimpaCampos;
  if (DtSrc.State in [dsEdit]) then
  begin
    edServico.Lines.Add(fOs.cdsServicoDESCRICAO_SERV.AsString);
    edProduto.Text      := fOs.cdsServicoCODPRO.AsString;
    codProduto          := fOs.cdsServicoCODPRODUTO.asInteger;
    edQtdeServ.Value    := fOs.cdsServicoQTDE.AsFloat;
    edPrecoServ.Value   := fOs.cdsServicoPRECO.AsFloat;
    edDescVlrServ.Value := fOs.cdsServicoDESCONTO.AsFloat;
    edTotalServ.Value   := fOs.cdsServicoVALORTOTAL.AsFloat;
    edCodUsuario.Text   := IntToStr(fOs.cdsServicoCODUSUARIO.AsInteger);
    edColaborador.Text  := fOs.cdsServicoNOMEUSUARIO.AsString;
  end;
end;

procedure TfOsInsere.FormCreate(Sender: TObject);
begin
  //inherited;
  sCtrlResize.CtrlResize(TForm(fOsInsere));
end;

procedure TfOsInsere.btnIncluirClick(Sender: TObject);
begin
  inherited;
  edServico.Lines.Clear;
  edProduto.Text        := '';
  edQtdeServ.Value      := 0;
  edPrecoServ.Value     := 0;
  edDescVlrServ.Value   := 0;
  edTotalServ.Value     := 0;

  fOs.numOsDet := fOs.numOsDet + 1;

  fOs.cdsServico.Append;
  fOs.cdsServicoID_OS_DET.AsInteger := fOs.numOsDet;
  fOs.cdsServicoTIPO.AsString       := 'S';
  edCodUsuario.SetFocus;
end;

procedure TfOsInsere.edDescServExit(Sender: TObject);
begin
  if (edDescServ.Value > 0) then
  begin
    edDescVlrServ.Value := (edPrecoServ.Value * edQtdeServ.Value) * (edDescServ.Value / 100);
    edTotalServ.Value   := (edPrecoServ.Value * edQtdeServ.Value) - edDescVlrServ.Value;
  end;
end;

procedure TfOsInsere.edDescVlrServExit(Sender: TObject);
begin
  if ((edDescVlrServ.Value > 0) and (edDescServ.Value = 0) and (edPrecoServ.Value > 0)) then
  begin
    edDescServ.Value  := (edDescVlrServ.Value / edPrecoServ.Value) * 100;
    edTotalServ.Value := (edPrecoServ.Value * edQtdeServ.Value) - edDescVlrServ.Value;
  end;
  btnGravar.SetFocus;
end;

procedure TfOsInsere.btnGravarClick(Sender: TObject);
var str: string;
  I : Integer;
begin
  str := '';
  if (edCodUsuario.Text <> '') then
  begin
    for I := 0 to edServico.Lines.Count -1 do
      str := str + edServico.Lines[I] + #13#10;
    if (str = '') then
      str := edProdDescr.Text;

    fOs.cdsServicoSTATUS.AsString  := fOs.statusOs;
    fOs.cdsServicoCODUSUARIO.AsInteger    := StrToInt(edCodUsuario.Text);
    fOs.cdsServicoNOMEUSUARIO.AsString    := edColaborador.Text;
    fOs.cdsServicoDESCRICAO_SERV.AsString := str;
    fOs.cdsServicoCODPRO.AsString         := edProduto.Text;
    fOs.cdsServicoCODPRODUTO.asInteger    := codProduto;
    fOs.cdsServicoQTDE.AsFloat            := edQtdeServ.Value;
    fOs.cdsServicoPRECO.AsFloat           := edPrecoServ.Value;
    fOs.cdsServicoDESCONTO.AsFloat        := edDescVlrServ.Value;
    fOs.cdsServicoVALORTOTAL.AsFloat      := edQtdeServ.Value * edPrecoServ.Value;
    fOs.cdsServico.Post;
  end
  else
    MessageDlg('É necessário preencher o Colaborador', mtWarning, [mbOK], 0);
end;

procedure TfOsInsere.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;
end;

procedure TfOsInsere.DtSrcStateChange(Sender: TObject);
begin
  inherited;
  edCodUsuario.Enabled  := DtSrc.State in [dsEdit, dsInsert];
  edProduto.Enabled     := DtSrc.State in [dsEdit, dsInsert];
  edServico.Enabled     := DtSrc.State in [dsEdit, dsInsert];
  edQtdeServ.Enabled    := DtSrc.State in [dsEdit, dsInsert];
  edPrecoServ.Enabled   := DtSrc.State in [dsEdit, dsInsert];
  edDescServ.Enabled    := DtSrc.State in [dsEdit, dsInsert];
  edDescVlrServ.Enabled := DtSrc.State in [dsEdit, dsInsert];
end;

procedure TfOsInsere.LimpaCampos;
begin
  edServico.Lines.Clear;
  edQtdeServ.Value    := 0;
  edPrecoServ.Value   := 0;
  edDescServ.Value    := 0;
  edDescVlrServ.Value := 0;
  edTotalServ.Value   := 0;
  edColaborador.Text  := '';
  edCodUsuario.Text   := '';
end;

procedure TfOsInsere.btnSairClick(Sender: TObject);
begin
  //inherited;
  Close;
end;

end.
