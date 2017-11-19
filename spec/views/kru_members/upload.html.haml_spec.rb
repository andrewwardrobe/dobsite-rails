# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'kru_members/upload', type: :view do

  it 'displays the upload form' do
    render
    expect(rendered).to match /input type="file"/
  end
end
