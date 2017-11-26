# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    p user
    user.roles.each do |role|
      puts role
      send(role)
    end
    guest unless user.roles.count
  end

  def guest
    can :read, :all
  end

  def admin
    guest
    can :access, :rails_admin # grant access to rails_admin
    can :dashboard
  end

  def kru_bulk_update
    can :import, KruMember
  end

  def superadmin
    admin
    kru_bulk_update
    can :manage, :all
  end

end
