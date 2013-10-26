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
    Sair1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure dxButton9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure MenuCadastroAlunoClick(Sender: TObject);
    procedure dxButton5Click(Sender: TObject);
    procedure dxButton6Click(Sender: TObject);
    procedure dxButton7Click(Sender: TObject);
    procedure dxButton8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPedagogico: TfPedagogico;

implementation

uses UDM, uAlunosCadastro, uListaCliEscola, uNotasFaltas, uBoletimAluno,
  uImpBoletim;

{$R *.dfm}

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
   R := Rect( 0, 0, Screen.Width, Screen.Height );
   DC := GetWindowDC( GetDeskTopWindow );
   Canv := TCanvas.Create;
   Canv.Handle := DC;
   Canv.CopyRect(R,Canv,R);
   ReleaseDC( GetDeskTopWindow, DC );
end;

procedure TfPedagogico.FormCreate(Sender: TObject);
begin
   FormResize(Sender);
end;

procedure TfPedagogico.dxButton9Click(Sender: TObject);
begin
   Close;
end;

procedure TfPedagogico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if MessageDlg('Você realmente deseja encerrar o sistema ?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
    Application.Terminate
  else
    abort;
end;

procedure TfPedagogico.Timer1Timer(Sender: TObject);
begin
  StbMensagens.Panels[1].Text:=TimeToStr(Time);
  StbMensagens.Panels[2].Text:=FormatDateTime('dddd", "dd" de "mmmm " de " yyyy', Now) ;
end;

procedure TfPedagogico.MenuCadastroAlunoClick(Sender: TObject);
begin
  fAlunosCadastro := TfAlunosCadastro.Create(Application);
  try
    fAlunosCadastro.ShowModal;
  finally
    fAlunosCadastro.Free;
  end;
end;

procedure TfPedagogico.dxButton5Click(Sender: TObject);
begin
  fListaCliEscola := TfListaCliEscola.create(Application);
  try
    fListaCliEscola.ShowModal;
  finally
    fListaCliEscola.free;
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

end.
