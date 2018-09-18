timeout /t 3600
:loop
compact /c /s /a /i /exe:lzx "C:*"
timeout /t 3600
goto loop
