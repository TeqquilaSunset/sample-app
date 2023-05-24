# Тестовое приложения для развертывания 
## Развернутое приложение с помощью k8s [тут](https://vbystr.dacdevops.ru/)
## Установка

Может осуществляться при помощи:
- [poetry](https://python-poetry.org)
- [pip](https://pip.pypa.io/en/stable/) + [virtualenv](https://virtualenv.pypa.io/en/latest/)


Если необхоодимо, обновите `pip`:
```shell
python -m pip install --upgrade pip
```

### Poetry

Если необходимо, установите `poetry`:
`pip install poetry`

Установите зависимости приложения:
```shell
poetry install
```

### Pip

Установите `virtualenv`:
```shell
pip install virtualenv
```

Создайте `virtualenv` и активируйте его:
```shell
virtualenv ve
source ve/bin/activate
```

Установите зависимости приложения:
```shell
pip install -r requirements.txt
```



## Локальный запуск

### Системные команды и тесты
```shell
python manage.py migrate
python manage.py collectstatic
python manage.py test
```

### Запуск development сервера:
```shell
python manage.py runserver
```

### Запуск gunicorn

```shell
gunicorn sampleproject.wsgi
```

### Автоматизация docker:
Сборка образа в формате sampleapp:%Y%m%d%H%M%S
```shell
task docker-build
```

Запуск контенейра `latest`
```shell
task run
```

### Автоматизация docker compose:
Запуск базы и приложения 
(сначала нужно выполнить миграции, если они не были сделаны ранее)
```shell
task up
```
Отключить и удалить все контейнеры:
```shell
task down
```
Выполнить миграции в БД:
```shell
task migrate
```
### Проверка работы сервера
Получить веб страницу сервера:
```shell
task test-server
```
