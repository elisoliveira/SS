INSERT INTO PESSOA_2 (IDADE, ID_PESSOA, NOME, DATA_NASC) 
SELECT 15, ID_PESSOA, NOME, DATA_NASC FROM PESSOA WHERE IDADE = 20;

--https://pt.stackoverflow.com/questions/346142/insert-into-com-filtro-no-mysql/346151#346151