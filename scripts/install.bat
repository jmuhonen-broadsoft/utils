@echo off
@call adb devices
@call adb install -r %*
@echo on