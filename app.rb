require 'sinatra/base'

class DatabasePlay < Sinatra::Base

  get '/' do
    'www.google.com'
  end

  run! if app_file == $PROGRAM_NAME
end
