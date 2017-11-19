# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'home/index', type: :view do
  it 'renders' do
    render
    assert_select 'h1', text: 'Da Oostin Boyeez'.to_s, count: 1
  end
end
