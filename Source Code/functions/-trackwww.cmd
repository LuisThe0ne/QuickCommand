@echo off
color 0a
echo Welche Website wollen sie zurueckverfolgen?
set /P Website=Website:
tracert %Website%
pause