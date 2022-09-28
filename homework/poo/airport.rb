#Class Aereopuerto
#Class Avion
class Avion < Piloto
    def initialize (tipo, placa, marca, motores, carga, capacidad_combustible, pilotos)
        @tipo = tipo
        @placa = placa
        @marca = marca
        @motores = motores
        @carga = carga
        @capacidad_combustible = capacidad_combustible
        @pilotos = pilotos
    end
    
    def asientos
    end

    def capcidad_carga(carga)
        @carga = carga
    end

    def destinos(destinos)
        @destinos = destinos
    end

    def escalas(escalas)
        @escalas = escalas
    end

    def azafatas(azafatas)
        @azafatas = azafatas
    end

    def terminal
    end

    def aterriza
    end

    def despega
    end

end

#Class Piloto
class Piloto
    def initialize (nombres, documento_identificacion, horas_vuelo)
        @nombre = nombres
        @documento_identificacion = documento_identificacion
        @horas_vuelo = horas_vuelo
    end

    def horas_vuelo_nocturno
        puts " cantidad de horas vuelo nocturno"
    end

    def tipos_licencia(tipos_licencia)
        @tipos_licencia = tipos_licencia
    end

    def habilitacion_multimotor
    end

    def habilitacion_instrumental
    end

end

#Class Pasajero
class Pasajero
    def initialize (nombres, genero, documento_identificacion, pasaporte, destinos, boleto)
        @nombre = nombres
        @documento_identificacion = documento_identificacion
        @pasaporte = pasaporte
        @destinos = destinos
        @boleto = boleto
    end

    def equipaje
        puts "equipaje"
    end
    
    def nacionalidad
        puts "nacionalidad"
    end
    
    def fechas_viajes(fecha_salida, fecha_regreso)
        @fecha_salida = fecha_salida
        @fecha_regreso = fecha_regreso
    end

    def direccion
        puts "direccion domiciliaria"
    end

    def numero_telefono
        puts "numero de telefono"
    end

    def correo_electronico
        puts "correo electronico"
    end

    def reservas_estadia
        puts "direcciones y lugares de estadias"
    end

    def no_asiento
        puts "numero de asiento asignado"
    end

    def acompaniantes(tipo_acompaniantes, numero_acompaniantes)
        @tipo_acompaniantes = tipo_acompaniantes
        @numero_acompaniantes = numero_acompaniantes
    end
    def itinerario
        puts "itinerario"
    end

end

#Class equipaje
class Equipaje < Pasajero
    def initialize(tipo_quipaje, dimensiones, peso)
        @tipo_quipaje = tipo_quipaje
        @dimensiones = dimensiones
        @peso = peso
    end

    def cantidad_maletas
        puts "cantidad de maletas"
    end
    def articulos_valor
        puts "articulos de valor"
    end

    def electronicos
        puts "dispositivos electronicos"
    end
end

#Class equipaje de mano
class Equipaje_mano < Equipaje
    def dinero
        puts "dinero"
    end

    def medicamentos 
        puts "medicamentos"
    end

    
end

#Class itinerario
class Itinerario < Pasajero
    def initialize (pais_destino, rango_fecha_viaje, cantidad_dias, cantidad_destinos)
        @pais_destino = pais_destino
        @rango_fecha_viaje = rango_fecha_viaje
        @cantidad_dias = cantidad_dias
        @cantidad_destinos = cantidad_destinos
    end
    def reservas_estadia
        puts "estadias"
    end
    def estadia_destino
        puts "rango de fecha en cada destino"
    end
    def escalas
        puts "escalas"
    end
end

#Class boleto
class Boleto < Vuelo
    def initialize (nombre_pasajero, aerolinea, no_boleto, destinos, escalas, cantidad_equipaje, impuestos, fechas, hora_salida)
        @nombre_pasajero = nombre_pasajero
        @aerolinea = aerolinea
        @no_boleto = no_boleto 
        @destinos = destinos
        @escalas = escalas 
        @cantidad_equipaje = cantidad_equipaje
        @impuestos = impuestos
        @fechas = fechas
        @hora_salida = hora_salida
    end

    def forma_pago
        puts "forma de pago de boleto"
    end
end

#Class vuelo
class Vuelo < Aereopuerto
    def initialize(linea_aerea, aereopuerto, clase_vuelo, duracion_vuelo, hora_llegada)
        @linea_aerea = linea_aerea
        @aereopuerto = aereopuerto
        @clase_vuelo = clase_vuelo
        @duracion_vuelo = duracion_vuelo
        @hora_llegada
    end

    def terminal_abordo
        puts "terminal para abordar"
    end
end

#Class Aereopuerto
class Aereopuerto < Aviones
    def initialize(aviones, pasajeros, equipajes)
        @aviones = aviones
        @pasajeros = pasajeros
        @equipajes = equipajes
    end

    def check_in
        puts "check in de pasajeros"
    end

    def pistas_aterrizaje
        "pista asignada de aterrizaje"
    end
end

#Class 
class Pistas_aterrizaje_despegue < Aereopuerto
    def initialize(dimensiones, largo, numero)
        @dimensiones = dimensiones
        @largo = largo
        @numero = numero
    end

    def iluminacion
    end

    def luces_final_pista
    end
end
