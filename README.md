# X-OSINT en Kali Linux - Guía y Script de Instalación para Blue Team

## Descripción

Guía profesional paso a paso para la instalación de X-OSINT en Kali Linux. Incluye solución detallada a
errores comunes como “No space left on device”, problemas con permisos en entornos virtuales de
Python, y pasos de diagnóstico y mitigación. Ideal para analistas de ciberseguridad del equipo Blue
Team que busquen documentar y replicar entornos de trabajo OSINT eficaces.

X-OSINT es una herramienta que permite recopilar información de direcciones IP, dominios, correos electrónicos y otros indicadores relevantes para análisis de ciberseguridad.

---

## Contenido del repositorio

- `install-xosint.sh`: Script bash que automatiza la instalación de X-OSINT y sus dependencias en Kali Linux.
- `informe-xosint.md`: Informe profesional con el procedimiento detallado de instalación, problemas comunes y soluciones aplicadas.
- `LICENSE`: Licencia MIT para uso y distribución libre.

```
   /
   ├── README.md
   ├── informe-xosint.md
   ├── script-instalacion.sh
   ├── requirements.txt
```

---

## Requisitos previos

- Sistema operativo Kali Linux actualizado (se recomienda última versión estable).
- Al menos 80 GB de espacio libre en disco.
- Python 3.13 o superior instalado.
- Acceso con privilegios `sudo`.
- Conexión a Internet para descargar dependencias.

---

## Uso

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/DEBBKL/xosint-kali-blue-team.git
   cd xosint-kali-blue-team
   ```
   
2. Da permisos de ejecución al script:

   ```bash
   chmod +x install-xosint.sh
   ```

3. Ejecutar el script de instalación con privilegios sudo:

   ```bash
   sudo ./install-xosint.sh
   ```
   
4. Activar el entorno virtual y ejecutar X-OSINT:

   ```bash
   source ~/pillow-env/bin/activate
   cd ~/X-osint
   ./xosint
   ```

---

## Problemas comunes y soluciones

Durante la instalación pueden surgir errores relacionados con:

- Falta de espacio en disco temporal (/tmp): Se recomienda liberar espacio o redimensionar particiones.
- Permisos insuficientes: Ejecutar el script y pip con sudo o dentro de un entorno virtual adecuado.
- Errores de dependencias Python: Asegurarse de usar pip actualizado y entorno virtual limpio.

Para detalles y soluciones paso a paso, consulta el archivo informe-xosint.md.

## Requisitos


- Kali Linux actualizado.

- Python 3.13 o superior.

- pip instalado.

- Git instalado.

- Espacio en disco suficiente (mínimo 80 GB recomendados).

---

## Informe Técnico

Para una comprensión detallada del proceso de instalación y resolución de incidencias, consulte el archivo informe-xosint.md.

---

## Recursos adicionales

- X-OSINT en GitHub

- Documentación de Kali Linux

---

## Contacto

Para preguntas o sugerencias, puedes contactarme vía GitHub Issues o por correo electrónico.
