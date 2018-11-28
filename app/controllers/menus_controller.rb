class MenusController < ApplicationController
	# before_action :authenticate_user!, only: [:create, :update, :destroy, :new, :edit]

	def show
		@menu = Menu.last
	end

	def new
		@menu = Menu.new
	end

	def create
		@menu = Menu.new(menu_params)
		if @menu.save
			flash[:success] = ("Menu added succesfully!")
			redirect_to "/menus"
		else
			render "new.html.erb"
		end
	end

	def menu_params
	  params.require(:menu).permit(:title, :image)
	end
end
