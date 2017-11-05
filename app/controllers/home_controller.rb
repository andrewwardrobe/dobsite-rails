# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  private def set_layout
    super
    @layout = 'frontpage'
  end
end
