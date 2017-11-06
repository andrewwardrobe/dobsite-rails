# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'kru_members/show', type: :view do
  before(:each) do
    user = User.create!(email: 'user@leek.com', password: 'Pass123!')
    @kru_member = assign(:kru_member, KruMember.create!(
                                        name: 'Name',
                                        image: 'Image',
                                        bio: 'Bio',
                                        updater: user
    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Bio/)
  end
end
