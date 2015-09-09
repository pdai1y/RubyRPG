module Rubyrpg
	class VirtueInfo < Grape::API

		format :json

		resources :virtue do
			desc "Returns a specific virtue by its ID"
			params do
				requires :id, type: Integer, desc: "Virtue ID"
			end
			route_param :id do
				get do
					#TODO Filter out the created at & updated at in the response
					Virtue.find(params[:id])
				end
			end
		end

		desc "Returns an array containing hashes of Virtue ID's and its corresponding Virtue name"
		get :virtues do
			Virtue.select(:id, :name)
		end

		desc "Create a Virtue"
		params do
			requires :name, type: String, desc: "Virtue Name"
			requires :description, type: String, desc: "Virtue Description"
		end
		post '/create' do
			#TODO fix the user authentication for creating a Virtue via API
			#authenticate!
			Virtue.create!({
				name: params[:name],
				description: params[:description]
			})
		end
	end
end
