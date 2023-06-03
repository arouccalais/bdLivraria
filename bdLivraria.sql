USE bdLivraria

--1
SELECT nomeLivro, nomeEditora, nomeAutor  FROM tbLivro
	LEFT JOIN tbEditora ON tbEditora.codEditora = tbLivro.codEditora
		LEFT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor
		
--2
SELECT nomeLivro, nomeAutor, nomeEditora  FROM tbLivro
	LEFT JOIN tbEditora ON tbEditora.codEditora = tbLivro.codEditora
		LEFT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor
			WHERE nomeEditora LIKE 'Companhia das Letras%'
			
--3
SELECT nomeLivro, nomeAutor FROM tbLivro
	LEFT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor
		WHERE nomeAutor <> 'Érico Veríssimo'

--4 
SELECT nomeAutor, nomeLivro FROM tbLivro
	RIGHT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor

--5 
SELECT nomeLivro, nomeAutor FROM tbLivro
	LEFT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor

--6
SELECT nomeAutor, nomeLivro FROM tbLivro
	FULL JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor

--7
SELECT nomeLivro, nomeEditora  FROM tbLivro
	LEFT JOIN tbEditora ON tbEditora.codEditora = tbLivro.codEditora
		WHERE nomeEditora LIKE 'Ática%'

--8
SELECT nomeAutor, nomeLivro FROM tbLivro
	RIGHT JOIN tbAutor ON tbAutor.codAutor = tbLivro.codAutor
		WHERE nomeLivro IS NULL

--9
SELECT nomeGenero, nomeLivro FROM tbLivro
	RIGHT JOIN tbGenero ON tbGenero.codGenero = tbLivro.codGenero
		WHERE nomeLivro IS NULL