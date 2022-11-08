@echo off
REM if exist DEBUG.txt (
	REM if not defined _min_subprocess ((cmd /k set _min_subprocess=y ^& %0 %*) & exit )
	REM echo ################ IN DEBUG MODE ################
	REM echo.
REM )
REM SETLOCAL EnableDelayedExpansion ENABLEEXTENSIONS

REM WE ARE in MODBUILDER
set "_pPAK_LIST=pak_listDateTime.txt"
set _pMODBUILDERDirectory=!CD!

set /p _bMASTER_FOLDER_PATH=<MASTER_FOLDER_PATH.txt

set /p _gNMS_FOLDER=<NMS_FOLDER.txt
set _gNMS_PCBANKS_FOLDER=%_gNMS_FOLDER%\GAMEDATA\PCBANKS

del /q "%_pPAK_LIST%" 1>NUL 2>NUL

pushd "%_gNMS_PCBANKS_FOLDER%"
REM echo.^>^>^> Changed to !CD!

copy "%_bMASTER_FOLDER_PATH%MODBUILDER\PAK_LIST_CREATED.txt" 1>NUL 2>NUL
dir /O:-D /T:W /A:-D /B>>"%_pMODBUILDERDirectory%\%_pPAK_LIST%"
del /q "PAK_LIST_CREATED.txt" 1>NUL 2>NUL

popd
REM BACK in MODBUILDER

REM get first filename
Set /P _gFILE=<pak_listDateTime.txt

if "%_gFILE%" == "PAK_LIST_CREATED.txt" set _gNoNeedToCreatePAKlist=y

REM echo.
if defined _gNoNeedToCreatePAKlist (
	echo.^>^>^> NMS PAK file list is up-to-date, no need to re-create the list
	goto :CONTINUE
)

echo.^>^>^> The NMS PAK file list must be re-created...
del /q "pak_list.txt" 1>NUL 2>NUL
del /q "PAK_LIST_CREATED.txt" 1>NUL 2>NUL

:CONTINUE
REM echo.^>^>^> Changed to !CD!

:DONE
REM MUST GO BACK TO MASTER_FOLDER_PATH
REM cd ..
