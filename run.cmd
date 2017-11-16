@echo off
setlocal EnableDelayedExpansion
set programLocation=C:\Program Files (x86)\WinSCP\WinSCP.com
set /p DirPath=Enter Directory: 
set defaultLocation=D:\%DirPath%
set /p DownloadPath=Download Location (%defaultLocation%): 

if "%DownloadPath%"=="" (
	echo Setting download path ...
	set "DownloadPath=%defaultLocation%"
	)

if EXIST "%DownloadPath%" (
	echo Download directory already exists ...
	) ELSE (
	echo Creating directory ... 
	mkdir %DownloadPath%
	)

"%programLocation%" /ini=nul /script=script.txt /log="D:\logs\download.log"


pause