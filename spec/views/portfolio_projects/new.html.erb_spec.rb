require 'rails_helper'

RSpec.describe "portfolio_projects/new", type: :view do
  before(:each) do
    assign(:portfolio_project, PortfolioProject.new(
      :title => "MyString",
      :description => "MyText",
      :slug => "MyString"
    ))
  end

  it "renders new portfolio_project form" do
    render

    assert_select "form[action=?][method=?]", portfolio_projects_path, "post" do

      assert_select "input[name=?]", "portfolio_project[title]"

      assert_select "textarea[name=?]", "portfolio_project[description]"

      assert_select "input[name=?]", "portfolio_project[slug]"
    end
  end
end
