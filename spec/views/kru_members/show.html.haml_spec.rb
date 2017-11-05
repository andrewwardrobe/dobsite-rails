require 'rails_helper'

RSpec.describe "kru_members/show", type: :view do
  before(:each) do
    @kru_member = assign(:kru_member, KruMember.create!(
      :name => "Name",
      :image => "Image",
      :bio => "Bio"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image/)
    expect(rendered).to match(/Bio/)
  end
end
