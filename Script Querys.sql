-- 1 - Buscar o nome e ano dos filmes
SELECT TOP(14) Filmes.id, Filmes.Nome, Filmes.Ano FROM Filmes;

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT TOP(14) Filmes.Id, Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes
ORDER BY Filmes.Ano ASC;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes WHERE Filmes.Id = 28;

-- 4 - Buscar os filmes lan�ados em 1997
SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes WHERE Filmes.Ano = 1997;

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes WHERE Filmes.Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT Filmes.Nome, Filmes.Ano, Filmes.Duracao FROM Filmes 
WHERE Filmes.Duracao Between 101 AND 149
ORDER BY Filmes.Duracao ASC;

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Filmes.Ano, count(*) FROM Filmes
GROUP BY Filmes.Ano
ORDER BY SUM(Filmes.Duracao) DESC;

--8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
SELECT TOP(14) Atores.Id, Atores.PrimeiroNome, Atores.UltimoNome, Atores.Genero FROM Atores
WHERE Atores.Genero = 'M';

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT Atores.Id, Atores.PrimeiroNome, Atores.UltimoNome, Atores.Genero FROM Atores
WHERE Atores.Genero = 'F'
ORDER BY Atores.PrimeiroNome;

-- 10 - Buscar o nome do filme e o g�nero
SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id;

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero
JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
JOIN Filmes ON FilmesGenero.IdFilme = Filmes.Id
Where Generos.Genero = 'Mist�rio';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT TOP(14) Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel from ElencoFilme
JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme
join Atores ON Atores.Id = ElencoFilme.IdAtor;
