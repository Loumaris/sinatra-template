# frozen_string_literal: true

require 'sinatra/base'

class SinatraTemplate < Sinatra::Base
  enable :sessions
  set :public_folder, File.dirname(__FILE__) + '/public'

  # force SSL on production
  use Rack::SSL if ENV['RACK_ENV'] == 'production'

  #############################################################################
  # index page
  #############################################################################
  get '/' do
    slim :index
  end


  ## Run the app when file called ##
  run! if $PROGRAM_NAME == __FILE__
end
