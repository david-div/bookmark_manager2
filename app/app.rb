require 'sinatra/base'
require './models/link.rb'
require 'database_cleaner'

class BookmarkManager < Sinatra::Base

  get '/' do
    'Playing with bookmarks'
  end

  get '/links' do
    @links = Link.all
    erb :links
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    #Link.create(title: params[:title], url: params[:url])
    redirect '/links'
  end

  run! if app_file == $PROGRAM_NAME
end
