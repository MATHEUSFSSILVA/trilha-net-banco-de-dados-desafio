-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano
from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano, Duracao
from Filmes
order by Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
select Nome, Ano, Duracao
from Filmes
where Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lan�ados em 1997
select Nome, Ano, Duracao
from Filmes
where Ano = '1997'

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
select Nome, Ano, Duracao
from Filmes
where Ano > '2000'

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao
from Filmes
where Duracao > '100' and Duracao < '150'
order by Duracao

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select
	Ano,
	COUNT (*) as Quantidade
from Filmes
group by Ano
order by Quantidade desc

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
select *
from Atores

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select *
from Atores
where Genero = 'F'
order by PrimeiroNome

-- 10 - Buscar o nome do filme e o g�nero
select
	F.Nome,
	G.Genero
from Filmes as F
inner join FilmesGenero as FG on F.Id = FG.IdFilme
inner join Generos as G on G.Id = FG.IdGenero

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select
	F.Nome,
	G.Genero
from Filmes as F
inner join FilmesGenero as FG on F.Id = FG.IdFilme
inner join Generos as G on G.Id = FG.IdGenero
where Genero = 'Mist�rio'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
from Filmes as F
inner join ElencoFilme as EF on F.Id = EF.IdFilme
inner join Atores as A on EF.IdAtor = A.Id
