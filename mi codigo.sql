
SELECT *FROM P_ACTIVIDAD;
SELECT *FROM P_EMPLEADOXACTIVIDAD;
SELECT *FROM P_ENCARGADO_ACTIVIDADES;

SET SERVEROUTPUT ON;

--FUNCION QUE DEVUELVE CODIGO DEL EMPLEADO ENCARGADO DE UNA ACTIVIDAD
CREATE OR REPLACE FUNCTION p_buscaEncargado(p_idActividad P_ACTIVIDAD.ID_ACTIVIDAD%TYPE)
RETURN VARCHAR2 IS
    
    v_id_encargado P_ENCARGADO_ACTIVIDADES.ID_EMPLEADO%TYPE;
BEGIN 
        SELECT ID_EMPLEADO INTO v_id_encargado FROM P_ENCARGADO_ACTIVIDADES PE
        WHERE p_idActividad = PE.ID_ACTIVIDAD;
        
        RETURN v_id_encargado;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
END;

--SELECT p_buscaencargado(87941)FROM DUAL;

-------------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE p_imprimeNombreEncargado(p_id_encargado VARCHAR2)
IS
    nombre_enc P_EMPLEADO.NOMBRE%TYPE;
    apeP_enc P_EMPLEADO.APELLIDO_PATERNO%TYPE;
    apeM_enc P_EMPLEADO.APELLIDO_MATERNO%TYPE;
BEGIN 
    SELECT NOMBRE,APELLIDO_PATERNO,APELLIDO_MATERNO INTO nombre_enc,apeP_enc,
    apeM_enc FROM P_EMPLEADO 
    WHERE p_id_encargado = ID_EMPLEADO;
    dbms_output.put_line('Encargado: '||nombre_enc||' '||apeP_enc||' '||
                        apeM_enc||' ('||p_id_encargado||')');
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line('Encargado: NO SE ASIGNO EMPLEADO');
END;
------------------------------------------------------------------------

CREATE OR REPLACE PROCEDURE p_imprimeParticipante(p_id_participante VARCHAR2)
IS
    nombre_part P_EMPLEADO.NOMBRE%TYPE;
    apeP_part P_EMPLEADO.APELLIDO_PATERNO%TYPE;
    apeM_part P_EMPLEADO.APELLIDO_MATERNO%TYPE;
    correo P_EMPLEADO.CORREO_ELECTRONICO%TYPE;
    numero P_EMPLEADO.TELEFONO%TYPE;
    vig P_EMPLEADO.VIGENCIA%TYPE;
    nombre_completo CHAR(30);
    espacio1 CHAR(5);
    RETIRED EXCEPTION;
BEGIN
    SELECT NOMBRE,APELLIDO_PATERNO,APELLIDO_MATERNO,TELEFONO,CORREO_ELECTRONICO,
        VIGENCIA
        INTO nombre_part,apeP_part,apeM_part,numero,correo,vig FROM P_EMPLEADO
        WHERE p_id_participante = ID_EMPLEADO;
    
    IF vig = 'R' THEN 
        RAISE RETIRED;
    END IF;
    espacio1 := ' ';
    nombre_completo := nombre_part||' '||apeP_part||' '||apeM_part;
    dbms_output.put_line(p_id_participante||'   '||nombre_completo
                    ||' '||numero||'     '||correo);
    
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        dbms_output.put_line(p_id_participante||' no
                            se encuentra en la base de datos');
    
    WHEN RETIRED THEN
        dbms_output.put_line('El participante '||p_id_participante||
                            ' está retirado');
END;




CREATE OR REPLACE PROCEDURE p_ListaActividadesProgramadas
IS
    CURSOR c1 IS SELECT ID_ACTIVIDAD, NOMBRE FROM P_ACTIVIDAD;
    CURSOR c2(id_Act VARCHAR2) IS SELECT * FROM P_EMPLEADOXACTIVIDAD
                WHERE id_Act = ID_ACTIVIDAD;
            
    
    id_act  P_ACTIVIDAD.ID_ACTIVIDAD%TYPE;
    v_id_encargado P_ENCARGADO_ACTIVIDADES.ID_EMPLEADO%TYPE;
    
    v_id_participante P_EMPLEADOXACTIVIDAD.ID_EMPLEADO%TYPE;

BEGIN
    dbms_output.put_line('REPORTE DE ACTIVIDADES');
    dbms_output.put_line('--------------------------------------------------------------------------------');        
    
    FOR r_c1 IN c1 LOOP
        id_act := r_c1.ID_ACTIVIDAD;
        dbms_output.put_line('Actividad: '|| UPPER(r_c1.NOMBRE));   
        v_id_encargado := p_buscaEncargado(id_act);
        p_imprimeNombreEncargado(v_id_encargado);
dbms_output.put_line('--------------------------------------------------------------------------------');        
dbms_output.put_line('Codigo       Nombre Completo                Teléfono       Correo electrónico');
dbms_output.put_line('--------------------------------------------------------------------------------');        

        FOR r_c2 IN c2(id_act) LOOP
            v_id_participante := r_c2.ID_EMPLEADO;
            p_imprimeParticipante(v_id_participante);
        END LOOP; 
dbms_output.put_line('--------------------------------------------------------------------------------');        
dbms_output.put_line('');

    END LOOP;
END;

exec p_ListaActividadesProgramadas;





---select TO_CHAR(to_date('06:00:00','HH24:MI:SS'),'HH24') FROM DUAL;


 