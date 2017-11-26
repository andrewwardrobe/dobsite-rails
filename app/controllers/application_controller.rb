# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  before_action :set_layout
  # rescue_from CanCan::AccessDenied do |exception|
  #  redirect_to main_app.root_path, alert: exception.message
  # end
  # before_action :authenticate_user!


  private def set_layout
    @layout = 'default'
  end


end
