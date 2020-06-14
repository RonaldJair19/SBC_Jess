;Sistema experto para detectar fallos en automoviles
;Definir plantilla

;Hechos del sistema
(deftemplate fallo-carro "Tipo de fallo del automovil"
	(slot fallo_carro)
)

(deftemplate clase-motor "Clase de motor que utiliza el cliente"
	(slot clase_motor (type STRING))
)

(deftemplate motor-ruido "El motor hace demasiado ruido?"
	(slot motor_ruido(type STRING))
)

(deftemplate situaciones-motor "Seleccionar alguna de las situaciones acerca del motor"
	(slot situaciones_motor(type STRING))
)

(deftemplate combustion-motor "Que tipo de combustion realiza su motor?"
	(slot combustion_del_motor(type STRING))
)

(deftemplate consumo-excesivo "Nota algun consumo exesivo en su automovil"
	(slot consumo_excesivo (type STRING))
)

(deftemplate potencia-motor "Motor no entrega toda la potencia"
	(slot potencia_motor(type STRING))
)

(deftemplate tipo-arranque "Que tipo de arranque utiliza su motor"
	(slot tipo_arranque(type STRING))
)

(deftemplate indicios-arranque-normal "Nota alguna de las senales en su arranque normal"
	(slot indicios_arranque_normal(type STRING))
)

(deftemplate auto-detenido "El auto ha estado detenido por un tiempo"
	(slot auto_detenido(type STRING))
)

(deftemplate auto-encender "El automovil puede encender"
	(slot auto_encender(type STRING))
)

(deftemplate intensidad-luces "Las luces encienden con poca intensidad"
	(slot intensidad_luces(type STRING))
)

(deftemplate bateria-vieja "La bateria es vieja"
	(slot bateria_vieja(type STRING))
)

(deftemplate situacion-conduccion-suspension "Nota alguna situacion estrana al conducir"
	(slot situacion_conduccion(type STRING))
)

(deftemplate desgaste-neumaticos "Tipos desgaste de los neumaticos"
	(slot desgaste_neumaticos (type STRING))
)

(deftemplate carro-rebota "El coche rebota demasiado"
	(slot carro_rebota(type STRING))
)

(deftemplate situaciones-suspension "Cuales de estas situaciones ha sentido"
	(slot situaciones_suspension(type STRING))
)

(deftemplate auto-no-frena "El auto no frena adecuadamente"
	(slot auto_no_frena(type STRING))
)

(deftemplate cambios-pedal-freno "Nota cambios en el pedal de freno"
	(slot cambios_pedal_freno(type STRING))
)

(deftemplate tacto-pedal "Como es el tacto en el pedal"
	(slot tacto_pedal(type STRING))
)

(deftemplate movimiento-pedal "Como es el movimiento del pedal"
	(slot movimiento_pedal(type STRING))
)

(deftemplate recorrido-pedal "Como es el recorrido del pedal"
	(slot recorrido_pedal(type STRING))
)

(deftemplate kilometraje-frenos "Cuanto kilometraje desde que se cambiaron los frenos"
	(slot kilometraje_frenos(type STRING))
)

(deftemplate chirridos-frenos "Notas algun chirrido al frenar"
	(slot chirridos_frenos(type STRING))
)

(deftemplate respuesta_sistema "Variable que contiene la respuesta del sistema"
	(slot respuesta_final(type STRING))
)




;Definiendo las reglas 
;(defrule inicial
;	(initial-fact)
;	=>
;	;(dribble-on E:\Documentos\UTP\Cuarto_Anio\Sistemas_basados_en_el_conocimiento\CLIPS-master\CLIPS-master\microsoft_windows\Integration_Examples\ImplicitDLLExample\Historial_Eventos.txt)
;	(printout t "--Que tipo de falla presenta su vehiculo?" crlf)
;	(printout t "(A) Fallo del motor" crlf)
;	(printout t "(B) Fallo electrico" crlf)
;	(printout t "(C) Fallo en la suspension" crlf)
;	(printout t "(D) Fallo en los frenos" crlf)
;	(printout t "Respuesta: ")
;	;(bind ?fallo(readline))	
	;(assert (fallo-carro(fallo_carro ?fallo)))
	;(printout t "" crlf)
	;(system cls)
	
;)


;(defrule prueba
;	(fallo-carro (fallo_carro A))
;	=>
;	(printout t "-- Que tipo de motor utiliza su automovil?" crlf)
;	(printout t "(A) Motor Electrico" crlf)
;	(printout t "(B) Motor de combustion interna" crlf)
;	(printout t "Respuesta: ")
	
;	)

(defrule reglas
	(fallo-carro(fallo_carro ?fallo))
	=>
	(if ( eq ?fallo "A")
		then
		(printout t "-- Que tipo de motor utiliza su automovil?" crlf)
		(printout t "(A) Motor Electrico" crlf)
		(printout t "(B) Motor de combustion interna" crlf)
		(printout t "Respuesta: ")
		;(bind ?clasemotor (readline))
		;(assert (clase-motor(clase_motor ?clasemotor)))
		;(printout t "" crlf)

		(if( eq ?clasemotor "A")
			then
			(printout t "-- Su motor electrico hace algun ruido?" crlf)
			(printout t "(A) Si" crlf)
			(printout t "(B) No hace ningun ruido" crlf)
			(printout t "Respuesta: ")
			;(bind ?ruidomotor(readline))
			;(assert (motor-ruido(motor_ruido ?ruidomotor)))
			;(printout t "" crlf)

			(if( eq ?ruidomotor "B")
				then
				(printout t "--Seleccione si nota alguna de las siguientes situaciones en su motor" crlf)
				(printout t "(A) El motor no arranca en vacio" crlf)
				(printout t "(B) Humo o quemadura" crlf)
				(printout t "(C) No noto nada" crlf)
				(printout t "Respuesta: ")
				;(bind ?situacionesmotor(readline))
				;(assert (situaciones-motor(situaciones_motor ?situacionesmotor)))
				;(printout t "" crlf)

			)
		)
		(if( eq ?clasemotor "B")
			then 
			(printout t "-- Que clase de combustible utiliza su motor?" crlf)
			(printout t "(A) Motor de gasolina" crlf)
			(printout t "(B) Motor diesel" crlf)
			(printout t "Respuesta: ")
			;(bind ?combustionmotor(readline))
			;(assert(combustion-motor(combustion_del_motor ?combustionmotor)))
			;(printout t "" crlf)

			(if( eq ?combustionmotor "A")
				then 
				(printout t "--Siente un consumo exesivo de:" crlf)
				(printout t "(A) Aceite" crlf)
				(printout t "(B) Gasolina" crlf)
				(printout t "(C) No siento consumo exesivo de nada" crlf)
				(printout t "Respuesta: ")
				;(bind ?consumoexesivo(readline))
				;(assert (consumo-excesivo(consumo_excesivo ?consumoexesivo)))
				;(printout t "" crlf)

					(if(eq ?consumoexesivo "C")
						then
						(printout t "--Siente el motor entrega toda su potencia?" crlf)
						(printout t "(A) Si" crlf)
						(printout t "(B) No" crlf)
						(printout t "Respuesta: ")
						;(bind ?potenciamotor(readline))
						;(assert(potencia-motor(potencia_motor ?potenciamotor)))
						;(printout t "" crlf)
					)
			)

			(if( eq ?consumoexesivo "B")
				then
				(printout t "--Que tipo de arranque esta teniendo su motor?" crlf)
				(printout t "(A) Arranque dificil" crlf)
				(printout t "(B) Arranque duro" crlf)
				(printout t "(C) Arranque sin potencia" crlf)
				(printout t "(D) Arranque normal" crlf)
				(printout t "Respuesta: ")
				;(bind ?tipoarranque(readline))
				;(assert (tipo-arranque(tipo_arranque ?tipoarranque)))
				;(printout t "" crlf)

				(if( eq ?tipoarranque "D")
					then
					(printout t "--Nota alguna de estas senales?" crlf)
					(printout t "(A) Escape con humo negro" crlf)
					(printout t "(B) Ruido significativo" crlf)
					(printout t "(C) No noto nada" crlf)
					(printout t "Respuesta: ")
					;(bind ?senales(readline))
					;(assert(indicios-arranque-normal(indicios_arranque_normal ?senales)))
					;(printout t "" crlf)

					(if( eq ?senales "C")
						then
						(printout t "--El auto ha estado detenido por mucho tiempo?" crlf)
						(printout t "(A) Si" crlf)
						(printout t "(B) No" crlf)
						;(bind ?autodetenido(readline))
						;(assert (auto-detenido(auto_detenido ?autodetenido)))
						;(printout t "" crlf)
					)
				)
			)
		)
	)

	(if( eq ?fallo "B")
		then
		(printout t "--Su automovil puede encender?" crlf)
		(printout t "(A) Si" crlf)
		(printout t "(B) No" crlf)
		(printout t "Respuesta: ")
		;(bind ?autoencender(readline))
		;(assert (auto-encender(auto_encender ?autoencender)))
		;(printout t "" crlf)

		(if( eq ?autoencender "A")
			then
			(printout t "--Las luces encienden con poca intensidad?" crlf)
			(printout t "(A) Si" crlf)
			(printout t "(B) No" crlf)
			(printout t "Respuesta: ")
			;(bind ?intensidadluces(readline))
			;(assert (intensidad-luces(intensidad_luces ?intensidadluces)))
			;(printout t "" crlf)

				(if( eq ?intensidadluces "A")
					then
					(printout t "--Su bateria es vieja?" crlf)
					(printout t "(A) Si" crlf)
					(printout t "(B) No" crlf)
					(printout t "Respuesta: ")
					;(bind ?bateriavieja (readline))
					;(assert (bateria-vieja(bateria_vieja ?bateriavieja)))
					;(printout t "" crlf)
				)
		)
	)

	(if( eq ?fallo "C")
		then
		(printout t "--Ha sentido alguna situacion extrana al conducir el auto?" crlf)
		(printout t "(A) Si" crlf)
		(printout t "(B) No" crlf)
		(printout t "Respuesta: ")
		;(bind ?situacionsuspension(readline))
		;(assert (situacion-conduccion-suspension(situacion_conduccion ?situacionsuspension)))
		;(printout t "" crlf)

		(if( eq ?situacionsuspension "B")
			then
			(printout t "--Sus neumaticos presentan alguno de estos tipos de desgastes?" crlf)
			(printout t "(A) Desgaste excesivo del neumatico por los extremos o el centro de la banda" crlf)
			(printout t "(B) Desgaste irregular" crlf)
			(printout t "(C) Ninguno" crlf)
			(printout t "Respuesta: ")
			;(bind ?desgasteneumaticos(readline))
			;(assert (desgaste-neumaticos(desgaste_neumaticos ?desgasteneumaticos)))
			;(printout t "" crlf)
		)
		(if( eq ?situacionsuspension "A")
			then
			(printout t "--El coche rebota demasiado?" crlf)
			(printout t "(A) Si" crlf)
			(printout t "(B) No" crlf)
			(printout t "Respuesta: ")
			;(bind ?carrorebota(readline))
			;(assert (carro-rebota(carro_rebota ?carrorebota)))
			;(printout t "" crlf)

			(if( eq ?carrorebota "B")
				then
				(printout t "--Cuales de las siguientes situaciones ha sentido?" crlf)
				(printout t "(A) En curvas o apoyos fuertes actua extrano" crlf)
				(printout t "(B) El coche esta desnivelado" crlf)
				(printout t "Respuesta: ")
				;(bind ?situacion(readline))
				;(assert (situaciones-suspension(situaciones_suspension ?situacion)))
				;(printout t "" crlf)
			)
		)
	)

	(if( eq ?fallo "D")
		then
		(printout t "--Siente que el auto no esta frenando adecuadamente?" crlf)
		(printout t "(A) Si" crlf)
		(printout t "(B) No" crlf)
		(printout t "Respuesta: ")
		;(bind ?autonofrena(readline))
		;(assert (auto-no-frena(auto_no_frena ?autonofrena)))
		;(printout t "" crlf)

		(if( eq ?autonofrena "A")
			then
			(printout t "--Siente cambios en el pedal del freno?" crlf)
			(printout t "(A) Si" crlf)
			(printout t "(B) No" crlf)
			(printout t "Respuesta: ")
			;(bind ?cambiospedalfreno(readline))
			;(assert (cambios-pedal-freno(cambios_pedal_freno ?cambiospedalfreno)))
			;(printout t "" crlf)

			(if( eq ?cambiospedalfreno "A")
				then
				(printout t "--Como es el tacto con el pedal?" crlf)
				(printout t "(A) Esta mas duro de lo normal" crlf)
				(printout t "(B) Sensacion de que esta esponjoso" crlf)
				(printout t "(C) Siento un movimiento extrano del pedal" crlf)
				(printout t "Respuesta: ")
				;(bind ?tactopedal(readline))
				;(assert (tacto-pedal(tacto_pedal ?tactopedal)))
				;(printout t "" crlf)

				(if( eq ?tactopedal "C")
					then
					(printout t "--Cuales de los siguientes movimientos realiza el pedal?" crlf)
					(printout t "(A) Vibra" crlf)
					(printout t "(B) Pulsa" crlf)
					(printout t "(C) Realiza un recorrido anormal" crlf)
					(printout t "Respuesta: ")
					;(bind ?movimientopedal(readline))
					;(assert (movimiento-pedal(movimiento_pedal ?movimientopedal)))
					;(printout t "" crlf)

					(if( eq ?movimientopedal "C")
						then
						(printout t "--Como es el recorrido del pedal?" crlf)
						(printout t "(A) El pedal hace un recorrido mas corto" crlf)
						(printout t "(B) El recorrido del pedal se acorta" crlf)
						(printout t "Respuesta: ")
						;(bind ?recorridopedal(readline))
						;(assert (recorrido-pedal(recorrido_pedal ?recorridopedal)))
						;(printout t "" crlf)
					)
				)
			)

			(if( eq ?cambiospedalfreno "B")
				then
				(printout t "--Escucha chirridos al frenar?" crlf)
				(printout t "(A) Si" crlf)
				(printout t "(B) No" crlf)
				(printout t "Respuesta: ")
				;(bind ?chirridosfreno(readline))
				;(assert (chirridos-frenos(chirridos_frenos ?chirridosfreno)))
				;(printout t "" crlf)
				
				(if( eq ?chirridosfreno "B")
					then
					(printout t "--Cuanto kilometraje tiene desde que cambio de frenos?")
					(printout t "(A) Hace menos de 5000 KM" crlf)
					(printout t "(B) Entre 5000 y 10000 KM" crlf)
					(printout t "Respuesta: ")
					;(bind ?kilometrajefrenos(readline))
					;(assert (kilometraje-frenos(kilometraje_frenos ?kilometrajefrenos)))
					;(printout t "" crlf)
				)
			)
		)
	)
)

;Definiendo las reglas
(defrule Regla1 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor A))
	(motor-ruido(motor_ruido A))
=>
	(printout t "Diagnostico del sistema: Verificar fijaciones, cojinetes y barras del rotor.")
	;(assert(respuesta_sistema(respuesta_final "Diagnostico del sistema: Verificar fijaciones, cojinetes y barras del rotor"));
)

(defrule Regla2 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor A))
	(motor-ruido(motor_ruido B))
	(situaciones-motor(situaciones_motor A))
=>
	(printout t "Diagnostico del sistema: Verifica los fusibles, contactos, conexiones del motor (como la estrella-triangulo).")
)

(defrule Regla3 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor A))
	(motor-ruido(motor_ruido B))
	(situaciones-motor(situaciones_motor B))
=>
	(printout t "Diagnostico del sistema: Cortocircuito, revisar la ventilacion del motor.")
)

(defrule Regla4 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor A))
	(motor-ruido(motor_ruido B))
	(situaciones-motor(situaciones_motor C))
=>
	(printout t "Diagnostico del sistema: Bateria agotada, debe recargaro sustiruir.")
)
 ;Segunda rama
(defrule Regla5 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor B))
	(combustion-motor(combustion_del_motor A))
	(consumo-excesivo(consumo_excesivo A))
=>
	(printout t "Diagnostico del sistema: Revisar retenedores o empaques")
)

(defrule Regla6 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor B))
	(combustion-motor(combustion_del_motor A))
	(consumo-excesivo(consumo_excesivo B))
=>
	(printout t "Diagnostico del sistema: Fallas del carburador, fugas.")
)

(defrule Regla7 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor B))
	(combustion-motor(combustion_del_motor A))
	(consumo-excesivo(consumo_excesivo C))
	(potencia-motor(potencia_motor A))
=>
	(printout t "Diagnostico del sistema: El embrague esta resbalando.")
)

(defrule Regla8 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor B))
	(combustion-motor(combustion_del_motor A))
	(consumo-excesivo(consumo_excesivo C))
	(potencia-motor(potencia_motor B))
=>
	(printout t "Diagnostico del sistema: Junta de culata en mal estado.")
)

(defrule Regla9 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor B))
	(combustion-motor(combustion_del_motor B))
	(tipo-arranque(tipo_arranque A))
=>
	(printout t "Diagnostico del sistema: Baja compresion o un problema de suministro de combustible.")
)

(defrule Regla10 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor B))
	(combustion-motor(combustion_del_motor B))
	(tipo-arranque(tipo_arranque B))
=>
	(printout t "Diagnostico del sistema: Peso incorrecto viscosidad.")
)

(defrule Regla11 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor B))
	(combustion-motor(combustion_del_motor B))
	(tipo-arranque(tipo_arranque C))
=>
	(printout t "Diagnostico del sistema: Filtros de combustible sucios, la conexion floja del acelerador, la lubricacion excesiva.")
)

(defrule Regla12 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor B))
	(combustion-motor(combustion_del_motor B))
	(tipo-arranque(tipo_arranque D))
	(indicios-arranque-normal(indicios_arranque_normal A))
=>
	(printout t "Diagnostico del sistema: Un inyector o una bomba inyectora o un filtro de aire o una valvula EGR.")
)

(defrule Regla13 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor B))
	(combustion-motor(combustion_del_motor B))
	(tipo-arranque(tipo_arranque D))
	(indicios-arranque-normal(indicios_arranque_normal B))
=>
	(printout t "Diagnostico del sistema: Problema con los inyectores de combustible.")
)

(defrule Regla14 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor B))
	(combustion-motor(combustion_del_motor B))
	(tipo-arranque(tipo_arranque D))
	(indicios-arranque-normal(indicios_arranque_normal C))
	(auto-detenido(auto_detenido A))
=>
	(printout t "Diagnostico del sistema: Aceite Oxidado o agua en el lubricante del motor." crlf)
)

(defrule Regla15 ""
	(fallo-carro(fallo_carro A))
	(clase-motor(clase_motor B))
	(combustion-motor(combustion_del_motor B))
	(tipo-arranque(tipo_arranque D))
	(indicios-arranque-normal(indicios_arranque_normal C))
	(auto-detenido(auto_detenido B))
=>
	(printout t "Diagnostico del sistema: Bujia de incandescencia defectuosa." crlf)
)
;Fin hasta aquí


(defrule Regla16 ""
	(fallo-carro(fallo_carro "B"))
	(auto-encender(auto_encender "A"))
	(intensidad-luces(intensidad_luces "A"))
	(bateria-vieja(bateria_vieja "A"))
=>
	(printout t crlf "Diagnostico del sistema: Cambio de Bateria." crlf)
)

(defrule Regla17 ""
	(fallo-carro(fallo_carro "B"))
	(auto-encender(auto_encender "A"))
	(intensidad-luces(intensidad_luces "A"))
	(bateria-vieja(bateria_vieja "B"))
=>
	(printout t crlf "Diagnostico del sistema: Revision de Alternador." crlf)
)

(defrule Regla18 ""
	(fallo-carro(fallo_carro "B"))
	(auto-encender(auto_encender "A"))
	(intensidad-luces(intensidad_luces "B"))
=>
	(printout t crlf "Diagnostico del sistema: Revision de Bombillas." crlf)
)

(defrule Regla19 ""
	(fallo-carro(fallo_carro "B"))
	(auto-encender(auto_encender "B"))
=>
	(printout t crlf "Diagnostico del sistema: Revision de bujias." crlf)
)

(defrule Regla20 ""
	(fallo-carro(fallo_carro "C"))
	(situacion-conduccion-suspension(situacion_conduccion "A"))
	(carro-rebota(carro_rebota "A"))
=>
	(printout t crlf "Diagnostico del sistema: Amortiguadores muy desgastados." crlf)
)

(defrule Regla21 ""
	(fallo-carro(fallo_carro "C"))
	(situacion-conduccion-suspension(situacion_conduccion "A"))
	(carro-rebota(carro_rebota "B"))
	(situaciones-suspension(situaciones_suspension "A"))
=>
	(printout t crlf "Diagnostico del sistema: Amortiguadores mal ajustados." crlf)
)

(defrule Regla22 ""
	(fallo-carro(fallo_carro "C"))
	(situacion-conduccion-suspension(situacion_conduccion "A"))
	(carro-rebota(carro_rebota "B"))
	(situaciones-suspension(situaciones_suspension "B"))
=>
	(printout t crlf "Diagnostico del sistema: Los brazos de la suspension se han doblado o partido." crlf)
)

(defrule Regla23 ""
	(fallo-carro(fallo_carro "D"))
	(auto-no-frena(auto_no_frena "A"))
	(cambios-pedal-freno(cambios_pedal_freno "A"))
	(tacto-pedal(tacto_pedal "A"))
=>
	(printout t crlf "Diagnostico del sistema: Pastillas de freno sucias." crlf)
)

(defrule Regla24 ""
	(fallo-carro(fallo_carro "D"))
	(auto-no-frena(auto_no_frena "A"))
	(cambios-pedal-freno(cambios_pedal_freno "A"))
	(tacto-pedal(tacto_pedal "B"))
=>
	(printout t crlf "Diagnostico del sistema: Existencia de pinza agripada." crlf)
)

(defrule Regla25 ""
	(fallo-carro(fallo_carro "D"))
	(auto-no-frena(auto_no_frena "A"))
	(cambios-pedal-freno(cambios_pedal_freno "A"))
	(tacto-pedal(tacto_pedal "C"))
	(movimiento-pedal(movimiento_pedal "A"))
=>
	(printout t crlf "Diagnostico del sistema: Rodamientos de la rueda gastados." crlf)
)

(defrule Regla26 ""
	(fallo-carro(fallo_carro "D"))
	(auto-no-frena(auto_no_frena "A"))
	(cambios-pedal-freno(cambios_pedal_freno "A"))
	(tacto-pedal(tacto_pedal "C"))
	(movimiento-pedal(movimiento_pedal "B"))
=>
	(printout t crlf "Diagnostico del sistema: Rotula en mal estado." crlf)
)

(defrule Regla27 ""
	(fallo-carro(fallo_carro "D"))
	(auto-no-frena(auto_no_frena "A"))
	(cambios-pedal-freno(cambios_pedal_freno "A"))
	(tacto-pedal(tacto_pedal "C"))
	(movimiento-pedal(movimiento_pedal "C"))
	(recorrido-pedal(recorrido_pedal "A"))
=>
	(printout t crlf "Diagnostico del sistema: Falta de liquido de freno o fuga del mismo." crlf)
)

(defrule Regla28 ""
	(fallo-carro(fallo_carro "D"))
	(auto-no-frena(auto_no_frena "A"))
	(cambios-pedal-freno(cambios_pedal_freno "A"))
	(tacto-pedal(tacto_pedal "C"))
	(movimiento-pedal(movimiento_pedal "C"))
	(recorrido-pedal(recorrido_pedal "B"))
=>
	(printout t crlf "Diagnostico del sistema: Dano en las piezas que intervienen en la extension y retraccion de las partes moviles." crlf)
)

(defrule Regla29 ""
	(fallo-carro(fallo_carro "D"))
	(auto-no-frena(auto_no_frena "A"))
	(cambios-pedal-freno(cambios_pedal_freno "B"))
	(chirridos-frenos(chirridos_frenos "A"))
=>
	(printout t crlf "Diagnostico del sistema: Pastillas Sucias." crlf)
)

(defrule Regla30 ""
	(fallo-carro(fallo_carro "D"))
	(auto-no-frena(auto_no_frena "A"))
	(cambios-pedal-freno(cambios_pedal_freno "B"))
	(chirridos-frenos(chirridos_frenos "B"))
	(kilometraje-frenos(kilometraje_frenos "A"))
=>
	(printout t crlf "Diagnostico del sistema: Problema de Fading." crlf)
)

(defrule Regla31 ""
	(fallo-carro(fallo_carro "D"))
	(auto-no-frena(auto_no_frena "A"))
	(cambios-pedal-freno(cambios_pedal_freno "B"))
	(chirridos-frenos(chirridos_frenos "B"))
	(kilometraje-frenos(kilometraje_frenos "B"))
=>
	(printout t crlf "Diagnostico del sistema: Pastillas de frenado en mal estado." crlf)
)

(defrule Regla32 ""
	(fallo-carro(fallo_carro "D"))
	(auto-no-frena(auto_no_frena "B"))
=>
	(printout t crlf "Diagnostico del sistema: Llevar a manteniento." crlf)
)
