--saber vendedores
--select * from vendedor;
--select sum(factura.total) totalVend, vendedor.nombre from factura left join vendedor on factura.rutvendedor=vendedor.rutvendedor  group by(factura.rutvendedor,vendedor.nombre); 
--select count(*) cargas, vendedor.nombre from carga_familiares left join vendedor on carga_familiares.rutvendedor=vendedor.rutvendedor group by(vendedor.rutvendedor,vendedor.nombre);
select  distinct(vendedor.nombre), sum(factura.total) totalVend, (sum(factura.total)*0.1) bonoVend,
count() from
factura left join vendedor 
on factura.rutvendedor=vendedor.rutvendedor left join carga_familiares on vendedor.rutvendedor = carga_familiares.rutvendedor 
group by(carga_familiares.rutcargafam,factura.rutvendedor,vendedor.nombre); 
--select * from carga_familiares;
