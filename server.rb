require 'sinatra'


get '/' do 
	erb :index
end


get '/hello/:name/:surname' do |first, last| 
	puts params
	"hello " + first +  " " + last
end


get '/whatsup' do
	#only works if ?name=Stephen is on the end of the url
	puts params
	"whats up " + params[:color]
end

post '/form' do
	@carrots = params[:user]
	puts params
	erb :params
end

