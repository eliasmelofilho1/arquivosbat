@echo off
title sistema de entrada
color 0A

set usuario=admin
set senha=46573
set tentativa=0

:Login
cls
if %tentativa% GEQ 3 (
    echo Muitas tentativas realizadas!!!
    pause
    exit    
)

set /p user=usuario: 
set /p pass=senha:

if "%user%"=="%usuario%" if "%pass%"=="%senha%" goto EntradaCorreta

echo usuario ou senha incorreta!!!
set /a tentativa+=1
timeout /t 2 >nul
goto Login

:EntradaCorreta
echo Entrada Concedida!!!
pause