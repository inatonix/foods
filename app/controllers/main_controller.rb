class MainController < ApplicationController

  def home
  end

  def about
    logger.debug(session[:user_id])
  end

  def events
    @new = Event.where(available:true)
    @previous = Event.where(available:false)
  end

  def create_event
    @event = Event.new(event_params)
    if @event.save

    else

    end

    render 'main/home'
  end

  def admin
    @event = Event.new
    @event.available = true
  end

  private
    def event_params
      params.require(:event).permit(:name, :date, :image, :available)
    end
end
