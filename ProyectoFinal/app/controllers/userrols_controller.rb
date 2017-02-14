class UserrolsController < ApplicationController
	def index
		@user = User.find(params[:format])
		@userrols = Userrol.where(:user_id => params[:format])
		@rols = Rol.all
	end
	def show
		@userrol = Userrol.find(params[:id])
		@user = User.find(@userrol.user_id)
		@rol = Rol.find(@userrol.rol_id)
	end
	
	def new
		@userrol = Userrol.new
		@user = User.find(params[:format])
		@rols = Rol.all
		@UserRol = User
	end

	def create
		@userrol= Userrol.new(user_id: params[:userrol][:user_id],rol_id: params[:userrol][:rol_id],started_by: current_user.first_name)
		if @userrol.save
			redirect_to @userrol
		else
			redirect_to edit_users_path(params[:user_id])
		end
	end

	def destroy
		@userrol = Userrol.find(params[:rol_id])
		if @userrol.destroy
			redirect_to userrols_path(params[:user_id])
			else
			@mensaje
		end
	end

	def edit
		
	end
	def update
		
	end

	private
	
	
end