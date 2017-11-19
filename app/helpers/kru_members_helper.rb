# frozen_string_literal: true

module KruMembersHelper
  def self.bulk_load(data, updater)
    data.each do |d|
      member = KruMember.new(d)
      member.updated_at = DateTime.now
      member.created_at = DateTime.now
      member.updater = updater
      member.save
    end
  end
end
