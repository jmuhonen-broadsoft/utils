@echo off
SETLOCAL
SET _branch=master
if not "%1" == "" call set _branch=%1%
@call git fetch
@call git rebase origin/%_branch%
@call git submodule update
ENDLOCAL
@echo on