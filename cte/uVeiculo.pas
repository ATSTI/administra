unit uVeiculo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.ExtCtrls;

type
  TfVeiculo = class(TForm)
    btnOK: TButton;
    edtCint: TEdit;
    edtVeicRenavam: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtVeicPlaca: TEdit;
    edtVeicTara: TEdit;
    edtVeicCapK: TEdit;
    edtVeicCapM: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    combVeicRod: TComboBox;
    combVeicCar: TComboBox;
    combVeicTV: TComboBox;
    combVeicProp: TComboBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    combVeicUF: TComboBox;
    Label11: TLabel;
    btnEditar: TButton;
    Button1: TButton;
    rgPertence: TRadioGroup;
    rgTipoDoc: TRadioGroup;
    Label12: TLabel;
    edtVeicRNTRC: TEdit;
    Label13: TLabel;
    comVeicTipPro: TComboBox;
    Label14: TLabel;
    Label15: TLabel;
    edtVeicRazao: TEdit;
    edtVeicIE: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    combVeicPropUF: TComboBox;
    maskedtVeicCNPJ: TMaskEdit;
    procedure btnOKClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure rgPertenceClick(Sender: TObject);
    procedure rgTipoDocClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fVeiculo: TfVeiculo;

implementation

{$R *.dfm}

uses uDMCTe, Frm_Demo_ACBrCTe;

procedure TfVeiculo.btnEditarClick(Sender: TObject);
var strEdita :string;
begin

  if (dm.cdsCTENPROT.AsString <> '') then
  begin
    MessageDlg('CTe Ja Enviada.', mtInformation, [mbOK], 0);
    exit;
  end;

  if (edtVeicRenavam.Text <> '') then
  begin
    FormatSettings.DecimalSeparator := '.';

    if(edtCint.Text <> '')then
    begin
      strEdita := 'UPDATE CTE_VEICULOS  SET CINT  = ';
      strEdita := strEdita + QuotedStr(edtCint.Text);
      strEdita := strEdita + ', RENAVAM = ';
      strEdita := strEdita +  QuotedStr(edtVeicRenavam.Text);
      strEdita := strEdita + ', PLACA = ';
      strEdita := strEdita +  QuotedStr(edtVeicPlaca.Text);
      strEdita := strEdita + ', TARA = ';
      strEdita := strEdita +  QuotedStr(edtVeicTara.Text);
      strEdita := strEdita + ', CAPKG = ';
      strEdita := strEdita +  QuotedStr(edtVeicCapK.Text);
      strEdita := strEdita + ', CAPM3 = ';
      strEdita := strEdita +  QuotedStr(edtVeicCapM.Text);
      strEdita := strEdita + ', TPROD = ';
      strEdita := strEdita +  QuotedStr(Copy(combVeicRod.Text,1,2));
      strEdita := strEdita + ', TPCAR = ';
      strEdita := strEdita +  QuotedStr(Copy(combVeicCar.Text,1,2));
      strEdita := strEdita + ', TPVEIC  = ';
      strEdita := strEdita +  QuotedStr(Copy(combVeicTV.Text,1,1));
      strEdita := strEdita + ', TPPROP  = ';
      strEdita := strEdita +  QuotedStr(Copy(combVeicProp.Text,1,1));
      strEdita := strEdita + ', UF = ';
      strEdita := strEdita +  QuotedStr(Copy(combVeicUF.Text,1,2));

      if(rgPertence.ItemIndex = 1) then
      begin
        strEdita := strEdita + ', CNPJ = ';
        strEdita := strEdita + QuotedStr(maskedtVeicCNPJ.Text);
        strEdita := strEdita + ', RNTRC = ';
        strEdita := strEdita + QuotedStr(edtVeicRNTRC.Text);
        strEdita := strEdita + ', NOME = ';
        strEdita := strEdita + QuotedStr(edtVeicRazao.Text);
        strEdita := strEdita + ', IE = ';
        strEdita := strEdita + QuotedStr(edtVeicIE.Text);
        strEdita := strEdita + ', VTPPROP = ';
        strEdita := strEdita + QuotedStr(Copy(comVeicTipPro.Text,1,1));
        strEdita := strEdita + ', VUF = ';
        strEdita := strEdita + QuotedStr(Copy(combVeicPropUF.Text,1,2));
      end;

    end;

  if(edtCint.Text = '')then
    begin
      strEdita := 'UPDATE CTE_VEICULOS  SET RENAVAM  = ';
      strEdita := strEdita +  QuotedStr(edtVeicRenavam.Text);
      strEdita := strEdita + ', PLACA = ';
      strEdita := strEdita +  QuotedStr(edtVeicPlaca.Text);
      strEdita := strEdita + ', TARA = ';
      strEdita := strEdita +  QuotedStr(edtVeicTara.Text);
      strEdita := strEdita + ', CAPKG = ';
      strEdita := strEdita +  QuotedStr(edtVeicCapK.Text);
      strEdita := strEdita + ', CAPM3 = ';
      strEdita := strEdita +  QuotedStr(edtVeicCapM.Text);
      strEdita := strEdita + ', TPROD = ';
      strEdita := strEdita +  QuotedStr(Copy(combVeicRod.Text,1,2));
      strEdita := strEdita + ', TPCAR = ';
      strEdita := strEdita +  QuotedStr(Copy(combVeicCar.Text,1,2));
      strEdita := strEdita + ', TPVEIC = ';
      strEdita := strEdita +  QuotedStr(Copy(combVeicTV.Text,1,1));
      strEdita := strEdita + ', TPPROP = ';
      strEdita := strEdita +  QuotedStr(Copy(combVeicProp.Text,1,1));
      strEdita := strEdita + ', UF = ';
      strEdita := strEdita +  QuotedStr(Copy(combVeicUF.Text,1,2));

      if(rgPertence.ItemIndex = 1) then
      begin
        strEdita := strEdita + ', CNPJ = ';
        strEdita := strEdita + QuotedStr(maskedtVeicCNPJ.Text);
        strEdita := strEdita + ', RNTRC = ';
        strEdita := strEdita + QuotedStr(edtVeicRNTRC.Text);
        strEdita := strEdita + ', NOME = ';
        strEdita := strEdita + QuotedStr(edtVeicRazao.Text);
        strEdita := strEdita + ', IE = ';
        strEdita := strEdita + QuotedStr(edtVeicIE.Text);
        strEdita := strEdita + ', VTPPROP = ';
        strEdita := strEdita + QuotedStr(Copy(comVeicTipPro.Text,1,1));
        strEdita := strEdita + ', VUF = ';
        strEdita := strEdita + QuotedStr(Copy(combVeicPropUF.Text,1,2));
      end;

    end;

    strEdita := strEdita + ' WHERE COD_CTE_VEICULOS = ';
    strEdita := strEdita + IntToStr(dm.qVeicCOD_CTE_VEICULOS.AsInteger);

    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strEdita);
      dm.con.Commit;
      MessageDlg('Veiculo Alterado com Sucesso.', mtInformation, [mbOK], 0);
      dm.qVeic.Refresh;
      FormatSettings.DecimalSeparator := ',';
      close;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.con.Rollback;
        exit;
      end;
    end;
  end
end;

procedure TfVeiculo.btnOKClick(Sender: TObject);
var
    strInsere :string;
begin

  if (dm.cdsCTENPROT.AsString <> '') then
  begin
    MessageDlg('CTe Ja Enviada.', mtInformation, [mbOK], 0);
    exit;
  end;

  close;

  if (edtVeicRenavam.Text <> '') then
  begin
    if(rgPertence.ItemIndex = 1)then
    begin
      strInsere := 'INSERT INTO CTE_VEICULOS ( COD_CTE , CINT,' +
                 ' RENAVAM, PLACA,TARA,CAPKG,CAPM3,TPROD,TPCAR,TPVEIC,TPPROP, UF, ' +
                 ' CNPJ,RNTRC, NOME, IE,VTPPROP, VUF '+
                 ') VALUES ( ';

      strInsere := strInsere +  IntToStr(frmDemo_ACBrCTe.val_genCte) ;
      //strInsere := strInsere + ', ' + frmDemo_ACBrCTe.edtNumCte.Text;
      strInsere := strInsere + ', ' + QuotedStr(edtCint.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicRenavam.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicPlaca.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicTara.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicCapK.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicCapM.Text);

      strInsere := strInsere + ', ' + QuotedStr(Copy(combVeicRod.Text,1,2));  //00 - não aplicável
      strInsere := strInsere + ', ' + QuotedStr(Copy(combVeicCar.Text,1,2));  //00 - não aplicável
      strInsere := strInsere + ', ' + QuotedStr(Copy(combVeicTV.Text,1,1));   //0 - Tração

      strInsere := strInsere + ', ' + QuotedStr(Copy(combVeicProp.Text,1,1)); //P- Próprio
      strInsere := strInsere + ', ' + QuotedStr(Copy(combVeicUF.Text,1,2));

      strInsere := strInsere + ', ' + QuotedStr(maskedtVeicCNPJ.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicRNTRC.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicRazao.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicIE.Text);
      strInsere := strInsere + ', ' + QuotedStr(Copy(comVeicTipPro.Text,1,1));
      strInsere := strInsere + ', ' + QuotedStr(Copy(combVeicPropUF.Text,1,2));
    end;

    if(rgPertence.ItemIndex = 0)then
    begin
      strInsere := 'INSERT INTO CTE_VEICULOS (COD_CTE , CINT,' +
                 ' RENAVAM, PLACA,TARA,CAPKG,CAPM3,TPROD,TPCAR,TPVEIC,TPPROP, UF ' +
                 ') VALUES ( ';

      strInsere := strInsere +  IntToStr(frmDemo_ACBrCTe.val_genCte) ;
      //strInsere := strInsere + ', ' + frmDemo_ACBrCTe.edtNumCte.Text;
      strInsere := strInsere + ', ' + QuotedStr(edtCint.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicRenavam.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicPlaca.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicTara.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicCapK.Text);
      strInsere := strInsere + ', ' + QuotedStr(edtVeicCapM.Text);

      strInsere := strInsere + ', ' + QuotedStr(Copy(combVeicRod.Text,1,2));  //00 - não aplicável
      strInsere := strInsere + ', ' + QuotedStr(Copy(combVeicCar.Text,1,2));  //00 - não aplicável
      strInsere := strInsere + ', ' + QuotedStr(Copy(combVeicTV.Text,1,1));   //0 - Tração

      strInsere := strInsere + ', ' + QuotedStr(Copy(combVeicProp.Text,1,1)); //P- Próprio
      strInsere := strInsere + ', ' + QuotedStr(Copy(combVeicUF.Text,1,2));

    end;

    strInsere := strInsere + ')';

    dm.con.AutoCommit := true;
    dm.con.StartTransaction;

    try
      dm.con.ExecuteDirect(strInsere);
      dm.con.Commit;
      MessageDlg('Dados do Veiculo Gravado com Sucesso.', mtInformation, [mbOK], 0);
      dm.qVeic.Refresh;
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        dm.con.Rollback;
        exit;
      end;
    end;
  end

end;

procedure TfVeiculo.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TfVeiculo.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfVeiculo.FormShow(Sender: TObject);
begin
  edtCint.SetFocus;
  if rgPertence.ItemIndex = 0 then
  begin
    rgTipoDoc.Enabled := False;
    maskedtVeicCNPJ.Enabled := False;
    edtVeicRNTRC.Enabled := False;
    edtVeicIE.Enabled := False;
    combVeicPropUF.Enabled := False;
    comVeicTipPro.Enabled := False;
    edtVeicRazao.Enabled := False;
  end;
end;

procedure TfVeiculo.rgPertenceClick(Sender: TObject);
begin
  if rgPertence.ItemIndex = 0 then
  begin
    rgTipoDoc.Enabled := False;
    maskedtVeicCNPJ.Enabled := False;
    edtVeicRNTRC.Enabled := False;
    edtVeicIE.Enabled := False;
    combVeicPropUF.Enabled := False;
    comVeicTipPro.Enabled := False;
    edtVeicRazao.Enabled := False;
  end;

  if rgPertence.ItemIndex = 1 then
  begin
    rgTipoDoc.Enabled := True;
    maskedtVeicCNPJ.Enabled := True;
    edtVeicRNTRC.Enabled := True;
    edtVeicIE.Enabled := True;
    combVeicPropUF.Enabled := True;
    comVeicTipPro.Enabled := True;
    edtVeicRazao.Enabled := True;
  end;

end;

procedure TfVeiculo.rgTipoDocClick(Sender: TObject);
begin
  if rgTipoDoc.ItemIndex = 0 then
  begin
    maskedtVeicCNPJ.EditMask := '000.000.000-00;1;_';
    maskedtVeicCNPJ.SetFocus;
  end
  else
  begin
    maskedtVeicCNPJ.EditMask := '00.000.000/0000-00;1;_';
    maskedtVeicCNPJ.SetFocus;
  end;
end;

end.
