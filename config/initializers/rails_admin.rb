# frozen_string_literal: true
require 'i18n'


module RailsAdmin
  module Extensions
    module CanCanCan2
      class AuthorizationAdapter < RailsAdmin::Extensions::CanCanCan::AuthorizationAdapter
        def authorize(action, abstract_model = nil, model_object = nil)
          return unless action
          reaction, subject = fetch_action_and_subject(action, abstract_model, model_object)
          @controller.current_ability.authorize!(reaction, subject)
        end

        def authorized?(action, abstract_model = nil, model_object = nil)
          return unless action
          reaction, subject = fetch_action_and_subject(action, abstract_model, model_object)
          @controller.current_ability.can?(reaction, subject)
        end

        def fetch_action_and_subject(action, abstract_model, model_object)
          reaction = action
          subject = model_object || abstract_model&.model
          unless subject
            subject = reaction
            reaction = :read
          end
          return reaction, subject
        end
      end
    end
  end
end

RailsAdmin.add_extension(:cancancan2, RailsAdmin::Extensions::CanCanCan2, authorization: true)

RailsAdmin.config do |config|
  config.audit_with :mongoid_audit
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  config.authorize_with :cancancan2

  config.parent_controller = 'ApplicationController'
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
end
