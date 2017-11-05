class KruMember
  include Mongoid::Document
  field :name, type: String
  field :image, type: String
  field :bio, type: String
end
