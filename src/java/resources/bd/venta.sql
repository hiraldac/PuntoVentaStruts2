/* 
 * Autor:  hiralda
 * Email: castroc.hiralda@gmail.com
 * Creación: 01/07/2020
 * Modificación: 01/20/2020
 */

CREATE TABLE public.usuario
(
    idusuario bigserial NOT NULL,
    nombre text NOT NULL,
    tipo text NOT NULL,
    contrasena text NOT NULL,
    usuario text NOT NULL,
    CONSTRAINT usuario_pkey PRIMARY KEY (idusuario),
    CONSTRAINT uq_usuario UNIQUE (usuario)

);

CREATE TABLE public.producto
(
    idproducto text NOT NULL,
    nombre text NOT NULL,
    marca text NOT NULL,
    descripcion text NOT NULL,
    precio numeric NOT NULL,
    existencia integer NOT NULL,
    CONSTRAINT producto_pkey PRIMARY KEY (idproducto)
);

CREATE TABLE public.venta
(
    idventa bigserial NOT NULL ,
    fecha timestamp without time zone NOT NULL,
    total numeric NOT NULL,
    CONSTRAINT venta_pkey PRIMARY KEY (idventa)
);

CREATE TABLE public.detalle
(
    ventaid bigint NOT NULL,
    cantidad integer NOT NULL,
    productoid text NOT NULL,
    iddetalle bigserial NOT NULL,
    CONSTRAINT detalle_pkey PRIMARY KEY (iddetalle),
    CONSTRAINT fk_producto FOREIGN KEY (productoid)
        REFERENCES public.producto (idproducto) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_venta FOREIGN KEY (ventaid)
        REFERENCES public.venta (idventa) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

INSERT INTO public.producto(
	idproducto, nombre, marca, descripcion, precio, existencia)
	VALUES ('1234', 'Jabon', 'ZOTE', 'jabon para lavar ropa', '12.5', '3');
INSERT INTO public.producto(
	idproducto, nombre, marca, descripcion, precio, existencia)
	VALUES ('1452', 'Sopa', 'Italpasta', 'Sopa para preparar', '5.5', '6');
INSERT INTO public.producto(
	idproducto, nombre, marca, descripcion, precio, existencia)
	VALUES ('1256', 'Desodorante', 'Axe', 'Desodorante para el cuerpo', '24', '4');

INSERT INTO public.usuario(
 nombre, tipo, contrasena, usuario)
	VALUES ('Pedro', 'administrador', 'pgr123', 'Pedr0');
	
INSERT INTO public.usuario(
 nombre, tipo, contrasena, usuario)
	VALUES ('Hiralda', 'usuario', 'hcc123', 'Hirald4');

INSERT INTO public.usuario(
 nombre, tipo, contrasena, usuario)
	VALUES ('Eber', 'usuario', 'emm123', 'Eb3r');

INSERT INTO public.venta(
	idventa, hora, total)
	VALUES (1, NOW() ,30.5 );
	
INSERT INTO public.detalle(
	ventaid, cantidad, productoid)
	VALUES (1, 2, '1234');
	
INSERT INTO public.detalle(
	ventaid, cantidad, productoid)
	VALUES (1, 1, '1452');

INSERT INTO public.venta(
	idventa, hora, total)
	VALUES (2, NOW() ,42 );
	
INSERT INTO public.detalle(
	ventaid, cantidad, productoid)
	VALUES (2, 1, '1234');
	
INSERT INTO public.detalle(
	ventaid, cantidad, productoid)
	VALUES (2, 1, '1452');

INSERT INTO public.detalle(
	ventaid, cantidad, productoid)
	VALUES (2, 1, '1256');