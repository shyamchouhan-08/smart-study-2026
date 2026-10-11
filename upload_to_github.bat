@echo off
color 0A
echo ============================================
echo   Smart Study Assistant - GitHub Upload
echo ============================================
echo.

:: Step 1: GitHub username lena
set /p USERNAME="Apna GitHub Username daalo: "
set /p REPONAME="Repository ka naam daalo (default: smart-study-assistant): "

IF "%REPONAME%"=="" SET REPONAME=smart-study-assistant

echo.
echo [1/6] Git initialize kar raha hai...
git init
echo.

echo [2/6] Saari files add kar raha hai...
git add .
echo.

echo [3/6] First commit kar raha hai...
git commit -m "Smart Study Assistant - Initial Upload"
echo.

echo [4/6] Branch ka naam main kar raha hai...
git branch -M main
echo.

echo [5/6] GitHub se connect kar raha hai...
git remote add origin https://github.com/%USERNAME%/%REPONAME%.git
echo.

echo [6/6] Files GitHub pe push kar raha hai...
git push -u origin main
echo.

echo ============================================
echo   Upload Complete! 
echo   Ab GitHub pe Pages enable karo:
echo   Settings - Pages - Branch: main - Save
echo.
echo   Tumhari website live hogi:
echo   https://%USERNAME%.github.io/%REPONAME%/
echo ============================================
echo.
pause
