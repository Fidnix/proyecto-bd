SET SERVEROUTPUT ON;

---------------------------------------------------------------------------------
-- Calcular sueldo
---------------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION f_calcular_sueldo(
    min_salario P_CARGO.min_salario%type,
    max_salario P_CARGO.max_salario%type,
    horas_trabajadas P_REGISTRO_NOMINA.horas_trabajadas%type,
    hora_tardanzas P_REGISTRO_NOMINA.hora_tardanzas%type, -- Cambiar esa mamada
    cantidad_faltas P_REGISTRO_NOMINA.cantidad_faltas%type,
    monto_pension P_FONDO_DE_PENSIONES.monto%type
)
RETURN NUMBER IS

horas_promedio NUMBER := 6;

BEGIN

RETURN min_salario + (horas_trabajadas - horas_promedio*cantidad_faltas)/(horas_trabajadas + hora_tardanzas + cantidad_faltas*horas_promedio)*(max_salario-min_salario) - monto_pension;

END;
/
---------------------------------------------------------------------------------
-- Cambias estatus de capacitacion
---------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE pr_cambiar_estatus_capacitacion(
    Param_id_capacitacion P_CAPACITACION.ID_CAPACITACION%type,
    Param_nuevo_estatus P_CAPACITACION.ESTATUS%type
)
IS
CARACTER_NO_VALIDO EXCEPTION;
BEGIN
IF CARACTER_NO_VALIDO != 'E' AND
    CARACTER_NO_VALIDO != 'C' AND
    CARACTER_NO_VALIDO != 'R' AND
    CARACTER_NO_VALIDO != 'A' THEN
    RAISE CARACTER_NO_VALIDO;
END IF;

UPDATE P_CAPACITACION
    SET ESTATUS = Param_nuevo_estatus
    WHERE ID_CAPACITACION = Param_id_capacitacion

EXCEPTION
WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('El ID_CAPACITACION tal vez no es valido');
WHEN CARACTER_NO_VALIDO THEN
    dbms_output.put_line("El caracter ingresado no es valido");
END;
/
---------------------------------------------------------------------------------
-- Posponer capacitacion
---------------------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE pr_posponer_capacitacion(
    Param_id_capacitacion P_CAPACITACION.ID_CAPACITACION%type,
    Param_fecha_inicio P_CAPACITACION.Fecha_inicio%type,
    Param_fecha_fin P_CAPACITACION.Fecha_fin%type
)
IS

FECHAS_INCOMPATIBLES EXCEPTION;
FECHA_ANTERIOR_DE_LO_ESPERADO EXCEPTION;
fecha_inicio_actual P_CAPACITACION.Fecha_inicio%type;

BEGIN

IF Param_fecha_fin < Param_fecha_inicio THEN
    RAISE FECHAS_INCOMPATIBLES;
END IF;

SELECT Fecha_inicio INTO fecha_inicio_actual FROM P_CAPACITACION WHERE ID_CAPACITACION = Param_id_capacitacion;

IF Param_fecha_inicio < fecha_inicio_actual THEN
    RAISE FECHA_ANTERIOR_DE_LO_ESPERADO;
END IF;

UPDATE P_CAPACITACION
    SET Fecha_inicio = Param_fecha_inicio, Fecha_fin = Param_fecha_fin
    WHERE ID_CAPACITACION = Param_id_capacitacion;

EXCEPTION
WHEN NO_DATA_FOUND THEN
    dbms_output.put_line('No existe la fecha de inicio en capacitacion');

WHEN FECHAS_INCOMPATIBLES THEN
    dbms_output.put_line('La fecha de fin no puede ser antes que la fecha de inicio');

WHEN FECHA_ANTERIOR_DE_LO_ESPERADO THEN
    dbms_output.put_line('La fecha pospuesta no puede ser antes porque seria poco conveniente al horario de los empleados');

END;
/
---------------------------------------------------------------------------------
-- Fue puntual?
---------------------------------------------------------------------------------
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
            IF HORA_LLEGADA_VAL <= Param_hora THEN
                RETURN 'P';
            ELSE
                RETURN 'T';
            END IF;
        WHEN 'F' THEN
            IF HORA_SALIDA_REFRIGERIO_VAL <= Param_hora THEN
                RETURN 'P';
            ELSE
                RETURN 'T';
            END IF;
        WHEN 'R' THEN
            IF HORA_REGRESO_REFRIGERIO_VAL <= Param_hora THEN
                RETURN 'P';
            ELSE
                RETURN 'T';
            END IF;
        WHEN 'S' THEN
            IF HORA_SALIDA_VAL <= Param_hora THEN
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
CREATE OR REPLACE PROCEDURE PR_INSERTAR_MARCACION(
    Param_id_marcacion P_MARCACION.ID_MARCACIONES%type,
    Param_fecha_marcacion P_MARCACION.FECHA_MARCACION%type,
    Param_hora_marcacion P_MARCACION.HORA_MARCACION%type,
    Param_tipo_marcacion P_MARCACION.TIPO_MARCACION%type,
    Param_id_empleado P_MARCACION.ID_EMPLEADO%type
)
IS
BEGIN

    INSERT INTO P_MARCACION VALUES (
        Param_id_marcacion,
        Param_fecha_marcacion,
        Param_hora_marcacion,
        Param_tipo_marcacion,
        f_fue_puntual(Param_fecha_marcacion, Param_hora_marcacion, Param_tipo_marcacion, Param_id_empleado),
        Param_id_empleado
    );

END;
/
-- Imprime a los n Mejores empleados
CREATE OR REPLACE PROCEDURE PR_SELECT_EMP_DEST (n NUMBER) IS
    CURSOR C_EMPLEADOS_DEST IS
        SELECT EMP.nombre AS NOMBRE, EMP.APELLIDO_MATERNO AS AP_MAT, EMP.APELLIDO_PATERNO AS AP_PAT, NOM.horas_trabajadas AS TRABAJ
            FROM P_EMPLEADO EMP, P_REGISTRO_NOMINA NOM
            WHERE EMP.ID_EMPLEADO = NOM.ID_EMPLEADO AND Rownum <= n
            ORDER BY NOM.horas_trabajadas DESC;
BEGIN
    dbms_output.put_line('-------------------------------------------------------------');
    dbms_output.put_line(RPAD('Nombre', 50, ' ') || RPAD('Horas trabajadas', 18));
    FOR empleado IN C_EMPLEADOS_DEST LOOP
        dbms_output.put_line(RPAD(empleado.NOMBRE || ' ' || empleado.AP_PAT || ' ' || empleado.AP_MAT, 50, ' ')|| RPAD(empleado.TRABAJ, 18));
        dbms_output.put_line('-------------------------------------------------------------');
    END LOOP;
END;
/
-- Imprime a los n mejores empleados
CREATE OR REPLACE PROCEDURE PR_SELECT_EMP_NO_DEST (n NUMBER) IS
    CURSOR C_EMPLEADOS_DEST IS
        SELECT EMP.nombre AS NOMBRE, EMP.APELLIDO_MATERNO AS AP_MAT, EMP.APELLIDO_PATERNO AS AP_PAT, NOM.horas_trabajadas AS TRABAJ
            FROM P_EMPLEADO EMP, P_REGISTRO_NOMINA NOM
            WHERE EMP.ID_EMPLEADO = NOM.ID_EMPLEADO AND Rownum <= n
            ORDER BY NOM.horas_trabajadas;

BEGIN
    dbms_output.put_line('-------------------------------------------------------------');
    dbms_output.put_line(RPAD('Nombre', 50, ' ') || RPAD('Horas trabajadas', 18));
    FOR empleado IN C_EMPLEADOS_DEST LOOP
        dbms_output.put_line(RPAD(empleado.NOMBRE || ' ' || empleado.AP_PAT || ' ' || empleado.AP_MAT, 50, ' ')|| RPAD(empleado.TRABAJ, 18));
        dbms_output.put_line('-------------------------------------------------------------');
    END LOOP;
END;
/
CREATE OR REPLACE TRIGGER TR_NOMINA
BEFORE UPDATE ON P_MARCACION
FOR EACH ROW
WHEN (OLD.VIGENCIA = 'V' AND NEW.VIGENCIA = 'R')
DECLARE 
    NOMBRE_CARGO P_CARGO.NOMBRE%TYPE;
BEGIN

    --GUARDAMOS INFORMACION DE RETIRADO
    SELECT NOMBRE INTO NOMBRE_CARGO FROM P_CARGO C
    WHERE C.ID_CARGO = :OLD.ID_CARGO;
    
    INSERT INTO RETIRADOS VALUES(:OLD.ID_EMPLEADO,:OLD.NOMBRE,:OLD.APELLIDO_PATERNO,
            :OLD.APELLIDO_MATERNO,:OLD.TELEFONO,:OLD.CORREO_ELECTRONICO,
                NOMBRE_CARGO,:OLD.NUM_DOC_IDENTIDAD);
    
    --ELIMINAR SU HORARIO,ACTIVIDADES,Y SU ENCARGO
    DELETE FROM P_EMPLEADOXHORARIO
    WHERE ID_EMPLEADO = :OLD.ID_EMPLEADO;
    
    DELETE FROM P_ENCARGADO_ACTIVIDADES
    WHERE ID_EMPLEADO = :OLD.ID_EMPLEADO;
    
    DELETE FROM P_EMPLEADOXACTIVIDAD
    WHERE ID_EMPLEADO = :OLD.ID_EMPLEADO;
    
    DELETE FROM P_MARCACION
    WHERE ID_EMPLEADO = :OLD.ID_EMPLEADO;   
END;