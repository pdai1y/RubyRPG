module Rubyrpg
	class RaceInfo < Grape::API

		format :json

		resources :race do

			desc "Returns a specific race by its ID"
			params do
				requires :id, type: Integer, desc: "Race ID"
			end
			route_param :id do
				get do
					Race.find(params[:id])
				end
			end

		end

		desc "Returns an array containing hashes of race ID's and its corresponding race name"
		get :races do
			Race.select(:id, :name)
		end

		desc "Create a race"
			params do
				requires :name, type: String, desc: "Race Name"
				requires :racialModDesc, type: String, desc: "Racial Mod Description"
				requires :favoredClass, type: String, desc: "Favored Class"
				requires :raceDescription, type: String, desc: "Race Description"
				requires :strMod, type: Integer, desc: "Racial Strength Modifier"
				requires :dexMod, type: Integer, desc: "Racial Dexterity Modifier"
				requires :intMod, type: Integer, desc: "Racial Intelligence Modifier"
				requires :wisMod, type: Integer, desc: "Racial Wisdom Modifier"
				requires :charMod, type: Integer, desc: "Racial Charisma Modifier"
				requires :conMod, type: Integer, desc: "Racial Consitution Modifier"
			end
			post '/create' do
				#TODO fix the user authentication for creating a race via API
				#authenticate!
				Race.create!({
					name: params[:name],
					racialModDesc: params[:racialModDesc],
					favoredClass: params[:favoredClass],
					raceDescription: params[:raceDescription],
					strMod: params[:strMod],
					dexMod: params[:dexMod],
					intMod: params[:intMod],
					wisMod: params[:wisMod],
					charMod: params[:charMod],
					conMod: params[:conMod]
					})
			end
			
	end
end