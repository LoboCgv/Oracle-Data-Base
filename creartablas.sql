create user Lobo IDENTIFIED BY del1altrece13;
grant all privileges to ensayo;

create or replace procedure creaTabla(nombre in varchar) is
comando varchar(255);
begin
comando:='drop table '||to_char(nombre);
execute immediate comando;
comando:='create table '||to_char(nombre)||'(id number(3,0),primary key(id))';
--DBMS_OUTPUT.put_line(comando);
execute immediate comando;
end;

create or replace procedure addColumn(tabla in varchar,nombre in varchar, tipo in varchar) is
comando varchar(50);
begin
comando:='alter table '||to_char(tabla)||' add '||to_char(nombre)||' '||to_char(tipo);
DBMS_OUTPUT.PUT_LINE(comando);
execute immediate comando;
end;

begin
creaTabla('tablas');
addColumn('tablas','nombre','varchar(50)');
end;