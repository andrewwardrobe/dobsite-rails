# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
begin
  Rails.application.initialize!
rescue Mongo::Error::NoServerAvailable => ex
  Rails.logger.error "Unable To Connecto Mongo DB: #{ex}"
end
