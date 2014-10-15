@echo off

if [%1] == []  	goto generic
if %1 == stash	goto stash


:generic
@call gitk %*
goto end

:stash
@call python source/gitk_stash.py %*
goto end

:end