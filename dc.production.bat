@echo off
if "%1"=="" (
    @echo エラー：引数が指定されていません
)

if not "%2"=="" (
    docker-compose -f docker-compose.production.yml %1
) else (
    docker-compose -f docker-compose.production.yml %1 %2
)
