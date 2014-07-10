module Rubyrpg
	class PlayerInfo < Grape::API
		
		format :json

		# Helps find a player the user is playing by name
		#
		#   current_player("John")
		#      => { player_id: 23, name: "John" }
		helpers do
			def current_player(player_name)
				@current_player = current_user.players.find_by(name: player_name)
			end
		end

		desc "Create a player"
		params do
			#use :token
			requires :name, type: String, desc: "Player Name"
		end
		post :create do
			authenticate!
			Player.create!({
				user_id: current_user.id, 
				name: params[:name] 
				})
		end

		desc "Delete a player"
		params do
			#use :token
			requires :name, type: String, desc: "Player Name"
		end
		post :delete do
			authenticate!
			player = current_player(params[:name])
			if player == nil
				{ deleted: false}
			else
				{ deleted: true}
				player.destroy
			end
		end

	end
end