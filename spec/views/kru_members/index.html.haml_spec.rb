# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'kru_members/index', type: :view do
  before(:each) do
    user = create(:user)
    assign(:kru_members, create_list(:kru_member, 2, updater: user))
  end

  it 'renders a list of kru_members' do
    render
    assert_select 'div>h5', text: 'Kru Member'.to_s, count: 2
    assert_select 'div>div>img', image_path: '/images/crew/leek.png'.to_s, count: 2
    assert_select 'div>div>p', text: 'Kru Bio'.to_s, count: 2
  end
end
