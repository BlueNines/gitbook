@echo off
echo 检查 Node.js 环境...
where node >nul 2>nul
if %errorlevel% neq 0 (
    echo 请先安装 Node.js
    pause
    exit
)

echo 清理旧的依赖...
if exist node_modules (
    rd /s /q node_modules
)
if exist _book (
    rd /s /q _book
)
if exist package.json (
    del package.json
)
if exist package-lock.json (
    del package-lock.json
)

echo 安装新的依赖...
call npm init -y
call npm install honkit --save-dev
call npm install gitbook-plugin-expandable-chapters-small gitbook-plugin-flexible-alerts --save-dev

echo 启动文档服务...
echo 服务启动后请访问: http://localhost:4000
call npx honkit serve

pause 