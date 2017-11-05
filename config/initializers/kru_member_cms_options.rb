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
      configure :bio { label 'Biography' }
      configure :created_at { default_value { Time.now } }
      configure :updated_at { def value; Time.now; end }
    end
  end
end
