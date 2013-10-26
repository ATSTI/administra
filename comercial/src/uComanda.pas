unit uComanda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvComponentBase, JvFormTransparent, StdCtrls, JvExControls,
  JvGradient, Grids, DBGrids, JvExDBGrids, JvDBGrid, FMTBcd, DB, SqlExpr,
  Buttons, Menus, TFlatCheckBoxUnit, JvgCheckBox,  uControle;

type
  TfComanda = class(TForm)
    JvGradient1: TJvGradient;
    JvTransparentForm1: TJvTransparentForm;
    cbMesaComanda: TComboBox;
    sMesas: TSQLDataSet;
    sMesasCODCLIENTE: TIntegerField;
    sMesasNOMECLIENTE: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Cancela1: TMenuItem;
    Label1: TLabel;
    UsarRG1: TMenuItem;
    usaRG: TJvgCheckBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbMesaComandaKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure usaRGClick(Sender: TObject);
    procedure UsarRG1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     VarIdCliente :integer;
     procedure inseremovimento;
  end;

var
  fComanda: TfComanda;

implementation

uses UDm, uCadRG;

{$R *.dfm}

procedure TfComanda.FormShow(Sender: TObject);
begin
  if (not sMesas.Active) then
    sMesas.Open;
  sMesas.First;
  cbMesaComanda.Items.Clear;
  while not sMesas.Eof do
  begin
     cbMesaComanda.Items.Add(sMesasNOMECLIENTE.AsString);
     sMesas.Next;
  end;
  sMesas.Close;
end;

procedure TfComanda.BitBtn1Click(Sender: TObject);
begin
  if(not sMesas.Active) then
    sMesas.Open;
  if (sMesas.Locate('NOMECLIENTE',cbMesaComanda.Text, [loCaseInsensitive])) then
  begin
     VarIdCliente := sMesasCODCLIENTE.AsInteger;
     inseremovimento;
     sMesas.Close;
  end
  else
  begin
     MessageDlg('Cadastro não Localizado.', mtInformation, [mbOK], 0);
     cbMesaComanda.SetFocus;
     exit;
  end;
  //close;
end;

procedure TfComanda.cbMesaComandaKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
   BitBtn1.Click;
end;

procedure TfComanda.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfComanda.usaRGClick(Sender: TObject);
begin
  if (usaRG.Checked = True) then
    fCadRG.ShowModal;
  usaRG.Checked := False;
end;

procedure TfComanda.UsarRG1Click(Sender: TObject);
begin
  if (usaRG.Checked = False) then
  begin
     usaRG.Checked := True;
     fCadRG.ShowModal;
     usaRG.Checked := False;
  end
  else
     usaRG.Checked := False;

end;

procedure TfComanda.inseremovimento;
begin
   if (VarIdCliente <> 0) then
   begin
      //Vejo se a comanda ja foi Adicionada
      if(fControle.sMov.Active) then
        fControle.sMov.Close;
      fControle.sMov.Params[1].Clear;
      fControle.sMov.Params[0].AsInteger := VarIdCliente;
      fControle.sMov.Open;
      if (not fControle.sMov.IsEmpty) then
      begin
        MessageDlg('Mesa / Comanda, já foi aberta', mtWarning, [mbOK], 0);
        //EvDBFind1.SetFocus;
        exit;
      end;
      //Inserir Movimento
      try
        if dm.c_6_genid.Active then
          dm.c_6_genid.Close;
        dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GENMOV, 1) AS INTEGER) AS CODIGO FROM RDB$DATABASE';
        dm.c_6_genid.Open;
        VarCodMov := dm.c_6_genid.Fields[0].AsInteger;
        dm.c_6_genid.Close;
        fControle.incluiMovimento;
        if (fControle.cMesas.Active) then
           fControle.cMesas.Close;
        fControle.cMesas.Params[0].AsInteger := 13; // Mesa / Comanda
        fControle.cMesas.Params[1].AsInteger := 0; // Mesa / Comanda
        fControle.cMesas.Open;
        fControle.cMesas.Refresh;
        fControle.cMesas.Locate('CODCLIENTE',VarIdCliente, [loCaseInsensitive]);
      Except
        MessageDlg('Erro ao Incluir novo Lançamento ?', mtError, [mbOK], 0);
        exit;
      end;
    end;
    VarIdCliente := 0;
end;

end.
