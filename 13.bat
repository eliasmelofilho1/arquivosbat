@echo off
title Gerenciador de usuarios
color 0A

:menu
cls
echo Gerenciador de usuarios
echo 1-Criar Usuario
echo 2-Listar Usuarios
echo 3- Remover Usuario
echo 4-Sair
echo +++++++++++++++++
set /p opcao=Escolha um numero:

if %opcao%==1 goto Adicionar
if %opcao%==2 goto Listar
if %opcao%==3 goto Remover
if %opcao%==4 exit
goto menu

:Adicionar
cls
set /p nome=Nome do usuario:
set /p senha=senha:
net user %nome% %senha% /add
echo [%date% %time%] Usuario %nome% criado >> logUser.txt
echo Usuario criado!!!
pause
goto menu

:Listar
cls
echo Usuarios cadastrados:
net user
pause
goto menu

:Remover
cls
set /p nome=Usuario que sera removido:
set /p conf=Tem certeza que quer remover? (s/n):
if /I %conf%==s (
    net user %nome% /delete
    echo [%date% %time%] Usuario %nome% removido >> logUser.txt
echo Usuario removido!!!
) else (
    echo Operacao Cancelada!!!!
)
pause
goto menu
