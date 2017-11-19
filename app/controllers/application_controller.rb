# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  before_action :set_layout
  # before_action :authenticate_user!

  private def set_layout
    @layout = 'default'
  end
end
