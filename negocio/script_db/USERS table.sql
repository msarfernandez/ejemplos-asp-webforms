USE [POKEDEX_DB]
GO

/****** Object:  Table [dbo].[USERS]    Script Date: 8/29/2022 3:57:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[USERS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[apellido] [varchar](50) NULL,
	[fechaNacimiento] [smalldatetime] NULL,
	[admin] [bit] NULL,
	[imagenPerfil] [varchar](30) NULL,
 CONSTRAINT [PK_USERS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

create procedure insertarNuevo
@email varchar(50),
@pass varchar(50)
as
insert into USERS (email, pass, admin) output inserted.id values (@email, @pass, 0)

go


insert into USERS (email, pass, admin) output inserted.id values ('admin', 'admin', 1)
insert into USERS (email, pass, admin) output inserted.id values ('test', 'test', 1)