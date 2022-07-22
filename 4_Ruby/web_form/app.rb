require 'sinatra'

get '/' do
    erb :index #レスポンス erbはメソッド　:はシンボル
end

get '/contact' do 
    erb :contact
end

post '/complete' do 
    erb :complete
end
