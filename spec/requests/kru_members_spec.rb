# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'KruMembers', type: :request do
  describe 'GET /kru_members' do
    it 'works! (now write some real specs)' do
      get kru_members_path
      expect(response).to have_http_status(200)
    end
  end
end
