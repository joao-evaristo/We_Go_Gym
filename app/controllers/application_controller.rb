class ApplicationController < ActionController::Base
  before_action :set_current_user
  def set_current_user
    if session[:user_id]
      Current.user = Usuario.find_by(id: session[:user_id])
    end
  end

  def require_user_logged_in!
    redirect_to entrar_path, alert: "Você deve estar logado para fazer isso!" if Current.user.nil?
  end
  def user_permission
    redirect_to root_path, alert: "Você não tem permissão para fazer isso!" if Current.user.id != @usuario.id
  end
end
