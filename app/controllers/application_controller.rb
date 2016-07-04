class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
      

  include ApplicationHelper

  private
  # 以下の1行は消さないでください
 
 


  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end 
end