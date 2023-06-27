
SELECT *FROM P_MARCACION;
SET SERVEROUTPUT ON;
--REGISTRA LA MARCACION DE LOS CLIENTES
CREATE OR REPLACE PROCEDURE p_RealizaMarcacion(p_idEmpleado VARCHAR2,
        p_tipoM CHAR)
IS
    fecha P_MARCACION.FECHA_MARCACION%TYPE;
    hora P_MARCACION.HORA_MARCACION%TYPE;
    estado P_MARCACION.ESTADO_MARCACION%TYPE;
    idMARC P_MARCACION.ID_MARCACIONES%TYPE;
BEGIN
    SELECT MAX(ID_MARCACIONES)+1 INTO idMarc FROM P_MARCACION; 
    fecha := SYSDATE;
    hora := TO_CHAR(SYSDATE,'HH24:MI:SS');
    --FALTARIA EL f_fue_puntual
    estado := f_fue_puntual(fecha,hora,p_tipoM,p_idEmpleado);
    INSERT INTO P_MARCACION VALUES(idMarc,fecha,hora,p_tipoM,estado,p_idEmpleado);
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('El empleado introducido no se encuentra en la base de datos');
END;


SELECT *FROM  P_MARCACION;
exec p_RealizaMarcacion('2807195463','E');



exec p_RealizaMarcacion('1739856204','E');
SELECT *FROM P_EMPLEADOXHORARIO;
SELECT *FROM P_HORARIO;

select f_fue_puntual(SYSDATE,TO_CHAR(SYSDATE,'HH24:MI:SS'),'E','2807195463') FROM DUAL;