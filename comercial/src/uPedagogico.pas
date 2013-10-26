unit uPedagogico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, XPMenu, EAppProt, EOneInst, ExtCtrls, dxCore,
  dxButton, MMJPanel, jpeg, DBxpress, FMTBcd, SqlExpr, Provider, DB,
  DBClient;

type
  TfPedagogico = class(TForm)
    Logotipo: TImage;
    MMJPanel1: TMMJPanel;
    dxButton5: TdxButton;
    dxButton6: TdxButton;
    dxButton7: TdxButton;
    dxButton8: TdxButton;
    dxButton9: TdxButton;
    MMJPanel2: TMMJPanel;
    dxButton1: TdxButton;
    dxButton2: TdxButton;
    dxButton3: TdxButton;
    dxButton4: TdxButton;
    MainMenu1: TMainMenu;
    MenuArquivo: TMenuItem;
    MenuArquivoSenha: TMenuItem;
    MenuSenhaCadastrarUsuarios: TMenuItem;
    MenuSenhaAlterarSenha: TMenuItem;
    MenuArquivoBackup: TMenuItem;
    ArquivoRestaura: TMenuItem;
    MenuArquivoSair: TMenuItem;
    MenuCadastro: TMenuItem;
    MenuCadastroEscola: TMenuItem;
    MenuCadastroProfessor: TMenuItem;
    MenuCadastroPerodo: TMenuItem;
    MenuCadastroSeries: TMenuItem;
    MenuCadastroMaterias: TMenuItem;
    MenuCadastroClasses: TMenuItem;
    MenuClassesInclusao: TMenuItem;
    MenuClassesAlteracao: TMenuItem;
    ransferirAlunodeClasse1: TMenuItem;
    MenuCadastroAluno: TMenuItem;
    ColaboradorTurmaMatria1: TMenuItem;
    MenuMovimento: TMenuItem;
    MenuMovimentoNotaseFrequencia: TMenuItem;
    MenuMovimentoAtualizaoDoSistema: TMenuItem;
    ManutenaodoSistema1: TMenuItem;
    Importa: TMenuItem;
    ExportarCadastro1: TMenuItem;
    ImportarCadastro1: TMenuItem;
    MenuRelatrios: TMenuItem;
    Adimnistrativos1: TMenuItem;
    MenuRelatorioNotaseFaltas: TMenuItem;
    MenuRelatorioNotaseFaltasVisualizar: TMenuItem;
    PorAluno1: TMenuItem;
    MenuRelatorioBoletim: TMenuItem;
    MenuRelatorioBoletimVisualizar: TMenuItem;
    PorClasse1: TMenuItem;
    MenuRelatorioDeclaraoTransferncia: TMenuItem;
    MenuRelatorioFichaIndividual: TMenuItem;
    MenuRelatorioHistricoEscolar: TMenuItem;
    ContratoServio1: TMenuItem;
    CadastroAlunos1: TMenuItem;
    ListaFuncionriosProfessores1: TMenuItem;
    MenuRelatorioAlunos: TMenuItem;
    Matriculados1: TMenuItem;
    VisualizarAlunosMatriculados: TMenuItem;
    ImprimirAlunosMatriculados: TMenuItem;
    NaoMatriculados: TMenuItem;
    VisualizaralunosNaoMatriculados: TMenuItem;
    ImprimiralunosNaoMatriculados: TMenuItem;
    Matriculados3: TMenuItem;
    VisualizarAlunosPorTransporte: TMenuItem;
    ImprimirAlunosPorTransporte: TMenuItem;
    Matriculados4: TMenuItem;
    VisualizarAlunosPorClasse: TMenuItem;
    ImprimirAlunosPorclasse: TMenuItem;
    Endereos1: TMenuItem;
    BotaoEnderecoVisializar: TMenuItem;
    BotaoEnderecoImprimir: TMenuItem;
    BotaoAniversariantesVisualizar: TMenuItem;
    MenuRelatorioClasse: TMenuItem;
    VisualizarGradeHoraria: TMenuItem;
    ClasseEscolha: TMenuItem;
    Endereo1: TMenuItem;
    MenuRelatorioProfessor: TMenuItem;
    VisualizarProfessor: TMenuItem;
    Diversos1: TMenuItem;
    MenuSobre: TMenuItem;
    MenuSobreSobre: TMenuItem;
    Timer1: TTimer;
    TmrRelogio: TTimer;
    EvOneInstance1: TEvOneInstance;
    EvAppProtect1: TEvAppProtect;
    XPMenu1: TXPMenu;
    StbMensagens: TStatusBar;
    cds_Login: TClientDataSet;
    cds_LoginLOGIN: TStringField;
    cds_LoginMICRO: TStringField;
    cds_LoginMODULO: TStringField;
    cds_LoginID_LOG: TIntegerField;
    dsp_Login: TDataSetProvider;
    sds_Login: TSQLDataSet;
    sds_LoginLOGIN: TStringField;
    sds_LoginMICRO: TStringField;
    sds_LoginMODULO: TStringField;
    sds_LoginID_LOG: TIntegerField;
    PopupMenu1: TPopupMenu;
    procedure MenuCadastroAlunoClick(Sender: TObject);
    procedure TmrRelogioTimer(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure MenuCadastroPerodoClick(Sender: TObject);
    procedure MenuCadastroSeriesClick(Sender: TObject);
    procedure MenuCadastroMateriasClick(Sender: TObject);
    procedure MenuClassesInclusaoClick(Sender: TObject);
    procedure MenuClassesAlteracaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExportarCadastro1Click(Sender: TObject);
    procedure ImportarCadastro1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function NomeComputador: string;    
  end;

var
  fPedagogico: TfPedagogico;

implementation

uses uAlunoCadastro, uListaCliEscola, UDm, uNotasFaltas, uBoletimAluno,
  uImpBoletim, uPeriodos, uTipoSerie, uMaterias, uClasseCadastro,
  uClasseEscolha, uExporta, uImporta;

{$R *.dfm}

procedure TfPedagogico.MenuCadastroAlunoClick(Sender: TObject);
begin
  varform := 'cadastroaluno';
  RA := '';
  fAlunoCadastro := TfAlunoCadastro.Create(Application);
  try
    fAlunoCadastro.btnProcurar.Enabled := True;
    fAlunoCadastro.ShowModal;
  finally
    fAlunoCadastro.Free;
  end;
end;

procedure TfPedagogico.TmrRelogioTimer(Sender: TObject);
begin
StbMensagens.Panels[1].Text:=TimeToStr(Time);
StbMensagens.Panels[2].Text:=FormatDateTime('dddd", "dd" de "mmmm " de " yyyy', Now) ;

end;

procedure TfPedagogico.dxButton5Click(Sender: TObject);
begin
  varform := 'consultapedagogico';
  RA := '';
  fListaCliEscola := TfListaCliEscola.Create(Application);
  try
    fListaCliEscola.ShowModal;
  finally
    fListaCliEscola.Free;
  end;
end;

procedure TfPedagogico.FormShow(Sender: TObject);
begin
  if (dm.usuario.Active) then
     dm.usuario.Close;
  dm.usuario.Params[0].AsString := usuario;
  dm.usuario.Open;
  if (not dm.usuario.IsEmpty) then
  begin
       videoW := dm.UsuarioP1.AsString;
       videoH := dm.UsuarioP2.AsString;
  end;
  if videoW = '800' then
    Position := poDesigned;
  if videoW <> '' then
  begin
   ScreenWidth := StrToInt(videoW);
   ScreenHeight := StrToInt(videoH);
   scaled := true;
   if (screen.width <> ScreenWidth) then
   begin
     height := longint(height) * longint(screen.height) DIV ScreenHeight;
     width := longint(width) * longint(screen.width) DIV ScreenWidth;
     scaleBy(screen.width, ScreenWidth);
   end;
  end;

end;

procedure TfPedagogico.dxButton9Click(Sender: TObject);
begin
  close;
end;

procedure TfPedagogico.dxButton7Click(Sender: TObject);
begin
 fBoletimAluno:=TfBoletimAluno.Create(Application);
 try
   fBoletimAluno.ShowModal;
 finally
   fBoletimAluno.Free;
 end;
end;

procedure TfPedagogico.dxButton8Click(Sender: TObject);
begin
 fImpBoletim:=TfImpBoletim.Create(Application);
 try
   fImpBoletim.ShowModal;
 finally
   fImpBoletim.Free;
 end;
end;

procedure TfPedagogico.dxButton6Click(Sender: TObject);
begin
  fNotasFaltas := TfNotasFaltas.Create(Application);
  try
    fNotasFaltas.ShowModal;
  finally
    fNotasFaltas.Free;
  end;    
end;

procedure TfPedagogico.MenuCadastroPerodoClick(Sender: TObject);
begin
  fPeriodos := TfPeriodos.Create(Application);
  try
    fPeriodos.ShowModal;
  finally
    fPeriodos.Free;
  end;
end;

procedure TfPedagogico.MenuCadastroSeriesClick(Sender: TObject);
begin
  fTipoSerie := TfTipoSerie.Create(Application);
  try
    fTipoSerie.ShowModal;
  finally
    fTipoSerie.Free;
  end;
end;

procedure TfPedagogico.MenuCadastroMateriasClick(Sender: TObject);
begin
  fMaterias := TfMaterias.Create(Application);
  try
    fMaterias.ShowModal;
  finally
    fMaterias.Free;
  end;
end;

procedure TfPedagogico.MenuClassesInclusaoClick(Sender: TObject);
begin
 fClasseCadastro:=TfClasseCadastro.Create(Application);
 try
   fClasseCadastro.ShowModal;
 finally
   fClasseCadastro.Free;
 end;
end;

procedure TfPedagogico.MenuClassesAlteracaoClick(Sender: TObject);
begin
 fClasseEscolha:=TfClasseEscolha.Create(Application);
 try
   fClasseEscolha.ShowModal;
 finally
   fClasseEscolha.Free;
 end;
end;

procedure TfPedagogico.FormClose(Sender: TObject; var Action: TCloseAction);
var
 deleta : String;
 TD: TTransactionDesc;
begin
  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
    MICRO := NomeComputador;
    if (cds_Login.Active) then
        cds_Login.Close;
    cds_Login.Params[0].Clear;
    cds_Login.Params[1].Clear;
    cds_Login.Params[0].AsString := MICRO;
    cds_Login.Params[1].AsString := 'PEDAGOGICO';
    cds_Login.Open;
    if not cds_Login.IsEmpty then
    begin
        cds_Login.Close;
        deleta := 'delete from LOG_ACESSO where MICRO =';
        deleta := deleta + '''' + MICRO + '''';
        deleta := deleta + ' and MODULO = ';
        deleta := deleta + QuotedStr('PEDAGOGICO');
        try
          TD.TransactionID := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          dm.sqlsisAdimin.StartTransaction(TD);
          dm.sqlsisAdimin.ExecuteDirect(deleta);
          dm.sqlsisAdimin.Commit(TD);
         except
           dm.sqlsisAdimin.Rollback(TD);
           MessageDlg('Erro para efetuar a baixa.', mtError, [mbOK], 0);
         end;
    end;
    Application.Terminate;
  end
  else
   abort;
end;

function TfPedagogico.NomeComputador: string;
const
  Max = 15;
var
  Nome: array[0..Max] of char;
  Tam: DWORD;
begin
  Tam := SizeOf(Nome) div SizeOf(Nome[0]);
  if GetComputerName(Nome,Tam) then
    Result := Nome
  else
    Result := '';
end;

procedure TfPedagogico.ExportarCadastro1Click(Sender: TObject);
begin
 fExporta:=TfExporta.Create(Application);
 try
   fExporta.ShowModal;
 finally
   fExporta.Free;
 end;
end;

procedure TfPedagogico.ImportarCadastro1Click(Sender: TObject);
begin
 fImporta:=TfImporta.Create(Application);
 try
   fImporta.ShowModal;
 finally
   fImporta.Free;
 end;
end;

end.
