@echo off
@call git stash
@call git rebase origin/%*
