unit uprocurar_prest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, ComCtrls, Grids, DBGrids, StdCtrls, Buttons,
  DBLocals, EDBFind, dxCore, dxButton, DBClient, FMTBcd, Provider, SqlExpr;

type
  TfProcurar_prest = class(TForm)
    DtSrc: TDataSource;
    StsBr: TStatusBar;
    Panel1: TPanel;
    BtnOk: TBitBtn;
    BtnCancel: TBitBtn;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    EditProc: TEdit;
    BtnProcurar: TBitBtn;
    EvDBFind1: TEvDBFind;
    btnIncluir: TBitBtn;
    Label1: TLabel;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure BtnProcurarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
 constructor Create (AOWner : TComponent; DataSet : TClientDataset); reintroduce;
    { Public declarations }
  end;

var
    fProcurar_prest: TfProcurar_prest;
    varForm1, nome_forn , nomecliente: String;
    cod_forn ,codcliente: integer;

implementation

uses UDM, uFornecedorCadastro, ufuncionario, uClienteCadastro,
  uClientePlano, UDmSaude;

{$R *.dfm}

procedure TfProcurar_prest.DBGrid1TitleClick(Column: TColumn);
begin
  with DtSrc.dataset as TClientDataset do
    IndexFieldNames:=Column.FieldName;
end;

procedure TfProcurar_prest.BtnProcurarClick(Sender: TObject);
begin
 with DtSrc.dataset as TClientDataset do // Atenção : declara DBlocalS em uses
  begin
    Close;
    If tag=0 then //opção de flag para usar % ou não
       Params[0].AsString:=EditProc.Text+'%'
    else
       Params[0].AsString:=EditProc.Text;
    Open;
    BtnOk.Enabled:=not IsEmpty;
    if IsEmpty then
       StsBr.SimpleText:=format('Nenum registro foi encontrado com "%s"',[EditProc.text])
    else
     StsBr.SimpleText:=
     format('%d registros encontrados com "%s"',[recordcount,EditProc.text]);
   end;
end;

constructor TfProcurar_prest.Create(AOWner: TComponent; DataSet: TClientDataset);
begin
  inherited create(AOWner);
   DtSrc.DataSet:=DataSet;
end;

procedure TfProcurar_prest.FormShow(Sender: TObject);
begin
 if (EvDBFind1.Visible = True) then
    EvDBFind1.SetFocus;
end;

procedure TfProcurar_prest.btnIncluirClick(Sender: TObject);
begin
  //=========================================================
  //Procura acessado para procurar Fornecedor
  if DtSrc.DataSet = dm.scds_forn_proc then
  begin
     ffornecedorcadastro:=TfFornecedorCadastro.Create(Application);
     try
        //varForm1 := 'Procura';
        ffornecedorcadastro.ShowModal;
        Close;
     finally
       varForm1 := '';
       ffornecedorcadastro.Free;
     end;
  end;
  //=========================================================
  //Procura acessado para procurar Vendedor
  if DtSrc.DataSet = dm.scds_usuario_proc then
  begin
     fFuncionario:=TfFuncionario.Create(Application);
     try
        //varForm1 := 'Procura';
        fFuncionario.ShowModal;
        BtnOk.Click;
     finally
       varForm1 := '';
       fFuncionario.Free;
     end;
  end;

end;

procedure TfProcurar_prest.BtnOkClick(Sender: TObject);
begin
  if (dm.scds_usuario_proc.Active) then
  begin
    cod_vendedor := dm.scds_usuario_procCODUSUARIO.AsInteger;
    nome_vendedor := dm.scds_usuario_procNOMEUSUARIO.AsString;
  end;
end;

procedure TfProcurar_prest.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  {if (dm.scds_forn_proc.Active) then
  begin
    codfornecedor := dm.scds_forn_procCODFORNECEDOR.AsInteger;
    fornecedor := dm.scds_forn_procNOMEFORNECEDOR.AsString;
  end;
   }
  if (dm.scds_usuario_proc.Active) then
  begin
    cod_vendedor := dm.scds_usuario_procCODUSUARIO.AsInteger;
    nome_vendedor := dm.scds_usuario_procNOMEUSUARIO.AsString;
  end;

end;

end.
