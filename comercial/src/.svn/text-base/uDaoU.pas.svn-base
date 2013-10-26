unit uDaoU;

interface

uses
  SysUtils, Windows, Messages, Classes, Graphics, Controls, Forms, Dialogs,
  unitComercial, UDm, Contnrs;

type
  IDao = interface(IInterface)
    ['{7F31CAEA-1C25-47DF-95FD-B14FB4CE5515}']
  end;

  INotaFiscalDao = interface(IDao)
    ['{8EC5C8AB-99F6-410E-ADD4-D73B5EEE279C}']
    procedure Excluir(const obj: TNotaFiscal);
    function Recuperar(id: Integer): TNotaFiscal;
    procedure Salvar(obj: TNotaFiscal);
    function ListarTodasNotas: TObjectList;
  end;


implementation

end.
