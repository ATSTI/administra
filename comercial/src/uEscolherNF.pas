unit uEscolherNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxCore, dxButton;

type
  TfEscolherNF = class(TForm)
    dxButton8: TdxButton;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton1Click(Sender: TObject);
    procedure dxButton2Click(Sender: TObject);
    procedure dxButton3Click(Sender: TObject);
    procedure dxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEscolherNF: TfEscolherNF;

implementation

uses uNotafiscal, uNFCompra, uNF, uNotaf, ufNotafiscalProc, UDMNF,
  uLotes, uNotaf1,
  uNotafc,
  UDm;

{$R *.dfm}

procedure TfEscolherNF.dxButton8Click(Sender: TObject);
begin
   fLotes := TfLotes.Create(Application);
   fNFCompra := TfNFCompra.Create(Application);
   try
      fNFCompra.ShowModal;
   finally
      fLotes.free;
      fNFCompra.Free;
   end;
end;

procedure TfEscolherNF.dxButton1Click(Sender: TObject);
begin
   fNF := TfNF.Create(Application);
   try
      fNF.ShowModal;
   finally
      fNF.Free;
   end;
end;

procedure TfEscolherNF.dxButton2Click(Sender: TObject);
begin
   fNotaFiscalProc := TfNotaFiscalProc.Create(Application);
   try
      fNotaFiscalProc.ShowModal;
   finally
      fNotaFiscalProc.Free;
   end;
end;

procedure TfEscolherNF.dxButton3Click(Sender: TObject);
begin
   fNotaf := TfNotaf.Create(Application);
   try
     fNotaf.codVendaFin := 0;
     fNotaf.codMovFin := 0;     
     DM.tipoVenda := 'NF';
     TipoNF := 'Cliente';
     DMNF.cds_venda.Params[0].Clear;
     DMNF.cds_venda.Params[1].Clear;     
     fNotaf.ShowModal;
   finally
      fNotaf.Free;
   end;
end;

procedure TfEscolherNF.dxButton4Click(Sender: TObject);
begin
   fNotaFc := TfNotaFc.Create(Application);
   try
      TipoNF := 'Fornecedor';
      //fNotaFc.RadioGroup1.Visible := False;
      fNotaFc.ShowModal;
   finally
      fNotaFc.Free;
   end;
end;

end.
