class UseraservicesController < ApplicationController
	before_action :authenticate_user!
	def index
		@useraservices = Useraservice.where(:user_id => current_user.id )
		@services = Service.all
	end
	def new
		@useraservice = Useraservice.new
		@services = Service.all
		
	end
	def show
		@useraservice = Useraservice.find(params[:id])
	end
	def edit
		@useraservice = Useraservice.find(params[:id])
		@services = Service.all
	end
	def destroy
		@useraservice = Useraservice.find(params[:id])
		@useraservice.destroy
		redirect_to useraservices_path
	end
	
	def update
		@useraservice = Useraservice.find(params[:id])
		if @useraservice.update(user_id: current_user.id, service_id: params[:useraservice][:service_id],username: current_user.first_name,password: params[:useraservice][:password], hint: params[:useraservice][:hint])
			redirect_to @useraservice
		else
			render :edit
		end
	end

	def create		
       @useraservice = Useraservice.new(user_id: current_user.id, service_id: params[:useraservice][:service_id],username: current_user.first_name,password: params[:useraservice][:password], hint: params[:useraservice][:hint])
		

		if @useraservice.save
			redirect_to @useraservice
		else
			render :new
		end

	end

	

	private
	
	#def useraservice_params
	#	params.require(:useraservice).permit(:hint,:service_id)
	#+++++++++++++++++++++++++++++++end
#def useraservice_params
#	params.require(:useraservice).permit(:hint,:service_id,:password,:password_confirm)
#end
	

end


