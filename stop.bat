@echo off
echo 正在停止 HonKit 服务...

for /f "tokens=5" %%a in ('netstat -ano ^| find "35729"') do (
    taskkill /F /PID %%a 2>nul
)
for /f "tokens=5" %%a in ('netstat -ano ^| find "4000"') do (
    taskkill /F /PID %%a 2>nul
)

echo 服务已停止！
pause 