program GuardarReporte;

uses
  SysUtils;

type
  Reporte = record
    id: integer;
    titulo: string;
    categoria: string;
    contenido: string;
    Fecha: string;
    Status: boolean;
  end;

procedure GuardarReporteEnArchivo(reporte: Reporte);
var
  archivo: text;
  nombreArchivo: string;
begin
  // Crear el nombre del archivo combinando el id del reporte y la extensión .txt
  nombreArchivo := 'C:\carpeta\' + IntToStr(reporte.id) + '.txt';
  
  // Verificar si el archivo ya existe
  if FileExists(nombreArchivo) then
    writeln('Ya existe un reporte con el id ', reporte.id)
  else
  begin
    // Si el archivo no existe, abrirlo para escritura
    assign(archivo, nombreArchivo);
    rewrite(archivo);
    
    // Escribir los datos del reporte en el archivo
    writeln(archivo, 'ID: ', reporte.id);
    writeln(archivo, 'Título: ', reporte.titulo);
    writeln(archivo, 'Categoría: ', reporte.categoria);
    writeln(archivo, 'Contenido: ', reporte.contenido);
    writeln(archivo, 'Fecha: ', reporte.Fecha);
    writeln(archivo, 'Status: ', reporte.Status);
    
    // Cerrar el archivo
    close(archivo);
    
    writeln('El reporte con id ', reporte.id, ' ha sido guardado exitosamente.');
  end;
end;

var
  miReporte: Reporte;

begin
  miReporte.id := 1;
  miReporte.titulo := 'Ejemplo de reporte';
  miReporte.categoria := 'Categoria1';
  miReporte.contenido := 'Contenido del reporte';
  miReporte.Fecha := '05/04/2024';
  miReporte.Status := true;
  GuardarReporteEnArchivo(miReporte);

  readln;
end.
