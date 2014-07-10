#require '/app/services/dice_service'

module Rubyrpg
	class Dice < Grape::API
		format :json
			
		desc "Returns an initiative roll"
		get :roll do
			dice = DiceService.new(1,20)
			dice.roll
		end
	end
end