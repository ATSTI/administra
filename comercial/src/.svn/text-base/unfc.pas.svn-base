unit unfc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, FMTBcd, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, JvDBUltimGrid, DB, DBClient, Provider, SqlExpr,
  ComCtrls, JvExComCtrls, JvProgressBar;

type
  Tfnfc = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cbMes: TComboBox;
    data_ini: TJvDatePickerEdit;
    data_fim: TJvDatePickerEdit;
    btnSair: TBitBtn;
    btnIncluir: TBitBtn;
    btnProcurar: TBitBtn;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    tblNotaFp: TClientDataSet;
    DataSource1: TDataSource;
    JvDBUltimGrid1: TJvDBUltimGrid;
    tblVenda: TClientDataSet;
    tblVendaP: TClientDataSet;
    gauge: TJvProgressBar;
    tblVendaC: TClientDataSet;
    procedure btnSairClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fnfc: Tfnfc;

implementation

uses UDm;

{$R *.dfm}

procedure Tfnfc.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tfnfc.btnIncluirClick(Sender: TObject);
var
  wTexto, wDataI, wDataF, wCfop, wMes, wAno, wTipo, wObs, wDirArq,wNomeArq : String;
  wCont, wNrNota, wTot20, wTot30, wTot40, wTot50, wZ : Integer;
  wArqTexto: TextFile;
begin
  //TblNotaFP.CancelRange;
  //TblNotaFP.SetRange([data_ini.Date],[data_fim.Date]);
  TblNotaFP.First;
  if TblNotaFP.Eof then Begin
    Application.MessageBox('Não Existem Notas Fiscais cadastradas neste Periodo !' ,'Atenção',MB_ICONWARNING + MB_OK);
    data_ini.SetFocus;
    Exit;
  end;
  // *** Gerar o Arquivo TXT para Nota Fiscal Paulista ***
  wDataI := FormatDateTime('dd/mm/yyyy',TblNotaFP.FieldByName('Emissao').AsDateTime);
  TblNotaFP.Last;
  wDataF := FormatDateTime('dd/mm/yyyy',TblNotaFP.FieldByName('Emissao').AsDateTime);
  Gauge.Max := TblNotaFP.RecordCount;
  // *** Cria o arquivo Texto ***
  wZ := 2 - Length(Trim(Copy(FormatDateTime('ddmmyyyy',data_ini.Date),3,2)));
  wMes := StringOfChar('0',wZ) + Trim(Copy(FormatDateTime('ddmmyyyy',data_fim.Date),3,2));
  wAno := Copy(FormatDateTime('ddmmyyyy',data_ini.Date),7,2);
  wDirArq := ExtractFilePath(Application.ExeName) + 'Exportar\';
  wNomeArq := wDirArq + 'NP' + wMes + wAno + '.Txt';
  AssignFile(wArqTexto,wNomeArq);
  Rewrite(wArqTexto);
  // *** Monta o Registro 10 ***
  wTexto := '10' + '|1,00|' + '50347830000168|' + wDataI + '|' + wDataF; // Registro + Versão + CNPJ Emitente + Data Inicial e Final
  WriteLn(wArqTexto,wTexto);
  wTot20 := 0; wTot30 := 0;
  wTot40 := 0; wTot50 := 0;
  wCont := 0;
  TblNotaFP.First;
  while not TblNotaFP.Eof do
  begin
    wCont := wCont + 1;
    Gauge.Position := wCont;
    // Verifica se a Venda foi Cancelado ou Não
    wNrNota := TblNotaFP.FieldByName('NrVenda').AsInteger;
    wTipo := 'I'; wObs := '';
    TblVendaC.Locate('NrVenda',wNrNota,[]);
    if TblVendaC.FieldByName('Status').AsString = 'C' then
    Begin
      wTipo := 'C';
      wObs := 'ERRO DE VENDA';
    end;
    // *** Monta o Registro 20 ***
    wTexto := '20' + '|' + Trim(wTipo) + '|' + Trim(wObs) + '|' + 'Venda a Consumidor Final' + '|1|' +
    Trim(TblNotaFP.FieldByName('NrNota').AsString) + '|' +
    FormatDateTime('dd/mm/yyyy',TblNotaFP.FieldByName('Emissao').AsDateTime) + ' ' +
    TblNotaFP.FieldByName('Hora').AsString + '|' +
    FormatDateTime('dd/mm/yyyy',TblNotaFP.FieldByName('Emissao').AsDateTime) + ' ' +
    TblNotaFP.FieldByName('Hora').AsString + '|' + '1|' + '5102' + '|||' + // Hora Saida + Tipo 1 = Saida + CFOP
    Trim(TblNotaFP.FieldByName('CNPJ').AsString) + '|' +
    Format('%-60s',[Trim(TblNotaFP.FieldByName('RSocial').AsString)]) + '|' +
    Format('%-60s',[Trim(TblNotaFP.FieldByName('Endereco').AsString)]) + '|' +
    Format('%-60s',[Trim(TblNotaFP.FieldByName('Numero').AsString)]) + '||' +
    Format('%-60s',[Trim(TblNotaFP.FieldByName('Bairro').AsString)]) + '|' +
    Format('%-60s',[Trim(TblNotaFP.FieldByName('Cidade').AsString)]) + '|' +
    Format('%2s',[Trim(TblNotaFP.FieldByName('Uf').AsString)]) + '||Brasil||'; // Uf + Cep + Pais + fone + IE Destinatario
    WriteLn(wArqTexto,wTexto);
    wTot20 := wTot20 + 1;
    if wTipo = 'I' then
    Begin
      // *** Monta o Registro 30 ***
      TblVendaP.SetRange([wNrNota],[wNrNota]);
      TblVendaP.First;
      while not TblVendaP.Eof do
      begin
        if TblVendaP.FieldByName('CST').AsString = '060' then
          wCfop := ' CFOP: 5405'
        else
          wCfop := '';
        wTexto := '30|' + Trim(TblVendaP.FieldByName('CodProd').AsString) + '|' +
          Trim(TblVendaP.FieldByName('Descricao').AsString) + wCfop + '||' + // Descricao c/ ou s/ cfop + Codigo NCM
          Trim(TblVendaP.FieldByName('Unidade').AsString) + '|' +
          Trim(FormatFloat('######0.0000',TblVendaP.FieldByName('Qtde').AsFloat)) + '|' +
          Trim(FormatFloat('##########0.0000',TblVendaP.FieldByName('Unitario').AsCurrency)) + '|' +
          Trim(FormatFloat('###########0.00',TblVendaP.FieldByName('Total').AsCurrency)) + '|' +
          Trim(TblVendaP.FieldByName('CST').AsString) + '|' +
          Trim(FormatFloat('#0.00',TblVendaP.FieldByName('ICMS').AsCurrency)) + '||';
        WriteLn(wArqTexto,wTexto);
        wTot30 := wTot30 + 1;
        TblVendaP.Next; // Proximo Registro
      end;
      TblVendaP.CancelRange;
      // *** Monta o Registro 40 ***
      wTexto := '40|' + Trim(FormatFloat('###########0.00',TblNotaFP.FieldByName('BaseICMS').AsCurrency)) + '|' +
      Trim(FormatFloat('###########0.00',TblNotaFP.FieldByName('ValorICMS').AsCurrency)) + '|0,00|0,00|' +
      Trim(FormatFloat('###########0.00',TblNotaFP.FieldByName('SubTotal').AsCurrency)) + '|0,00|0,00|' +
      Trim(FormatFloat('###########0.00',TblNotaFP.FieldByName('Desconto').AsCurrency)) + '|0,00|0,00|' +
      Trim(FormatFloat('###########0.00',TblNotaFP.FieldByName('TotalNota').AsCurrency)) + '|||';
      WriteLn(wArqTexto,wTexto);
      wTot40 := wTot40 + 1;
      // *** Monta o Registro 50 ***
      wTexto := '50|1||||||||||||||';
      WriteLn(wArqTexto,wTexto);
      wTot50 := wTot50 + 1;
    end;
    TblNotaFP.Next; // Proximo Registro
  end;
  // *** Monta o Registro 90 - Final ***
  wTexto := '90|' + Trim(FormatFloat('00000',wTot20)) + '|' + Trim(FormatFloat('00000',wTot30)) + '|' +
  Trim(FormatFloat('00000',wTot40)) + '|' + Trim(FormatFloat('00000',wTot50)) + '|' +
  Trim(FormatFloat('00000',0));
  WriteLn(wArqTexto,wTexto);
  CloseFile(wArqTexto);
  Application.MessageBox('Concluido com sussesso a exportação de arquivo TXT da Nota Fiscal Paulista !', 'Informação',MB_IconInformation +MB_OK);
  //FrmNotaFiscalP.Close;
end;
end.
