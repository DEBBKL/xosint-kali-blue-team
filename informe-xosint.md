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

---

## 3. Problemas durante la instalación de dependencias

Al ejecutar pip install -r requirements.txt, aparecieron errores como:

- ModuleNotFoundError: No module named 'prompt_toolkit'
- OSError: [Errno 28] No space left on device

Diagnóstico: aunque el sistema reportaba espacio libre, la partición /tmp y espacio temporal de pip se llenaban, causando fallos.

---

## 4. Diagnóstico del error "No space left on device"

Se usaron comandos:

```bash
df -h
df -i
sudo du -sh ~/SoftEtherVPN_Stable
sudo du -sh ~/SoftEtherVPN_Stable/.*
```

Resultado: /tmp sin espacio y carpetas pesadas con archivos innecesarios.

---

## 5. Soluciones aplicadas

### Eliminación de carpetas pesadas no necesarias:

```bash
rm -rf ~/SoftEtherVPN_Stable
```

### Redimensionar partición /dev/sda1 con gparted para aumentar espacio disponible.

Confirmar espacio en /tmp y permisos correctos.

### Recrear entorno virtual y reinstalar dependencias:

```bash
rm -rf ~/pillow-env
python3 -m venv ~/pillow-env
source ~/pillow-env/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
```

---

## 6. Instalación final exitosa

Finalmente, se ejecutó:

```bash
./xosint
```

Herramienta funcionando correctamente para análisis OSINT.

---

## Conclusiones

- El error principal fue falta de espacio en el área temporal, no detectada en el disco raíz.

- Mantener limpio /tmp y gestionar permisos de entorno virtual es crítico.

- Documentar paso a paso facilita replicar y solucionar incidencias.

---

## Responsable: Analista Blue Team
Fecha: Junio 2025
