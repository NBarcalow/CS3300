require 'rails_helper'

RSpec.describe "portfolio_projects/edit", type: :view do
  before(:each) do
    @portfolio_project = assign(:portfolio_project, PortfolioProject.create!(
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString"
    ))
  end

  it "renders the edit portfolio_project form" do
    render

    assert_select "form[action=?][method=?]", portfolio_project_path(@portfolio_project), "post" do

      assert_select "input[name=?]", "portfolio_project[title]"

      assert_select "textarea[name=?]", "portfolio_project[description]"

      assert_select "input[name=?]", "portfolio_project[slug]"
    end
  end
end
