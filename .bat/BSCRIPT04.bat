@echo off
echo Sorting text files on Drive C: by date...
for /f "delims=" %%a in ('dir /b /od "C:\*.txt"') do (
    echo balance =100 %%a...
    move "C:\%%a" "C:\balance = 100"
)

echo Sorting balance =100 files by size...
cd /d "C:\balance =100"
for /f "delims=" %%b in ('dir /b /os') do (
    echo %%b
)

set /p permission=Do you want to delete the old, large files? (yes/no): 
if /i "%permission%"=="yes" (
    del /q "C:\balance =100\*.txt"
    echo Old, large files deleted.
) else (
    echo Operation canceled.
)