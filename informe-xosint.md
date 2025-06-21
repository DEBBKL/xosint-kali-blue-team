# Informe Profesional de Procedimiento de Instalación y Resolución de Incidencias: X-OSINT en Kali Linux

---

## Objetivo del documento

Documentar de forma detallada el procedimiento seguido para la instalación de X-OSINT en Kali Linux, incluyendo errores encontrados, análisis y soluciones aplicadas.

---

## Esquema del procedimiento

1. Requisitos previos  
2. Clonado del repositorio y preparación del entorno virtual  
3. Problemas durante la instalación de dependencias  
4. Diagnóstico del error "No space left on device"  
5. Acciones para liberar espacio y ajustar particiones  
6. Instalación final exitosa de X-OSINT  

---

## 1. Requisitos previos

- Kali Linux actualizado (con al menos 80 GB de disco).  
- Python 3.13 y pip operativo.  
- Git instalado.  
- Acceso sudo.

---

## 2. Clonado del repositorio y preparación del entorno

```bash
cd ~
git clone https://github.com/megadose/xosint.git X-osint
cd X-osint
python3 -m venv ~/pillow-env
source ~/pillow-env/bin/activate
```
