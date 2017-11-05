# frozen_string_literal: true

RailsAdmin.config do |config|
  config.model 'KruMember' do
    list do
      configure :bio do
        label 'Biography'
      end
    end
    edit do
      # configure :creator do
      # default_value do
      #   value.email
      # end
      # end
      configure :bio do label 'Biography' end
      configure :created_at do default_value { Time.now } end
      configure :updated_at do
        def value
          Time.now
                               end end
    end
  end
end
