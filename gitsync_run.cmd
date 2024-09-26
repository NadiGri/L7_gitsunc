## Инициализация гитсинха
gitsync init -u gitbot e:\OTUS\Storage\ e:\OTUS\L7_gitsunc\src\cf\

## Синхронизация с хранилищем

gitsync sync -u gitbot e:\OTUS\Storage\ e:\OTUS\L7_gitsunc\src\cf\

## формирование релиза

vrunner compile --src src/cf --out build/1cv8.cf