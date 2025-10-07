@echo off
title Backup de arquivos
set origem=C:\Users\201461\Documents\threads
set destino=C:\Users\201461\downloads
echo Processo de Backup em andamento
xcopy %origem%\*.* %destino% /C
echo Backup Realizado
pause 