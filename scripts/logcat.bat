@echo off
@call adb logcat -v time > %1
@echo on