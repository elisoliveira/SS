DECLARE

    v_nome_professor VARCHAR(30);
    v_nome_estudante VARCHAR(30);

    CURSOR C_TESTE IS
        SELECT P.NOME NOME_PROFESSOR, E.NOME NOME_ESTUDANTE
        FROM PROFESSOR P, ESTUDANTE E, SUPERVISIONA S
        WHERE S.ID_PROF = P.ID_PROF
        AND S.ID_EST = E.ID_EST
        AND UPPER(E.NOME) = 'RITA';
BEGIN
    FOR c IN C_TESTE
    LOOP
        BEGIN
            v_nome_professor := c.NOME_PROFESSOR;
            v_nome_estudante := c.NOME_ESTUDANTE;

            DBMS_OUTPUT.PUT_LINE('Valores retornados:');
            DBMS_OUTPUT.PUT_LINE('Professor: ' || v_nome_professor || ' / Estudante: ' || v_nome_estudante);

        EXCEPTION
            WHEN NO_DATA_FOUND THEN
                DBMS_OUTPUT.PUT_LINE('Nenhum dado encontrado!');
        END;
    END LOOP;
END;
/

--https://pt.stackoverflow.com/questions/304105/varias-tabelas-em-pl-sql-num-cursor/346181#346181