-- como en todos los motores de datos es necesario realizar consultas para obtener datos
select * from ciudad;
--recordar que se debe usar ; al finalizar cada linea
--Es posible realizar parametrización de variables para las consultas utilizando el operador &
select codcomuna,descripcion form ciudad where codcomuna=&codigo;
--el promp nos preguntará el codigo que estará en la consulta. si  tengo más de una variable preguntará más de una vez.

-- del mismo modo es posible reusar una variable ya definida. cuidado no se pueden eliminar variables en tiempo de ejecución de la session
--para hacerlo se utiliza el operador &&
select &&columname from ciudad order by &&columname;
--solicitará el valor de descripción sólo una vez para siguientes consultas
select &&columname from ciudad;-- no solicitará valor

-- se puede a su vez trabajar con valores almacenados en variables usando DEFINE
DEFINE codigo=1;
select * from ciudad where codciudad=&codigo;--notese que si fuera un varchar habria que poner los valores entre ''
