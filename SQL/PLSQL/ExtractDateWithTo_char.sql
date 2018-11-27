DECLARE

	data_exemplo DATE := TO_DATE('10/01/2005','DD/MM/YYYY');
	data_exemplo_2 DATE := TO_DATE('13/03/1998','DD/MM/YYYY');
	v_nome VARCHAR(30);

BEGIN

	SELECT NOME
	INTO v_nome
	FROM PESSOA
	WHERE TO_CHAR(data_nasc,'MM') = TO_CHAR(data_exemplo,'MM')
	AND TO_CHAR(data_nasc,'YYYY') = TO_CHAR(data_exemplo_2,'YYYY');
	
	DBMS_OUTPUT.PUT_LINE('Valor retornado: ' || v_nome);

END;
/

--https://pt.stackoverflow.com/questions/341152/selecionar-m%C3%AAs-e-ano-de-um-campo-datetime