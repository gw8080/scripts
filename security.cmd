SETLOCAL EnableExtensions
:loop
timeout 1
set EXE=chrome.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF NOT %%x == %EXE% (
netsh interface set interface "WiFi" disable
)
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF %%x == %EXE% (
netsh interface set interface "WiFi" enable
)
goto loop

