@echo off
:MAIN
SETLOCAL
:: If something was sent here then try to run it.
IF "%1" NEQ "" (
SET inp=%1
GOTO :CHOICE_HANDLE
)

:CHOICE
echo +========================================================================+
echo ^|                              MAKE PDF                                 ^|
echo +========================================================================+
echo ^| Option - What it does                                                 ^|
echo +========================================================================+
echo ^| compile - Compiles and moves the PDF                                  ^|
echo ^| clean - Removes leftover ancillary files (e.g. aux, log, idx, etc )   ^|
echo ^| exit - Close this                                                     ^|
echo +========================================================================+
SET /P inp=What do you want to do?:

:CHOICE_HANDLE
::echo opt%inp%
IF /I %inp% EQU exit GOTO :FINISH

:: Reminder that this isn't Boolean OR, and that it's actually an error handler. It only executes the right if the ERRORLEVEL is raised above 0
2>NUL CALL :opt%inp% || CALL :ERROR_HANDLE %inp%
GOTO :CHOICE

:optcompile
echo pdflatex Story-of-Adventure-TTRPG.tex --output-format=pdf
pdflatex Story-of-Adventure-TTRPG.tex --output-format=pdf
echo move Story-of-Adventure-TTRPG.pdf ..\pdf\Story-of-Adventure-TTRPG.pdf
move Story-of-Adventure-TTRPG.pdf ..\pdf\Story-of-Adventure-TTRPG.pdf
echo Compile!
GOTO :DEFAULT

:optclean
echo del *.aux *.log *.idx *.toc *.out
del *.aux *.log *.idx *.toc *.out
echo Clean!
GOTO :DEFAULT

:DEFAULT
EXIT /b

:ERROR_HANDLE
:: %1 is the error option
echo %1 is invalid
EXIT /b

:FINISH
echo Bye!
ENDLOCAL
EXIT /b
