# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'kru_members/edit', type: :view do
  before(:each) do
    @kru_member = assign(:kru_member, create(:kru_member))
  end

  it 'renders the edit kru_member form' do
    render

    assert_select 'form[action=?][method=?]', kru_member_path(@kru_member), 'post' do
      assert_select 'input[name=?]', 'kru_member[name]'

      assert_select 'input[name=?]', 'kru_member[image]'

      assert_select 'input[name=?]', 'kru_member[bio]'
    end
  end
end
