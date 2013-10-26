unit uPrincipalCitrus;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, JvExControls, JvOutlookBar, ImgList, ActnList, uUtils;

type
  TfPrincipal = class(TForm)
    JvOutlookBar1: TJvOutlookBar;
    ImageList1: TImageList;
    ActionList1: TActionList;
    acClienteCadastro: TAction;
    acCompra: TAction;
    acCfo: TAction;
    acFornecedor: TAction;
    procedure acClienteCadastroExecute(Sender: TObject);
    procedure acCompraExecute(Sender: TObject);
    procedure acCfoExecute(Sender: TObject);
    procedure acFornecedorExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;
  varutil : TUtils;
implementation

uses uCompra, uLote, uFornecedorCadastro;

{$R *.dfm}

procedure TfPrincipal.acClienteCadastroExecute(Sender: TObject);
begin
  //varutil.CriaForm(TfClienteCadastro,fClienteCadastro);
end;

procedure TfPrincipal.acCompraExecute(Sender: TObject);
begin
  varutil.CriaForm(TfCompra,fCompra);
end;

procedure TfPrincipal.acCfoExecute(Sender: TObject);
begin
  varutil.CriaForm(TfLote,fLote);
end;

procedure TfPrincipal.acFornecedorExecute(Sender: TObject);
begin
  varutil.CriaForm(TfFornecedorCadastro,fFornecedorCadastro);
end;

end.
