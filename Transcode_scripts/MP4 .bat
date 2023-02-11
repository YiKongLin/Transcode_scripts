@echo off
title 正在转换,mp4转换完成自动关闭
ffmpeg -i %1 -y -qscale 0 -vcodec libx264 %~n1.mp4

ping -n 5 127.0.0.1 >nul