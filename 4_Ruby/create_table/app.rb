require 'sinatra'

get '/' do
    erb :index
end

get '/input1_name' do 
    erb :input1_name
end

post '/input2_strength' do 
    erb :input2_strength
end

post '/input3_type' do 
    erb :input3_type
end

post '/table' do 
    erb :table
end