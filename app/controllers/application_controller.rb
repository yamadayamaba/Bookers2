class ApplicationController < ActionController::Base

  before_action :confiure_permitted_parameters, if: :devise_controller?


  private

  def confiure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:email])
  end

end
