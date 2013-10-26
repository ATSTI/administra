unit Encrypt_decrypt;
{This unit will do a basic XOR based hash on a given string using
 a key string. }

interface

uses classes, sysutils;

function Encrypt(const text:string):String; overload;
function Encrypt(const text:string; const key:string):String; overload;
function Decrypt(const Text:String):String; overload;
function Decrypt(const text:string; const key:string):String; overload;

Function Encode(Data:string):String;
function Decode(key:String):String;

implementation
{Key taken from 20,000 Leagues under the sea by Jules Verne, 1828-1905 (From the Project
 guttenburg website (http://promo.net/pg/)) note this text is no longer under copyright.
On the whole, the longer the text the better.}
const DEFAULT_KEY:string = '';

//Re encode character in 6 bit:
//#0 = space
//#1 -> #10 = 0-9
//#11 -> #36 = a-z
//#37 -> #62 = A-Z
//#63 = '-';
const EncodeCharSet:array[0..127] of char =
(  {00  01  02  03  04  05  06  07  08  09  0A  0B  0C  0D  0E  0F}
{00}#0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0,
{10}#0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0,
{20}#0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #0, #63,#0, #0,
{30}#01,#02,#03,#04,#05,#06,#07,#08,#09,#0, #0, #0, #0, #0, #0, #0,
{40}#0, #37,#38,#39,#40,#41,#42,#43,#44,#45,#46,#47,#48,#49,#50,#51,
{50}#52,#53,#54,#55,#56,#57,#58,#59,#60,#61,#62, #0, #0, #0, #0, #0,
{60}#0, #11,#12,#13,#14,#15,#16,#17,#18,#19,#20,#21,#22,#23,#24,#25,
{70}#26,#27,#28,#29,#30,#31,#32,#33,#34,#35,#36,#0 , #0, #0, #0, #0
);

function EncodeChar(chr:Char):Char;
begin
  if chr > #127 then result := #0
  else result := EncodeCharSet[ord(chr)];
end;

const DecodeCharSet:array[0..63] of char =
(  {00   01   02   03   04   05   06   07   08   09   0A   0B   0C   0D   0E   0F}
{00}#32 ,#48 ,#49 ,#50 ,#51 ,#52 ,#53 ,#54 ,#55 ,#56 ,#57 ,#97 ,#98 ,#99 ,#100,#101,
{10}#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116,#117,
{20}#118,#119,#120,#121,#122,#65 ,#66 ,#67 ,#68 ,#69 ,#70 ,#71 ,#72 ,#73 ,#74 ,#75,
{30}#76 ,#77 ,#78 ,#79 ,#80 ,#81 ,#82 ,#83 ,#84 ,#85 ,#86 ,#87 ,#88 ,#89 ,#90 ,#45
);

function DecodeChar(chr:char):Char;
begin
  if chr > #63 then result := #0
  else result := DecodeCharSet[ord(chr)];
end;

{This function prepares the key. As the key is ASCII text, its values
are all between 32 and 127. This function encodes it so a greater range of values is possible
the format is similar to the UUENCODE was originally intended for transmitting binary data over
Emails, but is useful here to get a full range of values for my encoding.}
{ AAAA-AAAA BBBB-BBBB CCCC-CCCC DDDD-DDDD}
{ 1111-11   1122-22   2222-33   3333-33}

function Decode(key:String):String;
var position:Longint;
    temparr:array[1..4] of byte;
begin
  while (length(key) mod 4) <> 0 do key := key + #0;
  result := '';
  Position := 1;                                             {}
  while position+3 <= length(key) do
  begin
    {Subtract 32 so values are 0-95}
    key[position+0] := EncodeChar(key[position+0]);
    key[position+1] := EncodeChar(key[position+1]);
    key[position+2] := EncodeChar(key[position+2]);
    key[position+3] := EncodeChar(key[position+3]);
    {Now we have values in the range 0-63, encode them and add them. Basically 4 chars will convert into three
    in the form by bit manipulation}
    temparr[1] := ( ord(key[position  ]) and $3F)        + ((ord(key[position+1]) and $03) shl 6);
    temparr[2] := ((ord(key[position+1]) and $3C) shr 2) + ((ord(key[position+2]) and $0F) shl 4);
    temparr[3] := ((ord(key[position+2]) and $30) shr 4) + ((ord(key[position+3]) and $3F) shl 2);
    {Write the output}
    result := result + chr(temparr[1])+chr(temparr[2])+chr(temparr[3]);

    {Done that colletion of 4 bytes}
    INC(position,4);
  end; //while
end;

{For each bit of three bits}
{ 0123-4567 0123-4567 0123-4567 }
{ AAAA-AABB BBBB-CCCC CCDD-DDDD }
Function Encode(Data:string):String;
var position:Longint;
    temparr:array[1..4] of byte;
begin
  result := '';
  Position := 1;
  while (length(data) mod 3) <> 0 do data := data + #0;
  while position+2 <= length(data) do
  begin
    {This is for lower case characters, move them into the 0-64 range.}
    temparr[1] :=                                            (Ord( Data[position  ]) and $3F);
    temparr[2] := ((ord( data[position  ]) and $C0) shr 6) +((Ord( Data[position+1]) and $0F) shl 2);
    temparr[3] := ((ord( data[position+1]) and $F0) shr 4) +((Ord( Data[position+2]) and $03) shl 4);
    temparr[4] := ((ord( data[position+2]) and $FC) shr 2);

    {Write the output}
    result := result + DecodeChar(chr(temparr[1]))+
                       DecodeChar(chr(temparr[2]))+
                       DecodeChar(chr(temparr[3]))+
                       DecodeChar(chr(temparr[4]));

    {Done that colletion of 4 bytes}
    INC(position,3);
  end; //while

end;

{Encrypt a bit of string with the default key}
function Encrypt(const text:string):String;
begin
  result := Encrypt(text,DEFAULT_KEY);
end;

{Encrypt a bit of string with a stated key. This XORS the above key with the data
after encoding them. This is safer than a standard XOR one value key, but
Any person trying to break this encryption would have no problem given the source code
and the key. For security purposes, the key should be bigger than the text being encoded.
if the key is less by a great deal, a statistical attack may provide information which could
break this. }
function Encrypt(const text:string; const key:string):String; overload;
var newkey:string;
    count:Longint;
    keypos:Longint;
begin
  newkey := DECODE(key);
  keypos := 1;
  result := 'Encr'+text;
  for count := 5 to length(result) do
  begin
    result[count] := chr(ord(result[count]) xor ord(newkey[keypos]));
    INC(keypos);
    if keypos > length(newkey) then Keypos := 1;
  end;
end;

{This is just a decrypt function using a default key (A bit of 20,000 leagues under the sea)}
function Decrypt(const Text:String):String;
begin
  result := Decrypt(text, DEFAULT_KEY);
end;

{Note the similarity with ENCRYPT, doing an XOR twice with the same key will result
in the same data. I am just using a marker as a safety device to ensure any program
does not get confused.}
function Decrypt(const text:string; const key:string):String; overload;
var newkey:string;
    count:Longint;
    keypos:Longint;
begin
  if Copy(text,1,4) <> 'Encr' then Raise exception.Create('Text is not encrypted');
  newkey := DECODE(key);
  keypos := 1;
  result := Copy(text,5,MAXINT);
  for count := 1 to length(result) do
  begin
    result[count] := chr(ord(result[count]) xor ord(newkey[keypos]));
    INC(keypos);
    if keypos > length(newkey) then Keypos := 1;
  end;
end;

end.

