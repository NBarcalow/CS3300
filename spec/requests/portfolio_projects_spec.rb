require 'rails_helper'

RSpec.describe "PortfolioProjects", type: :request do
  describe "GET /portfolio_projects" do
    it "works! (now write some real specs)" do
      get portfolio_projects_path
      expect(response).to have_http_status(200)
    end
  end
end
