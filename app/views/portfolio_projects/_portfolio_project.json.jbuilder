json.extract! portfolio_project, :id, :title, :description, :slug, :created_at, :updated_at
json.url portfolio_project_url(portfolio_project, format: :json)
