unit uNotasFaltas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, Grids, DBGrids, DBCtrls, DBClient, Provider, SqlExpr,
  ComCtrls;

type
  TfNotasFaltas = class(TfPai_new)
    sds_materia: TSQLDataSet;
    sds_nota: TSQLDataSet;
    sds_notaIDNOTAFREQUENCIA: TIntegerField;
    sds_notaSERIELETRA: TStringField;
    sds_notaIDMATERIAS: TIntegerField;
    sds_notaTURNO: TStringField;
    sds_notaRA: TStringField;
    sds_notaNOTA: TStringField;
    sds_notaFREQUENCIA: TSmallintField;
    sds_notaANOLETIVO: TIntegerField;
    sds_notaSERIE: TStringField;
    sds_notaIDPERIODO: TIntegerField;
    sds_notaAULASDADAS: TSmallintField;
    sds_notaNUMERO: TSmallintField;
    sds_classe: TSQLDataSet;
    dsp_materia: TDataSetProvider;
    dsp_nota: TDataSetProvider;
    dsp_classe: TDataSetProvider;
    cds_materia: TClientDataSet;
    cds_materiaMATERIAS: TStringField;
    cds_materiaIDMATERIAS: TIntegerField;
    cds_materiaTIPOENSINO: TStringField;
    cds_nota: TClientDataSet;
    cds_notaIDNOTAFREQUENCIA: TIntegerField;
    cds_notaSERIELETRA: TStringField;
    cds_notaIDMATERIAS: TIntegerField;
    cds_notaTURNO: TStringField;
    cds_notaRA: TStringField;
    cds_notaNOTA: TStringField;
    cds_notaFREQUENCIA: TSmallintField;
    cds_notaANOLETIVO: TIntegerField;
    cds_notaSERIE: TStringField;
    cds_notaIDPERIODO: TIntegerField;
    cds_notaAULASDADAS: TSmallintField;
    cds_notaNUMERO: TSmallintField;
    cds_classe: TClientDataSet;
    cds_classeSERIELETRA: TStringField;
    cds_classeRA: TStringField;
    cds_classeIDCLASSEALUNO: TIntegerField;
    cds_classeSERIE: TStringField;
    cds_classeNUMERO: TSmallintField;
    ds_materia: TDataSource;
    ds_nota: TDataSource;
    sds_escola: TSQLDataSet;
    sds_escolaMEDIA_ESCOLA: TFloatField;
    sds_aluno_inserido: TSQLDataSet;
    sds_aluno_inseridoRA: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    btnNovo: TBitBtn;
    dblSerie: TDBLookupComboBox;
    Edit1: TEdit;
    dblMateria: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    dblPeriodo: TDBLookupComboBox;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    btnExclui: TBitBtn;
    Label13: TLabel;
    Label12: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    DtSrcPeriodo: TDataSource;
    DtSrcSerie: TDataSource;
    cds_classeNOMECLIENTE: TStringField;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure dblPeriodoClick(Sender: TObject);
    procedure dblPeriodoEnter(Sender: TObject);
    procedure dblSerieClick(Sender: TObject);
    procedure dblSerieEnter(Sender: TObject);
    procedure dblMateriaClick(Sender: TObject);
    procedure dblMateriaEnter(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure cds_notaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fNotasFaltas: TfNotasFaltas;
  strRa, strSerie, strMateria, strIDBoletim: String;
  intAno, intMateria: Integer;
  media : double;

implementation

uses UDm, UDMEscola;

{$R *.dfm}

Function RemoveChar(Const Texto:String):String;
var
  F: integer;
  S: string;
begin
  S := '';
  for F := 1 To Length(Texto) Do
  begin
    if (Texto[F] in ['0'..'9']) then
    begin
     S := S + Copy(Texto, F, 1);
    end;
  end;
  result := S;
end;


procedure TfNotasFaltas.DBGrid1CellClick(Column: TColumn);
begin
  inherited;
  Edit2.Text:= inttostr(cds_notaNUMERO.AsInteger);
  Edit3.Text:= cds_notaNOTA.AsString;
  Edit4.Text:= inttostr(cds_notaFREQUENCIA.AsInteger);
  cds_classe.Locate('NUMERO', Edit2.Text, [loCaseInsensitive]);
  //Label8.Caption := cds_classeNOME.AsString ;
end;

procedure TfNotasFaltas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
 R: TRect;
begin
  inherited;
//***************************************************
// destacando Campos
//***************************************************
  if Column.Field = cds_notaNOTA then
  if cds_notaNOTA.AsString <> '' then
   if media > StrToFloat(cds_notaNOTA.AsString) then
   begin
     DBGrid1.Canvas.Font.Color := clRed;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
  if Column.Field = cds_notaNOTA then
     if cds_notaNOTA.AsString <> '' then
   if media <= StrToFloat(cds_notaNOTA.AsString) then
   begin
     DBGrid1.Canvas.Font.Color := clBlue;
     DBGrid1.DefaultDrawDataCell(Rect, Column.Field,State);
   end;
end;

procedure TfNotasFaltas.DBGrid1EndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  inherited;
  Edit2.Text:= inttostr(cds_notaNUMERO.AsInteger);
  Edit3.Text:= cds_notaNOTA.AsString;
  Edit4.Text:= inttostr(cds_notaFREQUENCIA.AsInteger);
  //Label8.Caption := cds_classeNOME.AsString ;  
end;

procedure TfNotasFaltas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   Edit2.Text:= inttostr(cds_notaNUMERO.AsInteger);
   Edit3.Text:= cds_notaNOTA.AsString;
   Edit4.Text:= inttostr(cds_notaFREQUENCIA.AsInteger);
   //Label8.Caption := cds_classeNOME.AsString ;
end;

procedure TfNotasFaltas.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   Edit2.Text:= inttostr(cds_notaNUMERO.AsInteger);
   Edit3.Text:= cds_notaNOTA.AsString;
   Edit4.Text:= inttostr(cds_notaFREQUENCIA.AsInteger);
   //Label8.Caption := cds_classeNOME.AsString ;
end;

procedure TfNotasFaltas.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
 Edit2.Text:= inttostr(cds_notaNUMERO.AsInteger);
 Edit3.Text:= cds_notaNOTA.AsString;
 Edit4.Text:= inttostr(cds_notaFREQUENCIA.AsInteger);
 //Label8.Caption := cds_classeNOME.AsString ;
end;

procedure TfNotasFaltas.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
 Edit2.Text:= inttostr(cds_notaNUMERO.AsInteger);
 Edit3.Text:= cds_notaNOTA.AsString;
 Edit4.Text:= inttostr(cds_notaFREQUENCIA.AsInteger);
 //Label8.Caption := cds_classeNOME.AsString ;
end;

procedure TfNotasFaltas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if DMEscola.cdsEscola.Active then
     DMEscola.cdsEscola.Close;
  if DMEscola.TableSeries.Active then
     DMEscola.TableSeries.Close;
  if DMEscola.TablePeriodo.Active then
     DMEscola.TablePeriodo.Close;
end;

procedure TfNotasFaltas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in ['.'] then Key := ',';
end;

procedure TfNotasFaltas.FormShow(Sender: TObject);
begin
  inherited;
  if not DMEscola.cdsEscola.Active then
         DMEscola.cdsEscola.Open;
  if not DMEscola.TableSeries.Active then
         DMEscola.TableSeries.Open;
  if not DMEscola.TablePeriodo.Active then
         DMEscola.TablePeriodo.Open;
  if not sds_escola.Active then
         sds_escola.Open;
  media := sds_escolaMEDIA_ESCOLA.AsFloat;
end;

procedure TfNotasFaltas.BitBtn2Click(Sender: TObject);
begin
  Edit2.Enabled:=true;
  Edit3.Enabled:=true;
  Edit4.Enabled:=true;
  inherited;
  if dblPeriodo.Text = '' then begin
     MessageDlg('Escolha um período.', mtError, [mbOK], 0);
     dblPeriodo.SetFocus;
     exit;
  end;
  if dblMateria.Text = '' then begin
     MessageDlg('Escolha uma matéria.', mtError, [mbOK], 0);
     dblMateria.SetFocus;
     exit;
  end;

  if dblSerie.Text = '' then begin
     MessageDlg('Escolha uma Turma/Classe.', mtError, [mbOK], 0);
     dblSerie.SetFocus;
     exit;
  end;
  if cds_nota.Active then
     cds_nota.Close;
  //Período
  cds_nota.Params[0].AsInteger := DMEscola.TablePeriodoIDPERIODO.AsInteger;
  //Classe
  cds_nota.Params[1].AsString := cds_classeSERIELETRA.AsString;
  //Materia
  cds_nota.Params[2].AsInteger := cds_materiaIDMATERIAS.AsInteger;
  //Ano
  cds_nota.Params[3].AsInteger := DMEscola.anoativo;
  cds_nota.Open;
  //Se já existir dados nesta consulta então coloca a tabela em modo edição
  if not cds_nota.IsEmpty then
         cds_nota.Edit
  else
  begin
         cds_nota.Append;
         edit2.Clear;
         edit3.Clear;
         edit4.Clear;
  end;
  Edit2.SetFocus;
end;

procedure TfNotasFaltas.BitBtn1Click(Sender: TObject);
begin
  if Edit2.Text = '' then
  begin
   MessageDlg('Informe o número do aluno.', mtWarning, [mbOK], 0);
   exit;
  end;

  if Edit4.Text = '' then
     Edit4.Text := '0';

  Try
  //====================================================================
  //Confirmando o n. do aluno
    if not cds_classe.Active then
    begin
       cds_classe.Params[0].AsString := DMEscola.TableSeriesSERIELETRA.AsString;
       cds_classe.Open;
    end;
    if not cds_classe.Locate('NUMERO', Edit2.Text, [loCaseInsensitive]) then
    begin
      MessageDlg('Não existe este número. ', mtWarning, [mbOK], 0);
      edit2.SetFocus;
      exit;
    end;
  //====================================================================
  //Verificando se nota já foi digitada
    if sds_aluno_inserido.Active then
       sds_aluno_inserido.Close;
    sds_aluno_inserido.Params[0].AsInteger := DMEscola.TablePeriodoIDPERIODO.AsInteger;
    sds_aluno_inserido.Params[1].AsInteger := cds_materiaIDMATERIAS.AsInteger;
    sds_aluno_inserido.Params[2].AsInteger := DMEscola.anoativo;
    sds_aluno_inserido.Params[3].AsString := cds_classeRA.AsString;
    sds_aluno_inserido.Open;
    if not sds_aluno_inserido.IsEmpty then
    begin
       cds_nota.Locate('NUMERO',Edit2.Text,[loCaseInsensitive]);
       cds_nota.Edit;
    end;
    sds_aluno_inserido.Close;
  //====================================================================
    if DtSrc.State <> dsInsert then
    if StrToInt(Edit2.Text) <> cds_notaNUMERO.AsInteger then
       if cds_nota.Locate('NUMERO',Edit2.Text,[loCaseInsensitive]) then
          cds_nota.Edit
       else
          cds_nota.Append;
    //Salvando os dados na tabela MovNotasFreq
    if dtSrc.State in [dsInsert, dsEdit] then
       if Edit1.Text <> '' then
          cds_notaAULASDADAS.AsInteger := StrToInt(Edit1.Text);
       cds_notaSERIELETRA.AsString := cds_classeSERIELETRA.AsString;
       cds_notaIDMATERIAS.AsInteger := cds_materiaIDMATERIAS.AsInteger;
       cds_notaTURNO.AsString := DMEscola.TableSeriesTURNO.AsString;
       cds_notaRA.AsString := cds_classeRA.AsString;
       cds_notaANOLETIVO.AsInteger := DMEscola.anoativo;
       cds_notaSERIE.AsString := cds_classeSERIE.AsString;
       cds_notaIDPERIODO.AsInteger := DMEscola.TablePeriodoIDPERIODO.AsInteger;
       cds_notaNUMERO.AsInteger := StrToInt(Edit2.Text);
       cds_notaNOTA.AsString := Edit3.Text;
       cds_notaFREQUENCIA.AsInteger := StrToInt(Edit4.Text);
       btnGravar.Click; //Gravando na tabela MovNotasFreq
      btnNovo.SetFocus;
   Except
     MessageDlg('Erro na gravação, Digite novamente.', mtError, [mbOK], 0);
   end;
end;

procedure TfNotasFaltas.btnNovoClick(Sender: TObject);
begin
  inherited;
  //Novo registro
  edit2.Clear;
  edit3.Clear;
  edit4.Clear;
  cds_nota.Append;
  Edit2.SetFocus;
end;

procedure TfNotasFaltas.btnExcluiClick(Sender: TObject);
begin
//  inherited;
  if Edit2.Text = '' then
  begin
   MessageDlg('Informe o número do aluno.', mtWarning, [mbOK], 0);
   exit;
  end;
  Try
  //Confirmando o n. do aluno
    if not cds_classe.Active then
    begin
       cds_classe.Params[0].AsString := DMEscola.TableSeriesSERIELETRA.AsString;
       cds_classe.Open;
    end;
    if not cds_classe.Locate('NUMERO', Edit2.Text, [loCaseInsensitive]) then
    begin
      MessageDlg('Não existe este número. ', mtWarning, [mbOK], 0);
      edit2.SetFocus;
      exit;
    end;
  //====================================================================
  //Verificando se nota já foi digitada
    if sds_aluno_inserido.Active then
       sds_aluno_inserido.Close;
    sds_aluno_inserido.Params[0].AsInteger := DMEscola.TablePeriodoIDPERIODO.AsInteger;
    sds_aluno_inserido.Params[1].AsInteger := cds_materiaIDMATERIAS.AsInteger;
    sds_aluno_inserido.Params[2].AsInteger := DMEscola.anoativo;
    sds_aluno_inserido.Params[3].AsString := cds_classeRA.AsString;
    sds_aluno_inserido.Open;
    if not sds_aluno_inserido.IsEmpty then
    begin
       cds_nota.Locate('NUMERO',Edit2.Text,[loCaseInsensitive]);
       cds_nota.Delete;
       cds_nota.ApplyUpdates(0);
    end;
    sds_aluno_inserido.Close;
    MessageDlg('Nota excluída com sucesso.', mtInformation, [mbOK], 0);
  //====================================================================
  except
    MessageDlg('Exclusão não efetuada, faça novamente.', mtError, [mbOK], 0);
  end;
  if Edit2.Text = '' then
  begin
   MessageDlg('Informe o número do aluno.', mtWarning, [mbOK], 0);
   exit;
  end;
  Try
  //Confirmando o n. do aluno
    if not cds_classe.Active then
    begin
       cds_classe.Params[0].AsString := DMEscola.TableSeriesSERIELETRA.AsString;
       cds_classe.Open;
    end;
    if not cds_classe.Locate('NUMERO', Edit2.Text, [loCaseInsensitive]) then
    begin
      MessageDlg('Não existe este número. ', mtWarning, [mbOK], 0);
      edit2.SetFocus;
      exit;
    end;
  //====================================================================
  //Verificando se nota já foi digitada
    if sds_aluno_inserido.Active then
       sds_aluno_inserido.Close;
    sds_aluno_inserido.Params[0].AsInteger := DMEscola.TablePeriodoIDPERIODO.AsInteger;
    sds_aluno_inserido.Params[1].AsInteger := cds_materiaIDMATERIAS.AsInteger;
    sds_aluno_inserido.Params[2].AsInteger := DMEscola.anoativo;
    sds_aluno_inserido.Params[3].AsString := cds_classeRA.AsString;
    sds_aluno_inserido.Open;
    if not sds_aluno_inserido.IsEmpty then
    begin
       cds_nota.Locate('NUMERO',Edit2.Text,[loCaseInsensitive]);
       cds_nota.Delete;
       cds_nota.ApplyUpdates(0);
    end;
    sds_aluno_inserido.Close;
    MessageDlg('Nota excluída com sucesso.', mtInformation, [mbOK], 0);
  //====================================================================
  except
    MessageDlg('Exclusão não efetuada, faça novamente.', mtError, [mbOK], 0);
  end;
end;

procedure TfNotasFaltas.dblPeriodoClick(Sender: TObject);
begin
  inherited;
  //Panel2.Visible := True;
  if cds_nota.Active then
     cds_nota.Close;
  Edit2.Enabled:=False;
  Edit3.Enabled:=False;
  Edit4.Enabled:=False;
end;

procedure TfNotasFaltas.dblPeriodoEnter(Sender: TObject);
begin
  inherited;
  if cds_nota.Active then
     cds_nota.Close;
end;

procedure TfNotasFaltas.dblSerieClick(Sender: TObject);
begin
  inherited;
  if cds_materia.Active then
     cds_materia.Close;
  cds_materia.Params[0].AsString := DMEscola.TableSeriesTIPOENSINO.AsString;
  cds_materia.Open;
  if cds_classe.Active then
     cds_classe.Close;
  cds_classe.Params[0].AsString := DMEscola.TableSeriesSERIELETRA.AsString;
  cds_classe.Open;
  if cds_nota.Active then
     cds_nota.Close;
  Edit2.Enabled:=False;
  Edit3.Enabled:=False;
  Edit4.Enabled:=False;
end;

procedure TfNotasFaltas.dblSerieEnter(Sender: TObject);
begin
  inherited;
 // Panel2.Visible := False;
  if cds_materia.Active then
     cds_materia.Close;
  cds_materia.Params[0].AsString := dm.TableSeriesTIPOENSINO.AsString;
  cds_materia.Open;
  if cds_classe.Active then
     cds_classe.Close;
  cds_classe.Params[0].AsString := dm.TableSeriesSERIELETRA.AsString;
  cds_classe.Open;
  if cds_nota.Active then
     cds_nota.Close;
  Edit2.Enabled:=False;
  Edit3.Enabled:=False;
  Edit4.Enabled:=False; 
end;

procedure TfNotasFaltas.dblMateriaClick(Sender: TObject);
begin
  inherited;
  if cds_nota.Active then
     cds_nota.Close;
  Edit2.Enabled:=False;
  Edit3.Enabled:=False;
  Edit4.Enabled:=False;
end;

procedure TfNotasFaltas.dblMateriaEnter(Sender: TObject);
begin
  inherited;
  if cds_nota.Active then
     cds_nota.Close;
end;

procedure TfNotasFaltas.Edit2Exit(Sender: TObject);
begin
  inherited;
  if edit2.Text <> '' then
  begin
    if not cds_classe.Locate('NUMERO', Edit2.Text, [loCaseInsensitive]) then
    begin
      MessageDlg('Não existe este número. ', mtWarning, [mbOK], 0);
      edit2.SetFocus;
      exit;
    end;
    //Label8.Caption := cds_classeNOME.AsString ;
  end;
end;

procedure TfNotasFaltas.cds_notaNewRecord(DataSet: TDataSet);
begin
  inherited;
    if dm.c_6_genid.Active then
      dm.c_6_genid.Close;
    dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_TABMOVNOTASFREQ, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
    dm.c_6_genid.Open;
    cds_notaIDNOTAFREQUENCIA.AsInteger  := dm.c_6_genidCODIGO.AsInteger;
    dm.c_6_genid.Close;
end;

end.
