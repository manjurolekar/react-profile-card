@echo off
setlocal
title Fix React Project Files

:: Set the path to your project folder
set "PROJECT_DIR=%~dp0react-profile-card"
set "SRC_DIR=%PROJECT_DIR%\src"

echo ========================================================
echo Checking project folder...
if not exist "%PROJECT_DIR%" (
    echo ERROR: Could not find the 'react-profile-card' folder next to this script.
    echo Please make sure this .bat file is in the same folder as 'react-profile-card'.
    pause
    exit /b
)

cd /d "%PROJECT_DIR%"
echo Found project at: %PROJECT_DIR%
echo ========================================================

:: ---------------------------------------------------------
:: Create App.jsx
:: ---------------------------------------------------------
echo Writing App.jsx...
(
echo import './App.css'
echo import ProfileCard from './ProfileCard'
echo.
echo function App^(^) {
echo   return ^(
echo     ^<div className="App"^>
echo       ^<h1^>My React Component Task^</h1^>
echo       ^<ProfileCard 
echo         name="Jane Doe" 
echo         title="Frontend Developer" 
echo         bio="I am learning React to build modern, dynamic web applications. This is my assignment submission!"
echo         imageUrl="https://i.pravatar.cc/150?img=32" 
echo       /^>
echo     ^</div^>
echo   ^)
echo }
echo.
echo export default App
) > "%SRC_DIR%\App.jsx"

:: ---------------------------------------------------------
:: Create ProfileCard.jsx
:: ---------------------------------------------------------
echo Writing ProfileCard.jsx...
(
echo import React, { useState } from 'react';
echo import './ProfileCard.css';
echo.
echo const ProfileCard = ^({ name, title, bio, imageUrl }^) =^> {
echo   const [likes, setLikes] = useState^(0^);
echo.
echo   return ^(
echo     ^<div className="card-container"^>
echo       ^<img src={imageUrl} alt={`${name}'s avatar`} className="profile-img" /^>
echo       ^<h2 className="profile-name"^>{name}^</h2^>
echo       ^<h4 className="profile-title"^>{title}^</h4^>
echo       ^<p className="profile-bio"^>{bio}^</p^>
echo       ^<button className="like-button" onClick={() =^> setLikes^(likes + 1^)}^>
echo         Like ^({likes}^)
echo       ^</button^>
echo     ^</div^>
echo   ^);
echo };
echo.
echo export default ProfileCard;
) > "%SRC_DIR%\ProfileCard.jsx"

:: ---------------------------------------------------------
:: Create ProfileCard.css
:: ---------------------------------------------------------
echo Writing ProfileCard.css...
(
echo .card-container {
echo   background: white;
echo   border-radius: 15px;
echo   box-shadow: 0 4px 15px rgba^(0, 0, 0, 0.1^);
echo   padding: 30px;
echo   text-align: center;
echo   max-width: 300px;
echo   margin: 50px auto;
echo   font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
echo   transition: transform 0.2s;
echo }
echo .card-container:hover { transform: translateY^(-5px^); }
echo .profile-img {
echo   width: 120px; height: 120px; border-radius: 50%%;
echo   object-fit: cover; border: 4px solid #646cff; margin-bottom: 15px;
echo }
echo .profile-name { margin: 10px 0 5px; color: #333; }
echo .profile-title { margin: 0 0 15px; color: #646cff; font-weight: 500; }
echo .profile-bio { color: #666; font-size: 0.9em; line-height: 1.4; margin-bottom: 20px; }
echo .like-button {
echo   background-color: #646cff; color: white; border: none;
echo   padding: 10px 20px; border-radius: 8px; cursor: pointer;
echo   font-weight: bold; transition: background-color 0.2s;
echo }
echo .like-button:hover { background-color: #535bf2; }
) > "%SRC_DIR%\ProfileCard.css"

:: ---------------------------------------------------------
:: Update README.md
:: ---------------------------------------------------------
echo Updating README.md...
(
echo # React Profile Card Component
echo.
echo This project was built for the "Build a React Component" assignment.
echo.
echo ## Features
echo - Reusable ProfileCard component
echo - Props for dynamic data
echo - useState for interactive like button
echo - CSS styling
echo.
echo ## Run Locally
echo 1. npm install
echo 2. npm run dev
) > "%PROJECT_DIR%\README.md"

:: ---------------------------------------------------------
:: Verify files were written
:: ---------------------------------------------------------
echo ========================================================
echo VERIFYING FILES:
if exist "%SRC_DIR%\App.jsx" (echo  [OK] App.jsx) else (echo  [FAIL] App.jsx)
if exist "%SRC_DIR%\ProfileCard.jsx" (echo  [OK] ProfileCard.jsx) else (echo  [FAIL] ProfileCard.jsx)
if exist "%SRC_DIR%\ProfileCard.css" (echo  [OK] ProfileCard.css) else (echo  [FAIL] ProfileCard.css)
echo ========================================================
echo.
echo SUCCESS! All files have been written.
echo.
echo NEXT STEPS:
echo 1. If you still have the old blank page open, REFRESH it (Ctrl+F5).
echo 2. If the server is not running, open a terminal in the folder and type: npm run dev
echo.
pause