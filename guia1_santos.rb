# -----EJERCICIOS PUESTOS EN METODOS -----

# *** EJERCICIO 1 ***
def ej1
	puts "Hola Mundo"
	puts "Presione una tecla para volver al menu"
end

# *** EJERCICIO 2 ***
def ej2
	puts "Ingerse su nombre:"
	nombre = gets.chomp
	nombre.capitalize!
	puts "Hola " + nombre
end

# *** EJERCICIO 3 ***
def ej3
	puts "Ingrese su nombre:"
	nombre = gets.chomp
	nombre.capitalize!
	if (nombre == 'Marcelo' or nombre == 'Claudia')
		puts "Hola " + nombre
	else 
		puts "Hola Usuario"
	end
end

# *** EJERCICIO 4 ***
def ej4
	puts "Ingrese un numero entero: "
	num=gets.chomp
	result=0
	for i in 1..num.to_i
		result+=i
	end
	puts "La sumatoria de 1 a #{num} es: #{result}"
end

# *** EJERCICIO 5 ***
def ej5
	arreglo = %w{ rambo ruido ruby }
	arreglo2 = %w{razon sazon calzon }

	# RECORRE ARRAY Y EVALUA SI COMIENZA CON "R"
	def recorrer(a)
		ctrl =0
		largo_arreglo = a.length
		a.each do |item|
			item.downcase
			if item[0] == 'r'
				ctrl+=1
			end
		end
		if ctrl<largo_arreglo
			puts "En el arreglo #{a}, no todas comienzan con r"
		else
			puts "En el arreglo #{a}, todas comienzan con r"
		end
	end

	#LLAMADA A FUNCION PARA CADA ARRAY DADO
	recorrer(arreglo)
	recorrer(arreglo2)
end

# *** EJERCICIO 6 ***
def ej6
	arreglo = %w{ anana banana manzana }
	arreglo2 = %w{anana banana balanza }

	# RECORRE ARRAY Y EVALUA, SI ENCUENTRA "BA" SALE DEL CICLO
	def recorrer(a)
		a.each do |item|
			item.downcase
			if item[0..1] == 'ba'
				puts "En #{a} el primer elemento que comienza con 'ba' es: #{item}"
				break
			end
		end
	end

	#LLAMADA A FUNCION PARA CADA ARRAY DADO
	recorrer(arreglo)
	recorrer(arreglo2)
	end

# *** EJERCICIO 7 ***
	def ej7
		puts "Ingrese un numero entero: "
		num=gets.chomp
		result=0
		for i in 1..num.to_i
			multiplo_3=i%3
			multiplo_5=i%5
			if multiplo_3==0 or multiplo_5==0
				result+=i
			end
		end
		puts "La sumatoria de multiplos de 3 o 5 en el rango 1 a #{num} es: #{result}"
end

# *** EJERCICIO 8 ***
def ej8
	a=[2,4,7,3,8,76,241,43,12,11]
	bigger=-253000
	a.each do |item|
		
		if item>bigger
			bigger = item
		end
	end
	puts "En al array #{a}, el numero mayor es: #{bigger}"
end

# *** EJERCICIO 9 ***
def ej9

end


# *** EJERCICIO 10 ***

# *** METODO PRINCIPAL ***

def principal
	opcion = 2017

# ---------CONSTRUCCION DEL MENU DE OPCIONES---------
	while opcion != 0 do
		#system(clear)
		puts "*************************************"
		puts "****      Guia 1 - Santos        ****"
		puts "****    Menu de Ejercicios       ****"
		puts "*************************************"
		puts ""
		puts ""

		# --- LISTAR EJERCICIOS Y SALIDA ---
		for i in 1..9
			puts "    #{i} - Ejercicio # #{i}"
		end
		puts "    0 - SALIR"
		puts ""
		puts "Ingrese su opcion:"
		opcion=gets.chomp

		# --- EVALUA ALTERNATIVAS OPCIONES ---
		case opcion.to_s
		when "1"
		  ej1
		when "2"
		  ej2
		when "3"
		  ej3
		when "4"
		  ej4
		when "5"
		  ej5
		when "6"
		  ej6
		when "7"
		  ej7
		when "8"
		  ej8
		when "9"
		  ej9
		when "0"
		  system(exit)
		else
		  puts "OPCION INVALIDA, PRESIONE UNA TECLA PARA VOLVER AL MENU"
		end
	end
end

principal