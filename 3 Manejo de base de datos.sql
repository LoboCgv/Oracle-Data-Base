-- Una vez ingresado al sistema crear una tabla en la consola es lento muchas veces, por lo que usamos archivos script de extensión sql
--para hacerlo usamos el comando start seguido de la direccion absoluta del archivo .sql
start c:\OracleData\database.sql
--podemos cambiar la palabra start por @
@c:\OracleData\database.sql
--de esta manera es posible ejecutar en bash una serie de comandos sql. Es importante tener los permisos en el usuario
--en ocaciones queremos tener los resultados de comandos realizados en un archivo del sistema operativo
spool c:\OracleData\salida.log
--para ir agregando salidas al archivo
spool c:\OracleData\salida.log APPEND;
spool stop;-- para detener
