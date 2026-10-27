@echo off
setlocal
set "ARCHIVE=%~dp0upload\VintedGeek-Windows-x64-parts.zip"
set "OUTPUT=%~dp0VintedGeek"

if exist "%ProgramFiles%\7-Zip\7z.exe" (
  "%ProgramFiles%\7-Zip\7z.exe" x "%ARCHIVE%" -o"%OUTPUT%" -y
  goto done
)
if exist "%ProgramFiles%\WinRAR\WinRAR.exe" (
  "%ProgramFiles%\WinRAR\WinRAR.exe" x -ibck -y "%ARCHIVE%" "%OUTPUT%\"
  goto done
)

echo Nie znaleziono 7-Zip ani WinRAR.
echo Zainstaluj 7-Zip i uruchom ten plik ponownie.
start "" "https://www.7-zip.org/download.html"
pause
exit /b 1

:done
echo.
echo Gotowe. Uruchom VintedGeek\VintedGeek.exe
pause
