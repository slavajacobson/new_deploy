class MapsController < ApplicationController
	def index
		@maps = Map.all
	end

	def new
		@map = Map.new
	end

	def create
		@map = Map.create(map_params)
		# flash[:notice] =  "Map #{@map.name} succesfully created!"
		# redirect_to maps_path
	end

	def update
		@map = Map.find(params[:id])
	end

	def destroy
		if Map.find(params[:id]).destroy
			flash[:notice] = "deleted!"
			redirect_to maps_path
		else
			flash[:notice] = "unable to delete!"
			redirect_to maps_path
		end
	end

	private
		def map_params
			params.require(:map).permit(:name, :image)
		end
end
