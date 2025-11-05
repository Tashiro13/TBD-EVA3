delimiter $$
create procedure agregar2_actor( in firstname varchar(50), in lastname varchar(50))
begin
declare actorid int;
 select max_actor() + 1 into actorid;
 insert into actor(actor_id, first_name, last_name)
 value (actorid, firstname, lastname);
end$$
delimiter ;