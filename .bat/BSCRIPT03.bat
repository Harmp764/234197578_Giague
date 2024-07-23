@echo off
set /p choice="Enter the number corresponding to the command you want to execute:
1. ipconfig
2. tasklist/taskkill
3. chkdsk
4. format
5. defrag
6. find
7. attrib

Choice: "

if %choice%==1 (
    ipconfig
) else if %choice%==2 (
    set /p taskchoice="Enter 'list' to view running processes or 'kill' to terminate a process: "
    if "%taskchoice%"=="list" (
        tasklist
    ) else if "%taskchoice%"=="kill" (
        set /p pid="Enter the PID of the process you want to terminate: "
        taskkill /PID %pid%
    ) else (
        echo Invalid choice
    )
) else if %choice%==3 (
    chkdsk
) else if %choice%==4 (
    set /p drive="Enter the drive letter you want to format (e.g. C:): "
    format %drive%
) else if %choice%==5 (
    set /p drive="Enter the drive letter you want to defragment (e.g. C:): "
    defrag %drive%
) else if %choice%==6 (
    set /p searchterm="Enter the search term: "
    find %searchterm%
) else if %choice%==7 (
    set /p target="Enter the file or directory path: "
    attrib %target%
) else (
    echo Invalid choice
)
