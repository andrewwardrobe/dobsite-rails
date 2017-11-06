# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'kru_members/index', type: :view do
  before(:each) do
    user = User.create!(email: 'user@leek.com', password: 'Pass123!')
    assign(:kru_members, [
             KruMember.create!(
               name: 'Name',
               image: 'Image',
               bio: 'Bio',
               updater: user
             ),
             KruMember.create!(
               name: 'Name',
               image: 'Image',
               bio: 'Bio',
               updater: user
             )
           ])
  end

  it 'renders a list of kru_members' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', image_path: '/images/crew/Image'.to_s, count: 2
    assert_select 'tr>td', text: 'Bio'.to_s, count: 2
  end
end
