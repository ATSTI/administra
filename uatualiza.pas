unit uatualiza;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs ,IniFiles, JvBaseDlg, JvProgressDialog, JvSHFileOperation, ShellApi,
  StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Memo2: TMemo;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
  private
    function ProcessArquivo(const Origem, Destino : string; Operacao, Modo:Integer) : Boolean;
    procedure AtualizaRelatorio;
    procedure AtualizaExe;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AtualizaExe;
var
   exepastaBackup, inipastaBackup, exeLocal, exeRede, iniLocal,iniRede, iniAplicativo, Mensagem : String;
   ini : TIniFile;
   iniDataLocal, iniDataRede, exeDataLocal, exeDataRede: Integer;
Begin
   exeDataLocal := 0;
   exeDataRede := 0;

   memo1.Lines.Clear;
   ini := TIniFile.Create(ExtractFilePath(Application.Exename)+'atualiza.ini');

   //iniLocal é o caminho completo (Caminho + Nome) do arquivo ini local do usuário.
   //iniRede é o caminho completo (Caminho + Nome) do arquivo ini da Rede Versão mais atualizada.

   iniLocal := ExtractFilePath(Application.ExeName)+ 'atualiza.ini';
   iniRede  := ini.ReadString('Atualizador', 'iniRede','');

   //inipastaBackup é a pasta onde será armazenada o backup da versão antiga do arquivo ini antes da atualização
   //exepastaBackup é a pasta onde será armazenada o backup da versão antiga do executavel antes da atualização

   inipastaBackup := ExtractFilePath(Application.ExeName)+ '_VersaoAnterior\atualiza.ini';
   exepastaBackup := ExtractFilePath(Application.ExeName)+ '_VersaoAnterior';

   if (not DirectoryExists(exePastaBackup)) then
     CreateDir(exePastaBackup);

   iniAplicativo := ini.ReadString('Atualizador', 'aplicativo','');

   // iniDataLocal recebe a DataHora do arquivo local.
   // iniDataRede recebe a DataHora do arquivo do servidor.
   try
      if FileExists(iniLocal) then
         iniDataLocal := FileAge(iniLocal);
         //iniDataLocal := FormatDateTime('dd/mm/yyyy hh:mm:ss',FileDateToDateTime(FileAge(iniLocal)));
      if FileExists(iniRede) then
         iniDataRede := FileAge(iniRede);
         //iniDataRede := FormatDateTime('dd/mm/yyyy hh:mm:ss', FileDateToDateTime(FileAge(iniRede)));
   except
   end;
   { Compara o arquivo dbxconnection se este estiver mudado procurar por mudança no restante }
   If iniDataLocal < iniDataRede then
   begin
     Mensagem := 'Foi detectada uma nova versão do Sistema ATS-Admin.'+#13+
                 'O sistema será atualizado.  ' + #13 + #13;
     Application.MessageBox(PChar(Mensagem), 'Sistema ATS-Admin',MB_OK+MB_ICONEXCLAMATION);

     // Verifica se a versão da Local do arquivo INI é menor do que a disponível no Servidor
     // Se for, o sistema vai executar um aplicativo chamado
     // Atualizador.exe que estará no servidor e encerrará o
     // seu sistema, para que o mesmo seja atualizado.
     Try
       // A linha abaixo fará com que o aplicativo tente atualizar o sistema (Copiando e Sobreescrevendo da rede para a
       // maquina local). Após a atualização o sistema é executado e este aplicativo (Atualizador) será finalizado.

       MoveFile(Pchar(iniLocal),Pchar(inipastaBackup));
       CopyFile(Pchar(iniRede),Pchar(iniLocal), False);
     Except
       ini.Destroy;
       Abort;
     End;

     //exeLocal é o caminho completo (Caminho + Nome) do executavel local do usuário.
     //exeRede é o caminho completo (Caminho + Nome) do executavel da Rede Versão mais atualizada.

     {exeAdmLocal := ExtractFilePath(Application.ExeName)+ 'PrjAdministrativo.exe';
     exeAdmRede  := ini.ReadString('Atualizador', 'exeAdmRede','');
     exeMatLocal := ExtractFilePath(Application.ExeName)+ 'PrjMateriais.exe';
     exeMatRede  := ini.ReadString('Atualizador', 'exeMatRede','');
     exeAtsAdmLocal := ExtractFilePath(Application.ExeName)+ 'prjAtsAdmin.exe';
     exeAtsAdmRede  := ini.ReadString('Atualizador', 'exeAtsAdmRede','');}

     // #####################################################################################
     // ###################### COMERCIAL ####################################################
     // #####################################################################################
     // exeDataLocal recebe a DataHora do arquivo local.
     // exeDataRede recebe a DataHora do arquivo do servidor.
     exeLocal := ExtractFilePath(Application.ExeName)+ 'PrjComercial.exe';
     exeRede  := ini.ReadString('Atualizador', 'exeComRede','');
     try
        if FileExists(exeLocal) then
          exeDataLocal := FileAge(exeLocal);
          // exeDataLocal := FormatDateTime('dd/mm/yyyy hh:mm:ss',FileDateToDateTime(FileAge(exeLocal)));
        if FileExists(exeRede) then
          exeDataRede := FileAge(exeRede);
           //exeDataRede := FormatDateTime('dd/mm/yyyy hh:mm:ss', FileDateToDateTime(FileAge(exeRede)));
     except
     end;

     // Verifica se a versão da Local do EXECUTÁVEL é menor do que a disponível no Servidor
     // Se for, o sistema vai executar um aplicativo chamado
     // Atualizador.exe que estará no servidor e encerrará o
     // seu sistema, para que o mesmo seja atualizado.
     If (exeDataLocal < exeDataRede) then
     begin
       Try
         // A linha abaixo fará com que o aplicativo tente atualizar o sistema (Copiando e Sobreescrevendo da rede para a
         // maquina local). Após a atualização o sistema é executado e este aplicativo (Atualizador) será finalizado.
         deletefile(Pchar(exepastaBackup + '\prjComercial.exe'));
         MoveFile(Pchar(exeLocal),Pchar(exepastaBackup + '\prjComercial.exe'));
         //CopyFile(Pchar(exeRede),Pchar(exeLocal), False);
         if ProcessArquivo(Pchar(exeRede), Pchar(exeLocal), 5, 2) then
           memo1.Lines.Add(Pchar(exeLocal) + ' atualizado com sucesso.')
         else
           memo1.Lines.Add(Pchar(exeLocal) + ' ERRO na atualização, avise o Administradro sistema !');
       Except
         Mensagem := 'Não foi possível efetuar a atualização disponível.! '+
                     #13 + #13 + 'Entre em contato com o Administrador do Sistema.';
         Application.MessageBox(PChar(Mensagem), 'Erro', MB_OK+MB_ICONERROR);
         ini.Destroy;
         Abort;
       End;
     End; //Fim de procedimentos de Atualização do executável PrjComercial.exe
     exeDataLocal := 0;
     exeDataRede := 0;
     // #####################################################################################
     // #####################################################################################
     // #####################################################################################
     // #####################################################################################
     // ############################### FINANCEIRO ##########################################
     // #####################################################################################
     exeLocal := ExtractFilePath(Application.ExeName)+ 'PrjFinanceiro.exe';
     exeRede  := ini.ReadString('Atualizador', 'exeFinRede','');
     try
        if FileExists(exeLocal) then
          exeDataLocal := FileAge(exeLocal);
          // exeDataLocal := FormatDateTime('dd/mm/yyyy hh:mm:ss',FileDateToDateTime(FileAge(exeLocal)));
        if FileExists(exeRede) then
          exeDataRede := FileAge(exeRede);
          // exeDataRede := FormatDateTime('dd/mm/yyyy hh:mm:ss', FileDateToDateTime(FileAge(exeRede)));
     except
     end;
     If (exeDataLocal < exeDataRede) then
     begin
       Try
         deletefile(Pchar(exepastaBackup + '\prjFinanceiro.exe'));
         MoveFile(Pchar(exeLocal),Pchar(exepastaBackup + '\prjFinanceiro.exe'));
         if ProcessArquivo(Pchar(exeRede), Pchar(exeLocal), 5, 2) then
           memo1.Lines.Add(Pchar(exeLocal) + ' atualizado com sucesso.')
         else
           memo1.Lines.Add(Pchar(exeLocal) + ' ERRO na atualização, avise o Administradro sistema !');
       Except
         Mensagem := 'Não foi possível efetuar a atualização disponível.! '+
                     #13 + #13 + 'Entre em contato com o Administrador do Sistema.';
         Application.MessageBox(PChar(Mensagem), 'Erro', MB_OK+MB_ICONERROR);
         ini.Destroy;
         Abort;
       End;
     End; //Fim de procedimentos de Atualização do executável PrjFinanceiro.exe
     exeDataLocal := 0;
     exeDataRede := 0;
     // #####################################################################################
     // #####################################################################################
     // ############################### Administrativo ######################################
     // #####################################################################################
     exeLocal := ExtractFilePath(Application.ExeName)+ 'PrjAdministrativo.exe';
     exeRede  := ini.ReadString('Atualizador', 'exeAdmRede','');
     try
        if FileExists(exeLocal) then
          exeDataLocal := FileAge(exeLocal);
          // exeDataLocal := FormatDateTime('dd/mm/yyyy hh:mm:ss',FileDateToDateTime(FileAge(exeLocal)));
        if FileExists(exeRede) then
           exeDataRede := FileAge(exeRede);
          // exeDataRede := FormatDateTime('dd/mm/yyyy hh:mm:ss', FileDateToDateTime(FileAge(exeRede)));
     except
     end;
     If (exeDataLocal < exeDataRede) then
     begin
       Try
         deletefile(Pchar(exepastaBackup + '\prjAdministrativo.exe'));
         MoveFile(Pchar(exeLocal),Pchar(exepastaBackup + '\prjAdministrativo.exe'));
         if ProcessArquivo(Pchar(exeRede), Pchar(exeLocal), 5, 2) then
           memo1.Lines.Add(Pchar(exeLocal) + ' atualizado com sucesso.')
         else
           memo1.Lines.Add(Pchar(exeLocal) + ' ERRO na atualização, avise o Administradro sistema !');
       Except
         Mensagem := 'Não foi possível efetuar a atualização disponível.! '+
                     #13 + #13 + 'Entre em contato com o Administrador do Sistema.';
         Application.MessageBox(PChar(Mensagem), 'Erro', MB_OK+MB_ICONERROR);
         ini.Destroy;
         Abort;
       End;
     End; //Fim de procedimentos de Atualização do executável PrjAdministrativo.exe
     exeDataLocal := 0;
     exeDataRede := 0;
     // #####################################################################################
     // #####################################################################################
     // #####################################################################################
     // ############################### Materiais  ##########################################
     // #####################################################################################
     exeLocal := ExtractFilePath(Application.ExeName)+ 'PrjMateriais.exe';
     exeRede  := ini.ReadString('Atualizador', 'exeMatRede','');
     try
        if FileExists(exeLocal) then
          exeDataLocal := FileAge(exeLocal);
          // exeDataLocal := FormatDateTime('dd/mm/yyyy hh:mm:ss',FileDateToDateTime(FileAge(exeLocal)));
        if FileExists(exeRede) then
          exeDataRede := FileAge(exeRede);
          // exeDataRede := FormatDateTime('dd/mm/yyyy hh:mm:ss', FileDateToDateTime(FileAge(exeRede)));
     except
     end;
     If (exeDataLocal < exeDataRede) then
     begin
       Try
         deletefile(Pchar(exepastaBackup + '\prjMateriais.exe'));
         MoveFile(Pchar(exeLocal),Pchar(exepastaBackup + '\prjMateriais.exe'));
         if ProcessArquivo(Pchar(exeRede), Pchar(exeLocal), 5, 2) then
           memo1.Lines.Add(Pchar(exeLocal) + ' atualizado com sucesso.')
         else
           memo1.Lines.Add(Pchar(exeLocal) + ' ERRO na atualização, avise o Administrador do sistema !');
       Except
         Mensagem := 'Não foi possível efetuar a atualização disponível.! '+
                     #13 + #13 + 'Entre em contato com o Administrador do Sistema.';
         Application.MessageBox(PChar(Mensagem), 'Erro', MB_OK+MB_ICONERROR);
         ini.Destroy;
         Abort;
       End;
     End; //Fim de procedimentos de Atualização do executável PrjMateriais.exe
     exeDataLocal := 0;
     exeDataRede := 0;
     // #####################################################################################
     // #####################################################################################
     // #####################################################################################
     // #####################################################################################
     // ############################### ATSAdmin  ###########################################
     // #####################################################################################
     exeLocal := ExtractFilePath(Application.ExeName)+ 'PrjAtsAdmin.exe';
     exeRede  := ini.ReadString('Atualizador', 'exeAtsAdminRede','');
     try
        if FileExists(exeLocal) then
          exeDataLocal := FileAge(exeLocal);
          // exeDataLocal := FormatDateTime('dd/mm/yyyy hh:mm:ss',FileDateToDateTime(FileAge(exeLocal)));
        if FileExists(exeRede) then
          exeDataRede := FileAge(exeRede);
          // exeDataRede := FormatDateTime('dd/mm/yyyy hh:mm:ss', FileDateToDateTime(FileAge(exeRede)));
     except
     end;
     If (exeDataLocal < exeDataRede) then
     begin
       Try
         deletefile(Pchar(exepastaBackup + '\prjAtsAdmin.exe'));
         MoveFile(Pchar(exeLocal),Pchar(exepastaBackup + '\prjAtsAdmin.exe'));
         if ProcessArquivo(Pchar(exeRede), Pchar(exeLocal), 5, 2) then
           memo1.Lines.Add(Pchar(exeLocal) + ' atualizado com sucesso.')
         else
           memo1.Lines.Add(Pchar(exeLocal) + ' ERRO na atualização, avise o Administrador do sistema !');
       Except
         Mensagem := 'Não foi possível efetuar a atualização disponível.! '+
                     #13 + #13 + 'Entre em contato com o Administrador do Sistema.';
         Application.MessageBox(PChar(Mensagem), 'Erro', MB_OK+MB_ICONERROR);
         ini.Destroy;
         Abort;
       End;
     End; //Fim de procedimentos de Atualização do executável PrjAtsAdmin.exe
     exeDataLocal := 0;
     exeDataRede := 0;
     // #####################################################################################
     // #####################################################################################
     // ############################### Logo      ###########################################
     // #####################################################################################
     exeLocal := ExtractFilePath(Application.ExeName)+ 'logo.jpg';
     exeRede  := ini.ReadString('Atualizador', 'logo','');
     try
        if FileExists(exeLocal) then
          exeDataLocal := FileAge(exeLocal);
          // exeDataLocal := FormatDateTime('dd/mm/yyyy hh:mm:ss',FileDateToDateTime(FileAge(exeLocal)));
        if FileExists(exeRede) then
          exeDataRede := FileAge(exeRede);
          // exeDataRede := FormatDateTime('dd/mm/yyyy hh:mm:ss', FileDateToDateTime(FileAge(exeRede)));
     except
     end;
     If (exeDataLocal < exeDataRede) then
     begin
       Try
         deletefile(Pchar(exepastaBackup + '\logo.jpg'));
         MoveFile(Pchar(exeLocal),Pchar(exepastaBackup + '\logo.jpg'));
         if ProcessArquivo(Pchar(exeRede), Pchar(exeLocal), 5, 2) then
           memo1.Lines.Add(Pchar(exeLocal) + ' atualizado com sucesso.')
         else
           memo1.Lines.Add(Pchar(exeLocal) + ' ERRO na atualização, avise o Administrador do sistema !');
       Except
         Mensagem := 'Não foi possível efetuar a atualização disponível.! '+
                     #13 + #13 + 'Entre em contato com o Administrador do Sistema.';
         Application.MessageBox(PChar(Mensagem), 'Erro', MB_OK+MB_ICONERROR);
         ini.Destroy;
         Abort;
       End;
     End; //Fim de procedimentos de Atualização do executável logo.jpg
     exeDataLocal := 0;
     exeDataRede := 0;
     // #####################################################################################


     // #####################################################################################
     // ######################   SAUDE   ####################################################
     // #####################################################################################
     // exeDataLocal recebe a DataHora do arquivo local.
     // exeDataRede recebe a DataHora do arquivo do servidor.
     exeLocal := ExtractFilePath(Application.ExeName)+ 'PrjPlanoSaude.exe';
     exeRede  := ini.ReadString('Atualizador', 'exeSauRede','');
     try
        if FileExists(exeLocal) then
          exeDataLocal := FileAge(exeLocal);
          // exeDataLocal := FormatDateTime('dd/mm/yyyy hh:mm:ss',FileDateToDateTime(FileAge(exeLocal)));
        if FileExists(exeRede) then
          exeDataRede := FileAge(exeRede);
           //exeDataRede := FormatDateTime('dd/mm/yyyy hh:mm:ss', FileDateToDateTime(FileAge(exeRede)));
     except
     end;

     // Verifica se a versão da Local do EXECUTÁVEL é menor do que a disponível no Servidor
     // Se for, o sistema vai executar um aplicativo chamado
     // Atualizador.exe que estará no servidor e encerrará o
     // seu sistema, para que o mesmo seja atualizado.
     If (exeDataLocal < exeDataRede) then
     begin
       Try
         // A linha abaixo fará com que o aplicativo tente atualizar o sistema (Copiando e Sobreescrevendo da rede para a
         // maquina local). Após a atualização o sistema é executado e este aplicativo (Atualizador) será finalizado.
         deletefile(Pchar(exepastaBackup + '\PrjPlanoSaude.exe'));
         MoveFile(Pchar(exeLocal),Pchar(exepastaBackup + '\PrjPlanoSaude.exe'));
         //CopyFile(Pchar(exeRede),Pchar(exeLocal), False);
         if ProcessArquivo(Pchar(exeRede), Pchar(exeLocal), 5, 2) then
           memo1.Lines.Add(Pchar(exeLocal) + ' atualizado com sucesso.')
         else
           memo1.Lines.Add(Pchar(exeLocal) + ' ERRO na atualização, avise o Administradro sistema !');
       Except
         Mensagem := 'Não foi possível efetuar a atualização disponível.! '+
                     #13 + #13 + 'Entre em contato com o Administrador do Sistema.';
         Application.MessageBox(PChar(Mensagem), 'Erro', MB_OK+MB_ICONERROR);
         ini.Destroy;
         Abort;
       End;
     End; //Fim de procedimentos de Atualização do executável PrjPlanoSaude.exe
     // #####################################################################################


     // #####################################################################################
     // ######################  Imobiliaria #################################################
     // #####################################################################################
     // exeDataLocal recebe a DataHora do arquivo local.
     // exeDataRede recebe a DataHora do arquivo do servidor.
     exeLocal := ExtractFilePath(Application.ExeName)+ 'imob.exe';
     exeRede  := ini.ReadString('Atualizador', 'exeImoRede','');
     try
        if FileExists(exeLocal) then
          exeDataLocal := FileAge(exeLocal);
          // exeDataLocal := FormatDateTime('dd/mm/yyyy hh:mm:ss',FileDateToDateTime(FileAge(exeLocal)));
        if FileExists(exeRede) then
          exeDataRede := FileAge(exeRede);
           //exeDataRede := FormatDateTime('dd/mm/yyyy hh:mm:ss', FileDateToDateTime(FileAge(exeRede)));
     except
     end;

     // Verifica se a versão da Local do EXECUTÁVEL é menor do que a disponível no Servidor
     // Se for, o sistema vai executar um aplicativo chamado
     // Atualizador.exe que estará no servidor e encerrará o
     // seu sistema, para que o mesmo seja atualizado.
     If (exeDataLocal < exeDataRede) then
     begin
       Try
         // A linha abaixo fará com que o aplicativo tente atualizar o sistema (Copiando e Sobreescrevendo da rede para a
         // maquina local). Após a atualização o sistema é executado e este aplicativo (Atualizador) será finalizado.
         deletefile(Pchar(exepastaBackup + '\imob.exe'));
         MoveFile(Pchar(exeLocal),Pchar(exepastaBackup + '\imob.exe'));
         //CopyFile(Pchar(exeRede),Pchar(exeLocal), False);
         if ProcessArquivo(Pchar(exeRede), Pchar(exeLocal), 5, 2) then
           memo1.Lines.Add(Pchar(exeLocal) + ' atualizado com sucesso.')
         else
           memo1.Lines.Add(Pchar(exeLocal) + ' ERRO na atualização, avise o Administradro sistema !');
       Except
         Mensagem := 'Não foi possível efetuar a atualização disponível.! '+
                     #13 + #13 + 'Entre em contato com o Administrador do Sistema.';
         Application.MessageBox(PChar(Mensagem), 'Erro', MB_OK+MB_ICONERROR);
         ini.Destroy;
         Abort;
       End;
     End; //Fim de procedimentos de Atualização do executável imob.exe
     // #####################################################################################




     AtualizaRelatorio;

   End; //Fim de procedimentos de Atualização do arquivo INI
   ini.Destroy;
   exeLocal := ExtractFilePath(Application.ExeName)+ iniAplicativo;
   WinExec(PChar(exeLocal), SW_SHOWNORMAL);
   Application.Terminate;

end;

procedure TForm1.AtualizaRelatorio;
var
  relPastaBackup, relLocal, relRede, mensagem : String;
  ini : TIniFile;
  iniDataLocal, iniDataRede, relLocalRep, relRedeRep : String;
  Ret: Integer;

  F: TSearchRec;

begin
   memo2.Lines.Clear;
   ini := TIniFile.Create(ExtractFilePath(Application.Exename)+'atualiza.ini');
   relPastaBackup := ExtractFilePath(Application.ExeName)+ '_VersaoAnterior';
   relLocal := ExtractFilePath(Application.ExeName)+ 'relatorio';
   relRede  := ini.ReadString('Atualizador', 'relatorio','');
   {If (exeDataLocal < exeDataRede) then
   begin
   End; //Fim de procedimentos de Atualização do executável PrjFinanceiro.exe
    }

  Ret := FindFirst(relRede+'\*.rep', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      relLocalRep := relLocal + '\' + F.Name;
      relRedeRep := relRede + '\' + F.Name;
      {if (not FileExists(relDataLocal)) then
        Memo2.Lines.Add(F.Name);}
      if (FileAge(relRedeRep) > FileAge(relLocalRep)) then
      begin
        Memo2.Lines.Add(F.Name);
         Try
           deletefile(Pchar(relPastaBackup + '\' + F.Name));
           MoveFile(Pchar(relLocalRep),Pchar(relPastaBackup + '\' + F.Name));
           if CopyFile(Pchar(relRedeRep), Pchar(relLocalRep), False) then
             memo1.Lines.Add(Pchar(relLocalRep) + ' atualizado com sucesso.')
           else
             memo1.Lines.Add(Pchar(relLocalRep) + ' ERRO na atualização, avise o Administradro sistema !');
         Except
           Mensagem := 'Não foi possível efetuar a atualização disponível.! '+
                       #13 + #13 + 'Entre em contato com o Administrador do Sistema.';
           Application.MessageBox(PChar(Mensagem), 'Erro', MB_OK+MB_ICONERROR);
           ini.Destroy;
           Abort;
         End;

      end;
      Ret := FindNext(F);
    end;
  finally
    FindClose(F);
    ini.Destroy;
  end;
end;

function TForm1.ProcessArquivo(const Origem, Destino: string; Operacao,
  Modo: Integer): Boolean;
  // Requer a unit ShellApi na clausula uses da unit
  Const
  Aborted : Boolean = False;
  var
  shfo : TSHFileOpStruct;
begin
  FillChar(shfo,SizeOf(shfo),$0);
  with shfo do
  begin
    {if Operacao > 2 then
    begin
    operacao := 2;
    end;}
    {if Modo > 5 then
    begin
    modo := 1;
    end;}
    {case operacao of
    1: wFunc := FO_MOVE;
    2: wFunc := FO_COPY;
    end;}
    wFunc := FO_COPY;
    pFrom := Pchar(Origem);
    pTo := Pchar(Destino);
    {case Modo of
    1: fFlags := FOF_SILENT;
    2: fFlags := FOF_ALLOWUNDO or FOF_FILESONLY;
    3: fFlags := FOF_RENAMEONCOLLISION;
    4: fFlags := FOF_NOCONFIRMATION;
    5: fFlags := FOF_SIMPLEPROGRESS;
    end;}
    fFlags := FOF_ALLOWUNDO or FOF_FILESONLY;
  end;
  Try
    Result := (SHFileOperation(shfo)= 0) and (not Aborted);
  except
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  AtualizaExe;
end;

end.
