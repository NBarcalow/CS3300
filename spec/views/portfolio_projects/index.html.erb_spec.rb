require 'rails_helper'

RSpec.describe "portfolio_projects/index", type: :view do
  before(:each) do
    assign(:portfolio_projects, [
      PortfolioProject.create!(
        :title => "Title",
        :description => "MyText",
        :slug => "Slug"
      ),
      PortfolioProject.create!(
        :title => "Title",
        :description => "MyText",
        :slug => "Slug"
      )
    ])
  end

  it "renders a list of portfolio_projects" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
  end
end
