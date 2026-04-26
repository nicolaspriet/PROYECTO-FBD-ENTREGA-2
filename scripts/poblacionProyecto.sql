INSERT INTO ciudad (nombre) VALUES ('Bogotá');
INSERT INTO ciudad (nombre) VALUES ('Medellín');
INSERT INTO ciudad (nombre) VALUES ('Cali');
INSERT INTO ciudad (nombre) VALUES ('Cartagena');
INSERT INTO ciudad (nombre) VALUES ('Barranquilla');

INSERT INTO administrador (documento, nombre, apellido, correo, telefono)
VALUES ('100000001', 'Laura', 'Gómez', 'laura.gomez@dannalpes.com', '3001111111');

INSERT INTO administrador (documento, nombre, apellido, correo, telefono)
VALUES ('100000002', 'Carlos', 'Pérez', 'carlos.perez@dannalpes.com', '3002222222');

INSERT INTO administrador (documento, nombre, apellido, correo, telefono)
VALUES ('100000003', 'Ana', 'Martínez', 'ana.martinez@dannalpes.com', '3003333333');

-- 3. HOTELES - 15 hoteles
INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Bogotá Norte', 'Calle 100 #15-20', '6011111111', 'Hotel ejecutivo en Bogotá', 1, 1);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Bogotá Centro', 'Carrera 7 #22-10', '6011111112', 'Hotel céntrico en Bogotá', 1, 1);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Bogotá Salitre', 'Av. Esperanza #50-30', '6011111113', 'Hotel cerca al aeropuerto', 1, 2);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Medellín Poblado', 'Calle 10 #43A-20', '6042222221', 'Hotel en El Poblado', 2, 2);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Medellín Laureles', 'Circular 75 #39-10', '6042222222', 'Hotel en Laureles', 2, 2);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Medellín Centro', 'Av. Oriental #52-30', '6042222223', 'Hotel en el centro de Medellín', 2, 3);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Cali Norte', 'Av. 6N #25-40', '6023333331', 'Hotel en el norte de Cali', 3, 1);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Cali Sur', 'Calle 5 #80-15', '6023333332', 'Hotel en el sur de Cali', 3, 1);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Cali Centro', 'Carrera 10 #12-20', '6023333333', 'Hotel céntrico en Cali', 3, 3);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Cartagena Bocagrande', 'Av. San Martín #7-50', '6054444441', 'Hotel frente al mar', 4, 2);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Cartagena Centro', 'Calle del Arsenal #8-30', '6054444442', 'Hotel en ciudad amurallada', 4, 2);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Cartagena Manga', 'Cra. 20 #25-15', '6054444443', 'Hotel en Manga', 4, 3);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Barranquilla Norte', 'Cra. 53 #82-100', '6055555551', 'Hotel norte de Barranquilla', 5, 1);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Barranquilla Prado', 'Calle 70 #52-40', '6055555552', 'Hotel sector Prado', 5, 2);

INSERT INTO hotel (nombre, direccion, telefono, descripcion, id_ciudad, id_admin)
VALUES ('Dann Alpes Barranquilla Centro', 'Cra. 45 #35-20', '6055555553', 'Hotel centro de Barranquilla', 5, 3);

BEGIN
    FOR i IN 1..300 LOOP
        INSERT INTO cliente (
            documento,
            nombre,
            apellidos,
            correo,
            telefono
        ) VALUES (
            TO_CHAR(200000000 + i),
            'Cliente' || i,
            'Apellido' || i,
            'cliente' || i || '@correo.com',
            '310' || LPAD(i, 7, '0')
        );
    END LOOP;
END;
/

INSERT INTO servicio (nombre, descripcion, tipo_costo, aplica_por, precio)
VALUES ('Cancelación flexible', 'Permite cancelar con anticipación', 'FIJO', 'RESERVA', 50000);

INSERT INTO servicio (nombre, descripcion, tipo_costo, aplica_por, precio)
VALUES ('Airport shuttle', 'Transporte desde o hacia el aeropuerto', 'FIJO', 'RESERVA', 80000);

INSERT INTO servicio (nombre, descripcion, tipo_costo, aplica_por, precio)
VALUES ('Check-in temprano', 'Ingreso antes de la hora regular', 'FIJO', 'RESERVA', 60000);

INSERT INTO servicio (nombre, descripcion, tipo_costo, aplica_por, precio)
VALUES ('Check-out tardío', 'Salida después de la hora regular', 'FIJO', 'RESERVA', 60000);

INSERT INTO servicio (nombre, descripcion, tipo_costo, aplica_por, precio)
VALUES ('Cuna para bebé', 'Cuna adicional para menores', 'FIJO', 'RESERVA', 30000);

INSERT INTO servicio (nombre, descripcion, tipo_costo, aplica_por, precio)
VALUES ('Acceso a sauna', 'Acceso a sauna del hotel', 'FIJO', 'PERSONA', 40000);

INSERT INTO servicio (nombre, descripcion, tipo_costo, aplica_por, precio)
VALUES ('Desayuno', 'Desayuno buffet', 'CONSUMO', 'PERSONA', 35000);

INSERT INTO servicio (nombre, descripcion, tipo_costo, aplica_por, precio)
VALUES ('Valet parking', 'Servicio de parqueadero asistido', 'CONSUMO', 'NOCHE', 45000);

INSERT INTO servicio (nombre, descripcion, tipo_costo, aplica_por, precio)
VALUES ('Almuerzo', 'Almuerzo en restaurante del hotel', 'CONSUMO', 'PERSONA', 50000);

INSERT INTO servicio (nombre, descripcion, tipo_costo, aplica_por, precio)
VALUES ('Servicio de masajes', 'Masaje relajante', 'CONSUMO', 'PERSONA', 120000);

INSERT INTO servicio (nombre, descripcion, tipo_costo, aplica_por, precio)
VALUES ('Plan de deportes', 'Acceso a actividades deportivas', 'CONSUMO', 'PERSONA', 70000);


BEGIN
    FOR h IN 1..15 LOOP
        INSERT INTO tipo_habitacion (
            nombre, capacidad, costo_temporada_alta, costo_temporada_baja,
            metros_cuadrados, tipo_vista, cantidad_total, id_hotel
        ) VALUES (
            'Habitación Estándar',
            2,
            280000,
            200000,
            25,
            'ESTANDAR',
            10,
            h
        );

        INSERT INTO tipo_habitacion (
            nombre, capacidad, costo_temporada_alta, costo_temporada_baja,
            metros_cuadrados, tipo_vista, cantidad_total, id_hotel
        ) VALUES (
            'Habitación Doble',
            4,
            420000,
            320000,
            35,
            'PISCINA',
            8,
            h
        );

        INSERT INTO tipo_habitacion (
            nombre, capacidad, costo_temporada_alta, costo_temporada_baja,
            metros_cuadrados, tipo_vista, cantidad_total, id_hotel
        ) VALUES (
            'Suite Junior',
            3,
            600000,
            450000,
            45,
            CASE 
                WHEN h IN (10, 11, 12) THEN 'MAR'
                ELSE 'MONUMENTOS'
            END,
            5,
            h
        );
    END LOOP;
END;
/

BEGIN
    FOR h IN 1..15 LOOP
        -- Los ids de tipo_habitacion por hotel quedan así:
        -- hotel 1: tipos 1,2,3
        -- hotel 2: tipos 4,5,6
        -- fórmula:
        -- tipo_estandar = (h-1)*3 + 1
        -- tipo_doble    = (h-1)*3 + 2
        -- tipo_suite    = (h-1)*3 + 3

        FOR n IN 1..10 LOOP
            INSERT INTO habitacion (
                numero_habitacion, estado, id_hotel, id_tipo
            ) VALUES (
                100 + n,
                'DISPONIBLE',
                h,
                (h - 1) * 3 + 1
            );
        END LOOP;

        FOR n IN 1..8 LOOP
            INSERT INTO habitacion (
                numero_habitacion, estado, id_hotel, id_tipo
            ) VALUES (
                200 + n,
                'DISPONIBLE',
                h,
                (h - 1) * 3 + 2
            );
        END LOOP;

        FOR n IN 1..5 LOOP
            INSERT INTO habitacion (
                numero_habitacion, estado, id_hotel, id_tipo
            ) VALUES (
                300 + n,
                'DISPONIBLE',
                h,
                (h - 1) * 3 + 3
            );
        END LOOP;
    END LOOP;
END;
/

BEGIN
    FOR i IN 1..300 LOOP
        INSERT INTO reserva (
            fecha_entrada,
            fecha_salida,
            adultos,
            menores_3,
            precio_total,
            codigo_confirmacion,
            estado,
            id_hotel,
            id_cliente,
            id_habitacion
        ) VALUES (
            DATE '2026-05-01' + MOD(i, 60),
            DATE '2026-05-03' + MOD(i, 60),
            MOD(i, 3) + 1,
            MOD(i, 2),
            400000 + (MOD(i, 5) * 100000),
            'CONF-' || LPAD(i, 5, '0'),
            CASE
                WHEN MOD(i, 10) = 0 THEN 'CANCELADA'
                WHEN MOD(i, 7) = 0 THEN 'FINALIZADA'
                ELSE 'ACTIVA'
            END,
            MOD(i - 1, 15) + 1,
            i,
            MOD(i - 1, 345) + 1
        );
    END LOOP;
END;
/

BEGIN
    FOR i IN 1..300 LOOP

        INSERT INTO reserva_servicio (id_reserva, id_servicio, cantidad)
        VALUES (
            i,
            MOD(i, 11) + 1,
            MOD(i, 3) + 1
        );

        IF MOD(i, 2) = 0 THEN
            INSERT INTO reserva_servicio (id_reserva, id_servicio, cantidad)
            VALUES (
                i,
                MOD(i + 3, 11) + 1,
                MOD(i, 2) + 1
            );
        END IF;

        IF MOD(i, 5) = 0 THEN
            INSERT INTO reserva_servicio (id_reserva, id_servicio, cantidad)
            VALUES (
                i,
                MOD(i + 7, 11) + 1,
                1
            );
        END IF;

    END LOOP;
END;
/