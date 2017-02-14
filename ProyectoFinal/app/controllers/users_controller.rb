class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end
	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			redirect_to users_path
		else
			@mensaje
		end
	end
	def edit
		
	end
	def update
		
	end

	private
	def user_params
		params.require(:user).permit(:first_name)
	end

end