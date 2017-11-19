RSpec.configure do |config|
  config.include Devise::Test::ControllerHelpers, type: :controller
  config.include LoginHelpers
  config.extend ControllerMacros, type: :controller

end