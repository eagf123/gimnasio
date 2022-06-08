/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     29/05/2022 20:02:03                          */
/*==============================================================*/


drop index AREA_PK;

drop table AREA;

drop index RELATIONSHIP_7_FK;

drop index ASISTENCIA_PK;

drop table ASISTENCIA;

drop index RELATIONSHIP_3_FK;

drop index RELATIONSHIP_1_FK;

drop index CLIENTE_PK;

drop table CLIENTE;

drop index EMPLEADO_PK;

drop table EMPLEADO;

drop index RELATIONSHIP_2_FK;

drop index ENTRENADOR_PK;

drop table ENTRENADOR;

drop index RELATIONSHIP_4_FK;

drop index FACTURA_PK;

drop table FACTURA;

drop index GIMNASIO_PK;

drop table GIMNASIO;

drop index HORARIO_PK;

drop table HORARIO;

drop index RELATIONSHIP_8_FK;

drop index RELATIONSHIP_6_FK;

drop index INSCRIPCION_PK;

drop table INSCRIPCION;

drop index RELATIONSHIP_5_FK;

drop index MEMBRESIA_PK;

drop table MEMBRESIA;

/*==============================================================*/
/* Table: AREA                                                  */
/*==============================================================*/
create table AREA (
   IDAREA               INT2                 not null,
   NOMBRE_AREA          VARCHAR(25)          null,
   constraint PK_AREA primary key (IDAREA)
);

/*==============================================================*/
/* Index: AREA_PK                                               */
/*==============================================================*/
create unique index AREA_PK on AREA (
IDAREA
);

/*==============================================================*/
/* Table: ASISTENCIA                                            */
/*==============================================================*/
create table ASISTENCIA (
   IDASISTENCIA         INT4                 not null,
   IDCLIENTE            INT4                 null,
   IDFECHAASISTENCIA    DATE                 null,
   constraint PK_ASISTENCIA primary key (IDASISTENCIA)
);

/*==============================================================*/
/* Index: ASISTENCIA_PK                                         */
/*==============================================================*/
create unique index ASISTENCIA_PK on ASISTENCIA (
IDASISTENCIA
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_7_FK on ASISTENCIA (
IDCLIENTE
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   IDCLIENTE            INT4                 not null,
   CEDUCLIENTE          VARCHAR(10)          null,
   NOMBRECLIENTE        VARCHAR(30)          null,
   APELLIDO_            VARCHAR(30)          null,
   TELEFONOCLIENTE      VARCHAR(13)          null,
   DIRECCIONCLIENTE     VARCHAR(45)          null,
   HORADEENTRADACLIENTE TIME                 null,
   FECHADEINSCRIPCIONCLIENTE DATE                 null,
   constraint PK_CLIENTE primary key (IDCLIENTE)
);

/*==============================================================*/
/* Index: CLIENTE_PK                                            */
/*==============================================================*/
create unique index CLIENTE_PK on CLIENTE (
IDCLIENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create unique index RELATIONSHIP_1_FK on CLIENTE (
IDCLIENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create unique index RELATIONSHIP_3_FK on CLIENTE (
IDCLIENTE
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   IDEMPLEADO           INT4                 not null,
   NOMBREEMPLEADO       VARCHAR(50)          null,
   APELLIDOEMPLEADO     VARCHAR(50)          null,
   TELEFONOEMPLEADO     VARCHAR(13)          null,
   DIRECCIONEMPLEADO    VARCHAR(13)          null,
   FECHANACIMIENTOEMPLEADO DATE                 null,
   FECHADEINGRESOEMPLEADO DATE                 null,
   CARGOEMPLEADO        VARCHAR(30)          null,
   constraint PK_EMPLEADO primary key (IDEMPLEADO)
);

/*==============================================================*/
/* Index: EMPLEADO_PK                                           */
/*==============================================================*/
create unique index EMPLEADO_PK on EMPLEADO (
IDEMPLEADO
);

/*==============================================================*/
/* Table: ENTRENADOR                                            */
/*==============================================================*/
create table ENTRENADOR (
   IDENTRENADO          INT4                 not null,
   APELLIDOENTRENDOR    VARCHAR(50)          null,
   NOMBREDEENTRENADOR   VARCHAR(25)          null,
   DIRECCIONENTRENADOR  VARCHAR(25)          null,
   TELEFONOENTRENADOR   VARCHAR(13)          null,
   constraint PK_ENTRENADOR primary key (IDENTRENADO)
);

/*==============================================================*/
/* Index: ENTRENADOR_PK                                         */
/*==============================================================*/
create unique index ENTRENADOR_PK on ENTRENADOR (
IDENTRENADO
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create unique index RELATIONSHIP_2_FK on ENTRENADOR (
IDENTRENADO
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA (
   IDFACTURA            INT4                 not null,
   IDEMPLEADO           INT4                 null,
   IDCLIENTE            INT4                 null,
   IDGIMNACIO           INT4                 null,
   FECHAFACTURA         DATE                 null,
   TOTALFACTURA         FLOAT8               null,
   constraint PK_FACTURA primary key (IDFACTURA)
);

/*==============================================================*/
/* Index: FACTURA_PK                                            */
/*==============================================================*/
create unique index FACTURA_PK on FACTURA (
IDFACTURA
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on FACTURA (
IDEMPLEADO
);

/*==============================================================*/
/* Table: GIMNASIO                                              */
/*==============================================================*/
create table GIMNASIO (
   IDGIMNACIO           INT4                 not null,
   NOMBREGIMNASIO       VARCHAR(30)          null,
   HORARIOSGIMNACIOS    TIME                 null,
   DIRECCIONGIMNACIO    VARCHAR(50)          null,
   constraint PK_GIMNASIO primary key (IDGIMNACIO)
);

/*==============================================================*/
/* Index: GIMNASIO_PK                                           */
/*==============================================================*/
create unique index GIMNASIO_PK on GIMNASIO (
IDGIMNACIO
);

/*==============================================================*/
/* Table: HORARIO                                               */
/*==============================================================*/
create table HORARIO (
   IDHORARIO            INT4                 not null,
   DESCRIPCION          VARCHAR(50)          null,
   constraint PK_HORARIO primary key (IDHORARIO)
);

/*==============================================================*/
/* Index: HORARIO_PK                                            */
/*==============================================================*/
create unique index HORARIO_PK on HORARIO (
IDHORARIO
);

/*==============================================================*/
/* Table: INSCRIPCION                                           */
/*==============================================================*/
create table INSCRIPCION (
   IDCRIPCION           INT4                 not null,
   IDHORARIO            INT4                 null,
   IDAREA               INT4                 null,
   IDMEMBRESIA          INT4                 null,
   IDCLIENTE            INT4                 null,
   IDENTRENADO          INT4                 null,
   constraint PK_INSCRIPCION primary key (IDCRIPCION)
);

/*==============================================================*/
/* Index: INSCRIPCION_PK                                        */
/*==============================================================*/
create unique index INSCRIPCION_PK on INSCRIPCION (
IDCRIPCION
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_6_FK on INSCRIPCION (
IDHORARIO
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on INSCRIPCION (
IDAREA
);

/*==============================================================*/
/* Table: MEMBRESIA                                             */
/*==============================================================*/
create table MEMBRESIA (
   IDMEMBRESIA          INT4                 not null,
   IDFACTURA            INT4                 null,
   IDCLIENTEMEMBRESIA   INT4                 null,
   TIPODEMEMBRESIA      VARCHAR(50)          null,
   constraint PK_MEMBRESIA primary key (IDMEMBRESIA)
);

/*==============================================================*/
/* Index: MEMBRESIA_PK                                          */
/*==============================================================*/
create unique index MEMBRESIA_PK on MEMBRESIA (
IDMEMBRESIA
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_5_FK on MEMBRESIA (
IDFACTURA
);

alter table ASISTENCIA
   add constraint FK_ASISTENC_RELATIONS_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_REFERENCE_GIMNASIO foreign key (IDGIMNACIO)
      references GIMNASIO (IDGIMNACIO)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_REFERENCE_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
      on delete restrict on update restrict;

alter table FACTURA
   add constraint FK_FACTURA_RELATIONS_EMPLEADO foreign key (IDEMPLEADO)
      references EMPLEADO (IDEMPLEADO)
      on delete restrict on update restrict;

alter table INSCRIPCION
   add constraint FK_INSCRIPC_REFERENCE_CLIENTE foreign key (IDCLIENTE)
      references CLIENTE (IDCLIENTE)
      on delete restrict on update restrict;

alter table INSCRIPCION
   add constraint FK_INSCRIPC_REFERENCE_ENTRENAD foreign key (IDENTRENADO)
      references ENTRENADOR (IDENTRENADO)
      on delete restrict on update restrict;

alter table INSCRIPCION
   add constraint FK_INSCRIPC_REFERENCE_MEMBRESI foreign key (IDMEMBRESIA)
      references MEMBRESIA (IDMEMBRESIA)
      on delete restrict on update restrict;

alter table INSCRIPCION
   add constraint FK_INSCRIPC_RELATIONS_HORARIO foreign key (IDHORARIO)
      references HORARIO (IDHORARIO)
      on delete restrict on update restrict;

alter table INSCRIPCION
   add constraint FK_INSCRIPC_RELATIONS_AREA foreign key (IDAREA)
      references AREA (IDAREA)
      on delete restrict on update restrict;

alter table MEMBRESIA
   add constraint FK_MEMBRESI_RELATIONS_FACTURA foreign key (IDFACTURA)
      references FACTURA (IDFACTURA)
      on delete restrict on update restrict;

