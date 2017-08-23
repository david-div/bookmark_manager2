require 'sinatra/base'
require './models/link.rb'

class BookmarkManager < Sinatra::Base

  get '/' do
    'www.google.com'
  end

  get '/links' do
    @links = Link.all
    erb :links
  end

  run! if app_file == $PROGRAM_NAME
end
