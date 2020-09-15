# frozen_string_literal: true

require 'sinatra/base'

unless ENV['RACK_ENV'] == 'production'
  require "sinatra/reloader"
  require 'pry'
end

class SinatraTemplate < Sinatra::Base
  enable :sessions
  set :public_folder, File.dirname(__FILE__) + '/public'

  if ENV['RACK_ENV'] == 'production'
    use Rack::SSL # force SSL
  else
    register Sinatra::Reloader
    also_reload 'lib/*'
  end

    #############################################################################
  # index page
  #############################################################################
  get '/' do
    slim :index
  end


  ## Run the app when file called ##
  run! if $PROGRAM_NAME == __FILE__
end
