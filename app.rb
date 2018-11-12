require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase%20' do
    @num_phrase =  params[:phrase].to_s * params[:number].to_i
    "#{@num_phrase}"
  end
end
