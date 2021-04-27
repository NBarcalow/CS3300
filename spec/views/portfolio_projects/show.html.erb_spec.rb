require 'rails_helper'

RSpec.describe "portfolio_projects/show", type: :view do
  before(:each) do
    @portfolio_project = assign(:portfolio_project, PortfolioProject.create!(
      :title => "Title",
      :description => "MyText",
      :slug => "Slug"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Slug/)
  end
end
