require 'sinatra'

get '/ej7/:numero' do
	result=0
	num=params[:numero].to_i
	for i in 1..num.to_i
		multiplo_3=i%3
		multiplo_5=i%5
		if multiplo_3==0 or multiplo_5==0
			result+=i
		end
	end
	return "La sumatoria de multiplos de 3 o 5 en el rango 1 a #{num} es: #{result}"
end