module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  # 現在ログイン中のユーザーを返す (いる場合)
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  # def admin?
  #   @current_user.email == "shoku.koryu@gmail.com"
  # end

  def log_out
    logger.debug('ログアウトしました')
    session.delete(:user_id)
    @current_user = nil
  end
end
