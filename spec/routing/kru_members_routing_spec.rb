require "rails_helper"

RSpec.describe KruMembersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/kru_members").to route_to("kru_members#index")
    end

    it "routes to #new" do
      expect(:get => "/kru_members/new").to route_to("kru_members#new")
    end

    it "routes to #show" do
      expect(:get => "/kru_members/1").to route_to("kru_members#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/kru_members/1/edit").to route_to("kru_members#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/kru_members").to route_to("kru_members#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/kru_members/1").to route_to("kru_members#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/kru_members/1").to route_to("kru_members#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/kru_members/1").to route_to("kru_members#destroy", :id => "1")
    end

  end
end
