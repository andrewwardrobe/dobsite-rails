require 'rails_helper'

RSpec.describe "kru_members/index", type: :view do
  before(:each) do
    assign(:kru_members, [
      KruMember.create!(
        :name => "Name",
        :image => "Image",
        :bio => "Bio"
      ),
      KruMember.create!(
        :name => "Name",
        :image => "Image",
        :bio => "Bio"
      )
    ])
  end

  it "renders a list of kru_members" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
    assert_select "tr>td", :text => "Bio".to_s, :count => 2
  end
end
