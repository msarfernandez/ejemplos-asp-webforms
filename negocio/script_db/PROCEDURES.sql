USE [POKEDEX_DB]
GO


create procedure [dbo].[storedListar] as
Select Numero, Nombre, P.Descripcion, UrlImagen, E.Descripcion Tipo, 
D.Descripcion Debilidad, P.IdTipo, P.IdDebilidad, P.Id, P.Activo
From POKEMONS P, ELEMENTOS E, ELEMENTOS D 
Where E.Id = P.IdTipo And D.Id = P.IdDebilidad

go

create procedure [dbo].[storedAltaPokemon]
@numero int,
@nombre varchar(50),
@desc varchar(50),
@img varchar (300),
@idTipo int,
@idDebilidad int
as
insert into pokemons values (@numero, @nombre, @desc, @img, @idTipo, @idDebilidad, null, 1)

go

create procedure [dbo].[storedModificarPokemon]
@numero int,
@nombre varchar(50),
@desc varchar(50),
@img varchar (300),
@idTipo int,
@idDebilidad int,
@id int
as
update POKEMONS set Numero = @numero, Nombre = @nombre, Descripcion = @desc, 
UrlImagen = @img, IdTipo = @idTipo, IdDebilidad = @idDebilidad 
Where Id = @id

