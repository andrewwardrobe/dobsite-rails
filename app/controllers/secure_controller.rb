# frozen_string_literal: true

class SecureController < ActionController::Base
  before_action :authenticate_user!
  end
