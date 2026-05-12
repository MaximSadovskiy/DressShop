# React shop
Это демо, концепт онлайн-магазин одежды. Для создания приложения были использованны следующие технологии: Java Spring, Spring Boot, Hibernate, PostgresSQL и Thymeleaf.

## Инструкция по запуску

1) Запустить PostgreSQL скрипт, который создаст локально таблицы и заполнит их:
```console
psql -U postgres -f ./PopulateTables.sql
```

2) Запустить проект:
```console
./gradlew.bat bootRun
```

3) Открыть в браузере: http://localhost:8080/

![site](https://github.com/MaximSadovskiy/DressShop/blob/main/sitephoto.png)
