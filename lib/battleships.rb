require 'sinatra/base'

class BattleShips < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", "views") }

	get '/' do
		erb :index
	end

  get '/new_game' do
    erb :new_game
  end


	# start the server if ruby file executed directly
	run! if app_file == $0
end