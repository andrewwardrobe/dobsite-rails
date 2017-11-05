# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
begin
  Rails.application.initialize!
rescue Mongo::Error::NoServerAvailable => ex
  puts "Unable To Connecto Mongo DB: #{ex}"
end