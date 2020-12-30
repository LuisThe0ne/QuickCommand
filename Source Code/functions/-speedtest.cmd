@echo off
color 0a
if exist %systemdrive%\users\%username%\documents\QuickCommand\speedtest.exe (
    goto here
) else (
    goto nothere
)


:here
%systemdrive%\users\%username%\documents\QuickCommand\speedtest.exe
%windir%\system32\cmd.exe /k "%windir%\QuickCommand\blank.cmd"
:nothere
%windir%\QuickCommand\downloadspeedtest.cmd
