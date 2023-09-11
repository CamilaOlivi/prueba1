CREATE TABLE [dbo].[Registro_alumnos] (
    [Id]              INT           NOT NULL,
    [Rut_Alumno]      INT           NULL,
    [Nombre_Alumno]   NVARCHAR (30) NULL,
    [Apellido_Alumno] NVARCHAR (30) NULL,
    [Fecha_Ingreso]   DATE          NULL,
    [Edad]            INT           NULL,
    [Telefono]        NUMERIC (9)   NULL,
    [Direccion]       NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

