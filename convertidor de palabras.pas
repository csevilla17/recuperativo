program ConvertirPalabra;

uses
  SysUtils;

var
  opcionMenu, opcionConversion: Integer;
  palabra: String;

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
                  // Lógica para convertir a binario
                  writeln('Palabra convertida a binario: ', palabra);
                end;
             2: begin
                  // Lógica para convertir a hexadecimal
                  writeln('Palabra convertida a hexadecimal: ', palabra);
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
