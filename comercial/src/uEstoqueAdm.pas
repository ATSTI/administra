unit uEstoqueAdm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfEstoqueAdm = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEstoqueAdm: TfEstoqueAdm;

implementation

uses uEntra_Sai_estoque, uProcura_produtos, uFiltroEstoque, uLotesInclui;

{$R *.dfm}

procedure TfEstoqueAdm.BitBtn3Click(Sender: TObject);
begin
  fProcura_produtos.btnIncluir.Visible := true;
  fProcura_produtos.ShowModal;
  fProcura_produtos.cbMarca.Text := '';
end;

procedure TfEstoqueAdm.BitBtn4Click(Sender: TObject);
begin
  Close;
end;

procedure TfEstoqueAdm.BitBtn5Click(Sender: TObject);
begin
 fEntra_Sai_estoque := TfEntra_Sai_estoque.Create(Application);
 try
   with fEntra_Sai_estoque do
   begin
     label1.visible := False;
     dbEdit1.Visible := False;
     Label2.Visible := False;
     Combobox1.Visible := False;
     Label11.Visible := False;
     Edit1.Visible := False;
     label13.Top := label13.Top - 15;
     MaskEdit1.Top := MaskEdit1.Top - 15;
     Label3.Top := Label3.Top - 15;
     Combobox2.Top := Combobox2.Top - 15;
     Label12.Top := Label12.Top - 15;
     Edit2.Top := Edit2.Top - 15;
     entsai := 0;
     Label15.Caption := 'Entrada de Mercadorias de Estoque';

     cbCodigo.DataField := '';
     cbNome.DataField := '';
     if (cdsB.Active) then
       cdsB.Close;
     cdsB.CommandText := 'SELECT CODFORNECEDOR, NOMEFORNECEDOR FROM FORNECEDOR WHERE ' +
       ' STATUS = 1';
     cdsB.Open;
     cbCodigo.DataField := 'CODFORNECEDOR';
     cbNome.DataField := 'NOMEFORNECEDOR';

     ShowModal;
   end;
 finally
   fEntra_Sai_estoque.Free;
 end;

end;

procedure TfEstoqueAdm.BitBtn1Click(Sender: TObject);
begin
  fEntra_Sai_estoque := TfEntra_Sai_estoque.Create(Application);
  try
    with fEntra_Sai_estoque do
    begin
      entsai := 1;
      Label14.visible := False;
      Label16.visible := False;
      cbCodigo.visible := False;
      cbNome.visible := False;
      Label15.Caption := 'Movimento de Mercadorias no Estoque';
      ShowModal;
    end;
  finally
    fEntra_Sai_estoque.Free;
  end;
end;

procedure TfEstoqueAdm.BitBtn2Click(Sender: TObject);
begin
 fLotesInclui.ShowModal;
 {
 fFiltroEstoque := TfFiltroEstoque.Create(Application);
 try
   fFiltroEstoque.ShowModal;
 finally
   fFiltroEstoque.Free;
 end;}
end;

end.
