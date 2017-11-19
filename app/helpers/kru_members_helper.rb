# frozen_string_literal: true

module KruMembersHelper
  def self.bulk_load(data, updater)
    data.each do |d|
      member = KruMember.where(name: d['name']).first
      if member
        member.update_attributes(d)
        member.updater = updater
        member.updated_at = Time.current
      else
        member = KruMember.new(d)
        member.updated_at = Time.current
        member.created_at = Time.current
        member.updater = updater
      end
      member.save
    end
  end

  def self.load_upload_data(data)
    YAML.load(data)
  end
end
