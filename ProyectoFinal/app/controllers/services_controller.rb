class ServicesController < ApplicationController
	before_action :authenticate_user!

	def index
		@services = Service.all
	end
	def show
		@service = Service.find(params[:id])
	end
	def new
		@service = Service.new
	end

	def create
		@service = Service.new(service_params)
		if @service.save
		redirect_to @service
		else
			render :new
		end
		
	end
	def destroy
		@service = Service.find(params[:id])
		if @service.destroy
			redirect_to services_path
		else
			@mensaje
		end
	end
	def edit
		@service = Service.find(params[:id])
	end
	def update
		@service = Service.find(params[:id])
		if @service.update(service_params)
			redirect_to @service
		else
			render :edit
		end
	end

	private

	def service_params
		params.require(:service).permit(:name)
	end
end