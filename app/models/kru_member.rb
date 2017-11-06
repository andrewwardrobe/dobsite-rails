# frozen_string_literal: true

class KruMember
  include Mongoid::Document
  include Mongoid::History::Trackable
  field :name, type: String
  field :image, type: String
  field :bio, type: String
  field :created_at, type: DateTime
  field :updated_at, type: DateTime

  track_history(
    track_create: false,
    track_destroy: true,
    track_update: true,
    modifier_field: :updater
  )
end
