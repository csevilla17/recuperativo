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
