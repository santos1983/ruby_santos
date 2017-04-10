require 'sinatra'

get '/ej8' do
	bigger=-253000
	a=10.times.map{ Random.rand(100) }
	a.each do |item|
		
		if item>bigger
			bigger = item
		end
	end
	return "En al array #{a}, el numero mayor es: #{bigger}"
end