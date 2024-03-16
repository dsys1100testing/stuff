@echo off
mkdir %TEMP%\nppds10
cd /d %TEMP%\nppds10\
for /f "tokens=1,* delims=:" %%A in ('curl -ks https://api.github.com/repos/notepad-plus-plus/notepad-plus-plus/releases/latest ^| find ".Installer.x64.exe"') do (curl.exe -skOL %%B)
for /r "." %%a in (*.exe) do start "" "%%~fa" /S
mkdir %appdata%\Notepad++
curl -kso %appdata%\Notepad++\config.xml https://raw.githubusercontent.com/dsys1100/stuff/main/Windows/nppconfig.xml