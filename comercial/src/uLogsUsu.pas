unit uLogsUsu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, rpcompobase, rpvclreport, StdCtrls, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvCheckedMaskEdit, JvDatePickerEdit, Buttons, ExtCtrls,
  MMJPanel, ImgList, Grids, DBGrids, JvExDBGrids, JvDBGrid;

type
  TfLogsUsu = class(TForm)
    MMJPanel1: TMMJPanel;
    Label2: TLabel;
    Label1: TLabel;
    btnSair: TBitBtn;
    BitBtn2: TBitBtn;
    dta2: TJvDatePickerEdit;
    dta1: TJvDatePickerEdit;
    cbMes: TComboBox;
    VCLReport1: TVCLReport;
    JvDBGrid1: TJvDBGrid;
    MMJPanel2: TMMJPanel;
    JvDBGrid2: TJvDBGrid;
    ImageList1: TImageList;
    ImageList2: TImageList;
    ComboBox1: TComboBox;
    Label3: TLabel;
    ComboBox2: TComboBox;
    Label4: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLogsUsu: TfLogsUsu;

implementation

{$R *.dfm}

end.
