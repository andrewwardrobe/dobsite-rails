# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { random_string + '@example.com' }
    password 'Pass123!'
  end
end

def random_string
  o = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
   (0...50).map { o[rand(o.length)] }.join
end