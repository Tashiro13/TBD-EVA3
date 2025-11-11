delimiter $$
create procedure generar_rfc_actor()
begin
    declare nombre varchar(50);
    declare apellido varchar(50);
    declare fecha_actor date;
    declare rfc_calculado varchar(10);
    declare terminar int default false;

    declare cursor_actores cursor for
        select first_name, last_name, date(last_update)
        from actor;
    declare continue handler for not found set terminar = true;
    open cursor_actores;
    bucle_rfc: loop
        fetch cursor_actores into nombre, apellido, fecha_actor;
        if terminar then
            leave bucle_rfc;
        end if;
	
        set rfc_calculado = generar_rfc(apellido, null, nombre, fecha_actor);
        select rfc_calculado as rfc_generado;
    end loop bucle_rfc;
    close cursor_actores;
    
end$$
delimiter ;