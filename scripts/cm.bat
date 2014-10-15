@echo off

setlocal
:: TODO check variable count and possibly parse
IF "%1" == "" ( goto cmake_dot_dot ) else if "%2" == "" ( goto end )

SET _qt=%1%
SHIFT
SET _ver=%1%
SHIFT
SET _=%1%
SET _path=%path%
IF /I "%_qt%" == "qt5" ( goto qt5 ) ELSE IF /I "%_qt%" == "qt4" ( goto qt4 ) ELSE ( goto end )

:qt5
SET _qt5=1
:IF %_ver% GEQ 210 ( SET _qt5loc=C:\Qt\5.3.0\5.3\msvc2013\ ) ELSE ( SET _qt5loc=C:\Qt\5.3.0\5.3\msvc2010_opengl\ )
:SET Qt5_DIR=%_qt5loc%
:SET path=%path%;%_qt5loc%bin\;
goto cmake
:qt4
SET _qt5=0
:SET path=%path%;C:\Qt\4.8.4\bin;
goto cmake

:cmake
:collect_args
IF "%1"=="" goto args_collected
SET args=%args% %1
SHIFT
goto collect_args
:args_collected
cmake .. %args% -DPROJECT_NAME=btbc%_ver%%_qt% -DUSE_QT5=%_qt5%
SET path=%_path%
goto end
:cmake_dot_dot
cmake ..
goto end

:end
endlocal
@echo on