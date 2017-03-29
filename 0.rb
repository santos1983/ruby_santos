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