#!/bin/bash
# Script completo para instalación de X-OSINT en Kali Linux
# Automatiza clonado, creación de entorno virtual, instalación y manejo básico de errores

set -e  # Salir si hay error

echo "==== Inicio del script de instalación de X-OSINT ===="

# Variables
REPO_URL="https://github.com/megadose/xosint.git"
INSTALL_DIR="$HOME/X-osint"
VENV_DIR="$HOME/pillow-env"

echo "1. Limpiando instalaciones previas (si existen)..."
if [ -d "$INSTALL_DIR" ]; then
    echo "  - Eliminando carpeta $INSTALL_DIR"
    rm -rf "$INSTALL_DIR"
fi

if [ -d "$VENV_DIR" ]; then
    echo "  - Eliminando entorno virtual $VENV_DIR"
    rm -rf "$VENV_DIR"
fi

echo "2. Clonando el repositorio desde $REPO_URL..."
git clone "$REPO_URL" "$INSTALL_DIR"

echo "3. Creando entorno virtual en $VENV_DIR..."
python3 -m venv "$VENV_DIR"

echo "4. Activando entorno virtual..."
source "$VENV_DIR/bin/activate"

echo "5. Actualizando pip..."
pip install --upgrade pip

echo "6. Instalando dependencias desde requirements.txt..."
pip install -r "$INSTALL_DIR/requirements.txt"

echo "7. Instalación completada con éxito."
echo "Para ejecutar la herramienta:"
echo "  source $VENV_DIR/bin/activate"
echo "  cd $INSTALL_DIR"
echo "  ./xosint"

echo "==== Fin del script ===="
