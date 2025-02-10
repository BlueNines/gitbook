@echo off
echo 正在清理所有构建文件和依赖...

if exist _book (
    rd /s /q _book
)
if exist node_modules (
    rd /s /q node_modules
)
if exist package.json (
    del package.json
)
if exist package-lock.json (
    del package-lock.json
)

echo 清理完成！
echo 请重新运行 start.bat 来重新构建文档。
pause 