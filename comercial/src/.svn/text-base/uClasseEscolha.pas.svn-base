unit uClasseEscolha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, MMJPanel, DBCtrls, DB, XPMenu,
  Menus;

type
  TfClasseEscolha = class(TForm)
    MMJPanel2: TMMJPanel;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    MMJPanel1: TMMJPanel;
    DataSource1: TDataSource;
    Label2: TLabel;
    Label1: TLabel;
    DBLClasseEscolha: TDBLookupComboBox;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    XPMenu1: TXPMenu;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClasseEscolha: TfClasseEscolha;

implementation

uses UDm, uClasse;

{$R *.dfm}

procedure TfClasseEscolha.FormShow(Sender: TObject);
begin
  if (not dm.TableSeries.Active) then
      dm.TableSeries.Open;
end;

procedure TfClasseEscolha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (dm.TableSeries.Active) then
      dm.TableSeries.Close;
end;

procedure TfClasseEscolha.btnExcluirClick(Sender: TObject);
begin
 fClasse:=TfClasse.Create(Application);
 try
   varClasse := dm.TableSeriesSERIELETRA.AsString;
   varSerie := dm.TableSeriesSERIE.AsString;
   fClasse. Label1.Caption := '        Classe/Turma : ' + varClasse;
   fClasse. Label7.Caption := '        Classe/Turma : ' + varClasse;
   fClasse.ShowModal;
 finally
   fClasse.Free;
 end;
end;

procedure TfClasseEscolha.btnGravarClick(Sender: TObject);
begin
 { application.CreateForm(TformMontarGrade, formMontarGrade);
  formMontarGrade.ShowModal;
  formMontarGrade.Free; }
end;

procedure TfClasseEscolha.btnSairClick(Sender: TObject);
begin
  close;
end;

end.
