class MainController < ApplicationController

  def home
  end

  def about
  end

  def events
    @events = Event.page(params[:page])
  end
end
