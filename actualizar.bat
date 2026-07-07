@echo off
echo [DESARROLLO] Refrescando pack...
call packwiz refresh

echo [DESARROLLO] Subiendo cambios a GitHub...
git add .
git commit -m "Actualizacion de modpack desde desarrollo"
git push origin main

echo [DESARROLLO] Enviando orden de actualizacion al servidor...
:: Si el servidor esta en la misma PC por ahora, solo llamamos al otro bat.
:: En el futuro, aqui pondras: ssh usuario@ip-servidor "C:\Ruta\servidor\actualizar_srv.bat"
call "C:\Users\Chesa\OneDrive\Desktop\SELVELPOLQUEMON\actualizarsv.bat"

echo ==================================================
echo ¡Todo sincronizado!
echo ==================================================
pause