@echo off
title Limpeza de Arquivos temporarios
echo Limpando arquivos...
del /s /q %temp%\* 
rd /s /q %temp%
echo Limpeza Concluida!!
pause
