class KruMember
  include Mongoid::Document
  include Trackable
  field :name, type: String
  field :image, type: String
  field :bio, type: String
  field :created_at, type: DateTime
  field :updated_at, type: DateTime
end
