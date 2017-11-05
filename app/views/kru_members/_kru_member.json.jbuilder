# frozen_string_literal: true

json.extract! kru_member, :id, :name, :image, :bio, :created_at, :updated_at
json.url kru_member_url(kru_member, format: :json)
