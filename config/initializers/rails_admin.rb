RailsAdmin.config do |config|

  config.audit_with :mongoid_audit
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    history_index
    history_show
  end
  config.model 'KruMember' do
    list do
      configure :bio do
        label 'Biography'
      end
    end
    edit do
      configure :bio do
        label 'Biography'
      end
    end
  end
end
