# frozen_string_literal: true

require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the KruMembersHelper. For example:
#
# describe KruMembersHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe KruMembersHelper, type: :helper do
  describe '.bulk_load' do
    it 'Should load a hash of mango kru memebers' do
      data = kru_member_data
      updater = create(:user)
      expect { KruMembersHelper.bulk_load(data, updater) }.to change(KruMember, :count).by(data.size)
    end
  end

  describe '.load_upload_data' do
    it 'Should be able to load a hash of valid yaml' do
      expect(KruMembersHelper.load_upload_data(kru_member_data.to_yaml)).to be_a Array
    end
  end
end
