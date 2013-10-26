unit uPai;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, DB, DBClient, Provider, SqlExpr,
  Menus, XPMenu, ExtCtrls, DBCtrls, MMJPanel;

type
  TfPai = class(TForm)
    XPMenu1: TXPMenu;
    PopupMenu1: TPopupMenu;
    DtSrc: TDataSource;
    MMJPanel1: TMMJPanel;
    btnProcurar: TBitBtn;
    btnIncluir: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    MMJPanel2: TMMJPanel;
    Label1: TLabel;
    Label2: TLabel;
    Procurar1: TMenuItem;
    Incuir1: TMenuItem;
    Gravar1: TMenuItem;
    Excluir1: TMenuItem;
    Cancelar1: TMenuItem;
    Sair1: TMenuItem;
    procedure DtSrcStateChange(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSPGetProproperties(Sender: TObject;
      DataSet: TDataSet; out Properties: OleVariant);
    procedure DSPUpdateData(Sender: TObject;
      DataSet: TCustomClientDataSet);
    procedure FormCreate(Sender: TObject);
  private
    function Verifica_Campos_Em_Branco: Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPai: TfPai;
  Incluir, Alterar, Excluir, Cancelar, Procurar : String;

implementation

uses UDm, UDmSaude, ufDlgLogin, uUtils;

{$R *.dfm}

(***********************************************************************)
function TFPai.Verifica_Campos_Em_Branco: Boolean;
var cont : integer;
begin
  Result:=True; //assume que estão todos preenchidos
  for cont:= 0 to DtSrc.DataSet.FieldCount - 1 do
    if DtSrc.DataSet.Fields[cont].Required then
      if (DtSrc.DataSet.Fields[cont].IsNull)or
         (DtSrc.DataSet.Fields[cont].AsString='') then
      begin
        MessageDlg('Preencha o campo "'+DtSrc.DataSet.Fields[cont].DisplayLabel+'"',
                   mtWarning,[mbOk],0);
        Result:=False;
        Break;
      end;
end;
(***********************************************************************)

Procedure FormResize(Sender: TObject); var R : TRect; DC : HDc; Canv : TCanvas;
begin
  R := Rect( 0, 0, Screen.Width, Screen.Height );
  DC := GetWindowDC( GetDeskTopWindow );
  Canv := TCanvas.Create;
  Canv.Handle := DC;
  Canv.CopyRect(R,Canv,R);
  ReleaseDC( GetDeskTopWindow, DC );
end;

procedure TfPai.DtSrcStateChange(Sender: TObject);
var icomp: integer;
const
 Estados : array [TDataSetState] of string =
 ('Fechado','Consultando','Alterando','Inserindo','','','','','','','','','');
begin
 if Incluir = 'S' then
  btnIncluir.Enabled:=DtSrc.State in [dsBrowse,dsInactive]
 else
    btnIncluir.Enabled:= False;

 if Alterar = 'S' then
  btnGravar.Enabled:=DtSrc.State in [dsInsert,dsEdit]
 else
  btnGravar.Enabled:=False;

 if Cancelar = 'S' then
  btnCancelar.Enabled:=DtSrc.State in [dsInsert,dsEdit]
 else
  btnCancelar.Enabled:=false;

 if Excluir = 'S' then
  btnExcluir.Enabled:=DtSrc.State in [dsBrowse]
 else
  btnExcluir.Enabled:=false;

 if Procurar = 'S' then
  btnProcurar.Enabled := DtSrc.State in [dsBrowse,dsInactive]
 else
  btnProcurar.Enabled := False;
  btnSair.Enabled:=DtSrc.State in [dsBrowse,dsInactive];

  for icomp:=0 to ComponentCount - 1 do
   if Components[icomp] is TDbEdit then
      (Components[icomp] as TDbEdit).Enabled := DtSrc.State in [dsInsert,dsEdit, dsBrowse];

  if DtSrc.State in [dsInsert, dsEdit] then
  begin
    btnIncluir.Visible := False;
    btnexcluir.Visible := False;
    btngravar.Visible := True;
    btnGravar.Enabled := True;
    btnCancelar.Visible := True;
    btnCancelar.Enabled := True;    
  end;

  if DtSrc.State in [dsBrowse,dsInactive] then
  begin
    btnIncluir.Enabled := True;
    btnIncluir.Visible := True;
    btnexcluir.Visible := True;
    btnExcluir.Enabled := True;
    btngravar.Visible := False;
    btnCancelar.Visible := False;
  end;

end;

procedure TfPai.btnIncluirClick(Sender: TObject);
begin
 if btnIncluir.Enabled = false then Exit;
  if not DtSrc.DataSet.Active then
     DtSrc.DataSet.open;
  DtSrc.DataSet.Append;
end;

procedure TfPai.btnGravarClick(Sender: TObject);
begin
  if Alterar = 'N' then Exit;
  if Verifica_Campos_Em_Branco then
  begin
    try
      DtSrc.DataSet.Post;
      (DtSrc.DataSet as TClientDataset).ApplyUpdates(0);
    except
      on E : Exception do
      begin
        ShowMessage('Classe: ' + e.ClassName + chr(13) + 'Mensagem: ' + e.Message);
        
      end;
    end;
  end
  else abort;
end;

procedure TfPai.btnSairClick(Sender: TObject);
begin
  if DtSrc.State in [dsInsert,dsEdit] then
  begin
    if MessageDlg('Você não salvou este registro deseja sair assim mesmo?',mtConfirmation, [mbYes,mbNo],0) = mrYes then
      close;
  end
  else
    Close;
end;

procedure TfPai.btnExcluirClick(Sender: TObject);
begin
  if Excluir = 'N' then Exit;
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,
                [mbYes,mbNo],0) = mrYes then
  begin
     DtSrc.DataSet.Delete;
     (DtSrc.DataSet as TClientDataSet).ApplyUpdates(0);
  end
  else
    Abort;
end;

procedure TfPai.btnCancelarClick(Sender: TObject);
begin
  if Cancelar = 'N' then Exit;
  DtSrc.DataSet.Cancel;
end;

procedure TfPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if assigned(DtSrc.DataSet) then
     DtSrc.DataSet.Close;
end;

procedure TfPai.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) then
 begin
   key:= #0;
   SelectNext((Sender as TwinControl),True,True);
 end;
end;

procedure TfPai.DSPGetProproperties(Sender: TObject; DataSet: TDataSet;
  out Properties: OleVariant);
begin
  { Declare Variants no uses }
 Properties := VarArrayCreate([0,4], varVariant);
  Properties[0] := VarArrayOf(['USUARIO', dm.varLogado,True]);
  Properties[1] := VarArrayOf(['MICRO',dm.NomeComputador,True]);
  Properties[2] := VarArrayOf(['TABELA',
    IProviderSupport(DataSet).PSGetTableName,True]);
  Properties[3] := VarArrayOf(['DATA',Date,True]);
  Properties[4] := VarArrayOf(['HORA',Time,True]);
end;

procedure TfPai.DSPUpdateData(Sender: TObject;
  DataSet: TCustomClientDataSet);
var
   str, str_For, strOriginal :string;
   i : Integer;
   util : TUtils;
begin
  util := TUtils.Create;
  str := '';
  str_For := '';
  strOriginal := '';
  with DataSet do
  begin
    SetOptionalParam('DATA',Date,True);
    SetOptionalParam('HORA',Time,True);
      //aqui salvo na tabela
      str := 'INSERT INTO LOGS (MICRO, TABELA, USUARIO, DATA, HORA, CAMPO1, data_set)';
      str := str +  ' VALUES(';
      str := str + '''' + GetOptionalParam('MICRO') + '''';
      str := str + ', ';
      str := str + '''' + GetOptionalParam('TABELA') + '''';
      str := str + ', ';
      //str := str + '''' + GetOptionalParam('USUARIO') + '''';
      str := str + QuotedStr(dm.varLogado);
      str := str + ', ';
      str := str + '''' + FormatDateTime('mm/dd/yy',Date) + '''';
      str := str + ', ';
      str := str + '''' + FormatDateTime('hh/nn/ss',Time) + '''';
      str := str + ', ';
      if (dataset.UpdateStatus = usDeleted) then
        str := str + QuotedStr('EXCLUIDO');
      if (dataset.UpdateStatus = usUnModified) then
        str := str + QuotedStr('MODIFICADO');
      if (dataset.UpdateStatus = usInserted) then
        str := str + QuotedStr('INSERIDO');
      str := str + ', ';
      for i := 0 to dataset.FieldCount - 1 do
      begin
        //aqui se deletar o arquivo
        if (dataset.UpdateStatus = usDeleted) then
        begin
           if (str_For = '') then
            str_for := '----Deletado----'+ #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + util.DeleteChar('''',dataset.Fields[i].AsString) + '; '+#13+#10;
           end;
        end;
        // aqui se modificar o arquivo
        if (dataset.UpdateStatus = usUnModified) then
        begin
           if (str_For = '') then
            str_for := '----Modificado----' + #13+#10;
             strOriginal := strOriginal + dataset.FieldDefList[i].Name;
             if (dataset.Fields[i].AsString <> '') then
               strOriginal := strOriginal + ': ' + util.DeleteChar('''',dataset.Fields[i].AsString)
             else
               strOriginal := strOriginal + ': Vazio';
           DataSet.Next;
           if (not dataset.Fields[i].IsNull) then
           begin
             if (dataset.Fields[i].AsString = '') then
               str_For := str_For + strOriginal +  ' -> Vazio; '+#13+#10
             else
               str_For := str_For + strOriginal +  ' -> ' + util.DeleteChar('''',dataset.Fields[i].AsString) + '; '+#13+#10;
           end;
           strOriginal := '';
           DataSet.First;
        end;
        // aqui se inserir um novo
        if (dataset.UpdateStatus = usInserted) then
        begin
           if (str_For = '') then
            str_for := '----Adicionado----'+ #13+#10;
           if (dataset.Fields[i].AsString <> '') then
           begin
             str_For := str_For + dataset.FieldDefList[i].Name;
             str_For := str_For + ':' + util.DeleteChar('''',dataset.Fields[i].AsString) + '; '+#13+#10;
           end;
        end;
      end;
      str := str + '''' + str_For + '''';
      str := str+  ')';
      dm.sqlsisAdimin.ExecuteDirect(str);
  end;

end;

procedure TfPai.FormCreate(Sender: TObject);
begin
  MMJPanel1.Background.EndColor   := dm.corStart;
  MMJPanel1.Background.StartColor := dm.corEnd;
  MMJPanel2.Background.EndColor   := dm.corEnd;
  MMJPanel2.Background.StartColor := dm.corStart;

  if (dm.sResolucao.Active) then
     dm.sResolucao.Close;
  dm.sResolucao.Params[0].AsString := MICRO;
  dm.sResolucao.Open;
  if (dm.sResolucao.IsEmpty) then
  begin
       DM.videoW := '800';
       DM.videoH := '600';
  end
  else
  begin
       DM.videoW := dm.sResolucaoMODULO.AsString;
       DM.videoH := dm.sResolucaoUSUARIO.AsString;
  end;

  if (DM.videoW <> 'widescreen') then
  begin
   if  (DM.videoW <> '') then
   begin
     ScreenWidth := StrToInt(DM.videoW);
     ScreenHeight := StrToInt(DM.videoH);
     scaled := true;
     if (screen.width <> ScreenWidth) then
     begin
       height := longint(height) * longint(screen.height) DIV ScreenHeight;
       width := longint(width) * longint(screen.width) DIV ScreenWidth;
       scaleBy(screen.width, ScreenWidth);
     end;
   end;
  end;
  dm.sResolucao.Close;
end;

end.
