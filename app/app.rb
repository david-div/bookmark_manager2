ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require_relative 'models/link'
require_relative 'data_mapper_setup'
# require_relative './tag.rb'

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
    link = Link.new(title: params[:title], url: params[:url])
    tag = Tag.first_or_create(name: params[:tags])
    link.tags << tag
    link.save
    redirect '/links'
  end

  run! if app_file == $PROGRAM_NAME
end
