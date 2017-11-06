# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'kru_members/new', type: :view do
  before(:each) do
    @kru_member = assign(:kru_member, build(:kru_member))
  end

  it 'renders new kru_member form' do
    render

    assert_select 'form[action=?][method=?]', kru_members_path, 'post' do
      assert_select 'input[name=?]', 'kru_member[name]'

      assert_select 'input[name=?]', 'kru_member[image]'

      assert_select 'input[name=?]', 'kru_member[bio]'
    end
  end
end
