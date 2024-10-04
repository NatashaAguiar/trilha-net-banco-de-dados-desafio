-- 1
Select Nome, Ano From filmes

-- 2
Select Nome, Ano, Duracao From Filmes
Order by Ano Asc

-- 3
Select Nome, Ano, Duracao From Filmes
Where Nome = 'De Volta para o Futuro'

-- 4
Select Nome, Ano, Duracao From Filmes
Where Ano = 1997

-- 5
Select Nome, Ano, Duracao From Filmes
Where Ano > 2000

-- 6
Select Nome, Ano, Duracao From Filmes
Where Duracao > 100 And Duracao < 150
Order by Duracao Asc

-- 7
Select Ano, Count(*) Quantidade from Filmes
Group by Ano
Order by Quantidade Desc

-- 8
Select * from Atores
Where Genero = 'M'

-- 9
Select * from Atores
Where Genero = 'F'
Order by PrimeiroNome

-- 10
Select Nome, Genero from Filmes
inner join FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
inner join Generos G ON FilmesGenero.IdGenero = G.Id

-- 11
Select Nome, Genero from Filmes
inner join FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
inner join Generos G ON FilmesGenero.IdGenero = G.Id
Where Genero = 'Mistério'

-- 12
Select F.Nome, A.PrimeiroNome, A.UltimoNome, EF.Papel
from Filmes F
inner join ElencoFilme EF ON F.Id = EF.IdFilme
inner join Atores A ON EF.IdAtor = A.Id