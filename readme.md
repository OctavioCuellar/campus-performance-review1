#Performance Review 1 15/07/2022
--------------------------------

Se corre el siguiente comando de docker para levantar el contenedor/base de datos

    docker run -it -p 3306:3306 --name mysql -v ${pwd}/datadir:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=123456 mysql

--------------------------------

Los scripts se realizaron y deben ser ejecutados en el siguiente orden:

    1. createdatabase.sql
    2. createtables.sql
    3. insert_data.sql
    4. queries.sql
    5. storedprocedures.sql
    6. triggers.sql
    7. views.sql

Estos scripts se encuentran en el directorio /scripts
