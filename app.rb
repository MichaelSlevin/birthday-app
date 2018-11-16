require 'sinatra/base'
require './lib/birthday.rb'

class MyApp < Sinatra::Base
enable :sessions
  get '/' do
    erb(:index)
  end

  post '/birthday' do
    session['bday'] = Birthday.new(params['bday'])
    redirect '/message'
  end

  get '/message' do
    erb(:message)
  end

end
