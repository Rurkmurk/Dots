@echo off

rem ��� SCL �����

set output=dots.scl

rem ���������, ������� ������������ ��� ��������
rem 32 �������, ����������� �����

set title="        LOAD PIP-BOY DOTS"

rem ������ �����������, ������ ����� �������
rem � ��������� ��� ���������� �� ������������� ������������
rem ��������������� � ����� resources.h
rem ��������� ����� ����� ������ ���� ������������

set palette.0=res\pipboy.bmp

rem ������ �����������, ������ ����� �������

set image.0=res\tiles.bmp
set image.1=res\font.bmp
set image.2=res\num.bmp

set image.3=res\pipboy.bmp


set image.5=res\easy_disable.bmp
set image.6=res\easy_enable.bmp
set image.7=res\medium_disable.bmp
set image.8=res\medium_enable.bmp
set image.9=res\hard_disable.bmp
set image.10=res\hard_enable.bmp
set image.11=res\list_disable.bmp
set image.12=res\list_enable.bmp

set image.13=res\time_over.bmp
set image.14=res\enter_name.bmp
set image.15=res\list_experts.bmp

set image.16=res\easy.bmp
set image.17=res\medium.bmp
set image.18=res\hard.bmp
set image.19=res\menu.bmp
rem �������

set sprite.0=res\sprites.bmp

rem ����� �������� ��������, ���� �����
rem �� ����� ���� ������ ����

set soundfx=res\dots.afb

rem ������, ������ ����� ������

set music.0=

rem ������

set sample.0=res\start.wav

call ..\evosdk\_compile.bat

call ..\evosdk\trdtool.exe + %output% bestlist.0

@if %error% ==0 ..\evosdk\tools\unreal_evo\emullvd %output%