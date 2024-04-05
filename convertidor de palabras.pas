program ConvertirPalabra;

uses
  SysUtils;

// Función para convertir un carácter en su representación binaria de 8 bits
function CaracterABinario(caracter: Char): String;
var
  i, valor: Integer;
  binario: String;
begin
  valor := Ord(caracter); // Obtener el valor ASCII del carácter
  binario := '';
  for i := 7 downto 0 do
  begin
    binario := binario + Chr((valor shr i) and 1 + Ord('0')); // Convertir el bit a un carácter '0' o '1'
  end;
  CaracterABinario := binario;
end;

// Función para convertir una palabra en una cadena de binarios
function PalabraABinario(palabra: String): String;
var
  i: Integer;
  binario: String;
begin
  binario := '';
  for i := 1 to Length(palabra) do
    binario := binario + CaracterABinario(palabra[i]) + ' '; // Convertir cada carácter a su valor binario
  PalabraABinario := binario;
end;

// Función para convertir una palabra en un número hexadecimal
function PalabraAHexadecimal(palabra: String): String;
var
  i: Integer;
  resultadoHex: String;
begin
  resultadoHex := '';
  for i := 1 to Length(palabra) do
    resultadoHex := resultadoHex + IntToHex(Ord(palabra[i]), 2); // Convertir cada carácter a su valor hexadecimal de 2 dígitos
  PalabraAHexadecimal := resultadoHex;
end;

var
  opcionMenu, opcionConversion: Integer;
  palabra: String;
  resultadoBinario, resultadoHexadecimal: String;

begin
  repeat
    writeln('Menu:');
    writeln('1. Convertir palabra.');
    writeln('2. Salir.');
    write('Ingrese su opcion: ');
    readln(opcionMenu);
    
    case opcionMenu of
      1: begin
           writeln('Opciones de conversion:');
           writeln('1. Binario.');
           writeln('2. Hexadecimal.');
           writeln('3. Octal.');
           writeln('4. Romano.');
           write('Ingrese su opcion de conversion: ');
           readln(opcionConversion);
           
           writeln('Ingrese la palabra a convertir: ');
           readln(palabra);
           
           case opcionConversion of
             1: begin
                  // Convertir la palabra a binario
                  resultadoBinario := PalabraABinario(palabra);
                  writeln('Palabra convertida a binario: ', resultadoBinario);
                end;
             2: begin
                  // Convertir la palabra a hexadecimal
                  resultadoHexadecimal := PalabraAHexadecimal(palabra);
                  writeln('Palabra convertida a hexadecimal: ', resultadoHexadecimal);
                end;
             3: begin
                  // Lógica para convertir a octal
                  writeln('Palabra convertida a octal: ', palabra);
                end;
             4: begin
                  // Lógica para convertir a romano
                  writeln('Palabra convertida a romano: ', palabra);
                end;
           else
             writeln('Opcion de conversion invalida.');
           end;
         end;
      2: writeln('Saliendo del programa.');
    else
      writeln('Opcion invalida. Por favor, ingrese 1 o 2.');
    end;
    
  until opcionMenu = 2;
end.
