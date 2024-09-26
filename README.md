<a id="markdown-шаблон-для-работы-правильного-1с-разработчика" name="шаблон-для-работы-правильного-1с-разработчика"></a>
# Шаблон для работы правильного 1С разработчика

* содержит выработанную и обдуманную семантически структуру каталогов
* содержит необходимые команды для быстрого старта

[![telegram](https://img.shields.io/badge/telegram-chat-green.svg)](https://t.me/vanessa_opensource)

Оглавление:
<!-- TOC -->
<!-- - [Шаблон для работы правильного 1С разработчика](#шаблон-для-работы-правильного-1с-разработчика) -->
- [Быстрое использование](#быстрое-использование)
- [Использование шаблона](#использование-шаблона)
  - [Порядок установки](#порядок-установки)
  - [Порядок обновления](#порядок-обновления)
  - [Возможности доработки шаблона](#возможности-доработки-шаблона)
- [Первичная настройка](#первичная-настройка)
- [Полезные команды](#полезные-команды)
- [Полезные ссылки](#полезные-ссылки)<!-- /TOC -->

<a id="markdown-быстрое-использование" name="быстрое-использование"></a>
## Быстрое использование

Самый простой и быстрый способ создания нового каталога проекта - это использования команды vanessa-runner

Запуск `vrunner init-project` в пустом каталоге создаст необходимую структуру проекта

<a id="markdown-использование-шаблона" name="использование-шаблона"></a>
## Использование шаблона

<a id="markdown-порядок-установки" name="порядок-установки"></a>
### Порядок установки

* переключитесь в пустой рабочий каталог своего продукта

```Shell
cd название-вашего-продукта-1С
```

* склонируйте репозиторий

```Shell
git clone https://github.com/vanessa-opensource/vanessa-bootstrap.git .
```
  * важно: не потеряйте точку в конце строки команды

* подпишитесь на обновление шаблона

```Shell
git remote add -f --no-tags -m --mirror bootstrap https://github.com/vanessa-opensource/vanessa-bootstrap.git
git remote remove origin
```

* подключите репозиторий к своему git серверу (GitHub, Bitbucket, GitLab, etc)

```Shell
git remote add origin git://new.url.here
```

* получите изменения из своего репозитория

```
git pull origin ваша-ветка --allow-unrelated-histories
```

* исправьте полученные конфликты, если вы меняли те же файлы, что есть в шаблоне

теперь вы можете начинать разрабатывать по-правильному и быть подписанными на любые изменения.

<a id="markdown-порядок-обновления" name="порядок-обновления"></a>
### Порядок обновления

Чтобы получить изменения каталога

```Shell
git pull bootstrap ваша-текущая-ветка-разработки
```

<a id="markdown-возможности-доработки-шаблона" name="возможности-доработки-шаблона"></a>
### Возможности доработки шаблона

* откройте issue - если вам не хватает какого-то каталога под ваши задачи
* войдите в чат Телеграм - чтобы задать дополнительные вопросы [![telegram](https://img.shields.io/badge/telegram-chat-green.svg)](https://t.me/vanessa_opensource)
* сделайте fork, внесите изменения и выполните pull request с предлагаемыми вами изменениями (fork и pull request - это кнопки на GitHub.)

<!-- ### Руководство разработчика -->

<a id="markdown-первичная-настройка" name="первичная-настройка"></a>
## Первичная настройка

* настройте файл [env.json](./env.json) для выполнения команд
  * задайте версию платформы 1С - ключ `--v8version`
  * задайте строку соединения разработческой ИБ - ключ `--ibconnection`
  * задайте строку доступ к этой ИБ - ключи `--db-user` и `--db-pwd`
  * скорректируйте настройку локализации - ключи `--locale` и `--language`
  * задайте вид клиента - ключ `--ordinaryapp` - тонкий (-1) или толстый (1) клиент
* сделайте отдельные файлы для отдельных команд, например, [tools/JSON/vrunner.json](./tools/JSON/vrunner.json)

<a id="markdown-полезные-команды" name="полезные-команды"></a>
## Полезные команды

- Первичная настройка
  - `prepare.cmd`
    - в папке build создается cf из исходников
    - создается служебная ИБ в `build/ib` или той, что прописана в `env.json`
    - выполняется обновление в режиме 1С:Предприятие
- Обновление (сборка) из исходников
  - `update.cmd`
    - в папке build создается cf из исходников
    - в папке build также могут создаваться расширения и другие внешние файлы
    - полученный cf загружается в служебную ИБ
    - обновляется служебная ИБ
    - выполняется обновление в режиме 1С:Предприятие
- Подготовка артефактов из исходников
  - `build.cmd`
    - в папке build создается cf из исходников
    - в папке build также могут создаваться расширения и другие внешние файлы
- Быстрый прогон BDD-сценариев в служебной ИБ
  - `test.cmd`
- Быстро открыть служебную ИБ в режиме 1С:Предприятие
  - `open.cmd`
- Быстро открыть Конфигуратор служебной ИБ
  - `designer.cmd`

<a id="markdown-полезные-ссылки" name="полезные-ссылки"></a>
## Полезные ссылки
