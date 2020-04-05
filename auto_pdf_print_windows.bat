:start
RUNDLL32 PRINTUI.DLL,PrintUIEntry /y /n "Office Printer"
Timeout /T 2
CD\
cd Users\Administrator\Desktop\print
Timeout /T 2
for %%i in (*.pdf) do "C:\Program Files (x86)\Adobe\Reader 9.0\Reader\AcroRd32.exe" /t "%%i"
Timeout /T 2
RUNDLL32 PRINTUI.DLL,PrintUIEntry /y /n "Office Printer"
move "C:\Users\Administrator\Desktop\print\*.pdf" "C:\Users\Administrator\Desktop\print\printed"
goto start
