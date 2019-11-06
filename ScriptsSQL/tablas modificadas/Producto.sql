USE [COMANDFAST]
GO

/****** Object:  Table [dbo].[Producto]    Script Date: 11/05/2019 23:12:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Producto](
	[Id_Producto] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](150) NOT NULL,
	[Precio] [float] NOT NULL,
	[En_Menu] [bit] NOT NULL,
	[Id_Tipo_Producto] [int] NOT NULL,
	[Stock] [int] NOT NULL,
	[Activo] [bit] NOT NULL,
	[Titulo_Producto] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Producto] PRIMARY KEY CLUSTERED 
(
	[Id_Producto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[Producto]  WITH CHECK ADD  CONSTRAINT [FK_Producto_Tipo_Producto] FOREIGN KEY([Id_Tipo_Producto])
REFERENCES [dbo].[Tipo_Producto] ([Id_Tipo_Producto])
GO

ALTER TABLE [dbo].[Producto] CHECK CONSTRAINT [FK_Producto_Tipo_Producto]
GO


