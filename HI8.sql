CREATE TABLE Segmento( 
 cod_segmento VARCHAR(10), 
 descripcion VARCHAR(100), 
 PRIMARY KEY (cod_segmento)
); 
CREATE TABLE Producto( 
 cod_producto NUMERIC(10), 
 nombre VARCHAR(100),
 precio NUMERIC(9,2),
 PRIMARY KEY (cod_producto)
); 
CREATE TABLE Segmento_producto(
 cod_segmento VARCHAR(10), 
 cod_producto NUMERIC(10), 
 	FOREIGN KEY(cod_segmento) REFERENCES Segmento(cod_segmento),
 	FOREIGN KEY(cod_producto) REFERENCES Producto(cod_producto)
);
CREATE TABLE Cliente( 
 dni VARCHAR(12), 
 nombre VARCHAR(100),
 PRIMARY KEY (dni)
); 
CREATE TABLE Ventas( 
 cod_venta NUMERIC(9), 
 dni VARCHAR(12),
 PRIMARY KEY (cod_venta),
 FOREIGN KEY(dni) REFERENCES Cliente(dni)
); 
CREATE TABLE Detalle_venta(
	cod_venta NUMERIC(9),
	cod_producto NUMERIC(10),
	cantidad NUMERIC(3),
	FOREIGN KEY(cod_venta) REFERENCES Ventas(cod_venta),
	FOREIGN KEY(cod_producto) REFERENCES Producto(cod_producto)
); 