@echo off
echo speedtest.exe not detected.
set /P c=Do you want to downlad it[Y/N]?
if /I "%c%" EQU "Y" goto downloadtest
if /I "%c%" EQU "N"  %windir%\system32\cmd.exe /k "%windir%\QuickCommand\blank.cmd"

:downloadtest
setlocal
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto over8
if "%version%" == "6.3" goto over8
if "%version%" == "6.2" goto over8
if "%version%" == "6.1" goto under8
if "%version%" == "6.0" goto under7
if "%version%" == "5.2" goto under7
if "%version%" == "5.1" goto under7
if "%version%" == "5.0" goto under7
if "%version%" == "4.10" goto under7
endlocal
:over8

md %systemdrive%\users\%username%\documents\QuickCommand
@@powershell -noprofile -command Invoke-WebRequest https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-win64.zip -Outfile $env:systemdrive\users\$env:UserName\documents\QuickCommand\speedtest.zip

goto exist

:under8
echo Your Pc has Windows 7!
echo In not all Versions of Windows 7 Powershell is supported.
echo You have to download Speedtest CLI from speedtest.net manually.
set /P c=Do you want to downlad it(after download please go back to this window)[Y/N]?
if /I "%c%" EQU "Y" goto download7
if /I "%c%" EQU "N"  %windir%\system32\cmd.exe /k "%windir%\QuickCommand\blank.cmd"
:download7
start https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-win64.zip
md %systemdrive%\users\%username%\documents\QuickCommand
echo Please rename the downladed File to speedtest.zip and copy it to Documents\QuickCommand
:exist
if exist %systemdrive%\users\%username%\documents\QuickCommand\speedtest.zip (
    setlocal
cd /d %~dp0
Call :UnZipFile "%systemdrive%\users\%username%\documents\QuickCommand\" "%systemdrive%\users\%username%\documents\QuickCommand\speedtest.zip"
exit /b

:UnZipFile <ExtractTo> <newzipfile>
set vbs="%temp%\_.vbs"
if exist %vbs% del /f /q %vbs%
>%vbs%  echo Set fso = CreateObject("Scripting.FileSystemObject")
>>%vbs% echo If NOT fso.FolderExists(%1) Then
>>%vbs% echo fso.CreateFolder(%1)
>>%vbs% echo End If
>>%vbs% echo set objShell = CreateObject("Shell.Application")
>>%vbs% echo set FilesInZip=objShell.NameSpace(%2).items
>>%vbs% echo objShell.NameSpace(%1).CopyHere(FilesInZip)
>>%vbs% echo Set fso = Nothing
>>%vbs% echo Set objShell = Nothing
cscript //nologo %vbs%
if exist %vbs% del /f /q %vbs%
echo Plesae type -speedtest again.
pause
%windir%\system32\cmd.exe /k "%windir%\QuickCommand\blank.cmd"

) else (
    goto exist
)

:under7
for /f "tokens=2 delims=," %%i in ('wmic os get caption^,version /format:csv') do set os=%%i
echo Your PC has %os% please upgrade to Windows 7 or higher to use speedtest.
pause
 %windir%\system32\cmd.exe /k "%windir%\QuickCommand\blank.cmd"


 @@powershell -noprofile -noexit -command Invoke-WebRequest https://bintray.com/ookla/download/download_file?file_path=ookla-speedtest-1.0.0-win64.zip -Outfile $env:systemdrive\users\$env:UserName\documents\QuickCommand\speedtest.zip