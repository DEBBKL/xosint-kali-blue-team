# Guía Profesional: Instalación y Resolución de Incidencias de X-OSINT en Kali Linux

Este repositorio ofrece una guía detallada para la instalación de X-OSINT en Kali Linux, incluyendo la resolución de errores comunes y mejores prácticas para entornos Blue Team.

## 📘 Contenido

- **informe-xosint.md**: Documento técnico con el procedimiento paso a paso.
- **install-xosint.sh**: Script automatizado para la instalación y configuración de X-OSINT.

## 🚀 Instalación

1. Clonar el repositorio:

   ```bash
   git clone https://github.com/DEBBKL/xosint-kali-blue-team.git
   cd xosint-kali-blue-team
   ```

2. Ejecutar el script de instalación:

   ```bash
   chmod +x install-xosint.sh
   ./install-xosint.sh
   ```
3. Activar el entorno virtual y ejecutar X-OSINT:

   ```bash
   source ~/pillow-env/bin/activate
   cd ~/X-osint
   ./xosint
   ```

---

## 🛠️ Requisitos


- Kali Linux actualizado.

- Python 3.13 o superior.

- pip instalado.

- Git instalado.

- Espacio en disco suficiente (mínimo 80 GB recomendados).

---

## 📄 Informe Técnico

Para una comprensión detallada del proceso de instalación y resolución de incidencias, consulte el archivo informe-xosint.md.

---

## 🧩 Recursos adicionales

- X-OSINT en GitHub

- Documentación de Kali Linux
