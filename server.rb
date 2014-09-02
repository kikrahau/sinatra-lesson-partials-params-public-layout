require 'sinatra'


get '/' do
	erb :index
end


get '/hello/:name/:surname' do  
	puts params
	"hello " + params[:name] +  " " + params[:surname]
end

get '/whatsup' do
	#only works if ?name=Stephen is on the end of the url
	puts params
	"whats up " + params[:phone	]
end

postx '/form' do
	@carrots = params[:user]
	puts params
	erb :params
end

