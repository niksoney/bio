@echo off
title Atualizar Site no GitHub

echo ========================================
echo      ATUALIZANDO O SITE NO GITHUB
echo ========================================
echo.

cd /d "C:\Users\nikso\bio"

echo Verificando alteracoes...
git status

echo.
set /p msg=Digite uma descricao da atualizacao: 

if "%msg%"=="" set msg=Atualizacao do site

echo.
echo Adicionando arquivos...
git add .

echo.
echo Criando commit...
git commit -m "%msg%"

echo.
echo Enviando para o GitHub...
git push origin main

echo.
echo ========================================
echo Processo finalizado!
echo ========================================
pause
