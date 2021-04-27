require "rails_helper"

RSpec.describe PortfolioProjectsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/portfolio_projects").to route_to("portfolio_projects#index")
    end

    it "routes to #new" do
      expect(:get => "/portfolio_projects/new").to route_to("portfolio_projects#new")
    end

    it "routes to #show" do
      expect(:get => "/portfolio_projects/1").to route_to("portfolio_projects#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/portfolio_projects/1/edit").to route_to("portfolio_projects#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/portfolio_projects").to route_to("portfolio_projects#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/portfolio_projects/1").to route_to("portfolio_projects#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/portfolio_projects/1").to route_to("portfolio_projects#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/portfolio_projects/1").to route_to("portfolio_projects#destroy", :id => "1")
    end
  end
end
