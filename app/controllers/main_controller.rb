class MainController < ApplicationController

  def home
  end

  def about
    logger.debug(session[:user_id])
  end

  def events
    @new = Event.where('created_at > ?', 1.day.ago)
    @previous = Event.where('created_at <= ?', 1.day.ago)
  end

  def create_event
    @event = Event.new(event_params)

    if event_params[:image] != nil
      img = MiniMagick::Image.read(event_params[:image])
      img.resize "150x225"
      img.write "public/uploads/hoge.jpg"
    end

    logger.debug('クリエイト！！！！')
    if @event.save

    else

    end

    render 'main/home'
  end

  def admin
    @event = Event.new
  end

  private
    def event_params
      params.require(:event).permit(:name, :date, :image, :available)
    end
end
