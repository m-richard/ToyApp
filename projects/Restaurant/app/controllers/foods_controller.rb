class FoodsController < ApplicationController

	before_action :setup_menus

	def new
		@food = Food.new
	end
	def create
		@food = Food.new(food_params)
		if @food.save
			redirect_to new_food_path
		else
			render 'new'
		end
	end

	
	def food_params
		return params.require(:food).permit(:content)
	end

	def setup_menus
		@menus = Menu.all.collect{|menu| [menu.kind, menu.id]}
	end
end
