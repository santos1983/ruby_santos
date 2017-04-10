require 'sinatra'



get '/ej5' do

	arreglo = %w{ rambo ruido ruby }
	arreglo2 = %w{razon sazon calzon }
	res = []
	ctrl = 0
	ctrl2 = 0
#************ARREGLO 1*************
	arreglo.each do |item|
		item.downcase
		if item[0] == 'r'
			ctrl+=1
		end
	end
	if ctrl<arreglo.length
		res.push "En el arreglo #{arreglo}, no todas comienzan con r <br>"
	else
		res.push "En el arreglo #{arreglo}, todas comienzan con r <br>"
	end
	
#************ARREGLO 2*************

	arreglo2.each do |item|
		item.downcase
		if item[0] == 'r'
			ctrl2 +=1
		end
	end
	if ctrl2<arreglo2.length
		res.push "En el arreglo #{arreglo2}, no todas comienzan con r"
	else
		res.push "En el arreglo #{arreglo2}, todas comienzan con r"
	end	
	return res
end