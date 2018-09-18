@echo off
:menu
echo 0. Info and warnings
echo 1. Compress SSD
echo 2. Compress and shutdown
echo 3. Auto compression (per hour)
echo 4. Remove auto compression
echo 9. EXIT
set /p ask=
if %ask%==0 (
    echo. & echo.
    echo //This script uses LZX algroithm to compress your C drive -approximetly ~%%50-
    echo //This script assumes that you are going to compress C drive
    echo if you want to change to an another drive or directory, edit script!
    echo //HDD's are not recommended for this process -gosh.. why you compress it anyways-
    echo. & echo.
    goto menu
    
)
if %ask%==1 (
    compact /c /s /a /i /exe:lzx "C:*"
) 
if %ask%==2 (
    compact /c /s /a /i /exe:lzx "C:*"
    shutdown /s
) 
if %ask%==3 (
    copy ".\timed-compression.bat" "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\timed-compression.bat"
    echo. & echo.
    echo ///Restart your computer to use this feature\\\
    echo. & echo.
    goto menu
) 
if %ask%==4 (
    del "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\timed-compression.bat"
    goto menu
)
if %ask%=9
(
    EXIT
)
PAUSE 
