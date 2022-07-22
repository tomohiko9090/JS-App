require 'sinatra'

get '/' do
    erb :index
end

get '/input_name' do 
    erb :input_name
end

post '/input_strength' do 
    erb :input_strength
end

post '/result' do 
    erb :result
end