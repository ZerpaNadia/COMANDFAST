USE [master]
GO
/****** Object:  Database [COMANDFAST]    Script Date: 12/10/2019 11:25:39 ******/
CREATE DATABASE [COMANDFAST]
GO
ALTER DATABASE [COMANDFAST] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [COMANDFAST].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [COMANDFAST] SET ANSI_NULL_DEFAULT OFF 
 
GO
EXEC sys.sp_db_vardecimal_storage_format N'COMANDFAST', N'ON'
GO
USE [COMANDFAST]
GO
/****** Object:  Table [dbo].[Errores]    Script Date: 12/10/2019 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Errores](
	[Id_Error] [int] NOT NULL,
	[Fecha_Hora] [datetime] NOT NULL,
	[Proceso] [nvarchar](30) NOT NULL,
	[Descripcion] [nvarchar](300) NOT NULL,
 CONSTRAINT [PK_Errores] PRIMARY KEY CLUSTERED 
(
	[Id_Error] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estado]    Script Date: 12/10/2019 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[Id_Estado] [int] NOT NULL,
	[Descripcion] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[Id_Estado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Estado_Pedido]    Script Date: 12/10/2019 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_Pedido](
	[Id_Pedido] [int] NOT NULL,
	[Id_Estado] [int] NOT NULL,
	[Fecha_Hora] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Opiniones]    Script Date: 12/10/2019 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Opiniones](
	[Id_Calificacion] [int] IDENTITY(1,1) NOT NULL,
	[Puntaje] [int] NOT NULL,
	[Descripcion] [nvarchar](1000) NOT NULL,
	[Id_Usuario] [int] NOT NULL,
 CONSTRAINT [PK_Opiniones] PRIMARY KEY CLUSTERED 
(
	[Id_Calificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 12/10/2019 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[Id_Pedido] [int] NOT NULL,
	[Id_Estado_Pedido] [int] NOT NULL,
	[Monto] [float] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Pedido] PRIMARY KEY CLUSTERED 
(
	[Id_Pedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Pedido_Producto]    Script Date: 12/10/2019 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido_Producto](
	[Id_Pedido] [int] NOT NULL,
	[Id_Producto] [int] NOT NULL,
	[Cantidad] [int] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto]    Script Date: 12/10/2019 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[Id_Producto] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Precio] [float] NOT NULL,
	[En_Menu] [char](1) NOT NULL,
	[Id_Tipo_Producto] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Activo][char](1)NOT NULL,

 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Producto]    Script Date: 12/10/2019 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Producto](
	[Id_Tipo_Producto] [int] NOT NULL,
	[Descripcion] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Tipo_Producto] PRIMARY KEY CLUSTERED 
(
	[Id_Tipo_Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Usuario]    Script Date: 12/10/2019 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Usuario](
	[Id_Tipo_Usuario] [int] NOT NULL,
	[Descripcion] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Tipo_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id_Tipo_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 12/10/2019 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id_Usuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Fecha_Nac] [date] NOT NULL,
	[Login_Usuario] [nvarchar](30) NOT NULL,
	[Pass] [nvarchar](30) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,	
	[Id_Tipo_Usuario] [int] NOT NULL,

 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario_Pedido]    Script Date: 12/10/2019 11:25:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Pedido](
	[Id_Usuario] [int] NOT NULL,
	[Id_Pedido] [int] NOT NULL,
	[Fecha_Hora] [datetime] NOT NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Estado_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Estado_Pedido_Estado] FOREIGN KEY([Id_Estado])
REFERENCES [dbo].[Estado] ([Id_Estado])
GO
ALTER TABLE [dbo].[Estado_Pedido] CHECK CONSTRAINT [FK_Estado_Pedido_Estado]
GO
ALTER TABLE [dbo].[Estado_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Estado_Pedido_Pedido] FOREIGN KEY([Id_Pedido])
REFERENCES [dbo].[Pedido] ([Id_Pedido])
GO
ALTER TABLE [dbo].[Estado_Pedido] CHECK CONSTRAINT [FK_Estado_Pedido_Pedido]
GO
ALTER TABLE [dbo].[Opiniones]  WITH CHECK ADD  CONSTRAINT [FK_Opiniones_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[Opiniones] CHECK CONSTRAINT [FK_Opiniones_Usuario]
GO
ALTER TABLE [dbo].[Pedido_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Producto_Pedido] FOREIGN KEY([Id_Pedido])
REFERENCES [dbo].[Pedido] ([Id_Pedido])
GO
ALTER TABLE [dbo].[Pedido_Producto] CHECK CONSTRAINT [FK_Pedido_Producto_Pedido]
GO
ALTER TABLE [dbo].[Pedido_Producto]  WITH CHECK ADD  CONSTRAINT [FK_Pedido_Producto_Producto] FOREIGN KEY([Id_Producto])
REFERENCES [dbo].[Producto] ([Id_Producto])
GO
ALTER TABLE [dbo].[Pedido_Producto] CHECK CONSTRAINT [FK_Pedido_Producto_Producto]
GO
ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Tipo_Producto] FOREIGN KEY([Id_Tipo_Producto])
REFERENCES [dbo].[Tipo_Producto] ([Id_Tipo_Producto])
GO
ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Tipo_Producto]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Tipo_Usuario] FOREIGN KEY([Id_Tipo_Usuario])
REFERENCES [dbo].[Tipo_Usuario] ([Id_Tipo_Usuario])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Tipo_Usuario]
GO
ALTER TABLE [dbo].[Usuario_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pedido_Pedido] FOREIGN KEY([Id_Pedido])
REFERENCES [dbo].[Pedido] ([Id_Pedido])
GO
ALTER TABLE [dbo].[Usuario_Pedido] CHECK CONSTRAINT [FK_Usuario_Pedido_Pedido]
GO
ALTER TABLE [dbo].[Usuario_Pedido]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Pedido_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id_Usuario])
GO
ALTER TABLE [dbo].[Usuario_Pedido] CHECK CONSTRAINT [FK_Usuario_Pedido_Usuario]
GO
USE [master]
GO
ALTER DATABASE [COMANDFAST] SET  READ_WRITE 
GO
