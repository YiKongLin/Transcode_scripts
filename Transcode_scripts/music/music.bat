@echo off
title mp3

set path=E:\ffmpeg-5.1.2-essentials_build\bin;%path%

(for /f "delims=" %%i in ('dir /b /a-d /s "*.%1"') do echo ffmpeg -i "%%i" -y -qscale 0 -vcodec libx264 "%cd%\%%~ni.mp3")>run.bat

ping -n 5 127.0.0.1 >nul