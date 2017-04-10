require 'sinatra'

get '/ej6' do
	arreglo = %w{ anana banana manzana }
	arreglo2 = %w{anana bananas balanza }
	result = []
	primera, primera2 = ''
	# RECORRE ARRAY Y EVALUA, SI ENCUENTRA "BA" SALE DEL CICLO
	arreglo.each do |item|
		item.downcase
		if item[0..1] == 'ba'
			primera = item
			#break
		end
	end
	result.push "En #{arreglo} el primer elemento que comienza con 'ba' es: #{primera}<br>"

# RECORRE ARRAY Y EVALUA, SI ENCUENTRA "BA" SALE DEL CICLO
	arreglo2.each do |item|
		item.downcase
		if item[0..1] == 'ba'
			primera2 = item
			break
		end
	end
	result.push "En #{arreglo2} el primer elemento que comienza con 'ba' es: #{primera2}"
	return result

end