@echo off
chcp 65001 > nul
set REPO_URL=https://github.com/Enoterok/wtVoiceChat.git

echo Проверка наличия проекта в текущей папке...

if exist ".git" (
    echo Репозиторий найден. Обновляю файлы через git pull...
    git pull origin main
) else (
    echo Инициализация репозитория в текущей папке...
    git init
    git remote add origin %REPO_URL%
    git fetch
    git checkout -f main
)

echo.
echo Операция завершена успешно!
pause
