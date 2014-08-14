@echo off
call ant clean debug

if %1 == -i call install ..\build\client\bin\BroadTouch-debug_9.0.0.apk
@echo on