--El condicional if tiene la misma forma que un condicional normal de lenguajes conocidos
-- usaremos sentencias similares a Pascal
DECLARE
cod cliente.codcomuna%TYPE:=2;
saldo cliente.saldo%TYPE;
credito number(15);
rut cliente.rutcliente%type;
--se aumentará el credito en 200.000 pesos a las clientes de Arica codigo comuna =1 y su saldo sea menor que 200.000
--cuidado este codigo funcionará si y sólo si la respuesta es una fila
begin
select codcomuna,rutcliente into cod,rut from cliente where codcomuna=cod;
if saldo<200000 then update cliente set credito=200000 where rutcliente=rut;
else update cliente set credito=100000 where rutcliente=rut;
end if;
end;
