USE Practica_4;

CREATE VIEW Vista1 AS
SELECT Nombre_LocEve, Direccion_LocEve, Asientos FROM Local_Evento WHERE Local_Evento_id = '1';


CREATE VIEW Vista2 AS
SELECT Nombre_LocEve, Direccion_LocEve, Asientos FROM Local_Evento WHERE Local_Evento_id = '2';


CREATE VIEW Vista3 AS
SELECT Nombre_LocEve, Direccion_LocEve, Asientos FROM Local_Evento WHERE Local_Evento_id = '3';

CREATE VIEW Vista4 AS
SELECT Nombre_Eve, Fecha_Evento, Local_Eve FROM Evento WHERE Tipo_Evento = 'Concierto';

CREATE VIEW Vista5 AS
SELECT Nombre_Eve, Fecha_Evento, Local_Eve FROM Evento WHERE Tipo_Evento = 'Festival';

CREATE VIEW Vista6 AS
SELECT Nombre_Eve, Fecha_Evento, Local_Eve FROM Evento WHERE Tipo_Evento = 'Show Comedia';

CREATE VIEW Vista7 AS
SELECT Nombre_Eve, Fecha_Evento, Local_Eve FROM Evento WHERE Tipo_Evento = 'Teatro';

CREATE VIEW Vista8 AS
SELECT Nombre_Taq, Direccion_Taq, Num_Tel, Lada FROM Taquilla WHERE Ciudad_Taq = '7';

CREATE VIEW Vista9 AS
SELECT Nombre_Taq, Direccion_Taq, Num_Tel, Lada FROM Taquilla WHERE Ciudad_Taq = '9';

CREATE VIEW Vista10 AS
SELECT Area_Asiento, Seccion_Asiento, Fila_Asiento, Num_Asiento, Precio_Asiento FROM Tipo_Asento WHERE Estatus_id = 'Disponible';
