require 'sinatra'

get '/ej2/:name' do
  name=params[:name].capitalize!
  'Hola '+name
end