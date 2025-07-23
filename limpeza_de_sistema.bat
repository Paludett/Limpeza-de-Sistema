@echo off
title Limpeza de Arquivos Temporários
echo =======================================
echo      Limpando arquivos temporários
echo =======================================

:: Limpa a pasta Temp do usuário
echo Limpando %TEMP% ...
del /f /s /q "%TEMP%\*.*"
for /d %%i in ("%TEMP%\*") do rd /s /q "%%i"

:: Limpa a pasta Temp do sistema
echo Limpando C:\Windows\Temp ...
del /f /s /q "C:\Windows\Temp\*.*"
for /d %%i in ("C:\Windows\Temp\*") do rd /s /q "%%i"


:: Limpa a pasta Prefetch
echo Limpando C:\Windows\Prefetch ...
del /f /s /q "C:\Windows\Prefetch\*.*"

:: Limpa a lixeira
echo Limpando Lixeira ...
powershell.exe -NoProfile -Command "Clear-RecycleBin -Force"

echo.
echo Limpeza concluida!
pause
