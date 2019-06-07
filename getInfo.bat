@echo off
echo.
echo "[ SYSTEM ]: %COMPUTERNAME%"
echo. 
echo "Get System Information..."
msinfo32 /nfo %cd%\profiles\%COMPUTERNAME%.nfo
echo.
echo "Get System Updates for system..."
Powershell.exe -executionpolicy Unrestricted -File %cd%\getUpdates.ps1 > %cd%\profiles\%COMPUTERNAME%-updates.txt
echo "Get System Software..."
Powershell.exe -executionpolicy Unrestricted -File %cd%\getSoftware.ps1 > %cd%\profiles\%COMPUTERNAME%-software.txt
echo.
echo "Get System EventLogs..."
Powershell.exe -executionpolicy Unrestricted -File %cd%\getEventLogs.ps1 > %cd%\profiles\%COMPUTERNAME%-eventlogs.txt
echo.
echo "Information Gather Completed."
pause

