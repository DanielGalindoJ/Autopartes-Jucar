USE JucarAutoBD
GO

----- INSERCION DE DATOS TABLA AUTOPARTE
INSERT INTO Autoparte
(NOMBRE, Funci�n, ZonaVeh�culo, Estado, PesoKgs, AltoCm, FechaCreaci�n)
VALUES ('PIN CRUCETA 334','PARTE DE SEGURIDAD RUEDA','RUEDAS','BUENO','2','5','14/06/2023')

INSERT INTO Autoparte
(NOMBRE, Funci�n, ZonaVeh�culo, Estado, PesoKgs, AltoCm, FechaCreaci�n)
VALUES ('PIN CRUCETA 333','PARTE DE SEGURIDAD RUEDA','RUEDAS','BUENO','2','5','14/06/2023')

INSERT INTO Autoparte
(NOMBRE, Funci�n, ZonaVeh�culo, Estado, PesoKgs, AltoCm, FechaCreaci�n)
VALUES ('PIN TUERCA  HOUSING 950 PLANO','PARTE DE SEGURIDAD RUEDA','RUEDAS','BUENO','2','5','14/06/2023')

INSERT INTO Autoparte
(NOMBRE, Funci�n, ZonaVeh�culo, Estado, PesoKgs, AltoCm, FechaCreaci�n)
VALUES ('PIN TUERCA  HOUSING 950 PLANO 2.5mm','PARTE DE SEGURIDAD RUEDA','RUEDAS','BUENO','2','5','14/06/2023')

INSERT INTO Autoparte
(NOMBRE, Funci�n, ZonaVeh�culo, Estado, PesoKgs, AltoCm, FechaCreaci�n)
VALUES ('PIN TUERCA  HOUSING 950 HI','PARTE DE SEGURIDAD RUEDA','RUEDAS','BUENO','2','5','14/06/2023')

INSERT INTO Autoparte
(NOMBRE, Funci�n, ZonaVeh�culo, Estado, PesoKgs, AltoCm, FechaCreaci�n)
VALUES ('ARANDELA CACHO NPR','AYUDA A LOS FRENOS','FRENOS','BUENO','3','6','14/06/2023')

INSERT INTO Autoparte
(NOMBRE, Funci�n, ZonaVeh�culo, Estado, PesoKgs, AltoCm, FechaCreaci�n)
VALUES ('ARANDELA LEVA 3/4','AYUDA A LOS FRENOS','FRENOS','BUENO','3','6','14/06/2023')

INSERT INTO Autoparte
(NOMBRE, Funci�n, ZonaVeh�culo, Estado, PesoKgs, AltoCm, FechaCreaci�n)
VALUES ('ARANDELA LEVA 7/8','AYUDA A LOS FRENOS','FRENOS','BUENO','3','6','14/06/2023')

INSERT INTO Autoparte
(NOMBRE, Funci�n, ZonaVeh�culo, Estado, PesoKgs, AltoCm, FechaCreaci�n)
VALUES ('ARANDELA LEVA 1"','AYUDA A LOS FRENOS','FRENOS','BUENO','3','6','14/06/2023')

INSERT INTO Autoparte
(NOMBRE, Funci�n, ZonaVeh�culo, Estado, PesoKgs, AltoCm, FechaCreaci�n)
VALUES ('ARANDELA LEVA 1" 1/8','AYUDA A LOS FRENOS','FRENOS','BUENO','2','6','14/06/2023')

----- INSERCION DE DATOS TABLA BARRIO

INSERT INTO Barrio
(NOMBRE, FechaCreaci�n, FechaModificaci�n)
VALUES ('Verbenal','14/06/2023','14/06/2023')

INSERT INTO Barrio
(NOMBRE, FechaCreaci�n, FechaModificaci�n)
VALUES ('Santa B�rbara','14/06/2023','14/06/2023')

INSERT INTO Barrio
(NOMBRE, FechaCreaci�n, FechaModificaci�n)
VALUES ('Pardo Rubio','14/06/2023','14/06/2023')

INSERT INTO Barrio
(NOMBRE, FechaCreaci�n, FechaModificaci�n)
VALUES ('LAS Nieves','14/06/2023','14/06/2023')

INSERT INTO Barrio
(NOMBRE, FechaCreaci�n, FechaModificaci�n)
VALUES ('Usaqu�n','14/06/2023','14/06/2023')

----- INSERCION DE DATOS TABLA BODEGA

INSERT INTO Bodega
(NOMBRE, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('Principal','En ejecucion','14/06/2023','14/06/2023')

INSERT INTO Bodega
(NOMBRE, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('auxiliar',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Bodega
(NOMBRE, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('auxiliar 2',' en ejecucion','14/06/2023','14/06/2023')

----- INSERCION DE DATOS TABLA cargo

INSERT INTO Cargo
(NombreCargo, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('jefe','En ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cargo
(NombreCargo, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('operario',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cargo
(NombreCargo, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('facturacion',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cargo
(NombreCargo, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('tesorero',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cargo
(NombreCargo, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('conductor',' en ejecucion','14/06/2023','14/06/2023')

----- INSERCION DE DATOS TABLA Categor�a

INSERT INTO Categor�a
(Categor�aID,NombreCategor�a, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('1','pines',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Categor�a
(Categor�aID,NombreCategor�a, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('2','arandelas',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Categor�a
(Categor�aID,NombreCategor�a, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('3','pasadores',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Categor�a
(Categor�aID,NombreCategor�a, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('4','lainas',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Categor�a
(Categor�aID,NombreCategor�a, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('5','empaques',' en ejecucion','14/06/2023','14/06/2023')

----- INSERCION DE DATOS TABLA Cliente

INSERT INTO Cliente
(ClienteID,Correo,Pa�s,Ciudad, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('1','notiene@gmail.com','Colombia','Bogota D.C',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cliente
(ClienteID,Correo,Pa�s,Ciudad, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('2','notiene@gmail.com','Colombia','Bogota D.C',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cliente
(ClienteID,Correo,Pa�s,Ciudad, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('3','notiene@gmail.com','Colombia','Bogota D.C',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cliente
(ClienteID,Correo,Pa�s,Ciudad, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('4','notiene@gmail.com','Colombia','Bogota D.C',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cliente
(ClienteID,Correo,Pa�s,Ciudad, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('5','notiene@gmail.com','Colombia','Bogota D.C',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cliente
(ClienteID,Correo,Pa�s,Ciudad, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('6','notiene@gmail.com','Colombia','Bogota D.C',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cliente
(ClienteID,Correo,Pa�s,Ciudad, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('7','notiene@gmail.com','Colombia','Bogota D.C',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cliente
(ClienteID,Correo,Pa�s,Ciudad, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('8','notiene@gmail.com','Colombia','Bogota D.C',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cliente
(ClienteID,Correo,Pa�s,Ciudad, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('9','notiene@gmail.com','Colombia','Bogota D.C',' en ejecucion','14/06/2023','14/06/2023')

INSERT INTO Cliente
(ClienteID,Correo,Pa�s,Ciudad, Estado,FechaCreaci�n ,FechaModificaci�n)
VALUES ('10','notiene@gmail.com','Colombia','Bogota D.C',' en ejecucion','14/06/2023','14/06/2023')


----- INSERCION DE DATOS TABLA ClienteJur�dico

INSERT INTO ClienteJur�dico
(ClienteID,Raz�nSocial,NIT)
VALUES ('1','calirepuestos','123456789-1')

INSERT INTO ClienteJur�dico
(ClienteID,Raz�nSocial,NIT)
VALUES ('2','fabricar','123456789-2')

INSERT INTO ClienteJur�dico
(ClienteID,Raz�nSocial,NIT)
VALUES ('3','apler','123456789-3')

INSERT INTO ClienteJur�dico
(ClienteID,Raz�nSocial,NIT)
VALUES ('4','tecnicarga','123456789-4')

INSERT INTO ClienteJur�dico
(ClienteID,Raz�nSocial,NIT)
VALUES ('5','imporcar','123456789-5')

INSERT INTO ClienteJur�dico
(ClienteID,Raz�nSocial,NIT)
VALUES ('6','pinardic','123456789-6')

INSERT INTO ClienteJur�dico
(ClienteID,Raz�nSocial,NIT)
VALUES ('7','irci','123456789-7')

INSERT INTO ClienteJur�dico
(ClienteID,Raz�nSocial,NIT)
VALUES ('8','rodar carga','123456789-8')

INSERT INTO ClienteJur�dico
(ClienteID,Raz�nSocial,NIT)
VALUES ('9','mecanizados jenesano','123456789-9')

INSERT INTO ClienteJur�dico
(ClienteID,Raz�nSocial,NIT)
VALUES ('10','autopartes veltrucks','1234567890-0')

----- INSERCION DE DATOS TABLA ClienteNatural

INSERT INTO ClienteNatural
(ClienteID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('1','cedula ciudadania','123456789','nixon','alejandro','galindo','jimenez')

INSERT INTO ClienteNatural
(ClienteID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('2','cedula ciudadania','123456789','cristian','daniel','galindo','jimenez')

INSERT INTO ClienteNatural
(ClienteID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('3','cedula ciudadania','123456789','gabriel','santiago','galindo','jimenez')

INSERT INTO ClienteNatural
(ClienteID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('4','cedula ciudadania','123456789','joaquin','belisario','galindo','soler')

INSERT INTO ClienteNatural
(ClienteID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('5','cedula ciudadania','123456789','angela','tatiana','umbacia','galindo')

INSERT INTO ClienteNatural
(ClienteID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('6','cedula ciudadania','123456789','maria','paula','diaz','pulido')

INSERT INTO ClienteNatural
(ClienteID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('7','cedula ciudadania','123456789','claudia','consuelo','jimenez','diaz')

INSERT INTO ClienteNatural
(ClienteID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('8','cedula ciudadania','123456789','','william','jimenez','diaz')

INSERT INTO ClienteNatural
(ClienteID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('9','cedula ciudadania','123456789','juan','carlos','jimenez','diaz')

INSERT INTO ClienteNatural
(ClienteID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('10','cedula ciudadania','123456789','nixon','alejandro','galindo','jimenez')


----- INSERCION DE DATOS TABLA Departamento

INSERT INTO Departamento
(DepartamentoID,Nombre,Capital,FechaCreaci�n ,FechaModificaci�n)
VALUES ('1','Cundimarca','Bogota','14/06/2023','14/06/2023')

INSERT INTO Departamento
(DepartamentoID,Nombre,Capital,FechaCreaci�n ,FechaModificaci�n)
VALUES ('2','Cundimarca','Bogota','14/06/2023','14/06/2023')

INSERT INTO Departamento
(DepartamentoID,Nombre,Capital,FechaCreaci�n ,FechaModificaci�n)
VALUES ('3','Cundimarca','Bogota','14/06/2023','14/06/2023')

INSERT INTO Departamento
(DepartamentoID,Nombre,Capital,FechaCreaci�n ,FechaModificaci�n)
VALUES ('4','Cundimarca','Bogota','14/06/2023','14/06/2023')

INSERT INTO Departamento
(DepartamentoID,Nombre,Capital,FechaCreaci�n ,FechaModificaci�n)
VALUES ('5','Cundimarca','Bogota','14/06/2023','14/06/2023')

----- INSERCION DE DATOS TABLA Destinatario


INSERT INTO Destinatario
(DestinatarioID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('1','cedula ciudadania','123456789','nixon','alejandro','galindo','jimenez')

INSERT INTO Destinatario
(DestinatarioID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('2','cedula ciudadania','123456789','cristian','daniel','galindo','jimenez')

INSERT INTO Destinatario
(DestinatarioID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('3','cedula ciudadania','123456789','gabriel','santiago','galindo','jimenez')

INSERT INTO Destinatario
(DestinatarioID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('4','cedula ciudadania','123456789','joaquin','belisario','galindo','soler')

INSERT INTO Destinatario
(DestinatarioID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('5','cedula ciudadania','123456789','angela','tatiana','umbacia','galindo')

INSERT INTO Destinatario
(DestinatarioID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('6','cedula ciudadania','123456789','maria','paula','diaz','pulido')

INSERT INTO Destinatario
(DestinatarioID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('7','cedula ciudadania','123456789','claudia','consuelo','jimenez','diaz')

INSERT INTO Destinatario
(DestinatarioID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('8','cedula ciudadania','123456789','','william','jimenez','diaz')

INSERT INTO Destinatario
(DestinatarioID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('9','cedula ciudadania','123456789','juan','carlos','jimenez','diaz')

INSERT INTO Destinatario
(DestinatarioID,TipoDoc,NumDoc,PrimerNombre,SegundoNombre,PrimerApellido,SegundoApellido)
VALUES ('10','cedula ciudadania','123456789','nixon','alejandro','galindo','jimenez')


----- INSERCION DE DATOS TABLA DetalleFactura

INSERT INTO DetalleFactura
(DetalleFacturaID, FacturaID, AutoparteID,NumItem, Cantidad, ValorUnitario, IVA, ValorSubtotal,ValorTotal)
VALUES ('1','1 ','1','001','1000','400','19%','400','430')

INSERT INTO DetalleFactura
(DetalleFacturaID, FacturaID, AutoparteID,NumItem, Cantidad, ValorUnitario, IVA, ValorSubtotal,ValorTotal)
VALUES ('2','2 ','2','021','21000','600','19%','600','730')
INSERT INTO DetalleFactura
(DetalleFacturaID, FacturaID, AutoparteID,NumItem, Cantidad, ValorUnitario, IVA, ValorSubtotal,ValorTotal)
VALUES ('3','33 ','3','005','1200','430','19%','430','500')

INSERT INTO DetalleFactura
(DetalleFacturaID, FacturaID, AutoparteID,NumItem, Cantidad, ValorUnitario, IVA, ValorSubtotal,ValorTotal)
VALUES ('4','111 ','5','091','1000','400','19%','400','430')

INSERT INTO DetalleFactura
(DetalleFacturaID, FacturaID, AutoparteID,NumItem, Cantidad, ValorUnitario, IVA, ValorSubtotal,ValorTotal)
VALUES ('5','10 ','4','006','1000','400','19%','400','430')

----- INSERCION DE DATOS TABLA DetallePedido

INSERT INTO DetallePedido
(DetallePedidoID, AutoparteID, ClienteID,PedidoID, Producto, Cantidad)
VALUES ('5','10 ','4','006','ARANDELA CACHO NPR','400')

INSERT INTO DetallePedido
(DetallePedidoID, AutoparteID, ClienteID,PedidoID, Producto, Cantidad)
VALUES ('1','2 ','4','005','ARANDELA LEVA 3/4','500')

INSERT INTO DetallePedido
(DetallePedidoID, AutoparteID, ClienteID,PedidoID, Producto, Cantidad)
VALUES ('5','7 ','4','006','ARANDELA LEVA 1','40')

INSERT INTO DetallePedido
(DetallePedidoID, AutoparteID, ClienteID,PedidoID, Producto, Cantidad)
VALUES ('5','6 ','4','006','ARANDELA LEVA 1 1/8','100')

INSERT INTO DetallePedido
(DetallePedidoID, AutoparteID, ClienteID,PedidoID, Producto, Cantidad)
VALUES ('5','4 ','4','006','ARANDELA CACHO NPR','30')

----- INSERCION DE DATOS TABLA Direcci�n

INSERT INTO Direcci�n
(Direcci�nID, TipoDirecci�nID, V�aID, EdificioID, DestinatarioID, Pa�s, Departamento, Municipio, Ciudad,Localidad,Barrio,Direcci�n,Informaci�nAdicional,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','1','1','1','1','COLOMBIA','CUNDIMARCA','','BOGOTA','KENNEDY','','','','14/06/2023','')

INSERT INTO Direcci�n
(Direcci�nID, TipoDirecci�nID, V�aID, EdificioID, DestinatarioID, Pa�s, Departamento, Municipio, Ciudad,Localidad,Barrio,Direcci�n,Informaci�nAdicional,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','1','1','2','1','COLOMBIA','CUNDIMARCA','','BOGOTA','KENNEDY','','','','14/06/2023','')

INSERT INTO Direcci�n
(Direcci�nID, TipoDirecci�nID, V�aID, EdificioID, DestinatarioID, Pa�s, Departamento, Municipio, Ciudad,Localidad,Barrio,Direcci�n,Informaci�nAdicional,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','1','1','3','1','COLOMBIA','CUNDIMARCA','','BOGOTA','KENNEDY','','','','14/06/2023','')

INSERT INTO Direcci�n
(Direcci�nID, TipoDirecci�nID, V�aID, EdificioID, DestinatarioID, Pa�s, Departamento, Municipio, Ciudad,Localidad,Barrio,Direcci�n,Informaci�nAdicional,FechaCreaci�n,FechaModificaci�n)
VALUES ('4','1','1','4','1','COLOMBIA','CUNDIMARCA','','BOGOTA','KENNEDY','','','','14/06/2023','')

INSERT INTO Direcci�n
(Direcci�nID, TipoDirecci�nID, V�aID, EdificioID, DestinatarioID, Pa�s, Departamento, Municipio, Ciudad,Localidad,Barrio,Direcci�n,Informaci�nAdicional,FechaCreaci�n,FechaModificaci�n)
VALUES ('5','1','1','5','1','COLOMBIA','CUNDIMARCA','','BOGOTA','KENNEDY','','','','14/06/2023','')

----- INSERCION DE DATOS TABLA DireccionCliente

INSERT INTO DireccionCliente
(DireccionClienteID, Direcci�nID, ClienteID,TipoDirecci�nID, DestinatarioID, EdificioID,V�aID,FechaCreaci�n,FechaModificaci�n)
VALUES ('5','4 ','4','6','1','2','1','14/06/2023','')

INSERT INTO DireccionCliente
(DireccionClienteID, Direcci�nID, ClienteID,TipoDirecci�nID, DestinatarioID, EdificioID,V�aID,FechaCreaci�n,FechaModificaci�n)
VALUES ('5','4 ','8','6','1','2','1','14/06/2023','')

INSERT INTO DireccionCliente
(DireccionClienteID, Direcci�nID, ClienteID,TipoDirecci�nID, DestinatarioID, EdificioID,V�aID,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','4 ','7','6','1','2','1','14/06/2023','')

INSERT INTO DireccionCliente
(DireccionClienteID, Direcci�nID, ClienteID,TipoDirecci�nID, DestinatarioID, EdificioID,V�aID,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','4 ','1','6','1','2','1','14/06/2023','')

INSERT INTO DireccionCliente
(DireccionClienteID, Direcci�nID, ClienteID,TipoDirecci�nID, DestinatarioID, EdificioID,V�aID,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','4 ','3','6','1','2','1','14/06/2023','')

----- INSERCION DE DATOS TABLA DireccionFabrica

INSERT INTO DireccionFabrica
(DireccionFabricaID, Direcci�nID, FabricaID,TipoDirecci�nID, V�aID, EdificioID,FechaCreaci�n,FechaModificaci�n)
VALUES ('7','4 ','4','6','1','2','9','14/06/2023','')

INSERT INTO DireccionFabrica
(DireccionFabricaID, Direcci�nID, FabricaID,TipoDirecci�nID, V�aID, EdificioID,FechaCreaci�n,FechaModificaci�n)
VALUES ('5','6 ','4','8','1','2','1','14/06/2023','')

INSERT INTO DireccionFabrica
(DireccionFabricaID, Direcci�nID, FabricaID,TipoDirecci�nID, V�aID, EdificioID,FechaCreaci�n,FechaModificaci�n)
VALUES ('7','4 ','4','6','1','8','1','14/06/2023','')

INSERT INTO DireccionFabrica
(DireccionFabricaID, Direcci�nID, FabricaID,TipoDirecci�nID, V�aID, EdificioID,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','4 ','4','5','1','2','1','14/06/2023','')

INSERT INTO DireccionFabrica
(DireccionFabricaID, Direcci�nID, FabricaID,TipoDirecci�nID, V�aID, EdificioID,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','4 ','4','3','1','2','6','14/06/2023','')

----- INSERCION DE DATOS TABLA DireccionProveedor

INSERT INTO DireccionProveedor
(DireccionProveedorID, Direcci�nID, ProveedorID,TipoDirecci�nID, V�aID, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','4 ','4','3','1','14/06/2023','')

INSERT INTO DireccionProveedor
(DireccionProveedorID, Direcci�nID, ProveedorID,TipoDirecci�nID, V�aID, FechaCreaci�n,FechaModificaci�n)
VALUES ('2','3 ','6','3','1','14/06/2023','')

INSERT INTO DireccionProveedor
(DireccionProveedorID, Direcci�nID, ProveedorID,TipoDirecci�nID, V�aID, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','5 ','4','6','1','14/06/2023','')

INSERT INTO DireccionProveedor
(DireccionProveedorID, Direcci�nID, ProveedorID,TipoDirecci�nID, V�aID, FechaCreaci�n,FechaModificaci�n)
VALUES ('7','3 ','4','3','8','14/06/2023','')

INSERT INTO DireccionProveedor
(DireccionProveedorID, Direcci�nID, ProveedorID,TipoDirecci�nID, V�aID, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','6 ','4','3','6','14/06/2023','')

----- INSERCION DE DATOS TABLA DireccionUsuario

INSERT INTO DireccionUsuario
(DireccionUsuarioID, Direcci�nID, UsuarioID,TipoDirecci�nID, V�aID, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','6 ','4','3','6','14/06/2023','')

INSERT INTO DireccionUsuario
(DireccionUsuarioID, Direcci�nID, UsuarioID,TipoDirecci�nID, V�aID, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','4 ','4','3','1','14/06/2023','')

INSERT INTO DireccionUsuario
(DireccionUsuarioID, Direcci�nID, UsuarioID,TipoDirecci�nID, V�aID, FechaCreaci�n,FechaModificaci�n)
VALUES ('2','3 ','6','3','1','14/06/2023','')

INSERT INTO DireccionUsuario
(DireccionUsuarioID, Direcci�nID, UsuarioID,TipoDirecci�nID, V�aID, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','5 ','4','6','1','14/06/2023','')

INSERT INTO DireccionUsuario
(DireccionUsuarioID, Direcci�nID, UsuarioID,TipoDirecci�nID, V�aID, FechaCreaci�n,FechaModificaci�n)
VALUES ('7','3 ','4','3','8','14/06/2023','')

----- INSERCION DE DATOS TABLA Edificio

INSERT INTO Edificio
(EdificioID,TipoEdificio,NumEdificio, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','6 ','4','14/06/2023','')

INSERT INTO Edificio
(EdificioID,TipoEdificio,NumEdificio, FechaCreaci�n,FechaModificaci�n)
VALUES ('2','3 ','8','14/06/2023','')

INSERT INTO Edificio
(EdificioID,TipoEdificio,NumEdificio, FechaCreaci�n,FechaModificaci�n)
VALUES ('7','4 ','3','14/06/2023','')

INSERT INTO Edificio
(EdificioID,TipoEdificio,NumEdificio, FechaCreaci�n,FechaModificaci�n)
VALUES ('5','3 ','2','14/06/2023','')

INSERT INTO Edificio
(EdificioID,TipoEdificio,NumEdificio, FechaCreaci�n,FechaModificaci�n)
VALUES ('2','1 ','7','14/06/2023','')

----- INSERCION DE DATOS TABLA EstanteOrganizador

INSERT INTO EstanteOrganizador
(EstanteOrganizador,FabricaID,BodegaID,Material,Color,CapacidadM�xKgs,AltoCm,LargoCm, FechaCreaci�n,FechaModificaci�n)
VALUES ('2','1 ','3','4','','100','10','10','14/06/2023','')

INSERT INTO EstanteOrganizador
(EstanteOrganizador,FabricaID,BodegaID,Material,Color,CapacidadM�xKgs,AltoCm,LargoCm, FechaCreaci�n,FechaModificaci�n)
VALUES ('2','4 ','2','3','','200','15','10','14/06/2023','')

INSERT INTO EstanteOrganizador
(EstanteOrganizador,FabricaID,BodegaID,Material,Color,CapacidadM�xKgs,AltoCm,LargoCm, FechaCreaci�n,FechaModificaci�n)
VALUES ('3','3 ','1','7','','100','10','10','14/06/2023','')

----- INSERCION DE DATOS TABLA Estanter�a

INSERT INTO Estanter�a
(Estanter�aID,EstanteOrganizadorID,InventarioID,AutoparteID,NumEstanter�a,TipoProducto, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','7','3','2','1','LAINAS','14/06/2023','')

INSERT INTO Estanter�a
(Estanter�aID,EstanteOrganizadorID,InventarioID,AutoparteID,NumEstanter�a,TipoProducto, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','7','3','2','1','PASADORES','14/06/2023','')

INSERT INTO Estanter�a
(Estanter�aID,EstanteOrganizadorID,InventarioID,AutoparteID,NumEstanter�a,TipoProducto, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','7','3','2','1','PINES','14/06/2023','')

INSERT INTO Estanter�a
(Estanter�aID,EstanteOrganizadorID,InventarioID,AutoparteID,NumEstanter�a,TipoProducto, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','7','3','2','1','EMPAQUES','14/06/2023','')

INSERT INTO Estanter�a
(Estanter�aID,EstanteOrganizadorID,InventarioID,AutoparteID,NumEstanter�a,TipoProducto, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','7','3','2','1','ARANDELAS','14/06/2023','')

----- INSERCION DE DATOS TABLA Existencia

INSERT INTO Existencia
(ExistenciaID,MateriaPrimaID,CantidadDisponible,ExistenciasIniciales,PuntoReorden,InventarioMinimo,InventarioM�ximo, FechaCreaci�n,FechaModificaci�n)
VALUES ('1','7','300','2000','','2000','5000','14/06/2023','')

INSERT INTO Existencia
(ExistenciaID,MateriaPrimaID,CantidadDisponible,ExistenciasIniciales,PuntoReorden,InventarioMinimo,InventarioM�ximo, FechaCreaci�n,FechaModificaci�n)
VALUES ('2','1','3200','2000','','2000','5000','14/06/2023','')

INSERT INTO Existencia
(ExistenciaID,MateriaPrimaID,CantidadDisponible,ExistenciasIniciales,PuntoReorden,InventarioMinimo,InventarioM�ximo, FechaCreaci�n,FechaModificaci�n)
VALUES ('3','3','2100','2000','','2000','5000','14/06/2023','')

INSERT INTO Existencia
(ExistenciaID,MateriaPrimaID,CantidadDisponible,ExistenciasIniciales,PuntoReorden,InventarioMinimo,InventarioM�ximo, FechaCreaci�n,FechaModificaci�n)
VALUES ('4','2','3300','2000','','2000','5000','14/06/2023','')

INSERT INTO Existencia
(ExistenciaID,MateriaPrimaID,CantidadDisponible,ExistenciasIniciales,PuntoReorden,InventarioMinimo,InventarioM�ximo, FechaCreaci�n,FechaModificaci�n)
VALUES ('2','1','2200','2000','','2000','5000','14/06/2023','')

----- INSERCION DE DATOS TABLA Fabrica


INSERT INTO Fabrica
(FabricaID,NIT,Raz�nSocial,Direcci�nEmail, FechaCreaci�n,FechaModificaci�n)
VALUES ('3','123456789-1 ','Jucar sas','notiene@gmail.com','14/06/2023','')

INSERT INTO Fabrica
(FabricaID,NIT,Raz�nSocial,Direcci�nEmail, FechaCreaci�n,FechaModificaci�n)
VALUES ('3','123456789-1 ','Jucar sas','notiene@gmail.com','14/06/2023','')

INSERT INTO Fabrica
(FabricaID,NIT,Raz�nSocial,Direcci�nEmail, FechaCreaci�n,FechaModificaci�n)
VALUES ('3','123456789-1 ','Jucar sas','notiene@gmail.com','14/06/2023','')

----- INSERCION DE DATOS TABLA Factura

insert into Factura
(FacturaID,PedidoID,ClienteID,UsuarioID,FormaPagoID,N_Factura,Direcci�n,T�lefono,NumFacturaVenta,Cliente,
CC,NIT,Tel�fonoCliente,Observaci�n,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','3','4','2','001','','3195199095','1','imporcar','','12345678-9','','','14/06/2023','')

insert into Factura
(FacturaID,PedidoID,ClienteID,UsuarioID,FormaPagoID,N_Factura,Direcci�n,T�lefono,NumFacturaVenta,Cliente,
CC,NIT,Tel�fonoCliente,Observaci�n,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','3','4','2','002','','3155199095','1','fabricar','','12345678-9','','','14/06/2023','')

insert into Factura
(FacturaID,PedidoID,ClienteID,UsuarioID,FormaPagoID,N_Factura,Direcci�n,T�lefono,NumFacturaVenta,Cliente,
CC,NIT,Tel�fonoCliente,Observaci�n,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','3','4','2','010','','3125199095','1','apler','','12345678-9','','','14/06/2023','')

insert into Factura
(FacturaID,PedidoID,ClienteID,UsuarioID,FormaPagoID,N_Factura,Direcci�n,T�lefono,NumFacturaVenta,Cliente,
CC,NIT,Tel�fonoCliente,Observaci�n,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','3','4','2','007','','3215199095','1','mecanizados','','12345678-9','','','14/06/2023','')

insert into Factura
(FacturaID,PedidoID,ClienteID,UsuarioID,FormaPagoID,N_Factura,Direcci�n,T�lefono,NumFacturaVenta,Cliente,
CC,NIT,Tel�fonoCliente,Observaci�n,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','3','4','2','0017','','3185199095','1','imporcar','','12345678-9','','','14/06/2023','')

insert into Factura
(FacturaID,PedidoID,ClienteID,UsuarioID,FormaPagoID,N_Factura,Direcci�n,T�lefono,NumFacturaVenta,Cliente,
CC,NIT,Tel�fonoCliente,Observaci�n,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','3','4','2','008','','3165199095','1','autopartes velyrucks','','12345678-9','','','14/06/2023','')

insert into Factura
(FacturaID,PedidoID,ClienteID,UsuarioID,FormaPagoID,N_Factura,Direcci�n,T�lefono,NumFacturaVenta,Cliente,
CC,NIT,Tel�fonoCliente,Observaci�n,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','3','4','2','009','','3135199095','1','tecnicarga','','12345678-9','','','14/06/2023','')

insert into Factura
(FacturaID,PedidoID,ClienteID,UsuarioID,FormaPagoID,N_Factura,Direcci�n,T�lefono,NumFacturaVenta,Cliente,
CC,NIT,Tel�fonoCliente,Observaci�n,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','3','4','2','011','','3495199095','1','calirespuestos','','12345678-9','','','14/06/2023','')

insert into Factura
(FacturaID,PedidoID,ClienteID,UsuarioID,FormaPagoID,N_Factura,Direcci�n,T�lefono,NumFacturaVenta,Cliente,
CC,NIT,Tel�fonoCliente,Observaci�n,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','3','4','2','041','','3135199095','1','imporcar','','12345678-9','','','14/06/2023','')

insert into Factura
(FacturaID,PedidoID,ClienteID,UsuarioID,FormaPagoID,N_Factura,Direcci�n,T�lefono,NumFacturaVenta,Cliente,
CC,NIT,Tel�fonoCliente,Observaci�n,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','3','4','2','031','','31155359095','1','imporcar','','12345678-9','','','14/06/2023','')

----- INSERCION DE DATOS TABLA FormaPago

INSERT INTO FormaPago
( FormaPagoID,NombreFormaPago,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','plataforma digital','14/06/2023','')

INSERT INTO FormaPago
( FormaPagoID,NombreFormaPago,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','efectivo','14/06/2023','')

INSERT INTO FormaPago
( FormaPagoID,NombreFormaPago,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','Bancos','14/06/2023','')

----- INSERCION DE DATOS TABLA MaterialAutoparte

INSERT INTO MaterialAutoparte
( MaterialAutoparteID,MateriaPrimaID,AutoparteID,Composici�nAutoparte,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','2','3','lamina','14/06/2023','')

INSERT INTO MaterialAutoparte
( MaterialAutoparteID,MateriaPrimaID,AutoparteID,Composici�nAutoparte,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','3','lamina','14/06/2023','')

INSERT INTO MaterialAutoparte
( MaterialAutoparteID,MateriaPrimaID,AutoparteID,Composici�nAutoparte,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','4','lamina','14/06/2023','')

INSERT INTO MaterialAutoparte
( MaterialAutoparteID,MateriaPrimaID,AutoparteID,Composici�nAutoparte,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','1','1','lamina','14/06/2023','')

INSERT INTO MaterialAutoparte
( MaterialAutoparteID,MateriaPrimaID,AutoparteID,Composici�nAutoparte,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','1','4','lamina','14/06/2023','')

----- INSERCION DE DATOS TABLA MateriaPrima


INSERT INTO MateriaPrima
( MateriaPrimaID,TipoMateriaPrima,NombreMateriaPrima,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','15','lamina','14/06/2023','')

INSERT INTO MateriaPrima
( MateriaPrimaID,TipoMateriaPrima,NombreMateriaPrima,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','13','lamina','14/06/2023','')

INSERT INTO MateriaPrima
( MateriaPrimaID,TipoMateriaPrima,NombreMateriaPrima,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','18','lamina','14/06/2023','')

INSERT INTO MateriaPrima
( MateriaPrimaID,TipoMateriaPrima,NombreMateriaPrima,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','20','lamina','14/06/2023','')

----- INSERCION DE DATOS TABLA MedioPago

INSERT INTO MedioPago
( MedioPagoID,Remitente,NombreMetodoPago,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','Jucar','efectivo','exitoso','14/06/2023','')

INSERT INTO MedioPago
( MedioPagoID,Remitente,NombreMetodoPago,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','Jucar','plataforma digital','exitoso','14/06/2023','')

INSERT INTO MedioPago
( MedioPagoID,Remitente,NombreMetodoPago,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','Jucar','bancos','exitoso','14/06/2023','')

----- INSERCION DE DATOS TABLA Movimiento

INSERT INTO Movimiento
( MovimientoID,Cantidad,TipoMovimiento,FechaMovimiento,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2.000.000','Egresos','14/06/2023','14/06/2023','')

INSERT INTO Movimiento
( MovimientoID,Cantidad,TipoMovimiento,FechaMovimiento,FechaCreaci�n,FechaModificaci�n)
VALUES ('5','3.000.000','Egresos','14/06/2023','14/06/2023','')

INSERT INTO Movimiento
( MovimientoID,Cantidad,TipoMovimiento,FechaMovimiento,FechaCreaci�n,FechaModificaci�n)
VALUES ('4','1.000.000','Egresos','14/06/2023','14/06/2023','')

INSERT INTO Movimiento
( MovimientoID,Cantidad,TipoMovimiento,FechaMovimiento,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','2.500.000','Egresos','14/06/2023','14/06/2023','')

INSERT INTO Movimiento
( MovimientoID,Cantidad,TipoMovimiento,FechaMovimiento,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','4.000.000','Egresos','14/06/2023','14/06/2023','')

----- INSERCION DE DATOS TABLA Municipio

INSERT INTO Municipio
( MunicipioID,DepartamentoID,Nombre,Capital,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','2','jenesano','tunja','14/06/2023','')

INSERT INTO Municipio
( MunicipioID,DepartamentoID,Nombre,Capital,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','3','bogota','bogota','14/06/2023','')

INSERT INTO Municipio
( MunicipioID,DepartamentoID,Nombre,Capital,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','4','cundinamarca','bogota','14/06/2023','')

INSERT INTO Municipio
( MunicipioID,DepartamentoID,Nombre,Capital,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','cundinamarca','bogota','14/06/2023','')

----- INSERCION DE DATOS TABLA Pedido

INSERT INTO Pedido
( PedidoID,ClienteID,Lugar,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','bogota ','enviado','14/06/2023','')

INSERT INTO Pedido
( PedidoID,ClienteID,Lugar,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','3','bogota ','enviado','14/06/2023','')

INSERT INTO Pedido
( PedidoID,ClienteID,Lugar,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','2','bogota ','enviado','14/06/2023','')

INSERT INTO Pedido
( PedidoID,ClienteID,Lugar,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('4','4','bogota ','enviado','14/06/2023','')

INSERT INTO Pedido
( PedidoID,ClienteID,Lugar,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('5','5','bogota ','enviado','14/06/2023','')

----- INSERCION DE DATOS TABLA Proveedor

INSERT INTO Proveedor
( ProveedorID,TipoProducto,Estado,Correo,FechaCreaci�n,FechaModificaci�n)
VALUES ('5','lamina','enviado ','notiene@gmail.com','14/06/2023','')

INSERT INTO Proveedor
( ProveedorID,TipoProducto,Estado,Correo,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','lamina','enviado ','notiene@gmail.com','14/06/2023','')

INSERT INTO Proveedor
( ProveedorID,TipoProducto,Estado,Correo,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','lamina','enviado ','notiene@gmail.com','14/06/2023','')

INSERT INTO Proveedor
( ProveedorID,TipoProducto,Estado,Correo,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','lamina','enviado ','notiene@gmail.com','14/06/2023','')

INSERT INTO Proveedor
( ProveedorID,TipoProducto,Estado,Correo,FechaCreaci�n,FechaModificaci�n)
VALUES ('4','lamina','enviado ','notiene@gmail.com','14/06/2023','')

----- INSERCION DE DATOS TABLA ProveedorJur�dico

INSERT INTO ProveedorJur�dico
( ProveedorID,Raz�nSocial,NIT,RepresentanteLegal)
VALUES ('4','imporcar','12345678-9 ','Yamel caro')

INSERT INTO ProveedorJur�dico
( ProveedorID,Raz�nSocial,NIT,RepresentanteLegal)
VALUES ('2','apler','12345678-9 ','jhonatan  caro')

INSERT INTO ProveedorJur�dico
( ProveedorID,Raz�nSocial,NIT,RepresentanteLegal)
VALUES ('5','calirepuestos','12345678-9 ','jorge soler')

INSERT INTO ProveedorJur�dico
( ProveedorID,Raz�nSocial,NIT,RepresentanteLegal)
VALUES ('1','fabricar','12345678-9 ','nestor caro')

INSERT INTO ProveedorJur�dico
( ProveedorID,Raz�nSocial,NIT,RepresentanteLegal)
VALUES ('4','imporcar','12345678-9 ','luis caro')

----- INSERCION DE DATOS TABLA ProveedorNatural

INSERT INTO ProveedorNatural
( ProveedorID,TipoDoc,NumDoc,PrimerNombre,PrimeApellido,PrimeApellido,SegundoApellido)
VALUES ('4','C.c','123456789 ','luis ','','caro','')
INSERT INTO ProveedorNatural
( ProveedorID,TipoDoc,NumDoc,PrimerNombre,PrimeApellido,PrimeApellido,SegundoApellido)
VALUES ('1','C.c','123456789 ','yamel ','','caro','')

INSERT INTO ProveedorNatural
( ProveedorID,TipoDoc,NumDoc,PrimerNombre,PrimeApellido,PrimeApellido,SegundoApellido)
VALUES ('3','C.c','123456789 ','jhonatan ','','caro','')

INSERT INTO ProveedorNatural
( ProveedorID,TipoDoc,NumDoc,PrimerNombre,PrimeApellido,PrimeApellido,SegundoApellido)
VALUES ('2','C.c','123456789 ','jorge ','','soler','')

INSERT INTO ProveedorNatural
( ProveedorID,TipoDoc,NumDoc,PrimerNombre,PrimeApellido,PrimeApellido,SegundoApellido)
VALUES ('5','C.c','123456789 ','nestor ','','caro','')

----- INSERCION DE DATOS TABLA Subcategor�a

INSERT INTO Subcategor�a
( Subcategor�aID,Categor�aID,NombreSubCat,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','2','lamina ','activo','14/06/2023','')

INSERT INTO Subcategor�a
( Subcategor�aID,Categor�aID,NombreSubCat,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','2','lamina ','activo','14/06/2023','')

INSERT INTO Subcategor�a
( Subcategor�aID,Categor�aID,NombreSubCat,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','3','lamina ','activo','14/06/2023','')

INSERT INTO Subcategor�a
( Subcategor�aID,Categor�aID,NombreSubCat,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','1','lamina ','activo','14/06/2023','')

INSERT INTO Subcategor�a
( Subcategor�aID,Categor�aID,NombreSubCat,Estado,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','4','lamina ','activo','14/06/2023','')

----- INSERCION DE DATOS TABLA TelefonoFabrica

INSERT INTO TelefonoFabrica
( TelefonoFabricaID,FabricaID,TipoT�lefono,NumTel�fono,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','1','celular ','3103106949','14/06/2023','')

INSERT INTO TelefonoFabrica
( TelefonoFabricaID,FabricaID,TipoT�lefono,NumTel�fono,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','2','celular ','3164664618','14/06/2023','')

----- INSERCION DE DATOS TABLA T�lefonoProveedor

INSERT INTO T�lefonoProveedor
( TelefonoProveedorID,ProveedorID,TipoT�lefono,NumT�lefono,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','2','celular ','3195199095','14/06/2023','')

INSERT INTO T�lefonoProveedor
( TelefonoProveedorID,ProveedorID,TipoT�lefono,NumT�lefono,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','1','celular ','3124485862','14/06/2023','')

INSERT INTO T�lefonoProveedor
( TelefonoProveedorID,ProveedorID,TipoT�lefono,NumT�lefono,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','3','celular ','3012101308','14/06/2023','')

INSERT INTO T�lefonoProveedor
( TelefonoProveedorID,ProveedorID,TipoT�lefono,NumT�lefono,FechaCreaci�n,FechaModificaci�n)
VALUES ('4','4','celular ','3195199095','14/06/2023','')

INSERT INTO T�lefonoProveedor
( TelefonoProveedorID,ProveedorID,TipoT�lefono,NumT�lefono,FechaCreaci�n,FechaModificaci�n)
VALUES ('5','5','celular ','3164664618','14/06/2023','')

----- INSERCION DE DATOS TABLA TelefonoUsuario

INSERT INTO TelefonoUsuario
( TelefonoUsuarioID,UsuarioID,TipoT�lefono,NumT�lefono,FechaCreaci�n,FechaModificaci�n)
VALUES ('5','5','celular ','3164664618','14/06/2023','')

INSERT INTO TelefonoUsuario
( TelefonoUsuarioID,UsuarioID,TipoT�lefono,NumT�lefono,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','2','celular ','3195199095','14/06/2023','')

INSERT INTO TelefonoUsuario
( TelefonoUsuarioID,UsuarioID,TipoT�lefono,NumT�lefono,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','1','celular ','3124485862','14/06/2023','')

INSERT INTO TelefonoUsuario
( TelefonoUsuarioID,UsuarioID,TipoT�lefono,NumT�lefono,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','3','celular ','3012101308','14/06/2023','')

INSERT INTO TelefonoUsuario
( TelefonoUsuarioID,UsuarioID,TipoT�lefono,NumT�lefono,FechaCreaci�n,FechaModificaci�n)
VALUES ('4','4','celular ','3195199095','14/06/2023','')

----- INSERCION DE DATOS TABLA TipoDirecci�n

INSERT INTO TipoDirecci�n
( TipoDirecci�nID,Tipo,FechaCreaci�n,FechaModificaci�n)
VALUES ('1 ','calle','14/06/2023','')

INSERT INTO TipoDirecci�n
( TipoDirecci�nID,Tipo,FechaCreaci�n,FechaModificaci�n)
VALUES ('2 ','avenida','14/06/2023','')

INSERT INTO TipoDirecci�n
( TipoDirecci�nID,Tipo,FechaCreaci�n,FechaModificaci�n)
VALUES ('1 ','calle','14/06/2023','')

INSERT INTO TipoDirecci�n
( TipoDirecci�nID,Tipo,FechaCreaci�n,FechaModificaci�n)
VALUES ('3 ','transversal','14/06/2023','')

INSERT INTO TipoDirecci�n
( TipoDirecci�nID,Tipo,FechaCreaci�n,FechaModificaci�n)
VALUES ('1 ','calle','14/06/2023','')

----- INSERCION DE DATOS TABLA Usuario

INSERT INTO Usuario
( UsuarioID,PrimerNombre,SegundoNombre,PrimerApellido,SegundoNombre,Direcci�nCorreo,Direcci�nDomicilio,Sexo,FechaNacimiento,Estado,NombreUsuario,PasswordHash,FechaCreaci�n,FechaModificaci�n)
VALUES ('1','santiago','','galindo','','notiene@gmail.com','','M','','activo','santiago13','123456','14/06/2023','')

INSERT INTO Usuario
( UsuarioID,PrimerNombre,SegundoNombre,PrimerApellido,SegundoNombre,Direcci�nCorreo,Direcci�nDomicilio,Sexo,FechaNacimiento,Estado,NombreUsuario,PasswordHash,FechaCreaci�n,FechaModificaci�n)
VALUES ('2','daniel','','galindo','','notiene@gmail.com','','M','','activo','daniel_13','1234568','14/06/2023','')

INSERT INTO Usuario
( UsuarioID,PrimerNombre,SegundoNombre,PrimerApellido,SegundoNombre,Direcci�nCorreo,Direcci�nDomicilio,Sexo,FechaNacimiento,Estado,NombreUsuario,PasswordHash,FechaCreaci�n,FechaModificaci�n)
VALUES ('3','alejandro','','galindo','','notiene@gmail.com','','M','','activo','alejandro28','123456','14/06/2023','')

INSERT INTO Usuario
( UsuarioID,PrimerNombre,SegundoNombre,PrimerApellido,SegundoNombre,Direcci�nCorreo,Direcci�nDomicilio,Sexo,FechaNacimiento,Estado,NombreUsuario,PasswordHash,FechaCreaci�n,FechaModificaci�n)
VALUES ('4','tatiana','','umbacia','','notiene@gmail.com','','f','','activo','tatiana123','123456','14/06/2023','')

INSERT INTO Usuario
( UsuarioID,PrimerNombre,SegundoNombre,PrimerApellido,SegundoNombre,Direcci�nCorreo,Direcci�nDomicilio,Sexo,FechaNacimiento,Estado,NombreUsuario,PasswordHash,FechaCreaci�n,FechaModificaci�n)
VALUES ('5','paula','','diaz','','notiene@gmail.com','','f','','activo','paula134','123456','14/06/2023','')

INSERT INTO Usuario
( UsuarioID,PrimerNombre,SegundoNombre,PrimerApellido,SegundoNombre,Direcci�nCorreo,Direcci�nDomicilio,Sexo,FechaNacimiento,Estado,NombreUsuario,PasswordHash,FechaCreaci�n,FechaModificaci�n)
VALUES ('6','belisario','','galindo','','notiene@gmail.com','','M','','activo','belis123','123456','14/06/2023','')

INSERT INTO Usuario
( UsuarioID,PrimerNombre,SegundoNombre,PrimerApellido,SegundoNombre,Direcci�nCorreo,Direcci�nDomicilio,Sexo,FechaNacimiento,Estado,NombreUsuario,PasswordHash,FechaCreaci�n,FechaModificaci�n)
VALUES ('7','alarcon','','galindo','','notiene@gmail.com','','M','','activo','alarcon99','123456','14/06/2023','')

INSERT INTO Usuario
( UsuarioID,PrimerNombre,SegundoNombre,PrimerApellido,SegundoNombre,Direcci�nCorreo,Direcci�nDomicilio,Sexo,FechaNacimiento,Estado,NombreUsuario,PasswordHash,FechaCreaci�n,FechaModificaci�n)
VALUES ('8','oscar','','jimenez','','notiene@gmail.com','','M','','activo','oscarJ12','123456','14/06/2023','')

INSERT INTO Usuario
( UsuarioID,PrimerNombre,SegundoNombre,PrimerApellido,SegundoNombre,Direcci�nCorreo,Direcci�nDomicilio,Sexo,FechaNacimiento,Estado,NombreUsuario,PasswordHash,FechaCreaci�n,FechaModificaci�n)
VALUES ('9','carlos','','jimenez','','notiene@gmail.com','','M','','activo','car13*','123456','14/06/2023','')

INSERT INTO Usuario
( UsuarioID,PrimerNombre,SegundoNombre,PrimerApellido,SegundoNombre,Direcci�nCorreo,Direcci�nDomicilio,Sexo,FechaNacimiento,Estado,NombreUsuario,PasswordHash,FechaCreaci�n,FechaModificaci�n)
VALUES ('10','william','','jimenez','','notiene@gmail.com','','M','','activo','jimenez987','123456','14/06/2023','')

----- INSERCION DE DATOS TABLA UsuarioCargo

INSERT INTO UsuarioCargo
( UsuarioCargoID,CargoID,UsuarioID,FechaCreaci�n,FechaModificaci�n)
VALUES ('1 ','2','2','14/06/2023','')

INSERT INTO UsuarioCargo
( UsuarioCargoID,CargoID,UsuarioID,FechaCreaci�n,FechaModificaci�n)
VALUES ('1 ','3','4','14/06/2023','')

INSERT INTO UsuarioCargo
( UsuarioCargoID,CargoID,UsuarioID,FechaCreaci�n,FechaModificaci�n)
VALUES ('2 ','4','2','14/06/2023','')

INSERT INTO UsuarioCargo
( UsuarioCargoID,CargoID,UsuarioID,FechaCreaci�n,FechaModificaci�n)
VALUES ('1 ','3','5','14/06/2023','')

INSERT INTO UsuarioCargo
( UsuarioCargoID,CargoID,UsuarioID,FechaCreaci�n,FechaModificaci�n)
VALUES ('5 ','2','4','14/06/2023','')

