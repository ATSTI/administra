unit uEstoqueAtualiza2;

interface

uses
  Classes;

type
  TEstoqueAtualiza = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

implementation

uses UDm;

{ Important: Methods and properties of objects in visual components can only be
  used in a method called using Synchronize, for example,

      Synchronize(UpdateCaption);

  and UpdateCaption could look like,

    procedure TEstoqueAtualiza.UpdateCaption;
    begin
      Form1.Caption := 'Updated in a thread';
    end; }

{ TEstoqueAtualiza }

procedure TEstoqueAtualiza.Execute;
begin
  { Place thread code here }
  dm.sdsBusca.SQLConnection := dm.SQl;
  dm.cdsBusca.CommandText := 'select md.codproduto, m.codalmoxarifado ' +
    ' from movimento m , movimentodetalhe md '
    ' where m.codmovimento = ' + IntToStr(dm.EstoquecodMOV) +
    '  and md.codmovimento = m.codmovimento';
  dm.cdsBusca.Open;
  while not dm.cdsBusca.Eof do
  begin
      select coalesce(ev.PRECOCUSTO,0), coalesce(ev.SALDOFIMACUM,0), coalesce(ev.PRECOCOMPRA,0)
        from ESTOQUE_VIEW_CUSTO(current_date, :codp, :ccusto,'TODOS OS LOTES CADASTRADOS NO SISTEMA') ev
        into :PRECO_CUSTO, :ESTOQUE, :PRECO_COMPRA;

      update produtos set ESTOQUEATUAL = :estoque
        ,datagrav = current_date
        where codproduto = :codp;
  end
end;

end.
