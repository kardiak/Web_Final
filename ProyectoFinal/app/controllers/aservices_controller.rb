class AservicesController < ApplicationController
	before_action :authenticate_user! #, except: [:show, :new]

#get aservices
def index
	@aservices = Aservice.all  #@aservices variable de clase
    end

#GET /aservices/:id
def show
	@aservice = Aservice.find(params[:id])
end

def new
	@aservice = Aservice.new
end
def create
	#@aservice = Aservice.new(name: params[:aservice][:name],ip: params[:aservice][:ip],protocol: params[:aservice][:protocol])
	@aservice = Aservice.new(aservice_params)
	if @aservice.save
		redirect_to @aservice
	else
		render :new
	end
	
end

def destroy
	@aservice = Aservice.find(params[:id])
	@aservice.destroy
	redirect_to aservices_path
end

def edit
	@aservice = Aservice.find(params[:id])
end
def update
	@aservice =  Aservice.find(params[:id])
	if @aservice.update(aservice_params)
	redirect_to @aservice
	else
		render :edit
	end
end



	private
 	

	def aservice_params
		#{
		#	aservice{
		#		name:,
		#		ip:,
		#		protocol:
		#	}
		#}
		
		params.require(:aservice).permit(:name,:ip,:protocol)
	end

end