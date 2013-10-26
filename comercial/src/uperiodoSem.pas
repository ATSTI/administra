unit uperiodoSem;

interface

uses
  SysUtils, Types, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, DBXpress, FMTBcd, DB, DBClient, Provider,
  SqlExpr, Mask, Grids, DBGrids, XPMenu;

type
  TfPeriodoSem = class(TForm)
    BitBtn1: TBitBtn;
    rgOpcao: TRadioGroup;
    Label1: TLabel;
    SQLDataSet1: TSQLDataSet;
    DataSetProvider1: TDataSetProvider;
    cds_sem: TClientDataSet;
    SQLDataSet1DATA: TDateField;
    SQLDataSet1ANO: TSmallintField;
    SQLDataSet1SEMANA: TSmallintField;
    SQLDataSet1MES: TSmallintField;
    cds_semDATA: TDateField;
    cds_semANO: TSmallintField;
    cds_semSEMANA: TSmallintField;
    cds_semMES: TSmallintField;
    MaskEdit1: TMaskEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    XPMenu1: TXPMenu;
    BitBtn3: TBitBtn;
    DBGrid1: TDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
//    Function DiadaSemana(Data : String) : String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPeriodoSem: TfPeriodoSem;

implementation

uses UDm;

const
ScreenWidth: LongInt = 800; {I designed my form in 800x600 mode.}
ScreenHeight: LongInt = 600;
{$R *.dfm}

procedure TfPeriodoSem.BitBtn1Click(Sender: TObject);
Var
 Ano, Mes, Dia, ano1, mes1, dia1 : word;
 Data, Datai, Dataf, MesF: TDateTime;
 Semana, meses, diasemana : Integer;
begin
  Datai := strtodate(MaskEdit1.Text);
  //Qual a primeira semana ?
  //Semana > 3 dias
  Data := strtodate(MaskEdit1.Text);
  if (rgOpcao.ItemIndex = 0) then
  begin
  Data := strtodate(MaskEdit1.Text);
  Datai := strtodate(MaskEdit1.Text);
  if (DayOfWeek(Datai)) > 4 then
      Datai := Datai + 1;
      if (DayOfWeek(Datai)) > 4 then
         Datai := Datai + 1;
         if (DayOfWeek(Datai)) > 4 then
             Datai := Datai + 1;
  end;
  //Primeira semana do ano
  if (rgOpcao.ItemIndex = 1) then
      Datai := (strtodate(MaskEdit1.Text));

  DecodeDate (Data, Ano, Mes, Dia);
  //Gerando o último dia do ano
  Ano := Ano + 1;
  Dataf := (EncodeDate(Ano, Mes, Dia));
  Ano := Ano - 1;
  //Gerando o último dia do mês
  Mes := Mes + 1;
  MesF := (EncodeDate(Ano, Mes, Dia))-1;
  DecodeDate(MesF, Ano1, Mes1, Dia1);
////  MesFim := Dia1;


  Maskedit1.Text := DateToStr(Dataf);

  Semana := 1;
  if not cds_sem.Active then
         cds_sem.Open;
  While Datai < Dataf do
  begin
    for meses:=1 to 12 do
    begin
      //for j:=1 to mesFim do
      MesF := MesF + 1;
      while Datai < MesF do
      begin
      diasemana := (DayOfWeek(Datai));
      for diasemana:=diasemana to 7 do
      begin
        cds_sem.Append;
        cds_semDATA.AsDateTime := Datai;
        cds_semANO.Value := Ano;
        cds_semMES.Value := Mes - 1;
        cds_semSEMANA.Value := Semana;
        Datai := Datai + 1;
        if Datai = MesF then
           break;
        cds_sem.Post;
      end;
        if (Datai < MesF)   then
        semana := semana + 1;
        if (Datai = MesF) and (diasemana = 7) then
        semana := semana + 1;
        cds_sem.ApplyUpdates(0);
      end;
    Mes := Mes + 1;
    if Mes = 13 then
    begin
    Mes := 1;
    Ano := Ano + 1;
    Dia := 1;
    MesF := (EncodeDate(Ano, Mes, Dia))-1;
    DecodeDate (MesF, ano1, mes1, dia1);
  ////  MesFim := Dia1;
    Ano := Ano - 1;
    Mes := 13;
    end
    else
    begin
    if Mes > 12 then
       exit;
    //Gerando o último dia do mês
    Dia := 1;
    MesF := (EncodeDate(Ano, Mes, Dia))-1;
    DecodeDate (MesF, ano1, mes1, dia1);
////    MesFim := Dia1;
    end;
    end;
  end;
//    cds_sem.ApplyUpdates(0);
    cds_sem.Close;
end;

{Function TForm1.DiadaSemana(Data : String) : String;
const
  semana : array[1..7] of String = ('Dom','Seg','Ter','Qua','Qui','Sex', 'Sab');
begin
  Result := semana[DayOfWeek(strtodate(Data))]
end;


 }
procedure TfPeriodoSem.BitBtn2Click(Sender: TObject);
Var
  sqlApaga: String ;
////  sqlAno : String;
begin
  Try
  sqlApaga := 'DELETE FROM SEMANA WHERE ANO = ' + Edit1.Text;
  dm.sqlsisAdimin.Execute(sqlApaga, nil);
  cds_sem.Close;
  cds_sem.Open;
    MessageDlg('Ano excluido.', mtCustom, [mbOK], 0);
  Except
    MessageDlg('Erro ao apagar os dados tente novamente !', mtError, [mbOK], 0);
  end;
end;

procedure TfPeriodoSem.FormShow(Sender: TObject);
begin
  cds_sem.Open;
end;

procedure TfPeriodoSem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cds_sem.Close;
end;

procedure TfPeriodoSem.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure TfPeriodoSem.FormCreate(Sender: TObject);
begin
scaled := true;
if (screen.width <> ScreenWidth) then
begin
height := longint(height) * longint(screen.height) DIV ScreenHeight;
width := longint(width) * longint(screen.width) DIV ScreenWidth;
scaleBy(screen.width, ScreenWidth);
end;

end;

end.
