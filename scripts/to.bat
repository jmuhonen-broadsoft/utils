@echo off

if exist c:\Users\jmuhonen ( set ____root=c:\Users\jmuhonen ) else if exist c:\Users\Jussi    ( set ____root=c:\Users\Jussi )
if %____root% == "" goto end

if %1 == work		goto work
if %1 == down		goto downloads
if %1 == Down		goto downloads
if %1 == download	goto downloads
if %1 == downloads	goto downloads
if %1 == Download	goto downloads
if %1 == Downloads	goto downloads
if %1 == desk		goto desktop
if %1 == Desk		goto desktop
if %1 == desktop	goto desktop
if %1 == Desktop	goto desktop
if %1 == script		goto scripts
if %1 == scripts	goto scripts

call cd C:\work\%1
if %errorlevel% neq 0 goto end

title git / %1
goto end

:work
title work
call cd C:\work\
goto end

:downloads
title Downloads
call cd %____root%\Downloads\
goto end

:desktop
title Desktop
call cd %____root%\Desktop\
goto end

:scripts
title scripts
call cd %____root%\utils\scripts\
goto end

:end
set ____root=
@echo on