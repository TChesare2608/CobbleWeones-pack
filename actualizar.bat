@echo off
echo Iniciando proceso de actualizacion...
call packwiz refresh

echo.
echo ==================================================
echo Archivos detectados para subir:
echo ==================================================
:: Esto te mostrará la lista de lo que cambió
git status

echo.
echo ¿Quieres proceder con el commit y subir los cambios?
pause

git add .
git commit -m "Auto-actualizacion: Nuevos cambios"
git push origin main

echo.
echo ==================================================
echo ¡Cambios subidos a GitHub!
echo ==================================================
pause