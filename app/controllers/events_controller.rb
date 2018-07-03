class EventsController < ApplicationController
	before_action :authenticate_user!, only: [:create, :update, :destroy, :new, :edit]

	def index
		@events = Event.all
		@event = Event.last
	end
	def show
		@event = Event.last
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			flash[:success] = ("event added succesfully!")
			redirect_to "/events"
		else
			render "new.html.erb"
		end
	end

	def event_params
	  params.require(:event).permit(:title, :image)
	end
end
