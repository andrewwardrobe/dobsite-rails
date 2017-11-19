# frozen_string_literal: true

module KruMembersHelper
  def self.bulk_load(data, updater)
    data.each do |d|
      member = KruMember.where(name: d['name']).first
      if member
        member.update_attributes(d)
        member.updater = updater
        member.updated_at = DateTime.now
        member.save
      else
        member = KruMember.new(d)
        member.updated_at = DateTime.now
        member.created_at = DateTime.now
        member.updater = updater
        member.save
      end
    end
  end

  def self.load_upload_data(data)
    YAML.load(data)
  end
end
