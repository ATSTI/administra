unit uNotasFaltas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uPai_new, Menus, XPMenu, DB, StdCtrls, Buttons, ExtCtrls,
  MMJPanel, FMTBcd, Grids, DBGrids, DBCtrls, DBClient, Provider, SqlExpr;

type
  TfNotasFaltas = class(TfPai_new)
    sds_materia: TSQLDataSet;
    dsp_materia: TDataSetProvider;
    cds_materia: TClientDataSet;
    cds_materiaMATERIAS: TStringField;
    cds_materiaIDMATERIAS: TIntegerField;
    cds_materiaTIPOENSINO: TStringField;
    ds_materia: TDataSource;
    ds_nota: TDataSource;
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
    dsp_nota: TDataSetProvider;
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
    dsp_classe: TDataSetProvider;
    cds_classe: TClientDataSet;
    cds_classeSERIELETRA: TStringField;
    cds_classeRA: TStringField;
    cds_classeIDCLASSEALUNO: TIntegerField;
    cds_classeSERIE: TStringField;
    cds_classeNUMERO: TSmallintField;
    cds_classeNOME: TStringField;
    sds_boletim: TSQLDataSet;
    sds_boletimRA: TStringField;
    sds_boletimSERIELETRA: TStringField;
    sds_boletimIDMATERIAS: TIntegerField;
    sds_boletimIDBOLETIM: TStringField;
    sds_boletimNOTAPER1: TStringField;
    sds_boletimNOTAPER2: TStringField;
    sds_boletimNOTAPER3: TStringField;
    sds_boletimNOTAPER4: TStringField;
    sds_boletimNOTAPER5: TStringField;
    sds_boletimNOTAPER6: TStringField;
    sds_boletimFALTAPER1: TSmallintField;
    sds_boletimFALTAPER2: TSmallintField;
    sds_boletimFALTAPER3: TSmallintField;
    sds_boletimFALTAPER4: TSmallintField;
    sds_boletimFALTAPER5: TSmallintField;
    sds_boletimFALTAPER6: TSmallintField;
    sds_boletimAULADADAPER1: TSmallintField;
    sds_boletimAULADADAPER2: TSmallintField;
    sds_boletimAULADADAPER3: TSmallintField;
    sds_boletimAULADADAPER4: TSmallintField;
    sds_boletimAULADADAPER5: TSmallintField;
    sds_boletimAULADADAPER6: TSmallintField;
    sds_boletimANOLETIVO: TIntegerField;
    sds_boletimNOTAPER7: TStringField;
    sds_boletimNOTAPER8: TStringField;
    sds_boletimNOTAPER9: TStringField;
    sds_boletimNOTAPER10: TStringField;
    sds_boletimNOTAPER11: TStringField;
    sds_boletimNOTAPER12: TStringField;
    sds_boletimFALTAPER7: TSmallintField;
    sds_boletimFALTAPER8: TSmallintField;
    sds_boletimFALTAPER9: TSmallintField;
    sds_boletimFALTAPER10: TSmallintField;
    sds_boletimFALTAPER11: TSmallintField;
    sds_boletimFALTAPER12: TSmallintField;
    sds_boletimAULADADAPER7: TSmallintField;
    sds_boletimAULADADAPER8: TSmallintField;
    sds_boletimAULADADAPER9: TSmallintField;
    sds_boletimAULADADAPER10: TSmallintField;
    sds_boletimAULADADAPER11: TSmallintField;
    sds_boletimAULADADAPER12: TSmallintField;
    dsp_boletim: TDataSetProvider;
    cds_boletim: TClientDataSet;
    cds_boletimRA: TStringField;
    cds_boletimSERIELETRA: TStringField;
    cds_boletimIDMATERIAS: TIntegerField;
    cds_boletimIDBOLETIM: TStringField;
    cds_boletimNOTAPER1: TStringField;
    cds_boletimNOTAPER2: TStringField;
    cds_boletimNOTAPER3: TStringField;
    cds_boletimNOTAPER4: TStringField;
    cds_boletimNOTAPER5: TStringField;
    cds_boletimNOTAPER6: TStringField;
    cds_boletimFALTAPER1: TSmallintField;
    cds_boletimFALTAPER2: TSmallintField;
    cds_boletimFALTAPER3: TSmallintField;
    cds_boletimFALTAPER4: TSmallintField;
    cds_boletimFALTAPER5: TSmallintField;
    cds_boletimFALTAPER6: TSmallintField;
    cds_boletimAULADADAPER1: TSmallintField;
    cds_boletimAULADADAPER2: TSmallintField;
    cds_boletimAULADADAPER3: TSmallintField;
    cds_boletimAULADADAPER4: TSmallintField;
    cds_boletimAULADADAPER5: TSmallintField;
    cds_boletimAULADADAPER6: TSmallintField;
    cds_boletimANOLETIVO: TIntegerField;
    cds_boletimNOTAPER7: TStringField;
    cds_boletimNOTAPER8: TStringField;
    cds_boletimNOTAPER9: TStringField;
    cds_boletimNOTAPER10: TStringField;
    cds_boletimNOTAPER11: TStringField;
    cds_boletimNOTAPER12: TStringField;
    cds_boletimFALTAPER7: TSmallintField;
    cds_boletimFALTAPER8: TSmallintField;
    cds_boletimFALTAPER9: TSmallintField;
    cds_boletimFALTAPER10: TSmallintField;
    cds_boletimFALTAPER11: TSmallintField;
    cds_boletimFALTAPER12: TSmallintField;
    cds_boletimAULADADAPER7: TSmallintField;
    cds_boletimAULADADAPER8: TSmallintField;
    cds_boletimAULADADAPER9: TSmallintField;
    cds_boletimAULADADAPER10: TSmallintField;
    cds_boletimAULADADAPER11: TSmallintField;
    cds_boletimAULADADAPER12: TSmallintField;
    sds_aluno_inserido: TSQLDataSet;
    sds_aluno_inseridoRA: TStringField;
    sds_escola: TSQLDataSet;
    sds_escolaMEDIA_ESCOLA: TFloatField;
    Label8: TLabel;
    dblPeriodo: TDBLookupComboBox;
    Label7: TLabel;
    dblSerie: TDBLookupComboBox;
    Label1: TLabel;
    dblMateria: TDBLookupComboBox;
    Label2: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    BitBtn2: TBitBtn;
    btnExclui: TBitBtn;
    btnNovo: TBitBtn;
    BitBtn1: TBitBtn;
    Edit4: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label4: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    sdsTablePeriodo: TSQLDataSet;
    sdsTablePeriodoIDPERIODO: TIntegerField;
    sdsTablePeriodoPERIODO: TStringField;
    sdsTablePeriodoNOTAFINAL: TStringField;
    TableNomeEscola: TSQLDataSet;
    TableNomeEscolaEMPRESA: TStringField;
    TableNomeEscolaRAZAO: TStringField;
    TableNomeEscolaCNPJ_CPF: TStringField;
    TableNomeEscolaENDERECO: TStringField;
    TableNomeEscolaLOGRADOURO: TStringField;
    TableNomeEscolaBAIRRO: TStringField;
    TableNomeEscolaCIDADE: TStringField;
    TableNomeEscolaUF: TStringField;
    TableNomeEscolaCEP: TStringField;
    TableNomeEscolaDDD: TStringField;
    TableNomeEscolaFONE: TStringField;
    TableNomeEscolaFONE_1: TStringField;
    TableNomeEscolaFONE_2: TStringField;
    TableNomeEscolaFAX: TStringField;
    TableNomeEscolaE_MAIL: TStringField;
    TableNomeEscolaWEB: TStringField;
    TableNomeEscolaLOGOTIPO: TGraphicField;
    TableNomeEscolaSLOGAN: TStringField;
    TableNomeEscolaOUTRAS_INFO: TStringField;
    TableNomeEscolaCODIGO: TIntegerField;
    TableNomeEscolaTIPO: TStringField;
    TableNomeEscolaIE_RG: TStringField;
    TableNomeEscolaCODIGO_CONTA: TIntegerField;
    TableNomeEscolaDIVERSOS1: TStringField;
    TableNomeEscolaDIVERSOS2: TStringField;
    TableNomeEscolaDIVERSOS3: TStringField;
    TableNomeEscolaANOLETIVO: TIntegerField;
    TableNomeEscolaMEDIA_ESCOLA: TFloatField;
    TableNomeEscolaPORTA: TIntegerField;
    TableNomeEscolaSMTP: TStringField;
    TableNomeEscolaSENHA: TStringField;
    dspTablePeriodo: TDataSetProvider;
    DataSetProvider2: TDataSetProvider;
    TablePeriodo: TClientDataSet;
    DataSourcePeriodo: TDataSource;
    TablePeriodoIDPERIODO: TIntegerField;
    TablePeriodoPERIODO: TStringField;
    TablePeriodoNOTAFINAL: TStringField;
    dsSeries: TDataSource;
    BitBtn3: TBitBtn;
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

uses UDm;

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
  Label8.Caption := cds_classeNOME.AsString ;
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
  Label8.Caption := cds_classeNOME.AsString ;  
end;

procedure TfNotasFaltas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   Edit2.Text:= inttostr(cds_notaNUMERO.AsInteger);
   Edit3.Text:= cds_notaNOTA.AsString;
   Edit4.Text:= inttostr(cds_notaFREQUENCIA.AsInteger);
   Label8.Caption := cds_classeNOME.AsString ;   
end;

procedure TfNotasFaltas.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   Edit2.Text:= inttostr(cds_notaNUMERO.AsInteger);
   Edit3.Text:= cds_notaNOTA.AsString;
   Edit4.Text:= inttostr(cds_notaFREQUENCIA.AsInteger);
   Label8.Caption := cds_classeNOME.AsString ;   
end;

procedure TfNotasFaltas.DBGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
 Edit2.Text:= inttostr(cds_notaNUMERO.AsInteger);
 Edit3.Text:= cds_notaNOTA.AsString;
 Edit4.Text:= inttostr(cds_notaFREQUENCIA.AsInteger);
 Label8.Caption := cds_classeNOME.AsString ;
end;

procedure TfNotasFaltas.DBGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
 Edit2.Text:= inttostr(cds_notaNUMERO.AsInteger);
 Edit3.Text:= cds_notaNOTA.AsString;
 Edit4.Text:= inttostr(cds_notaFREQUENCIA.AsInteger);
 Label8.Caption := cds_classeNOME.AsString ;
end;

procedure TfNotasFaltas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  if TableNomeEscola.Active then
     TableNomeEscola.Close;
  if dm.TableSeries.Active then
     dm.TableSeries.Close;
  if TablePeriodo.Active then
     TablePeriodo.Close;
end;

procedure TfNotasFaltas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in ['.'] then Key := ',';
end;

procedure TfNotasFaltas.FormShow(Sender: TObject);
begin
  inherited;
  if not TableNomeEscola.Active then
         TableNomeEscola.Open;
  if not dm.TableSeries.Active then
         dm.TableSeries.Open;
  if not TablePeriodo.Active then
         TablePeriodo.Open;
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
 // Panel2.Visible := False;
  if cds_nota.Active then
     cds_nota.Close;
  //Período
  cds_nota.Params[0].AsInteger := TablePeriodoIDPERIODO.AsInteger;
  //Classe
  cds_nota.Params[1].AsString := cds_classeSERIELETRA.AsString;
  //Materia
  cds_nota.Params[2].AsInteger := cds_materiaIDMATERIAS.AsInteger;
  //Ano
  cds_nota.Params[3].AsInteger := TableNomeEscolaANOLETIVO.AsInteger;
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
//  inherited;
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
       cds_classe.Params[0].AsString := dm.TableSeriesSERIELETRA.AsString;
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
    sds_aluno_inserido.Params[0].AsInteger := TablePeriodoIDPERIODO.AsInteger;
    sds_aluno_inserido.Params[1].AsInteger := cds_materiaIDMATERIAS.AsInteger;
    sds_aluno_inserido.Params[2].AsInteger := TableNomeEscolaANOLETIVO.AsInteger;
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
       if dtSrc.State in [dsInsert] then
       begin
          if dm.c_6_genid.Active then
             dm.c_6_genid.Close;
          dm.c_6_genid.CommandText := 'SELECT CAST(GEN_ID(GEN_TABMOVNOTASFREQ, 1) as INTEGER) AS CODIGO FROM RDB$DATABASE';
          dm.c_6_genid.Open;
          cds_notaIDNOTAFREQUENCIA.AsInteger := dm.c_6_genidCODIGO.AsInteger;
          dm.c_6_genid.Close;
       end;

       cds_notaSERIELETRA.AsString := cds_classeSERIELETRA.AsString;
       cds_notaIDMATERIAS.AsInteger := cds_materiaIDMATERIAS.AsInteger;
       cds_notaTURNO.AsString := dm.TableSeriesTURNO.AsString;
       cds_notaRA.AsString := cds_classeRA.AsString;
       cds_notaANOLETIVO.AsInteger := TableNomeEscolaANOLETIVO.AsInteger;
       cds_notaSERIE.AsString := cds_classeSERIE.AsString;
       cds_notaIDPERIODO.AsInteger := TablePeriodoIDPERIODO.AsInteger;
       cds_notaNUMERO.AsInteger := StrToInt(Edit2.Text);
       cds_notaNOTA.AsString := Edit3.Text;
       cds_notaFREQUENCIA.AsInteger := StrToInt(Edit4.Text);
       btnGravar.Click; //Gravando na tabela MovNotasFreq
      //====================================================================
       //Definindo o IDBOLETIM (AnoLetivo + IDMateria + RA + Serie)
       //----------------------------------------------------------
       strRa := cds_classeRA.AsString;
       strSerie := RemoveChar(cds_classeSERIE.AsString);
       if strtoint(strSerie) < 10 then
         strSerie := '0' + inttostr(strtoint(strSerie));
       intAno := TableNomeEscolaANOLETIVO.AsInteger;
       intMateria := cds_materiaIDMATERIAS.AsInteger;
       if intMateria < 10 then
         strMateria := '0' + intToStr(intMateria)
       else
         strMateria := intToStr(intMateria);
       strIDBoletim := inttostr(intAno)+strMateria+strSerie+strRa;
       //----------------------------------------------------------
       //Inserir notas na tabBoletim
       if cds_boletim.Active then
          cds_boletim.Close;
       cds_boletim.Params[0].AsString := strIDBoletim;
       cds_boletim.Open;
       if cds_boletim.IsEmpty then
       begin
         cds_boletim.Append;
         cds_boletimIDBOLETIM.AsString := strIDBoletim;
         cds_boletimRA.AsString := cds_classeRA.AsString;
         cds_boletimSERIELETRA.AsString := cds_classeSERIELETRA.AsString;
         cds_boletimIDMATERIAS.AsInteger := cds_materiaIDMATERIAS.AsInteger;
         cds_boletimANOLETIVO.AsInteger := TableNomeEscolaANOLETIVO.AsInteger;
       end
      else
         cds_boletim.Edit;
      Case TablePeriodoIDPERIODO.AsInteger of
        1:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER1.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER1.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER1.AsInteger := StrToInt(Edit1.Text);
          end;
        2:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER2.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER2.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER2.AsInteger := StrToInt(Edit1.Text);
          end;
        3:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER3.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER3.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER3.AsInteger := StrToInt(Edit1.Text);
          end;
        4:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER4.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER4.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER4.AsInteger := StrToInt(Edit1.Text);
          end;
        5:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER5.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER5.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER5.AsInteger := StrToInt(Edit1.Text);
          end;
        6:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER6.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER6.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER6.AsInteger := StrToInt(Edit1.Text);
          end;
        7:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER7.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER7.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER7.AsInteger := StrToInt(Edit1.Text);
          end;
        8:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER8.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER8.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER8.AsInteger := StrToInt(Edit1.Text);
          end;
        9:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER9.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER9.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER9.AsInteger := StrToInt(Edit1.Text);
          end;
       10:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER10.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER10.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER10.AsInteger := StrToInt(Edit1.Text);
          end;
       11:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER11.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER11.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER11.AsInteger := StrToInt(Edit1.Text);
          end;
       12:begin
             if Edit3.Text <> '' then
             cds_boletimNOTAPER12.AsString := Edit3.Text;
             if Edit4.Text <> '' then
             cds_boletimFALTAPER12.AsInteger := StrToInt(Edit4.Text);
             if Edit1.Text <> '' then
             cds_boletimAULADADAPER12.AsInteger := StrToInt(Edit1.Text);
          end;

      end; //Fim do Case
      cds_boletim.ApplyUpdates(0); //Salvando alteraçôes ou Inserções
    //====================================================================
      btnNovo.SetFocus;
   Except
     MessageDlg('Erro na gravação, Digite novamente.', mtError, [mbOK], 0);
   end;

end;

procedure TfNotasFaltas.btnNovoClick(Sender: TObject);
begin
 // inherited;
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
       cds_classe.Params[0].AsString := dm.TableSeriesSERIELETRA.AsString;
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
    sds_aluno_inserido.Params[0].AsInteger := TablePeriodoIDPERIODO.AsInteger;
    sds_aluno_inserido.Params[1].AsInteger := cds_materiaIDMATERIAS.AsInteger;
    sds_aluno_inserido.Params[2].AsInteger := TableNomeEscolaANOLETIVO.AsInteger;
    sds_aluno_inserido.Params[3].AsString := cds_classeRA.AsString;
    sds_aluno_inserido.Open;
    if not sds_aluno_inserido.IsEmpty then
    begin
       cds_nota.Locate('NUMERO',Edit2.Text,[loCaseInsensitive]);
       cds_nota.Delete;
       cds_nota.ApplyUpdates(0);
    end;
    sds_aluno_inserido.Close;
  //====================================================================
  //====================================================================
   //Definindo o IDBOLETIM (AnoLetivo + IDMateria + RA + Serie)
   //----------------------------------------------------------
   strRa := cds_classeRA.AsString;
   strSerie := cds_classeSERIE.AsString;
   if strtoint(strSerie) < 10 then begin
     strSerie := '0' + strSerie;
   end;
   intAno := TableNomeEscolaANOLETIVO.AsInteger;
   intMateria := cds_materiaIDMATERIAS.AsInteger;
   if intMateria < 10 then begin
     strMateria := '0' + intToStr(intMateria);
   end
   else
     strMateria := intToStr(intMateria);
   strIDBoletim := inttostr(intAno)+strMateria+strSerie+strRa;
   //----------------------------------------------------------
   //Inserir notas na tabBoletim
   if cds_boletim.Active then
      cds_boletim.Close;
   cds_boletim.Params[0].AsString := strIDBoletim;
   cds_boletim.Open;
   if cds_boletim.IsEmpty then exit
   else
      cds_boletim.Edit;
   Case TablePeriodoIDPERIODO.AsInteger of
      1:begin
           cds_boletimNOTAPER1.Clear;
           cds_boletimFALTAPER1.Clear;
           cds_boletimAULADADAPER1.Clear;
        end;
      2:begin
           cds_boletimNOTAPER2.Clear;
           cds_boletimFALTAPER2.Clear;
           cds_boletimAULADADAPER2.Clear;
        end;
      3:begin
           cds_boletimNOTAPER3.Clear;
           cds_boletimFALTAPER3.Clear;
           cds_boletimAULADADAPER3.Clear;
        end;
      4:begin
           cds_boletimNOTAPER4.Clear;
           cds_boletimFALTAPER4.Clear;
           cds_boletimAULADADAPER4.Clear;
        end;
      5:begin
           cds_boletimNOTAPER5.Clear;
           cds_boletimFALTAPER5.Clear;
           cds_boletimAULADADAPER5.Clear;
        end;
      7:begin
           cds_boletimNOTAPER7.Clear;
           cds_boletimFALTAPER7.Clear;
           cds_boletimAULADADAPER7.Clear;
        end;
      8:begin
           cds_boletimNOTAPER8.Clear;
           cds_boletimFALTAPER8.Clear;
           cds_boletimAULADADAPER8.Clear;
        end;
      9:begin
           cds_boletimNOTAPER9.Clear;
           cds_boletimFALTAPER9.Clear;
           cds_boletimAULADADAPER9.Clear;
        end;
      10:begin
           cds_boletimNOTAPER10.Clear;
           cds_boletimFALTAPER10.Clear;
           cds_boletimAULADADAPER10.Clear;
        end;
      11:begin
           cds_boletimNOTAPER11.Clear;
           cds_boletimFALTAPER11.Clear;
           cds_boletimAULADADAPER11.Clear;
        end;
      12:begin
           cds_boletimNOTAPER12.Clear;
           cds_boletimFALTAPER12.Clear;
           cds_boletimAULADADAPER12.Clear;
        end;

    end; //Fim do Case
    cds_boletim.ApplyUpdates(0); //Salvando alteraçôes ou Inserções
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
  //Panel2.Visible := False;
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
    Label8.Caption := cds_classeNOME.AsString ;
  end;
end;

end.
