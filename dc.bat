@echo off
if "%1"=="" (
    @echo �G���[�F�������w�肳��Ă��܂���
)

REM �������w�肳��Ă��ȏꍇ�A���ǋ�ŉ����w�肳��Ȃ��̂ŁA
REM stop �ƈ�����ƁAup -d �̂悤�ɓ�����ł����v�݂����B
docker-compose %1 %2 %3
REM if not "%2"=="" (
REM     docker-compose -f docker-compose.production.yml %1 %2
REM ) else (
REM     docker-compose -f docker-compose.production.yml %1
REM )
