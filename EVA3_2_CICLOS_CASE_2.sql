delimiter $$
create function calificacion(num int)
returns varchar(2) deterministic 
begin
	declare resu varchar(2);
    case
		when num >= 90 then set resu = "A";
        when num >= 80 then set resu = "B";
        when num >= 70 then set resu = "C";
        when num >= 60 then set resu = "D";
        else set resu = "F";
    end case;
    return resu;
end$$
delimiter ;
