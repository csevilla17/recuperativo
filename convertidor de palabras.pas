program ConvertirPalabra;

uses
  SysUtils;

var
  opcion: integer;
  palabra: string;

function DecimalToBinary(decimal: integer): string;
begin
  if decimal > 0 then
    Result := DecimalToBinary(decimal div 2) + IntToStr(decimal mod 2)
  else
    Result := '';
end;

procedure ConvertirPalabra;
var
  i: integer;
  decimal: integer;
begin
  Write('Ingresa una palabra: ');
  ReadLn(palabra);
  
  WriteLn('Opciones de conversión:');
  WriteLn('1. Binario');
  WriteLn('2. Hexadecimal');
  WriteLn('3. Octal');
  WriteLn('4. Romano');
  Write('Elige una opción: ');
  ReadLn(opcion);
  
  case opcion of
    1: begin
         // Convertir a binario
         for i := 1 to Length(palabra) do begin
           decimal := Ord(palabra[i]);
           Write(DecimalToBinary(decimal), ' ');
         end;
         WriteLn;
       end;
    2: begin
         // Convertir a hexadecimal
         for i := 1 to Length(palabra) do begin
           decimal := Ord(palabra[i]);
           Write(IntToHex(decimal, 2), ' ');
         end;
         WriteLn;
       end;
    3: begin
         // Convertir a octal
         for i := 1 to Length(palabra) do begin
           decimal := Ord(palabra[i]);
           Write(OctStr(decimal), ' ');
         end;
         WriteLn;
       end;
    4: begin
         // Convertir a romano
         // Aquí se podría agregar una función para convertir a números romanos si es necesario
         WriteLn('Funcionalidad para convertir a números romanos aún no implementada.');
       end;
  else
    WriteLn('Opción no válida. Por favor, elige una opción del 1 al 4.');
  end;
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
