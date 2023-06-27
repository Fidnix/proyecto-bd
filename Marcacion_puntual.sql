CREATE OR REPLACE FUNCTION f_fue_puntual(
    Param_fecha P_MARCACION.FECHA_MARCACION%type,
    Param_hora P_MARCACION.HORA_MARCACION%type,
    Param_tipo P_MARCACION.TIPO_MARCACION%type,
    Param_id_empleado P_EMPLEADO.ID_EMPLEADO%type)
    
RETURN P_MARCACION.ESTADO_MARCACION%type
IS
    TIPO_MARCACION_DESCONOCIDO EXCEPTION;
    NO_EXISTE_DATO EXCEPTION;
    
    HORA_SELECT P_HORARIO.HORA_LLEGADA%TYPE;
    DIA_VAL P_HORARIO.DIA%type;
    HORA_LLEGADA_VAL P_HORARIO.HORA_LLEGADA%type;
    HORA_SALIDA_VAL P_HORARIO.HORA_SALIDA%type;
    HORA_SALIDA_REFRIGERIO_VAL P_HORARIO.HORA_SALIDA_REFRIGERIO%type;
    HORA_REGRESO_REFRIGERIO_VAL P_HORARIO.HORA_REGRESO_REFRIGERIO%type;
    ID_HORARIO_VAL P_HORARIO.ID_HORARIO%TYPE;
    
    HORA_COMPEN_COMPLETA VARCHAR(8);
BEGIN
    -- Verificacion de tipo
    IF Param_tipo != 'E' and Param_tipo != 'S' and Param_tipo != 'T' and Param_tipo != 'R' THEN
        RAISE TIPO_MARCACION_DESCONOCIDO;
    END IF;
    
    select ID_HORARIO INTO ID_HORARIO_VAL FROM P_EMPLEADOXHORARIO
    WHERE ID_EMPLEADO =Param_id_empleado;
    
    SELECT H.HORA_LLEGADA, H.HORA_SALIDA, H.HORA_SALIDA_REFRIGERIO, H.HORA_REGRESO_REFRIGERIO
        INTO HORA_LLEGADA_VAL, HORA_SALIDA_VAL, HORA_SALIDA_REFRIGERIO_VAL, HORA_REGRESO_REFRIGERIO_VAL
        FROM P_HORARIO H
        WHERE H.ID_HORARIO = ID_HORARIO_VAL AND substr(H.DIA, 0,3) = TO_CHAR(Param_fecha,'Dy');
                
    CASE Param_tipo
        WHEN 'E' THEN
            SUMARMINUTOS(HORA_LLEGADA_VAL,HORA_COMPEN_COMPLETA);
            IF HORA_LLEGADA_VAL <= Param_hora AND param_hora<= HORA_COMPEN_COMPLETA THEN
                RETURN 'P';
            ELSE
                RETURN 'T';
            END IF;
        WHEN 'F' THEN
            SUMARMINUTOS(HORA_SALIDA_REFRIGERIO_VAL,HORA_COMPEN_COMPLETA);
            IF HORA_SALIDA_REFRIGERIO_VAL <= Param_hora AND Param_hora <=HORA_COMPEN_COMPLETA THEN
                RETURN 'P';
            ELSE
                RETURN 'T';
            END IF;
        WHEN 'R' THEN
            SUMARMINUTOS(HORA_REGRESO_REFRIGERIO_VAL,HORA_COMPEN_COMPLETA);           
            IF HORA_REGRESO_REFRIGERIO_VAL <= Param_hora AND
                Param_hora <= HORA_COMPEN_COMPLETA THEN
                RETURN 'P';
            ELSE
                RETURN 'T';
            END IF;
        WHEN 'S' THEN
            SUMARMINUTOS(HORA_SALIDA_VAL,HORA_COMPEN_COMPLETA);  
            IF HORA_SALIDA_VAL <= Param_hora AND 
                Param_hora <= HORA_COMPEN_COMPLETA THEN
                RETURN 'P';
            ELSE
                RETURN 'T';
            END IF;
    END CASE;
EXCEPTION
WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('No se encontro un horario que coincida con el argumento dado');
WHEN TIPO_MARCACION_DESCONOCIDO THEN
    dbms_output.put_line('El tipo de marcacion es invalido \nEsperado: E, S, F, R\nRecibido: ' || Param_tipo);
END;

/
CREATE OR REPLACE PROCEDURE SumarMinutos(p_hora IN VARCHAR2, p_nueva_hora OUT VARCHAR2) IS
    v_fecha_hora TIMESTAMP;
    v_nueva_fecha_hora TIMESTAMP;
BEGIN
    v_fecha_hora := TO_TIMESTAMP(p_hora, 'HH24:MI:SS');

    -- Sumar 10 minutos al valor TIMESTAMP
    v_nueva_fecha_hora := v_fecha_hora + INTERVAL '10' MINUTE;

    p_nueva_hora := TO_CHAR(v_nueva_fecha_hora, 'HH24:MI:SS');
END;
/
DECLARE
    v_hora_original VARCHAR2(8) := '12:50:00';
    v_nueva_hora VARCHAR2(8);
BEGIN
    SumarMinutos(v_hora_original, v_nueva_hora);
    DBMS_OUTPUT.PUT_LINE('Hora original: ' || v_hora_original);
    DBMS_OUTPUT.PUT_LINE('Nueva hora: ' || v_nueva_hora);
END;
/

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


