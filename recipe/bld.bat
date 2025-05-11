mkdir build
cd build

set CONFIGURATION=Release

cmake .. -G Ninja                                  ^
         -DCMAKE_BUILD_TYPE=%CONFIGURATION%        ^
         -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%"    ^
         -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
         -DBUILD_PYTHON=ON                         ^
         -DBOOST_ROOT="%LIBRARY_PREFIX%"           ^
         -DPython_EXECUTABLE="%PYTHON%"
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%

cmake --build . --config %CONFIGURATION% --target install
if %ERRORLEVEL% NEQ 0 exit /b %ERRORLEVEL%
