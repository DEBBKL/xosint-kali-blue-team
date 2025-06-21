# X-OSINT en Kali Linux - Guía y Script de Instalación para Blue Team

Documentación profesional sobre la instalación, resolución de incidencias comunes y ejecución de X-OSINT en un entorno controlado de ciberseguridad Blue Team.

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

## Índice

1. [Descripción del proyecto](#descripción-del-proyecto)
2. [Requisitos](#requisitos)
3. [Estructura del repositorio](#estructura-del-repositorio)
4. [Instrucciones de instalación](#instrucciones-de-instalación)
5. [Solución de errores comunes](#solución-de-errores-comunes)
6. [Uso de X-OSINT](#uso-de-x-osint)
7. [Contacto](#contacto)

---

## Descripción del proyecto

Este repositorio documenta el proceso de instalación de **X-OSINT** en **Kali Linux**, herramienta utilizada en investigaciones OSINT sobre direcciones IP, correos electrónicos y dominios.  
Se detallan errores frecuentes como `No space left on device`, conflictos con entornos virtuales y cómo resolverlos paso a paso.  
Una guía útil para analistas de ciberseguridad que deseen replicar el entorno de trabajo en auditorías o investigaciones forenses.

---

## Requisitos

- Kali Linux actualizado con al menos 80 GB de espacio en disco.
- Python 3.13 y pip funcional.
- Git instalado.
- Permisos sudo.
- Conexión a internet para instalación de paquetes.

---

## Estructura del repositorio

```bash
/
├── README.md                 # Guía principal con instrucciones
├── informe-xosint.md         # Informe detallado del proceso con resolución de errores
├── script-instalacion.sh     # Script automatizado de instalación
├── requirements.txt          # Dependencias necesarias para el entorno virtual
```

---

## Instrucciones de instalación

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/DEBBKL/xosint-kali-blue-team.git
   cd xosint-kali-blue-team
   ```
   
2. Da permisos de ejecución al script:

   ```bash
   chmod +x install-xosint.sh
   ```

## Ejecutar el script de instalación con privilegios sudo:

   ```bash
   sudo ./install-xosint.sh
   ```
   
## Uso de X-OSINT

Activar el entorno virtual y ejecutar X-OSINT:

   ```bash
   source ~/pillow-env/bin/activate
   cd ~/X-osint
   ./xosint
   ```

---

## Solución de errores comunes

Durante la instalación pueden surgir errores relacionados con:

- Falta de espacio en disco temporal (/tmp): Se recomienda liberar espacio o redimensionar particiones.
- Permisos insuficientes: Ejecutar el script y pip con sudo o dentro de un entorno virtual adecuado.
- Errores de dependencias Python: Asegurarse de usar pip actualizado y entorno virtual limpio.

Para detalles y soluciones paso a paso, consulta el archivo informe-xosint.md.


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
