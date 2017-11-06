# frozen_string_literal: true

FactoryBot.define do
  factory :kru_member do
    name 'Kru Member'
    image 'leek.png'
    bio 'Kru Bio'
    association :updater, factory: :user
  end
end
