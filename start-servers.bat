@echo off
echo Starting Global Guardian...

echo Starting Backend...
start "Backend" cmd /k "cd backend && node server.js"

timeout /t 3 /nobreak >nul

echo Starting Frontend...
start "Frontend" cmd /k "npm run dev"

echo Both servers starting...
echo Backend: http://localhost:5000
echo Frontend: http://localhost:5173
pause