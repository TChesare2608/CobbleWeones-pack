@echo off
echo [DESARROLLO] Refrescando pack...
call packwiz refresh

echo [DESARROLLO] Subiendo cambios a GitHub...
git add .
git commit -m "Actualizacion de modpack desde desarrollo"
git push origin main

echo ==================================================
echo ¡Todo sincronizado!
echo ==================================================
pause