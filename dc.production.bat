@echo off
if "%1"=="" (
    @echo �G���[�F�������w�肳��Ă��܂���
)

if not "%2"=="" (
    docker-compose -f docker-compose.production.yml %1
) else (
    docker-compose -f docker-compose.production.yml %1 %2
)
