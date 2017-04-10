require 'sinatra'

get '/ej4/:numero' do
	num=params[:numero].to_i
	result=0
	for i in 1..num
		result+=i
	end
	return "Sumatoria de 1 a #{num} es: #{result}"
end