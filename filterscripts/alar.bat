@ECHO OFF
TITLE Yom's SA-MP auto compiler ...

REM Then file name and path to be compiled
SET FILENAME=alar
SET FILEPATH=C:\Users\Cosmin\Documents\GitHub\ALAR

REM -d<num>  Debugging level (default = -d1)
REM     0    No symbolic information, no run-time checks
REM     1    Run-time checks, no symbolic information
REM     2    Full debug information and dynamic checking
REM     3    Same as -d2, but implies -O0
SET DLEVEL=-d3

REM -O<num>  Optimization level (default = -O1)
REM     0    No optimization
REM     1    JIT-compatible optimizations only
REM     2    Full optimizations
SET OLEVEL=-O1

IF EXIST "%FILEPATH%\filterscripts\%FILENAME%.amx" (
  ECHO The amx has been deleted from folder...
  DEL "%FILEPATH%\filterscripts\%FILENAME%.amx"
  TIMEOUT /T 2 > NUL
)

IF EXIST "%FILEPATH%\filterscripts\%FILENAME%.xml" (
  ECHO The xml has been deleted from folder ...
  DEL "%FILEPATH%\filterscripts\%FILENAME%.xml"
  TIMEOUT /T 2 > NUL
)

%FILEPATH%/pawno/pawncc.exe "%FILENAME%.pwn" -i"./pawno/include" "-;" "-(" "%DLEVEL%" "%OLEVEL%"

:GPAUSE
  PAUSE
:GEXIT
  EXIT
