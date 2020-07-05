@Echo off
cls

Title Xidel - Demo - www.thebateam.org
Set "Path=%Path%;%cd%;%cd%\files"
Color 0a

setlocal EnableDelayedExpansion
Mode 120,25
Echo. Downloading 'Sample TheBATeam Project'...
Echo. it may not show any progress...on screen.
Echo. Depending on your internet Speed!
Echo. .txt
wget.exe -F "https://www.thebateam.org/2020/01/ascii-to-all-converter" -O "Final.html"
xidel "Final.html" -e //a/@href | Find "wp-content" > "Final_Link.txt"
Set /p _Link=<"Final_Link.txt"
wget.exe -F "%_Link%"
Echo.
Del /s /q "Final.html" >nul 2>nul
Del /s /q "Final_Link.txt" >nul 2>nul
Echo. File Downloded!
pause
exit