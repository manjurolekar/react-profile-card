
@echo off
title React Profile Card - GitHub and Vercel Deployment
cd /d "%~dp0"

echo ==========================================
echo    REACT PROFILE CARD DEPLOYMENT
echo ==========================================
echo.

echo [1/4] Checking project build...
call npm run build

if errorlevel 1 (
    echo.
    echo ERROR: Build failed. Fix the errors before deploying.
    pause
    exit /b 1
)

echo.
echo [2/4] Adding changes to Git...
git add .

if errorlevel 1 (
    echo ERROR: Could not add files to Git.
    pause
    exit /b 1
)

echo.
echo [3/4] Creating commit...
git diff --cached --quiet

if errorlevel 1 (
    git commit -m "Update React profile card"
    if errorlevel 1 (
        echo ERROR: Commit failed.
        pause
        exit /b 1
    )
) else (
    echo No new changes to commit.
)

echo.
echo [4/4] Uploading to GitHub...
git push origin main

if errorlevel 1 (
    echo.
    echo GitHub upload failed.
    echo Check your internet connection and try again.
    pause
    exit /b 1
)

echo.
echo SUCCESS: Changes uploaded to GitHub!
echo Vercel should deploy automatically if connected.
echo Check your Vercel Deployments page.
echo.
pause
