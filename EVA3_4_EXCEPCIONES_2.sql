delimiter $$
create procedure agregar_personas( ap_pat1 varchar(50), ap_mat1 varchar(50), nomb1 varchar(50), fecha1 date)
begin
    declare rfc varchar(10);
    set rfc = generar_rfc(ap_pat1, ap_mat1, nomb1, fecha1);
    insert into personas( ap_paterno, ap_materno, nombre, fecha_nac, rfc) 
    values (ap_pat1, ap_mat1, nomb1, fecha1, rfc);
end$$
delimiter ; 