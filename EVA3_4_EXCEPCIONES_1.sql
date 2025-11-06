delimiter $$
create function generar_rfc(ape_pat varchar(50), ape_mat varchar(50), nomb varchar(50), fecha date)
returns varchar(10) deterministic
begin
    declare rfc_primprt varchar(4);
    declare rfc_segdprt varchar(6);
    declare rfc varchar(10);
    declare apei_mate varchar(1);
    
    set rfc_primprt = upper(concat(substring(ape_pat, 1, 2), substring(ape_mat, 1, 1), substring(nomb, 1, 1)));
    set rfc_segdprt = date_format(fecha, '%y%m%d');
    set rfc = concat(rfc_primprt, rfc_segdprt);
    return rfc;
end$$
delimiter ;