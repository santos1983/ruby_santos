require 'sinatra'

get '/ej3/:name' do
  	nombre=params[:name].capitalize!
	if (nombre == 'Marcelo' or nombre == 'Claudia')
			"Hola " + nombre
	else 
			"Hola Usuario"
	end
end