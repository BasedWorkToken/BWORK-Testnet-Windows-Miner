@echo off

echo "I am sleeping for 3 seconds before launch."

timeout /t 3 /nobreak >nul

@echo off
pushd %~dp0

for %%X in (dotnet.exe) do (set FOUND=%%~$PATH:X)
if defined FOUND (goto dotNetFound) else (goto dotNetNotFound)

:dotNetNotFound
echo .NET 6.0 Core is not found or not installed,
echo download .NET 6.0 and install from https://www.microsoft.com/net/download/windows/run
goto end


:dotNetFound
:startMiner
BasedWorkToken.exe

if %errorlevel% EQU 22 (
  goto startMiner
)
pause

:end
echo Run script again if u just installed things
pause
echo Run script again if u just installed things
pause
