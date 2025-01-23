@echo off
:: Verifica si se pasó un prefijo como argumento
if "%1"=="" (
    echo No se proporciono un prefijo.
    set /p prefix=Por favor, escribe un prefijo: 
) else (
    set prefix=%1
)

:: Renombra los archivos en la carpeta actual, excluyendo el archivo .bat
echo Renombrando archivos con el prefijo "%prefix%"
for %%F in (*.*) do (
    if /i not "%%~xF"==".bat" ren "%%F" "%prefix% %%~nxF"
)

:: Cierra automáticamente el CMD después de ejecutar
exit
