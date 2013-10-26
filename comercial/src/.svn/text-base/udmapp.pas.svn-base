unit uDmApp;

interface

uses
  SysUtils, Classes, Forms;

type
  TdmApp = class(TDataModule)
  private
    { Private declarations }
  public
    function Encripta(strTexto: String) : String;
    { Public declarations }
  end;

var
  dmApp: TdmApp;

//procedure ArmazenaAcesso(Frm: TForm);


implementation

uses uDm;


{$R *.dfm}

function TdmApp.Encripta(strTexto: String): String;
const Padrao: String = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz '
                        + '0123456789';
      Chave: String = '@#$%!^&*()][{}_-+=|\;,.></¡²³¤€¼½¾‘’¥×¬»«´¶¿ç753986412'
                        + 'yodalukern';
var i: Integer; strTemp, Letra: String;
begin
  strTemp := '';
  for i:=1 to length(strTexto) do
  begin
    Letra := Copy(strTexto, i, 1);
    strTemp := strTemp + copy(chave, Pos(Letra, Padrao), 1);
  end;
  for i:=length(strTemp) downto 1 do
    Result := Result + Copy(strTemp, i, 1);
end;

//
//  Esta procedure serve apenas para obter os componentes colocados no
//  Form e cadastrá-los na tabela de acesso.  Deve ser rodada apenas
//  uma única vez no evento OnCreate do Form.
//************************************************************************
// *********** Trocar o nome do form , e colocar os perfis desejados. ****
{procedure ArmazenaAcesso(Frm: TForm);
type
  Vetor16 = array[0..15] of String;

var

  Cmp,
  Ctr : Integer;

//  Constante contendo os objetos que serão controlados
//  Adicione outros objetos que você quiser neste vetor
//
//  Em princípio estão faltando todos os componentes de
//  banco de dados (TDBEdit, TDBGrid, etc).
Const
  CTRL:  Vetor16 = ( 'TButton',      'TBitBtn',  'TEdit',     'TMaskEdit',
                     'TSpeedButton', 'TMemo',    'TComboBox', 'TCheckBox',
                     'TRadioButton', 'TListBox', 'TSpinEdit', 'TMenuItem',
                     'TDBEdit', 'TDBGrid', 'TDBLookupComboBox', 'DBNnavigator');
begin

  try
      dmDados.TblAcesso.Open;

    with formPrincipal do
      for Cmp := 0 to ComponentCount - 1 do
          for Ctr := 0 to High(CTRL) do
              if UpperCase(Components[Cmp].ClassName) = UpperCase(CTRL[Ctr]) then begin
                 dmDados.TblAcesso.Append;
                 dmDados.TblAcesso.FieldByName('GRUPO').AsString    := Name;
                 dmDados.TblAcesso.FieldByName('SUBGRUPO').AsString := Components[Cmp].Name;
//************************************************************************8
//*************** Colocar o perfil em letras mínusculas *******************
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
                 dmDados.TblAcesso.FieldByName('PERFIL').AsString   := 'administrador';
                 dmDados.TblAcesso.FieldByName('ENABLED').AsString  := 'S';
                 dmDados.TblAcesso.FieldByName('VISIBLE').AsString  := 'S';
                 dmDados.TblAcesso.ApplyUpdates(0);

                 dmDados.TblAcesso.Append;
                 dmDados.TblAcesso.FieldByName('GRUPO').AsString    := Name;
                 dmDados.TblAcesso.FieldByName('SUBGRUPO').AsString := Components[Cmp].Name;
                 dmDados.TblAcesso.FieldByName('PERFIL').AsString   := 'visitante';
                 dmDados.TblAcesso.FieldByName('ENABLED').AsString  := 'N';
                 dmDados.TblAcesso.FieldByName('VISIBLE').AsString  := 'N';
                 dmDados.TblAcesso.ApplyUpdates(0);

                 Break;
              end;
  finally
    dmdados.TblAcesso.Close;
  end;
end;}

end.
