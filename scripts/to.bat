@echo off

if %1 == git		goto xdev
if %1 == .git		goto xdev
if %1 == scp		goto xdev
if %1 == xdev		goto xdev
if %1 == dev		goto dev
if %1 == build		goto build
if %1 == vs		goto vs
if %1 == tp		goto tp
if %1 == python		goto text_client
if %1 == test		goto text_client
if %1 == test_client	goto text_client
if %1 == text		goto text_client
if %1 == text_client	goto text_client
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

echo unknown location "%1". Use cd instead
goto end

:xdev
title xdev
call cd C:\work\xdev\
goto end

:dev
title dev
call cd C:\work\dev\
goto end

:build
title build
call cd C:\work\xdev\build\
goto end

:vs
title build
call cd C:\work\xdev\build
call BroadTouch.sln
goto end

:tp
title tp
call cd C:\work\xdev\tp\
goto end

:text_client
title text_client
call cd C:\work\text_client
goto end

:work
title work
call cd C:\work\
goto end

:downloads
title Downloads
call cd C:\Users\jmuhonen\Downloads\
goto end

:desktop
title Desktop
call cd C:\Users\jmuhonen\Desktop\
goto end

:scripts
title scripts
call cd C:\Users\jmuhonen\scripts\
goto end

:end
@echo on