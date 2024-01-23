REM Installs both luabundle.luac and luabundle.bundle.lua 

@echo on
set source_folder=%cd%
set build_folder=%cd%\build
set bin_folder=%build_folder%\bin

echo F|xcopy /Y /F %source_folder%\luabundle.luac %bin_folder%\luabundle.luac

REM xcopy %source_folder%\luabundle.luac %bin_folder%\luabundle.luac /Y