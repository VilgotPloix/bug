class EventsController < ApplicationController


	def index
		@event = Event.all
	end

	def new
		@event = Event.create
		@user = current_user.id
	end

	def create
		Event.create(title: params[:title], desc: params[:desc], date: params[:date], time: params[:time], user_id: @user)
		redirect_to events_path
	end

	def show
		@event = Event.find(params[:id])
	end
	def destroy

	end

	def update

	end

end
