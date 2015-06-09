@echo off
START /wait lua5.1.exe IP2c.lua "%cd%\IP2c"
IF EXIST IP2c.log START IP2c.log
