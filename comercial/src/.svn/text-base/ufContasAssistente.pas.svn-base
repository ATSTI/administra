unit ufContasAssistente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, XPMenu, StdCtrls, Buttons, ExtCtrls, DBClient, Provider,
  DB, SqlExpr, ComCtrls;

type
  TfContasAssistente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    sds: TSQLDataSet;
    sds1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds1: TClientDataSet;
    Image1: TImage;
    lblTitulo: TLabel;
    Image2: TImage;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    BitBtn1: TBitBtn;
    btnVoltar: TBitBtn;
    btnAvancar: TBitBtn;
    btnCancelar: TBitBtn;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Memo1: TMemo;
    ComboBox2: TComboBox;
    Label4: TLabel;
    Memo2: TMemo;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit1: TEdit;
    Label7: TLabel;
    Edit2: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Memo3: TMemo;
    XPMenu1: TXPMenu;
    procedure FormShow(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaTab (aTab: integer);
    procedure HabilitaBotoes (aVoltar, aAvancar,
      aCancelar: Boolean);
  public
    { Public declarations }
  end;

var
  fContasAssistente: TfContasAssistente;
  fez, fez1,fez2,fez3,fez4: String;

implementation

uses UDm, ufplanocontas, sCtrlResize;

{$R *.dfm}

procedure TfContasAssistente.FormShow(Sender: TObject);
begin
  //sCtrlResize.CtrlResize(TForm(fContasAssistente));
  PageControl1.ActivePage := TabSheet1;
  VerificaTab(PageControl1.ActivePageIndex);
  fez := 'N';
  fez1 := 'N';
  fez2 := 'N';
  fez3 := 'N';
  fez4 := 'N';
end;

procedure TfContasAssistente.HabilitaBotoes(aVoltar, aAvancar,
  aCancelar: Boolean);
begin
  btnVoltar.Enabled := aVoltar;
  btnAvancar.Enabled := aAvancar;
  btnCancelar.Enabled := aCancelar;
end;

procedure TfContasAssistente.VerificaTab(aTab: integer);
var
  aTitulo, str_sql: string;
begin
  case aTab of
    0: aTitulo := 'Iniciando a inclusão de Contas.';
    1: begin
         aTitulo := 'Definido o Tipo(Grupo) de Conta.';
       IF (fez = 'N') THEN
       BEGIN
         fez := 'S';
         if (sds.Active) then
           sds.Close;
         str_sql := 'SELECT NOME FROM PLANO WHERE CONTAPAI IS NULL';
         sds.CommandText := str_sql;
         sds.Open;
         ComboBox1.Items.Clear;
         While not sds.Eof do
         begin
           ComboBox1.Items.Add(sds.Fields[0].asstring);
           sds.Next;
         end;
       end;
       end;
    2: begin
         aTitulo := 'Definindo o Sub-Grupo para a Conta.';
       IF (fez1 = 'N') THEN
       BEGIN
         fez1 := 'S';
         if (sds.Active) then
           sds.Close;
         str_sql := 'SELECT NOMECONTA FROM PLANOCONTA(' +
           '''' + ComboBox1.Text + ''')';
         sds.CommandText := str_sql;
         sds.Open;
         ComboBox2.Items.Clear;
         While not sds.Eof do
         begin
           ComboBox2.Items.Add(sds.Fields[0].asstring);
           sds.Next;
         end;
       end;
       end;
    3: begin
         aTitulo := 'Definindo Código Reduzido, Nome e Descrição da Conta.';
       IF (fez2 = 'N') THEN
       BEGIN
         fez2 := 'S';
         if (cds1.Active) then
           cds1.Close;
         cds1.CommandText := 'select * from INCLUIR_CONTA('
              + '''' + ComboBox2.Text + ''')';
         cds1.open;
         Edit3.SetFocus;
         Edit3.Text := cds1.Fields[2].AsString;
         cds1.Close;
         btnAvancar.Caption := 'Concluir';
       end;
       end;
    4: begin
         aTitulo := 'Fim do procedimento de inclusão da Conta.';
       IF (fez3 = 'N') THEN
       BEGIN
         fez3 := 'S';
         // Verifica se este nome nao foi usado em outra conta
         if (sds.Active) then
           sds.Close;
         sds.CommandText := 'SELECT CONTA FROM PLANO WHERE NOME ='
           + '''' + Edit1.Text + '''';
         sds.Open;
         if (not sds.IsEmpty) then
         begin
           MessageDlg('Este nome já está em uso por outra CONTA !', mtWarning, [mbOK], 0);
           btnAvancar.Caption := 'Avancar >';
           btnVoltar.Click;
           Edit1.SetFocus;
           exit;
         end;
         if (sds.Active) then
           sds.Close;
         sds.CommandText := 'SELECT CODREDUZIDO FROM PLANO WHERE CODREDUZIDO ='
           + '''' + Edit3.Text + '''';
         sds.Open;
         // Verifica se o CODREDUZIDO nao foi usado em outra conta
         if (not sds.IsEmpty) then
         begin
           MessageDlg('Este CODREDUZIDO já está em uso por outra CONTA !', mtWarning, [mbOK], 0);
           btnVoltar.Click;
           btnAvancar.Caption := 'Avancar >';
           Edit3.SetFocus;
           exit;
         end;
         // Abro um cds com os dados que vou usar
         if (cds1.Active) then
           cds1.Close;
         cds1.CommandText := 'select * from INCLUIR_CONTA('
               + '''' + ComboBox2.Text + ''')';
         cds1.open;
         // Gravando conta de Lancamento - Passo 5 - Fazendo a inclusão no BD.
         // Pegando a conta e contapai
         str_sql := 'INSERT INTO PLANO (CONTA, CONTAPAI, NOME, DESCRICAO, CODREDUZIDO, CONSOLIDA';
         str_sql := str_sql + ' ,RATEIO) VALUES ( ';
         str_sql := str_sql + '''' + cds1.Fields[0].AsString + ''',' ;
         str_sql := str_sql + '''' + cds1.Fields[1].AsString + ''',';
         str_sql := str_sql + '''' + Edit1.Text + ''', ';
         str_sql := str_sql + '''' + Edit2.Text + ''', ';
         str_sql := str_sql + '''' + Edit3.Text + ''',';
         str_sql := str_sql + '''' + 'S' + ''','; // Consolida
         str_sql := str_sql + '''' + 'N' + ''')'; // Rateio
         if (sds.Active) then
           sds.Close;
         sds.CommandText := str_sql;
         sds.ExecSQL;
         Memo3.Clear;
         Memo3.Lines.Add(' ');
         Memo3.Lines.Add('   ');
         Memo3.Lines.Add(' Conta: ');
         Memo3.Lines.Add(' Cod. Reduzido            Numero              Conta ');
         Memo3.Lines.Add('         '+cds1.Fields[2].AsString+'            '+cds1.Fields[0].AsString+'              '+ Edit1.Text);
         btnCancelar.Caption := 'Fechar';
       // Fim item 4
       end;
       end;
  end;
  lblTitulo.Caption := aTitulo;
end;

procedure TfContasAssistente.btnVoltarClick(Sender: TObject);
begin
  with PageControl1 do
   ActivePageIndex := ActivePageIndex - 1;
  PageControl1Change(nil);
  fez := 'N';
  fez1 := 'N';
  fez2 := 'N';
  fez3 := 'N';
  fez4 := 'N';
  btnAvancar.Caption := 'Avancar >';
  btnCancelar.Caption := '&Cancelar';
end;

procedure TfContasAssistente.btnAvancarClick(Sender: TObject);
begin
  with PageControl1 do
    ActivePageIndex := ActivePageIndex + 1;
  PageControl1Change(nil);
end;

procedure TfContasAssistente.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfContasAssistente.PageControl1Change(Sender: TObject);
begin
  with PageControl1 do
  begin
    HabilitaBotoes((ActivePageIndex > 0),
      (ActivePageIndex <= 3), True);
    VerificaTab(ActivePageIndex);
  end;
end;

procedure TfContasAssistente.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
  begin
    key:= #0;
    SelectNext((Sender as TwinControl),True,True);
  end;
end;

procedure TfContasAssistente.ComboBox2Click(Sender: TObject);
begin
   Memo2.Lines.Clear;
   if (sds.Active) then
     sds.close;
   sds.CommandText := 'SELECT pl1.CODREDUZIDO || ' + '''' + ' - ' + ''''
     + ' || pl1.CONTA || ' + '''' + ' - ' + ''''
     + ' || pl1.NOME FROM PLANO pl1 '
     + ' WHERE EXISTS (SELECT pl2.CONTAPAI FROM PLANO pl2 WHERE '
     + ' pl2.NOME like '
     + '''' + ComboBox2.Text + ''''
     + ' AND pl1.CONTAPAI = pl2.CONTA order by pl1.CONTA)';
   sds.Open;
     Memo2.Lines.Add('====================================================');
     Memo2.Lines.Add('        Contas já cadastradas no sistema:');
     Memo2.Lines.Add('====================================================');
   While not sds.Eof do
   begin
     Memo2.Lines.Add(sds.Fields[0].asString);
     Memo2.Lines.Add('----------------------------------------------------------------------');
     sds.Next;
   end;
   sds.Close;
end;

procedure TfContasAssistente.BitBtn1Click(Sender: TObject);
begin
 fPlanoContas:=TfPlanoContas.Create(Application);
 try
  fPlanoContas.ShowModal;
 finally
  fPlanoContas.Free;
 end;
end;

end.
