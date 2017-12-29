class SessionsController < ApplicationController
  def new
  end

  def create
      user = User.find_by(email: params[:session][:email])
      logger.debug('あああああ')
      if user && user.authenticate(params[:session][:password])
        log_in user
        logger.debug(session[:user_id])
        render "main/home"
      end

  end

  def destroy
    log_out
    render "main/home"
  end
end
