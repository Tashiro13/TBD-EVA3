create function mostrarMensaje(mensaje varchar(50))
returns varchar(50) deterministic
return concat("hola ", mensaje);