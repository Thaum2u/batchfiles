:: Written by Tom Potter - Last updated September 24, 2021

@echo off
title Delete And Rebuild AVID Databases...
cls

rem  The desktop shortcut that starts this batchfile has an 'argument' that tells
rem  it which computer it will be running on. The 'argument' can also be manually 
rem  changed to a certain computer by changing the below 'set LIBRARY=' instruction 
rem  to the number of the computer you want it run on.
rem  
rem  Example:  set LIBRARY=4  results in it only effecting the Library 4 files.
rem
rem  Leaving it set to:  set LIBRARY=%1  means it will set it using the first 
rem  'argument' passed to it in the shortcut.
rem  
rem  (EXAMPLE: "C:\Users\LIBRARY1\Documents\BatchFiles\REBUILD AVID DB.bat" 4 )
rem
rem  At the end of the above line is the # that tells it which computer to run 
rem  on. '4' in this case, as in Library 4

rem --------------------------------------------

set LIBRARY=%1

rem --------------------------------------------

if "%LIBRARY%"=="" goto missing

:MAINMENU
echo.
echo          ====== REBUILD AVID DATABASES =======
echo            (For The Library %LIBRARY% Computer Only)
echo          -------------------------------------
echo.
echo          1. Delete the DB in ODD FOOTAGE
echo.
echo          2. Delete the DB in ODD RENDERS
echo.
echo          3. Delete the DB in EVEN FOOTAGE
echo.
echo          4. Delete the DB in EVEN RENDERS
echo.
echo          T  Test For Access To The DB Folders
echo.
echo          P  ick me!  Pick Me!  Pick Me!
echo.
echo          -------------------------------------
echo          =========[Press 'Q' to QUIT]=========
echo.
echo     WARNING: This should cause AVID to rebuild the
echo     selected  database/s,  which  might  take many 
echo     minutes to accomplish. AVID will be unavailable
echo     on this computer while it is rebuilding, so make 
echo     sure you have time to wait before doing this...
echo.
echo.
set INPUT=
set /P INPUT=What is your choice: 

if /I '%INPUT%'=='T' goto TEST
if /I '%INPUT%'=='t' goto TEST
if /I '%INPUT%'=='Q' goto QUIT
if /I '%INPUT%'=='q' goto QUIT
if /I '%INPUT%'=='E' goto EDIT
if /I '%INPUT%'=='e' goto EDIT
if /I '%INPUT%'=='P' goto BART
if /I '%INPUT%'=='p' goto BART
if /I '%INPUT%'=='1' goto ODDFOOTAGE
if /I '%INPUT%'=='2' goto ODDRENDERS
if /I '%INPUT%'=='3' goto EVEFOOTAGE
if /I '%INPUT%'=='4' goto EVNRENDERS

cls
echo.
echo          =========== INVALID INPUT ===========
echo          -------------------------------------
echo          Please select a number from the Menu!
echo          Select a # 1-4, or select 'Q' to quit,
echo          then press the ENTER key.
echo          -------------------------------------
echo          =====[Press ANY KEY to Continue]=====
PAUSE > NUL
goto MAINMENU

:ODDFOOTAGE
echo.
echo   SECOND CHANCE: Are you sure? [Press CTRL-C to abort]
echo.
pause
if "%LIBRARY%"=="1" del "U:\Avid MediaFiles\MXF\LIBRARY1.1\msmMMOB.mdb"
if "%LIBRARY%"=="1" del "U:\Avid MediaFiles\MXF\LIBRARY1.1\msmFMID.pmr"

if "%LIBRARY%"=="2" del "U:\Avid MediaFiles\MXF\LIBRARY2.1\msmMMOB.mdb"
if "%LIBRARY%"=="2" del "U:\Avid MediaFiles\MXF\LIBRARY2.1\msmFMID.pmr"
if "%LIBRARY%"=="2" del "U:\Avid MediaFiles\MXF\LIBRARY2.2\msmMMOB.mdb"
if "%LIBRARY%"=="2" del "U:\Avid MediaFiles\MXF\LIBRARY2.2\msmFMID.pmr"
if "%LIBRARY%"=="2" del "U:\Avid MediaFiles\MXF\LIBRARY2.3\msmMMOB.mdb"
if "%LIBRARY%"=="2" del "U:\Avid MediaFiles\MXF\LIBRARY2.3\msmFMID.pmr"

if "%LIBRARY%"=="4" del "U:\Avid MediaFiles\MXF\LIBRARY-4.1\msmMMOB.mdb"
if "%LIBRARY%"=="4" del "U:\Avid MediaFiles\MXF\LIBRARY-4.1\msmFMID.pmr"
if "%LIBRARY%"=="4" del "U:\Avid MediaFiles\MXF\LIBRARY-4.2\msmMMOB.mdb"
if "%LIBRARY%"=="4" del "U:\Avid MediaFiles\MXF\LIBRARY-4.2\msmFMID.pmr"
cls
echo.       
echo  The ODD FOOTAGE DB has been deleted for Library %LIBRARY%...
goto MAINMENU

:ODDRENDERS
echo.
echo   SECOND CHANCE: Are you sure? [Press CTRL-C to abort]
echo.
pause

if "%LIBRARY%"=="1" del "T:\Avid MediaFiles\MXF\LIBRARY1.1\msmMMOB.mdb"
if "%LIBRARY%"=="1" del "T:\Avid MediaFiles\MXF\LIBRARY1.1\msmFMID.pmr"

if "%LIBRARY%"=="2" del "T:\Avid MediaFiles\MXF\LIBRARY2.1\msmMMOB.mdb"
if "%LIBRARY%"=="2" del "T:\Avid MediaFiles\MXF\LIBRARY2.1\msmFMID.pmr"

if "%LIBRARY%"=="4" del "T:\Avid MediaFiles\MXF\LIBRARY-4.1\msmMMOB.mdb"
if "%LIBRARY%"=="4" del "T:\Avid MediaFiles\MXF\LIBRARY-4.1\msmFMID.pmr"
cls
echo.       
echo  The ODD RENDERS DB has been deleted for Library %LIBRARY%...
goto MAINMENU

:EVNFOOTAGE
echo.
echo   SECOND CHANCE: Are you sure? [Press CTRL-C to abort]
echo.
pause

if "%LIBRARY%"=="1" del "X:\Avid MediaFiles\MXF\LIBRARY1.1\msmMMOB.mdb"
if "%LIBRARY%"=="1" del "X:\Avid MediaFiles\MXF\LIBRARY1.1\msmFMID.pmr"

if "%LIBRARY%"=="2" del "X:\Avid MediaFiles\MXF\LIBRARY2.1\msmMMOB.mdb"
if "%LIBRARY%"=="2" del "X:\Avid MediaFiles\MXF\LIBRARY2.1\msmFMID.pmr"
if "%LIBRARY%"=="2" del "X:\Avid MediaFiles\MXF\LIBRARY2.2\msmMMOB.mdb"
if "%LIBRARY%"=="2" del "X:\Avid MediaFiles\MXF\LIBRARY2.2\msmFMID.pmr"
if "%LIBRARY%"=="2" del "X:\Avid MediaFiles\MXF\LIBRARY2.3\msmMMOB.mdb"
if "%LIBRARY%"=="2" del "X:\Avid MediaFiles\MXF\LIBRARY2.3\msmFMID.pmr"
if "%LIBRARY%"=="2" del "X:\Avid MediaFiles\MXF\LIBRARY2.4\msmMMOB.mdb"
if "%LIBRARY%"=="2" del "X:\Avid MediaFiles\MXF\LIBRARY2.4\msmFMID.pmr"

if "%LIBRARY%"=="4" del "X:\Avid MediaFiles\MXF\LIBRARY-4.1\msmMMOB.mdb"
if "%LIBRARY%"=="4" del "X:\Avid MediaFiles\MXF\LIBRARY-4.1\msmFMID.pmr"
if "%LIBRARY%"=="4" del "X:\Avid MediaFiles\MXF\LIBRARY-4.2\msmMMOB.mdb"
if "%LIBRARY%"=="4" del "X:\Avid MediaFiles\MXF\LIBRARY-4.2\msmFMID.pmr"
cls
echo.       
echo  The EVEN FOOTAGE DB has been deleted for Library %LIBRARY%...
goto MAINMENU

:EVNRENDERS
echo.
echo   SECOND CHANCE: Are you sure? [Press CTRL-C to abort]
echo.
pause

if "%LIBRARY%"=="1" del "W:\Avid MediaFiles\MXF\LIBRARY1.1\msmMMOB.mdb"
if "%LIBRARY%"=="1" del "W:\Avid MediaFiles\MXF\LIBRARY1.1\msmFMID.pmr"

if "%LIBRARY%"=="2" del "W:\Avid MediaFiles\MXF\LIBRARY2.1\msmMMOB.mdb"
if "%LIBRARY%"=="2" del "W:\Avid MediaFiles\MXF\LIBRARY2.1\msmFMID.pmr"
if "%LIBRARY%"=="2" del "W:\Avid MediaFiles\MXF\LIBRARY2.2\msmMMOB.mdb"
if "%LIBRARY%"=="2" del "W:\Avid MediaFiles\MXF\LIBRARY2.2\msmFMID.pmr"

if "%LIBRARY%"=="4" del "W:\Avid MediaFiles\MXF\LIBRARY-4.1\msmMMOB.mdb"
if "%LIBRARY%"=="4" del "W:\Avid MediaFiles\MXF\LIBRARY-4.1\msmFMID.pmr"
cls
echo.       
echo  The EVEN RENDERS DB has been deleted for Library %LIBRARY%...
goto MAINMENU

:TEST
echo.
echo                    ...checking...
echo.

if "%LIBRARY%"=="" goto missing

if not exist "U:\Avid MediaFiles\MXF\LIBRARY1.1\*.mdb" goto MISSING
if not exist "U:\Avid MediaFiles\MXF\LIBRARY2.1\*.mdb" goto MISSING
if not exist "U:\Avid MediaFiles\MXF\LIBRARY-4.1\*.mdb" goto MISSING

if not exist "T:\Avid MediaFiles\MXF\LIBRARY1.1\*.mdb" goto MISSING
if not exist "T:\Avid MediaFiles\MXF\LIBRARY2.1\*.mdb" goto MISSING
if not exist "T:\Avid MediaFiles\MXF\LIBRARY-4.1\*.mdb" goto MISSING

if not exist "X:\Avid MediaFiles\MXF\LIBRARY1.1\*.mdb" goto MISSING
if not exist "X:\Avid MediaFiles\MXF\LIBRARY2.1\*.mdb" goto MISSING
if not exist "X:\Avid MediaFiles\MXF\LIBRARY-4.1\*.mdb" goto MISSING

if not exist "W:\Avid MediaFiles\MXF\LIBRARY1.1\*.mdb" goto MISSING
if not exist "W:\Avid MediaFiles\MXF\LIBRARY2.1\*.mdb" goto MISSING
if not exist "W:\Avid MediaFiles\MXF\LIBRARY-4.1\*.mdb" goto MISSING
cls
echo.
echo          -------------------------------------
echo            All of the DB Files Are Locatable
echo          -------------------------------------
goto MAINMENU

:BART
cls
echo.
echo.
echo.
for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
:::                    |\/\/\/|    
:::                    |      |    
:::                    |      |    
:::                    | (o)(o)    HEY MAN!
:::                    C      _)   Get Back
:::                     | ,___|    To Work!
:::                     |   /      
:::                     /____\      
:::                    /      \     
echo.
echo.
echo         Press ANY KEY to go back to Menu...
echo.
pause > NUL
cls
goto MAINMENU

:EDIT
start notepad %0
goto QUIT

:MISSING
echo At least one of the DB files can not be found, or the 
echo LIBRARY setting was not specified in either the 
echo shortcut to the batchfile, or in the batchfile itself.
echo.
pause
cls
goto QUIT

:QUIT
exit
