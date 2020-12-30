@echo off
color 0a



IF "%~1" == "/TABLE" (
     systeminfo /FO CSV  > %systemdrive%\users\%USERNAME%\Desktop\systeminformation.txt
	 goto ENDE
)

IF "%~1" == "/CSV" (
    systeminfo /FO CSV  > %systemdrive%\users\%USERNAME%\Desktop\systeminformation.txt
	goto ENDE
) 

   
IF "%~1" == "/LIST" (
      systeminfo /FO LIST  > %systemdrive%\users\%USERNAME%\Desktop\systeminformation.txt
	  goto ENDE
) ELSE (

	systeminfo > %systemdrive%\users\%USERNAME%\Desktop\systeminformation.txt
	
)

:ENDE
echo Exported Syysteminfo to the Desktop!


pause