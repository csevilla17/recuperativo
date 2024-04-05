program ConvertirPalabra;

uses
  SysUtils;

var
  opcion: integer;
  palabra: string;

procedure ConvertirPalabra;
var
  i: integer;
begin
  Write('Ingresa una palabra: ');
  ReadLn(palabra);
  
  // Convertir la palabra a mayúsculas
  for i := 1 to Length(palabra) do
    palabra[i] := UpCase(palabra[i]);
  
  WriteLn('La palabra convertida es: ', palabra);
end;

begin
  repeat
    // Mostrar opciones al usuario
    WriteLn('1. Convertir palabra');
    WriteLn('2. Salir');
    Write('Elige una opción: ');
    ReadLn(opcion);
    
    case opcion of
      1: ConvertirPalabra;
      2: WriteLn('Saliendo del programa...');
    else
      WriteLn('Opción no válida. Por favor, elige 1 o 2.');
    end;
    
    WriteLn;
  until opcion = 2;
end.
