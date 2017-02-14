class RolsController < ApplicationController
	before_action :authenticate_user!
	def index
		@rols = Rol.all
	end
	def show
		@rol = Rol.find(params[:id])
	end
	def new
		@rol = Rol.new
	end

	#POST /rols
	def create
		@rol = Rol.new(rol_params)
		
		if @rol.save
			redirect_to @rol
		else
			render :new
		end
	end

	def destroy
		@rol = Rol.find(params[:id])
		@rol.destroy
		redirect_to rols_path
	end

	def edit
		@rol = Rol.find(params[:id])
	end

	def update
		@rol = Rol.find(params[:id])
		if @rol.update(rol_params)
			redirect_to @rol
		else
			render :edit
		end
	end

	private
	
	def rol_params
		params.require(:rol).permit(:name,:code)
	end
end