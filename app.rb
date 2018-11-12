require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number'
    @number = params[:number]
    "#{@number.to_i **}"
  end
end
