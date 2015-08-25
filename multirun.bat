@echo off

set test1=%1
IF NOT DEFINED test1 goto syntax
set test2=%2
IF NOT DEFINED test2 goto syntax
goto doit

:syntax
echo ***************************************************
echo * syntax:                                         *
echo * multirun.bat userfile batchfile 	               *
echo ***************************************************
goto end

:doit
FOR /F %%i IN (%1) DO powershell .\%2 %%i
goto end

:end
