require 'sinatra/base'

class Birthday < Sinatra::Base
  get '/' do
    erb :index
  end
  post '/birthday' do
    @name = params[:name]
    @birthday = params[:birthday]
  erb :countdown
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
