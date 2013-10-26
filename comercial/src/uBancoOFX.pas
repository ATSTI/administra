unit uBancoOFX;

interface

uses classes, SysUtils, Controls;

type
  TOFXItem = class
    MovType : string;
    MovDate : TDate;
    Value : double;
    ID : string;
    Document : string;
    Desc : string;
  end;

  TBancoOFX = class(TComponent)
  public
    BankID : integer;
    AccountID : string;
    AccountType : string;
    InitialBalance : double;
    FinalBalance : double;
    constructor Create( AOwner: TComponent ); override;
    destructor Destroy; override;
    function Process: boolean;
    function Get(iIndex: integer): TOFXItem;
    function Count: integer;
  private
    FOFXFile : string;
    FListItems : TList;
    procedure Clear;
    procedure Delete( iIndex: integer );
    function Add: TOFXItem;
    function PrepareFloat( sString : string ) : string;
    function InfLine ( sLine : string ): string;
    function FindString ( sSubString, sString : string ): boolean;
    function ReplaceString(sString: string; sOld: string; sNew: string; bInsensitive : boolean = true): string;
  protected
  published
    property OFXFile: string read FOFXFile write FOFXFile;
  end;

procedure Register;

implementation

constructor TBancoOFX.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FListItems := TList.Create;
end;

destructor TBancoOFX.Destroy;
begin
  FListItems.Free;
  inherited Destroy;
end;

procedure TBancoOFX.Delete( iIndex: integer );
begin
  TOFXItem(FListItems.Items[iIndex]).Free;
  FListItems.Delete( iIndex );
end;

procedure TBancoOFX.Clear;
//var
//  i: integer;
//  oPointer : Pointer;
begin
  while FListItems.Count > 0 do
    Delete(0);
  FListItems.Clear;
end;

function TBancoOFX.Count: integer;
begin
  Result := FListItems.Count;
end;

function TBancoOFX.Get(iIndex: integer): TOFXItem;
begin
  Result := TOFXItem(FListItems.Items[iIndex]);
end;

function TBancoOFX.Process: boolean;
var
  oFile : TStringList;
  i : integer;
  bOFX : boolean;
  oItem : TOFXItem;
  sLine : string;
  dBalance : double;
begin
  Result := false;
  Clear;
  bOFX := false;
  if not FileExists(FOFXFile) then
    exit;
  oFile := TStringList.Create;
  oFile.LoadFromFile(FOFXFile);
  dBalance := 0;
  i := 0;
  while i < oFile.Count do
  begin
    sLine := oFile.Strings[i];
    if FindString('<OFX>', sLine) then
      bOFX := true;
    if bOFX then
    begin
      // -----------------------------------------------------------------------
      // BankID
      if FindString('<BANKID>', sLine) then BankID := StrToIntDef(InfLine(sLine), 0);
      // -----------------------------------------------------------------------
      // AccountID
      if FindString('<ACCTID>', sLine) then AccountID := InfLine(sLine);
      // -----------------------------------------------------------------------
      // AccountType
      if FindString('<ACCTTYPE>', sLine) then AccountType := InfLine(sLine);
      // -----------------------------------------------------------------------
      // FinalBalance
      if FindString('<LEDGER>', sLine) then FinalBalance := StrToFloat(PrepareFloat(InfLine(sLine)));
      // -----------------------------------------------------------------------
      // Moviment
      if FindString('<STMTTRN>', sLine) then
      begin
        oItem := Add;
        Inc(i);
        sLine := oFile.Strings[i];
        if FindString('<TRNTYPE>',  sLine) then oItem.MovType := InfLine(sLine);
        Inc(i);
        sLine := oFile.Strings[i];
        if FindString('<DTPOSTED>', sLine) then oItem.MovDate := EncodeDate(StrToIntDef(copy(InfLine(sLine),1,4), 0),
                                                                            StrToIntDef(copy(InfLine(sLine),5,2), 0),
                                                                            StrToIntDef(copy(InfLine(sLine),7,2), 0));
        Inc(i);
        sLine := oFile.Strings[i];
        if FindString('<TRNAMT>',   sLine) then
        begin
          oItem.Value := StrToFloat(PrepareFloat(InfLine(sLine)));
          dBalance := dBalance - oItem.Value;
        end;
        Inc(i);
        sLine := oFile.Strings[i];
        if FindString('<FITID>',    sLine) then oItem.ID := InfLine(sLine);
        Inc(i);
        sLine := oFile.Strings[i];
        if FindString('<CHKNUM>',   sLine) then oItem.Document := InfLine(sLine);
        Inc(i);
        sLine := oFile.Strings[i];
          if FindString('<MEMO>',     sLine) then oItem.Desc := InfLine(sLine);
//        end;
      end;
      // -----------------------------------------------------------------------
    end;
    Inc(i);
  end;
  InitialBalance := FinalBalance + dBalance;
  Result := bOFX;
end;

function TBancoOFX.PrepareFloat( sString : string ) : string;
begin
  Result := sString;
  Result := ReplaceString(Result, '.', DecimalSeparator);
  Result := ReplaceString(Result, ',', DecimalSeparator);
end;

function TBancoOFX.ReplaceString(sString: string; sOld: string; sNew: string; bInsensitive : boolean = true): string;
var
   iPosition: integer ;
   sTempNew: string ;
begin
   iPosition := 1;
   sTempNew := '';
   while (iPosition > 0) do
   begin
      if bInsensitive then
        iPosition := AnsiPos(UpperCase(sOld),UpperCase(sString))
      else
        iPosition := AnsiPos(sOld,sString);
      if (iPosition > 0) then
      begin
         sTempNew := sTempNew + copy(sString, 1, iPosition - 1) + sNew;
         sString := copy(sString, iPosition + Length(sOld), Length(sString) );
      end;
   end;
   sTempNew := sTempNew + sString;
   Result := (sTempNew);
end;

function TBancoOFX.InfLine ( sLine : string ): string;
var
  iTemp : integer;
begin
  Result := '';
  sLine := Trim(sLine);
  if FindString('>', sLine) then
  begin
    sLine := Trim(sLine);
    iTemp := Pos('>', sLine);
    Result := copy(sLine, iTemp+1, Length(sLine)-iTemp+1);
  end;
end;

function TBancoOFX.Add: TOFXItem;
var
  oItem : TOFXItem;
begin
  oItem := TOFXItem.Create;
  FListItems.Add(oItem);
  Result := oItem;
end;

function TBancoOFX.FindString ( sSubString, sString : string ): boolean;
begin
  Result := Pos(UpperCase(sSubString), UpperCase(sString)) > 0;
end;

procedure Register;
begin
  RegisterComponents('YoungArts', [TBancoOFX]);
end;

end.
 