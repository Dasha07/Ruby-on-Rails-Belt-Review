class EventsController < ApplicationController
  def index
    if !session[:user_id]
      redirect_to '/'
      return
    end
    @user = User.find(session[:user_id])
    @state_events = Event.where state:@user.state
    @out_of_state_events = Event.where.not state:@user.state
  end

  def show
  end

  def create
    event = Event.create(name: params[:name], date: params[:date], city: params[:city], state: params[:state], creator: User.find(session[:user_id]))
    flash[:errors] = event.errors.messages
    redirect_to '/events'
  end
end
