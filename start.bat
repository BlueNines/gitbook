@echo off
echo 清理旧的构建文件...
if exist _book (
    rd /s /q _book
)

echo 检查并关闭占用端口的进程...
for /f "tokens=5" %%a in ('netstat -ano ^| find "35729"') do (
    taskkill /F /PID %%a 2>nul
)
for /f "tokens=5" %%a in ('netstat -ano ^| find "4000"') do (
    taskkill /F /PID %%a 2>nul
)

echo 检查 Node.js 环境...
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo 请先安装 Node.js
    pause
    exit
)

for /f "tokens=1" %%v in ('node -v') do set NODE_VERSION=%%v
echo 当前 Node.js 版本: %NODE_VERSION%
echo 推荐使用 Node.js 18.17 或更高版本

echo 清理并重新安装依赖...
if exist node_modules (
    rd /s /q node_modules
)
if exist package-lock.json (
    del package-lock.json
)

call npm install --legacy-peer-deps

echo 启动文档服务...
echo 服务启动后请访问: http://localhost:4000
call npm run serve

pause 