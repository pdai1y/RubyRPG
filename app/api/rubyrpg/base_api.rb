module Rubyrpg
	class BaseApi < Grape::API	

		helpers do

	    def authenticate!
	      error!('Unauthorized. Invalid or expired token.', 401) unless current_user
	    end

    	def current_user
      	# find token. Check if valid.
	      token = ApiKey.where(access_token: params[:token]).first
	      if token && !token.expired?
	        @current_user = User.find(token.user_id)
	      else
	        false
	      end
    	end

    	params :token do
		    requires :token, type: String, desc: "Access token."
    	end

		end

		default_format :json
		# Seperate the API into smaller files
		mount Rubyrpg::PlayerInfo => '/player'
		mount Rubyrpg::RaceInfo => '/raceinfo'
		mount Rubyrpg::VirtueInfo => '/virtueinfo'
		mount Rubyrpg::Dice => '/dice'

	# /api/auth
	resource :auth do

  	desc "Creates and returns access_token if valid login"
	  params do
	    requires :login, type: String, desc: "Username or email address"
	    requires :password, type: String, desc: "Password"
	  end
	  post :login do

	    if params[:login].include?("@")
	      user = User.find_by_email(params[:login].downcase)
	    else
	    	# TODO Fix user_name to be downcase by default
	    	# Monkey patched for now & will only work if
	    	# username is already downcase or has 1 capital letter
	      user = User.find_by_login(params[:login].downcase && params[:login].capitalize)
	    end

	    if user && user.valid_password?(params[:password])
	      key = ApiKey.create(user_id: user.id)
	      {token: key.access_token}
	    else
	      error!('Unauthorized.', 401)
	    end
	  end

	  desc "Returns pong if logged in correctly"
	  params do
	  	use :token
	  end
	  get :ping do
	    authenticate!
	    { message: "pong" }
	  end
	end  



		# Mount the swagger docs
    add_swagger_documentation(
      base_path: "/api",
      hide_documentation_path: true
    )
	end
end