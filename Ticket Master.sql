create database TicketMaster


Use TicketMaster

Create Table Estado (
	Estado_id int not null,
	Nombre_Est varchar (30) not null,
	Abreviatura_Est varchar (15) not null,
	Lada smallint not null, 

	constraint PK_Est1 primary key (Estado_id)
)

Create Table Ciudad (
	Ciudad_id int not null,
	Nombre_Cui varchar (30) not null,
	Abreviatura_Ciu varchar (10) not null,
	Estado_Ciu int not null,

	constraint PK_Ciu1 primary key (Ciudad_id),
	constraint FK_Est1 foreign key (Estado_Ciu) references Estado (Estado_id)
)

Create Table Puesto (
	Puesto_id int not null,
	Nombre_Pue varchar (50) not null,
	Direccion_Pue varchar (100) not null,
	Cant_Emp_Pue tinyint not null,
	Ciudad_Pue int not null,
	Estado_Pue int not null,
	Num_Tel_Pue varchar (20) not null,

	constraint PK_Pue primary key (Puesto_id),
	constraint FK_Ciu1 foreign key (Ciudad_Pue) references Ciudad (Ciudad_id),
	constraint FK_Est2 foreign key (Estado_Pue) references Estado (Estado_id)
)

Create Table Tipo_Asiento (
	T_Asiento_id int  not null,
	Area_Asiento varchar (30) not null,
	Seccion_Asiento Varchar (10) not null,
	Fila_Asiento tinyint not null,
	Num_Asiento smallint not null,
	Costo_Asiento smallint not null,

	constraint PK_TAsi1 primary key (T_Asiento_id)

)

Create Table Local_Evento(
	Local_Evento_id int not null,
	Nombre_LocEve varchar (50) not null,
	Direccion_LocEve varchar (50) not null,
	Asiento int not null,

	constraint PK_LocEve1 primary key (Local_Evento_id),
	constraint FK_Asi1 foreign key (Asiento) references Tipo_Asiento(T_Asiento_id)

)

Create Table Tipo_Evento (
	T_Evento_id int not null,
	Nombre_TEve varchar (30),

	constraint PK_TEve1 primary key (T_Evento_id)

)

Create Table Evento (
	Evento_id int not null,
	Nombre_Eve varchar (50) not null,
	Tipo_Evento int not null,
	Fecha_Eve date not null,
	Lugar_Eve int not null,

	constraint PK_Eve1 primary key (Evento_id),
	constraint FK_TEve1 foreign key (Tipo_Evento) references Tipo_Evento (T_Evento_id),
	constraint FK_LEve1 foreign key (Lugar_Eve) references Local_Evento (Local_Evento_id)

)

Create Table Forma_Pago (
	F_Pago_id int not null,
	Nombre_Pag varchar (20) not null,
	Especificacion varchar (30) not null,

	constraint PK_FPag primary key (F_Pago_id)

)

Create Table Ticket (
	Ticket_id int not null,
	Puesto_Tick int not null,
	Evento_Tick int not null,
	Cant_Bol_Tick tinyint not null,
	Fecha_Tick date not null,
	Subtotal smallint not null,
	Cargo_Servicios float not null,
	Total float not null,
	Forma_Pago int not null,
	Cambio float not null,

	constraint PK_Tick1 primary key (Ticket_id),
	constraint FK_PueTick1 foreign key (Puesto_Tick) references Puesto (Puesto_id),
	constraint FK_EveTick1 foreign key (Evento_Tick) references Evento (Evento_id),
	constraint FK_FoPa1 foreign key (Forma_Pago) references Forma_Pago (F_Pago_id)

)

Create Table Boleto (
	Boleto_id int not null,
	Tipo_Evento_Bol int not null,
	Area_Bol varchar (30) not null,
	Seccion_Bol Varchar (10) not null,
	Fila_Bol tinyint not null,
	Num_Asi_Bol smallint not null,
	Costo_Bol smallint not null,
	Lugar_Evento_Bol varchar (30) not null,

	constraint PK_Bol primary key (Boleto_id),
	constraint FK_TEveBol foreign key (Tipo_Evento_Bol) references Evento (Evento_id)

)