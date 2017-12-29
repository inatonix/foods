class MainController < ApplicationController

  def home
  end

  def about
  end

  def events
    @new = Event.where(available:true)
    @previous = Event.where(available:false)
  end
end
