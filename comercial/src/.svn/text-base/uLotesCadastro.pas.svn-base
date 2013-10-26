unit uLotesCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai, FMTBcd, DBClient, Provider, DB, SqlExpr, Menus, XPMenu,
  StdCtrls, Buttons, ExtCtrls, MMJPanel, Grids, DBGrids, Mask, JvExMask,
  JvToolEdit, JvBaseDlg, JvProgressDialog, JvExControls, JvWaitingGradient,
  JvAnimatedImage, JvGIFCtrl;

type
  TfLotesCadastro = class(TfPai)
    sdslotes: TSQLDataSet;
    dsplotes: TDataSetProvider;
    cdslotes: TClientDataSet;
    sdslotesCODLOTE: TIntegerField;
    sdslotesLOTE: TStringField;
    sdslotesCODPRODUTO: TIntegerField;
    sdslotesDATAFABRICACAO: TDateField;
    sdslotesDATAVENCIMENTO: TDateField;
    sdslotesESTOQUE: TFloatField;
    sdslotesPRECO: TFloatField;
    sdslotesCODPRO: TStringField;
    sdslotesPRODUTO: TStringField;
    DBGrid1: TDBGrid;
    cdslotesLOTE: TStringField;
    cdslotesESTOQUE: TFloatField;
    cdslotesPRECO: TFloatField;
    cdslotesCODPRO: TStringField;
    cdslotesPRODUTO: TStringField;
    BitBtn1: TBitBtn;
    sdsE: TSQLDataSet;
    JvDateEdit1: TJvDateEdit;
    Label3: TLabel;
    JvGIFAnimator1: TJvGIFAnimator;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLotesCadastro: TfLotesCadastro;

implementation

uses UDm, sCtrlResize;

{$R *.dfm}

procedure TfLotesCadastro.FormShow(Sender: TObject);
begin
//  sCtrlResize.CtrlResize(TForm(fLotesCadastro));
  Incluir := 'S';
  Alterar := 'S';
  Excluir := 'S';
  Cancelar := 'S';
  Procurar := 'S';
end;

procedure TfLotesCadastro.BitBtn1Click(Sender: TObject);
var str: string;
begin
  inherited;
  if MessageDlg('         ATENÇÃO  !!!        ' + #10#13 +
    'Este procedimento refaz todos os lançamentos' +
    #10#13 + ' na tabela Lotes, com base no que aparece' + #10#13 +
    ' no Estoque Produtos em MATERIAIS. Faça um backup antes.' + #10#13 +
    ' Deseja continuar ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    JvGIFAnimator1.Animate := True;
    Application.ProcessMessages;
    Label1.Caption := 'Aguarde, atualizando a tabela Lotes .....';
    Label2.Caption := 'Aguarde, atualizando a tabela Lotes .....';
    str := 'execute procedure' +
      ' SPESTOQUEFILTRO_CORRIGE(' + QuotedStr('01/01/1901') + ', ' +
      QuotedStr(FormatDateTime('mm/dd/yy',JvDateEdit1.Date)) + ', 1, 10000000, ' + QuotedStr('TODOS SUBGRUPOS DO CADASTRO CATEGORIA') +
      '  , 100, 1, ' + QuotedStr('TODAS AS MARCAS CADASTRADAS NO SISTEMA') + ', ' +
      QuotedStr('TODOS OS LOTES CADASTRADOS NO SISTEMA') + ')';
    Try
      dm.sqlsisAdimin.ExecuteDirect(str);
      Label1.Caption := '';
      Label2.Caption := '';
      JvGIFAnimator1.Animate := False;
      Application.ProcessMessages;
      MessageDlg('Tabela atualizada com sucesso !!', mtInformation, [mbOK], 0);
    Except
      MessageDlg('Erro na atualização da tabela.', mtError, [mbOK], 0);
    end;
  end;
end;

procedure TfLotesCadastro.FormCreate(Sender: TObject);
begin
 // inherited;

end;

end.
