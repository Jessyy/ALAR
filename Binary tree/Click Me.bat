@echo off
START /wait lua5.1.exe tree.lua
IF EXIST output.pwn START output.pwn