/* 1. Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
 */
[mysql]
USER=root
password=


/* 2.Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
*/

CREATE DATABASE IF NOT EXISTS example;
USE example;
CREATE TABLE IF NOT EXISTS users(id SERIAL PRIMARY KEY, name VARCHAR(12));
INSERT INTO users values  -- заполнение таблицы для примера
(NULL,'Kate'),
(NULL,'Ivan'),
(NULL,'Alex');
SHOW tables;
SELECT id, name FROM users;


/*3. Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
 */
[client]
USE example;
mysqldump example > example.sql
CREATE DATABASE IF NOT EXISTS sample;
USE sample;
sample < example.sql

/*4.(по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
Честно гвооря, возникли затруднения с запуском под [client], поэтому и с 4 заданием не совсем разобралась. Просьба пояснить, как корректно делать 3 и 4 задания. Спасибо! 
*/